-- Serial+Parallel Instruction Registor "JTAG style" VHDL Module (file REG_SP.vhd)
-- (difference from ordinary SP_REG: on Capture returns "100001")
-- FOR ->
-- Slow Control ALCT-2001 Chip
-- Xilinx Spartan XL: XCS40XL-4PQ208C
-- SVN, July 2001

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity INSTR_REG is
    Generic ( REG_WIDTH : integer :=6);
    Port ( TCK : in std_logic;
           SH_EN : in std_logic;		-- Shift Enable
           CAPT_EN : in std_logic;	-- Capture Enable (Par.Reg->Ser Reg.)
           UPD_EN : in std_logic;	-- Update Enable (Ser Reg.->Par.Reg)
           DIN : in std_logic;		-- Serial Data IN
           DOUT : out std_logic;		-- Serial Data OUT
           Q : out std_logic_vector(REG_WIDTH-1 downto 0));	-- Par.Reg. OUTs
end INSTR_REG;

architecture behavioral of INSTR_REG is

signal SREG: STD_LOGIC_VECTOR(REG_WIDTH-1 downto 0);	-- Serial Register
signal PREG: STD_LOGIC_VECTOR(REG_WIDTH-1 downto 0);	-- Parallel Register

begin

CS_REG: process (TCK)	-- Describe Capturing and Shifting on TCK rising edge
	constant ZEROS: STD_LOGIC_VECTOR(REG_WIDTH-3 downto 0):= (others=>'0');
				begin
				   if TCK'event and TCK='1' then
					   if (CAPT_EN='1') then
					     SREG <= '1' & ZEROS & '1';	-- Capturing ("10001"->Ser Reg.)
					   elsif (SH_EN='1') then
					     SREG <= DIN & SREG(REG_WIDTH-1 downto 1);
					   end if;
				   end if;
				end process;

U_REG: process (TCK)	-- Describe Updating (Ser Reg.->Par.Reg) on TCK falling edge
				begin
				   if TCK'event and TCK='0' then
					   if (UPD_EN='1') then
					     PREG <= SREG;	-- Updating the DATA (Ser Reg.->Par.Reg)		
					   end if;
				   end if;
				end process;

DOUT <= SREG(0);	-- LSB of the Shift Reg. is output signal
Q <= PREG;
 
end behavioral;
