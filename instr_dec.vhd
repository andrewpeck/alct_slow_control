-- JTAG Instruction Decoder VHDL Module (file INSTR_DEC.vhd)
-- FOR ->
-- Slow Control ALCT-2001 Chip
-- Xilinx Spartan XL: XCS40XL-4PQ208C
-- SVN, July 2001

-- List of Instructions (changed to correspond to the ALCT-2000 Slow Control)

--		#	  CODE		Name			Description									In Use
---------------------------------------------------------------------------
--    1.	O"00"       ID_REG      Read Slow Control Chip ID           YES
--    2.	O"01"       THR_RS      Reset Threshold DACs						YES
--    	O"02"       			   Reset Delay ASIC                    NO
--    3.	O"03"       TP_VAL      Load Test Pulse Var. Gain Ampl.     YES

--    4.	O"10"       DAC0        Load DAC0     								YES
--    5.	O"11"       DAC1        Load DAC1     								YES
--    6.	O"12"       DAC2        Load DAC2     								YES
--    7.	O"13"       DAC3        Load DAC3     								YES

--    8.	O"20"       ADC0        Load address and read back ADC0     YES
--    9.	O"21"       ADC1        Load address and read back ADC1     YES
--   10.	O"22"       ADC2        Load address and read back ADC2     YES
--   11.	O"23"       ADC3        Load address and read back ADC3     YES
--   12.	O"24"       ADC4        Load address and read back ADC4     YES

--   		O"30"						   Write Delay ASIC Grp0 (BYPASS)		NO
--    	O"31"						   Write Delay ASIC Grp1 (BYPASS)		NO
--   		O"32"						   Write Delay ASIC Grp2 (BYPASS)		NO
--   		O"33"						   Write Delay ASIC Grp3 (BYPASS)		NO
--    	O"34"						   Write Delay ASIC Grp4 (BYPASS)		NO
--    	O"35"						   Write Delay ASIC Grp5 (BYPASS)		NO
--    	O"36"						   Write Delay ASIC Grp6 (BYPASS)		NO
			
--   13.	O"40"			W_TP_GRP    Write Test Pulse Group Enable Bits  YES 
--   14.	O"41"			R_TP_GRP    Read Test Pulse Group Enable Bits   YES	Added
--   15.	O"42"			W_TP_STRP   Write Test Pulse Strip Enable Bits  YES 
--   16.	O"43"			R_TP_STRP   Read Test Pulse Strip Enable Bits   YES	Added
--   17.	O"44"			W_STANDBY	Write FE StandBy Bits               YES			
--   18.	O"45"			R_STANDBY	Read FE StandBy Bits                YES	Added
--   19.	O"46"			W_VAR_PD    Write Var. Gain. Ampl Power Down    YES 
--   28.	O"47"			R_VAR_PD    Read Var. Gain. Ampl Power Down     YES	Added

--   ...	 others		BYPASS		Standard	JTAG Instruction				YES


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity INSTR_DEC is
    Port ( INSTR : in std_logic_vector(5 downto 0);	-- Instruction Code
           IR_SH : in std_logic;								-- Enable Data Reg. if IR_SH = '0'

			  ID_REG_EN  : out std_logic;
			  RS_THR_DAC : out std_logic;
           TP_VAL_EN  : out std_logic;

           DAC_EN     : out std_logic_vector(3 downto 0);

           ADC_EN     : out std_logic_vector(4 downto 0);

           TP_GRP_EN  : out std_logic;
           TP_GRP_WR  : out std_logic;

           TP_STP_EN  : out std_logic;
           TP_STP_WR  : out std_logic;
           
			  STANDBY_EN : out std_logic;
           STANDBY_WR : out std_logic;
           
			  VAR_PD_EN  : out std_logic;
           VAR_PD_WR  : out std_logic;
			  
			  BYPASS_EN : out std_logic);

end INSTR_DEC;

architecture behavioral of INSTR_DEC is

begin

process (INSTR, IR_SH)
begin

	ID_REG_EN  <= '0';  
	RS_THR_DAC <= '0';  
	TP_VAL_EN  <= '0';
  
	DAC_EN     <=  "0000"; 
	ADC_EN     <= "00000"; 

	TP_GRP_EN  <= '0';  
	TP_GRP_WR  <= '0';
    
	TP_STP_EN  <= '0';    
	TP_STP_WR  <= '0';
    
	STANDBY_EN <= '0';    
	STANDBY_WR <= '0';
    
	VAR_PD_EN  <= '0';  
	VAR_PD_WR  <= '0';
  
	BYPASS_EN  <= '0';  

	if IR_SH = '0' then
	   case INSTR is
	      when O"00" => ID_REG_EN  <= '1';
	      when O"01" => RS_THR_DAC <= '1';
			              BYPASS_EN  <= '1';
	      when O"03" => TP_VAL_EN <= '1';
	
	      when O"10" => DAC_EN <=  "0001";
	      when O"11" => DAC_EN <=  "0010";
	      when O"12" => DAC_EN <=  "0100";
	      when O"13" => DAC_EN <=  "1000";
	
	      when O"20" => ADC_EN <= "00001";
	      when O"21" => ADC_EN <= "00010";
	      when O"22" => ADC_EN <= "00100";
	      when O"23" => ADC_EN <= "01000";
	      when O"24" => ADC_EN <= "10000";
	
	      when O"40" => TP_GRP_EN <= '1';
			              TP_GRP_WR <= '1';
	      when O"41" => TP_GRP_EN <= '1';
	
	      when O"42" => TP_STP_EN <= '1';
			              TP_STP_WR <= '1';
	      when O"43" => TP_STP_EN <= '1';
	
	      when O"44" => STANDBY_EN <= '1';
			              STANDBY_WR <= '1';
	      when O"45" => STANDBY_EN <= '1';
	
	      when O"46" => VAR_PD_EN  <= '1';
			              VAR_PD_WR  <= '1';
	      when O"47" => VAR_PD_EN  <= '1';
	
	      when others  => BYPASS_EN <= '1';
		end case;
	end if;

end process;


end behavioral;
