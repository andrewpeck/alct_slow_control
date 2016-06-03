-- Chip ID Registor "JTAG style" VHDL Module (file REG_ID.vhd)
-- (difference from ordinary SP_REG: on Capture returns CHIP_ID value)
-- FOR ->
-- Slow Control ALCT-2001 Chip
-- Xilinx Spartan XL: XCS40XL-4PQ208C
-- SVN, July 2001
-- Modified 20.02.2014 J. Multanen

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity REG_ID is
    Generic ( REG_WIDTH : integer :=40;
--	           CHIP_ID: STD_LOGIC_VECTOR(39 downto 0):= X"0000000000");
	           CHIP_ID: STD_LOGIC_VECTOR(39 downto 0):= X"02202014B8");
    Port ( TCK : in std_logic;
           SH_EN : in std_logic;		-- Shift Enable
           CAPT_EN : in std_logic;	-- Capture Enable (CHIP_ID->Ser Reg.)
           DIN : in std_logic;		-- Serial Data IN
           DOUT : out std_logic);		-- Serial Data OUT
end REG_ID;

architecture behavioral of REG_ID is

signal SREG: STD_LOGIC_VECTOR(REG_WIDTH-1 downto 0);	-- Serial Register

begin

   
CS_REG: process (TCK)	-- Describe Capturing and Shifting on TCK rising edge
				begin
				   if TCK'event and TCK='1' then
					   if (CAPT_EN='1') then
					     SREG <= CHIP_ID;	-- Capturing (ID# -> Ser Reg.)
					   elsif (SH_EN='1') then
					     SREG <= DIN & SREG(REG_WIDTH-1 downto 1);
					   end if;
				   end if;
				end process;

DOUT <= SREG(0);	-- LSB of the Shift Reg. is output signal

end behavioral;
