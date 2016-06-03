-- Power Down Serial+Parallel 1 bit Registor "JTAG style" VHDL Module (file PD_VAR.vhd)
-- FOR ->
-- Slow Control ALCT-2001 Chip
-- Xilinx Spartan XL: XCS40XL-4PQ208C
-- SVN, July 2001

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PD_VAR is
    Port ( TCK : in std_logic;
           SH_EN : in std_logic;		-- Shift Enable
           CAPT_EN : in std_logic;	-- Capture Enable (Par.Reg->Ser Reg.)
           UPD_EN : in std_logic;	-- Update Enable (Ser Reg.->Par.Reg)
           DIN : in std_logic;		-- Serial Data IN
           DOUT : out std_logic;		-- Serial Data OUT
           Q : out std_logic );		-- Par.Reg. OUTs
end PD_VAR;

architecture behavioral of PD_VAR is

signal SREG: STD_LOGIC;	-- Serial Register
signal PREG: STD_LOGIC;	-- Parallel Register

begin

CS_REG: process (TCK)	-- Describe Capturing and Shifting on TCK rising edge
				begin
				   if TCK'event and TCK='1' then
					   if (CAPT_EN='1') then
					     SREG <= PREG;	-- Capturing the DATA (Par.Reg->Ser Reg.)
					   elsif (SH_EN='1') then
					     SREG <= DIN;
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

DOUT <= SREG;	-- LSB of the Shift Reg. is output signal
Q <= PREG;

end behavioral;
