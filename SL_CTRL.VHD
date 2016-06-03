-- Slow Control ALCT-2001 Chip
-- Xilinx Spartan XL: XCS40XL-4PQ208C
-- SVN, July 2001

-- Top level of hierarchy (file Sl_Ctrl.vhd):
--	Instantiated components:
--   T: TAP (file TAP.vhd), JTAG TAP controller, 							status: OK
--   IR: INSTR_REG (file INSTR_REG.vhd), Instruction register,			status: OK
--   IN_DEC: INSTR_DEC (file INSTR_DEC.vhd), Instruction Decoder,		status: OK
--   TDO_MUX: MUX block Data&Instr Reg. Multiplexor,						status: OK
--
--   BYPASS Register(BYPASS: Process...),										status: OK
--
--   SBR: REG_SP (file REG_SP.vhd), StandBy register,						status: OK
--   TPSTP: REG_SP (file REG_SP.vhd), Tst Pls Strp_EN register,		status: OK
--   TPGRP: REG_SP (file REG_SP.vhd), Tst Pls Grp_EN register,			status: OK
--   ADC: Block, ADC Interfaces,													status: OK 
--   DAC: Block, DAC Interfaces,													status: OK 
--   VAR: Block, Var.Gain Ampl. Interface,									status: OK 
--   VAR_PD: REG_SP (file REG_SP.vhd), Var.Gain Ampl. Power Down,		status: OK
--   ID_REG: REG_ID (file REG_ID.vhd), Chip ID Register,					status: OK 

--   DAC_RS: DACs Reset process (Taken out on the 2nd TCK cycle)		status: OK 

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

--    8.	O"20"       00        Load address and read back ADC0     YES
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

entity Sl_Ctrl is
    Generic (IR_WIDTH : integer := 6			-- Width of the Instruction Word
--	          CH_ID_WIDTH: integer := 16;		-- Width of the Chip ID Word
--	          CHIP_ID: STD_LOGIC_VECTOR(CH_ID_WIDTH-1 downto 0):=X"0000" -- Value of Chip ID
				 );

    Port ( 
  			-- Var. Gain Amplifier lines
			  Din_TP		: out std_logic;
			  Clk_TP		: out std_logic;
			  CS_TP_N	: out std_logic;
			  PD_TP_N	: out std_logic;	-- Power Down
	 
  			-- ADCs lines
           Din_ADC	: out std_logic_vector(4 downto 0);
           Dout_ADC	: in std_logic_vector(4 downto 0);
           Clk_ADC	: out std_logic_vector(4 downto 0);
           CS_ADC_N	: out std_logic_vector(4 downto 0);

			-- DACs lines
           Din_DAC	: out std_logic_vector(3 downto 0);
           Clk_DAC	: out std_logic_vector(3 downto 0);
           CS_DAC_N	: out std_logic_vector(3 downto 0);
           RS_DAC_N	: out std_logic_vector(3 downto 0);

           Stand_By_N : out std_logic_vector(41 downto 0);

           TP_Gr_En	: out std_logic_vector(6 downto 0);
           
			  TP_Strp_En : out std_logic_vector(5 downto 0);
           
			-- Config JTAG section
			  TCK : in std_logic;
           TMS : in std_logic;
           TDI : in std_logic;
           TDO : out std_logic;

			-- Service and reserved test lines
           OpCode : out std_logic_vector(5 downto 0);	-- Corresponds to JTAG Instruction Code
           State : out std_logic_vector(3 downto 0);	-- Corresponds to JTAG TAP Ctrl Code
           Future : out std_logic_vector(7 downto 0));
end Sl_Ctrl;

architecture behavioral of Sl_Ctrl is

-- ########### Signal declarations start #############

signal DAC_RES: STD_LOGIC;		-- DACs Reset signal

		-- TAP for Instruction Register Enable signals
signal  IR_CAPT: STD_LOGIC;
signal  IR_SH	: STD_LOGIC;
signal  IR_UPD	: STD_LOGIC;
signal  TAP_RS	: STD_LOGIC;

 		-- TAP for Data Register Enable signals
signal  DR_CAPT: STD_LOGIC;
signal  DR_SH	: STD_LOGIC;
signal  DR_UPD	: STD_LOGIC;

		-- ByPass Register Enable signals (... and BYPASS_EN)
signal  BYPASS_SH : STD_LOGIC;

		-- StandBy Register Enable signals (... and STANDBY_EN)
signal  STANDBY_SH : STD_LOGIC;
signal  STANDBY_CAPT : STD_LOGIC;
signal  STANDBY_UPD : STD_LOGIC;

		-- TP_STP Register Enable signals (... and TP_STP_EN)
signal  TP_STP_SH   : STD_LOGIC;
signal  TP_STP_CAPT : STD_LOGIC;
signal  TP_STP_UPD  : STD_LOGIC;

		-- TP_GRP Register Enable signals (... and TP_GRP_EN)
signal  TP_GRP_SH   : STD_LOGIC;
signal  TP_GRP_CAPT : STD_LOGIC;
signal  TP_GRP_UPD  : STD_LOGIC;

		-- ADC Interface Enable signals (... and ADC_EN)
signal  ADC_SH   : std_logic_vector(4 downto 0);
signal  ADC_SH_dum   : std_logic_vector(4 downto 0);
signal  ADC_UPD  : std_logic_vector(4 downto 0);
signal  Clk_ADC_dum : std_logic_vector(4 downto 0);

		-- DAC Interface Enable signals (... and DAC_EN)
signal  DAC_SH   : std_logic_vector(3 downto 0);
signal  DAC_UPD  : std_logic_vector(3 downto 0);

		-- VAR_PD Register Enable signals (... and VAR_PD_EN)
signal  VAR_PD_SH   : STD_LOGIC;
signal  VAR_PD_CAPT : STD_LOGIC;
signal  VAR_PD_UPD  : STD_LOGIC;

		-- ID_REG Register Enable signals (... and ID_REG_EN)
signal  ID_REG_SH   : STD_LOGIC;
signal  ID_REG_CAPT : STD_LOGIC;

		-- Instruction Code signal
signal  INSTR: std_logic_vector(IR_WIDTH-1 downto 0);	-- Goes to Intruction Decoder

		-- Instruction Decoder output Enable signals
signal  ID_REG_EN : std_logic;                          
signal  RS_THR_DAC : std_logic;                          
signal  TP_VAL_EN : std_logic;

signal  DAC_EN : std_logic_vector(3 downto 0);          
signal  ADC_EN : std_logic_vector(4 downto 0);          
                          
signal  TP_GRP_EN : std_logic;                          
signal  TP_GRP_WR : std_logic;                          
signal  CS_TP_M   : std_logic;

signal  TP_STP_EN : std_logic;                         
signal  TP_STP_WR : std_logic;                         

signal  STANDBY_EN : std_logic;                         
signal  STANDBY_WR : std_logic;                         

signal  VAR_PD_EN : std_logic;                          
signal  VAR_PD_WR : std_logic;                          

signal  BYPASS_EN : std_logic;                         

		-- Instruction&Data Shift Registers output signals (going to TDO_MUX)
signal  IR_DOUT: STD_LOGIC;								-- Instruction Sh. Reg. output
signal  BP_DOUT: STD_LOGIC;								-- Bypass Register output
signal  TP_STP_DOUT: STD_LOGIC;							-- TP_Strip Register output
signal  TP_GRP_DOUT: STD_LOGIC;							-- TP_Group Register output
signal  VAR_PD_DOUT: STD_LOGIC;		-- Var. Gain Ampl. Power Down Register output
signal  ADC_DOUT: STD_LOGIC_VECTOR (4 downto 0);	-- ADC interface outputs
signal  ID_REG_DOUT: STD_LOGIC;							-- Chip ID Register output
signal  STANDBY_DOUT: STD_LOGIC;							-- StandBy Register output

		-- TDO MUX signals (going from TDO_MUX through Flip-Flop on falling edge)
signal  TDO_MUX: STD_LOGIC;								-- TDO_MUX output
signal  TDO_FF: STD_LOGIC;									-- TDO Flip-Flop output
signal  TDO_OE: STD_LOGIC;									-- TDO_OE output enable for 3-state buffer

-- ########### Signal declarations end ###############


-- *********** Component declarations start *************

component TAP is
  port (TCK: in STD_LOGIC;
        TMS: in STD_LOGIC;

		-- Data Register signals
        DR_CAPT: out STD_LOGIC;	-- EN Load from Par.DReg in Shift DReg on rising TCK edge.
        DR_SH: out STD_LOGIC;		-- EN Shift in Shift DReg on Rising TCK edge.
        DR_UPD: out STD_LOGIC;	-- EN Update from Shift DReg in Par.DReg on falling TCK edge.

		-- Instruction Register signals
        IR_CAPT: out STD_LOGIC;	-- EN Load from Par.IReg in Shift IReg on rising TCK edge.
        IR_SH: out STD_LOGIC;		-- EN Shift in Shift IReg on Rising TCK edge.
        IR_UPD: out STD_LOGIC;	-- EN Update from Shift IReg in Par.IReg on falling TCK edge.

        Reset: out STD_LOGIC;

		  State: out STD_LOGIC_VECTOR(3 downto 0) -- Used for debugging
		  );

end component TAP;

component INSTR_REG is
    generic (REG_WIDTH : integer);
    port ( TCK : in std_logic;
           SH_EN : in std_logic;		-- Shift Enable
           CAPT_EN : in std_logic;	-- Capture Enable (Par.Reg->Ser Reg.)
           UPD_EN : in std_logic;	-- Update Enable (Ser Reg.->Par.Reg)
           DIN : in std_logic;		-- Serial Data IN
           DOUT : out std_logic;		-- Serial Data OUT
           Q : out std_logic_vector(REG_WIDTH-1 downto 0));	-- Par.Reg. OUTs
end component INSTR_REG;

component INSTR_DEC is						-- Instruction Decoder
    port ( INSTR : in std_logic_vector(5 downto 0);	-- Instruction Code
           IR_SH : in std_logic;								-- Enable Data Reg. if IR_SH = '0'

           ID_REG_EN  : out std_logic;                
           RS_THR_DAC : out std_logic;               
           TP_VAL_EN  : out std_logic;                
           
			  DAC_EN : out std_logic_vector(3 downto 0);
           ADC_EN : out std_logic_vector(4 downto 0);
           
			  TP_GRP_EN  : out std_logic;                
           TP_GRP_WR  : out std_logic;                
			  
			  TP_STP_EN  : out std_logic;                
			  TP_STP_WR  : out std_logic;                
			  
			  STANDBY_EN : out std_logic;               
			  STANDBY_WR : out std_logic;               
			  
			  VAR_PD_EN  : out std_logic;                
			  VAR_PD_WR  : out std_logic;                
			  
			  BYPASS_EN  : out std_logic);                 
			  
end component INSTR_DEC;

component REG_SP is
    generic (REG_WIDTH : integer);
    port ( TCK : in std_logic;
           SH_EN : in std_logic;		-- Shift Enable
           CAPT_EN : in std_logic;	-- Capture Enable (Par.Reg->Ser Reg.)
           UPD_EN : in std_logic;	-- Update Enable (Ser Reg.->Par.Reg)
           DIN : in std_logic;		-- Serial Data IN
           DOUT : out std_logic;		-- Serial Data OUT
           Q : out std_logic_vector(REG_WIDTH-1 downto 0));	-- Par.Reg. OUTs
end component REG_SP;

component PD_VAR is
    port ( TCK : in std_logic;
           SH_EN : in std_logic;		-- Shift Enable
           CAPT_EN : in std_logic;	-- Capture Enable (Par.Reg->Ser Reg.)
           UPD_EN : in std_logic;	-- Update Enable (Ser Reg.->Par.Reg)
           DIN : in std_logic;		-- Serial Data IN
           DOUT : out std_logic;		-- Serial Data OUT
           Q : out std_logic);		-- Par.Reg. OUTs
end component PD_VAR;

component REG_ID is
--    Generic ( REG_WIDTH : integer;
--	           CHIP_ID: STD_LOGIC_VECTOR(REG_WIDTH-1 downto 0));
    Port ( TCK : in std_logic;
           SH_EN : in std_logic;		-- Shift Enable
           CAPT_EN : in std_logic;	-- Capture Enable (CHIP_ID->Ser Reg.)
           DIN : in std_logic;		-- Serial Data IN
           DOUT : out std_logic);		-- Serial Data OUT
end component REG_ID;

-- *********** Component declarations end *************

begin

T:	TAP port map (			-- TAP controller component
        TCK => TCK,
        TMS => TMS,

		-- Data Register signals
        DR_CAPT => DR_CAPT,
        DR_SH => DR_SH,
        DR_UPD => DR_UPD,

		-- Instruction Register signals
        IR_CAPT => IR_CAPT,
        IR_SH => IR_SH,
        IR_UPD => IR_UPD,

        Reset => TAP_RS,

		  State => State -- ****************** Used for debugging

		  );	-- TAP controller component END

IR: INSTR_REG					-- Instruction Register component
         generic map (REG_WIDTH => IR_WIDTH)
         port map (
           TCK => TCK,
           SH_EN => IR_SH,				-- Shift Enable
           CAPT_EN => IR_CAPT,		-- Capture Enable (Par.Reg->Ser Reg.)
           UPD_EN => IR_UPD,			-- Update Enable (Ser Reg.->Par.Reg)
           DIN => TDI,					-- Serial Data IN
           DOUT => IR_DOUT,			-- Serial Data OUT
           Q => INSTR					-- Par.Reg. OUTs
			  );  				-- Instruction Register component END

IN_DEC: INSTR_DEC			-- Instruction Decoder component
         port map (
           INSTR 		=> INSTR,
			  IR_SH     => IR_SH,

           ID_REG_EN 	=> ID_REG_EN,
           RS_THR_DAC 	=> RS_THR_DAC,
           TP_VAL_EN 	=> TP_VAL_EN,

           DAC_EN 		=> DAC_EN,
           ADC_EN 		=> ADC_EN,

           TP_GRP_EN 	=> TP_GRP_EN,
           TP_GRP_WR 	=> TP_GRP_WR,

           TP_STP_EN 	=> TP_STP_EN,
           TP_STP_WR 	=> TP_STP_WR,

           STANDBY_EN 	=> STANDBY_EN,
           STANDBY_WR 	=> STANDBY_WR,

           VAR_PD_EN 	=> VAR_PD_EN,
           VAR_PD_WR 	=> VAR_PD_WR,

           BYPASS_EN 	=> BYPASS_EN
			  );  				-- Instruction Decoder component END

BYPASS_SH <= BYPASS_EN and DR_SH;	-- Enable Signal for Bypass Register

BYPASS: process (TCK)		-- BYPASS register process
begin
   if TCK'event and TCK='1' then  --TCK rising edge
		if BYPASS_EN='1' then
      	BP_DOUT <= TDI;
		end if;
   end if;
end process;					-- BYPASS register process END

STANDBY_SH		<= STANDBY_EN and DR_SH;	-- Enable Signals for STANDBY Register
STANDBY_CAPT	<= STANDBY_EN and DR_CAPT;
STANDBY_UPD		<= STANDBY_EN and STANDBY_WR and DR_UPD;

SBR: REG_SP						-- StandBy Register component
         generic map (REG_WIDTH => 42)
         port map (
           TCK 		=> TCK,
           SH_EN 		=> STANDBY_SH,		-- Shift Enable
           CAPT_EN 	=> STANDBY_CAPT,	-- Capture Enable (Par.Reg->Ser Reg.)
           UPD_EN 	=> STANDBY_UPD,	-- Update Enable (Ser Reg.->Par.Reg)
           DIN 		=> TDI,				-- Serial Data IN
           DOUT 		=> STANDBY_DOUT,	-- Serial Data OUT
           Q 			=> Stand_By_N		-- Par.Reg. OUTs
			  );  				-- StandBy Register component END

TP_STP_SH	<= TP_STP_EN and DR_SH;	-- Enable Signals for TPSTP Register
TP_STP_CAPT	<= TP_STP_EN and DR_CAPT;
TP_STP_UPD	<= TP_STP_EN and TP_STP_WR and DR_UPD;

TPSTP: REG_SP						-- Test Pulse Strip Register component
         generic map (REG_WIDTH => 6)
         port map (
           TCK 		=> TCK,
           SH_EN 		=> TP_STP_SH,		-- Shift Enable
           CAPT_EN 	=> TP_STP_CAPT,	-- Capture Enable (Par.Reg->Ser Reg.)
           UPD_EN 	=> TP_STP_UPD,		-- Update Enable (Ser Reg.->Par.Reg)
           DIN 		=> TDI,				-- Serial Data IN
           DOUT 		=> TP_STP_DOUT,	-- Serial Data OUT
           Q 			=> TP_Strp_En		-- Par.Reg. OUTs
			  );  					-- Test Pulse Strip Register component END

TP_GRP_SH	<= TP_GRP_EN and DR_SH;	-- Enable Signals for TPSTP Register
TP_GRP_CAPT	<= TP_GRP_EN and DR_CAPT;
TP_GRP_UPD	<= TP_GRP_EN and TP_GRP_WR and DR_UPD;

TPGRP: REG_SP						-- Test Pulse Group Register component
         generic map (REG_WIDTH => 7)
         port map (
           TCK 		=> TCK,
           SH_EN 		=> TP_GRP_SH,		-- Shift Enable
           CAPT_EN 	=> TP_GRP_CAPT,	-- Capture Enable (Par.Reg->Ser Reg.)
           UPD_EN 	=> TP_GRP_UPD,		-- Update Enable (Ser Reg.->Par.Reg)
           DIN 		=> TDI,				-- Serial Data IN
           DOUT 		=> TP_GRP_DOUT,	-- Serial Data OUT
           Q 			=> TP_Gr_En			-- Par.Reg. OUTs
			  );  				-- Test Pulse Group Register component END

ADC_SH_DUM	<= ADC_EN and (DR_SH, DR_SH, DR_SH, DR_SH, DR_SH);	-- Enable Signals for ADCs
ADC_UPD	<= ADC_EN and (DR_UPD, DR_UPD, DR_UPD, DR_UPD, DR_UPD);	-- Signal to take out CS_ADC_N

ADC_SH_MOD: block

             begin
                process (TCK) -- Supress Clk_ADC for one cycle after ADC_SH (Chip select)		 
		 begin
		    if TCK'event and TCK='0' then	-- TCK falling edge
                       ADC_SH(0)	<= ADC_SH_DUM(0) ;	-- Enable Signals for ADCs
                       ADC_SH(1)	<= ADC_SH_DUM(1) ;	-- Enable Signals for ADCs
                       ADC_SH(2)	<= ADC_SH_DUM(2) ;	-- Enable Signals for ADCs
                       ADC_SH(3)	<= ADC_SH_DUM(3) ;	-- Enable Signals for ADCs
                       ADC_SH(4)	<= ADC_SH_DUM(4) ;	-- Enable Signals for ADCs
                                           
                    end if ;
         	end process;		
              end block ADC_SH_MOD ;


ADC: block						-- ADCs interface block
		begin
			Din_ADC	<= ADC_SH and (TDI,TDI,TDI,TDI,TDI);
			ADC_DOUT<= Dout_ADC;
			--Clk_ADC_dum <= (not ADC_SH or (TCK,TCK,TCK,TCK,TCK)) ;
			Clk_ADC_dum <= ADC_SH and (TCK,TCK,TCK,TCK,TCK);
			Clk_ADC <= Clk_ADC_dum ;
			process (ADC_SH, ADC_UPD)
			begin
			   if ADC_SH /= "00000" then   	-- Assert CS_ADC_N on ADC_SH
					CS_ADC_N	<= not ADC_SH;
			   elsif ADC_UPD /= "00000" then	-- Reset CS_ADC_N on ADC_UPD
					CS_ADC_N	<= "11111";
			   end if;
			end process;

		end block ADC;			-- ADCs interface block END


DAC_SH	<= DAC_EN and (DR_SH, DR_SH, DR_SH, DR_SH);		-- Enable Signals for DACs
DAC_UPD	<= DAC_EN and (DR_UPD, DR_UPD, DR_UPD, DR_UPD);	-- Signal to take out CS_DAC_N

DAC: block						-- DACs interface block
		begin
			Din_DAC	<= DAC_SH and (TDI,TDI,TDI,TDI);
			Clk_DAC	<= not DAC_SH or (TCK,TCK,TCK,TCK);

			process (DAC_SH, DAC_UPD)
			begin
			   if DAC_SH /= "0000" then   	-- Assert CS_DAC_N on DAC_SH
					CS_DAC_N	<= not DAC_SH;
			   elsif DAC_UPD /= "0000" then	-- Reset CS_DAC_N on DAC_UPD
					CS_DAC_N	<= "1111";
			   end if;
			end process;

		end block DAC;			-- DACs interface block END

DAC_RS: process (TCK, RS_THR_DAC)-- DACs Reset process. On PowerUp or Reset JTAG command 
											-- RS_DAC_N = "0..0", 
											-- on the 2nd TCK it becomes = "1..1" 
		begin
		   if RS_THR_DAC='1' then  			-- Reset Threshold DACs from JTAG command
					RS_DAC_N <= (others=> '0');
		   elsif TCK'event and TCK='1' then	-- TCK rising edge
		      	DAC_RES  <= '1';
					RS_DAC_N <= (others=> DAC_RES);
		   end if;
		end process;			-- DACs Reset process END

VAR: block						-- Variable Gain Amplifier interface block
		begin
			Din_TP	<= TP_VAL_EN and TDI and DR_SH;
			Clk_TP	<= TP_VAL_EN and TCK and DR_SH ;
			CS_TP_M	<= not (TP_VAL_EN and DR_SH) ;
		end block VAR;			-- Variable Gain Amplifier interface block END

VAR_TP: block

             begin
                process (TCK) -- Supress Clk_ADC for one cycle after ADC_SH (Chip select)		 
		 begin
		    if TCK'event and TCK='0' then	-- TCK falling edge
                       CS_TP_N	<= CS_TP_M ;	-- Enable Signals for ADCs                                         
                    end if ;
         	end process;		
              end block VAR_TP ;

VAR_PD_SH	<= VAR_PD_EN and DR_SH;	-- Enable Signals for VAR_PD Register
VAR_PD_CAPT	<= VAR_PD_EN and DR_CAPT;
VAR_PD_UPD	<= VAR_PD_EN and VAR_PD_WR and DR_UPD;

VAR_PD: PD_VAR					-- Variable Gain Amplifier Power Down Register component
         port map (
           TCK 		=> TCK,
           SH_EN 		=> VAR_PD_SH,		-- Shift Enable
           CAPT_EN 	=> VAR_PD_CAPT,	-- Capture Enable (Par.Reg->Ser Reg.)
           UPD_EN 	=> VAR_PD_UPD,		-- Update Enable (Ser Reg.->Par.Reg)
           DIN 		=> TDI,				-- Serial Data IN
           DOUT 		=> VAR_PD_DOUT,	-- Serial Data OUT
           Q 			=> PD_TP_N			-- Par.Reg. OUTs
			  );  				-- Variable Gain Amplifier Power Down Register component END

ID_REG_SH	<= ID_REG_EN and DR_SH;	-- Enable Signals for ID_REG Register
ID_REG_CAPT	<= ID_REG_EN and DR_CAPT;

ID_REG: REG_ID					-- Chip ID Register component
--    generic map ( REG_WIDTH => CH_ID_WIDTH,
--	           		CHIP_ID => CHIP_ID )
    port map (	TCK 		=> TCK,
           		SH_EN 	=> ID_REG_SH,		-- Shift Enable
           		CAPT_EN 	=> ID_REG_CAPT,	-- Capture Enable (CHIP_ID->Ser Reg.)
           		DIN 		=> TDI,				-- Serial Data IN
           		DOUT 		=> ID_REG_DOUT		-- Serial Data OUT
					);				-- Chip ID Register component END

TDO_MX: block					-- TDO Multiplexer block
		begin

            TDO_MUX <= IR_DOUT when (IR_SH ='1') else 'Z';				-- Instruction Registers output

	    TDO_MUX <= BP_DOUT     when (BYPASS_EN ='1') else 'Z';	-- Bypass Register output
	    TDO_MUX <= TP_STP_DOUT when (TP_STP_EN ='1') else 'Z';	-- TP_Strip Register output
	    TDO_MUX <= TP_GRP_DOUT when (TP_GRP_EN ='1') else 'Z';	-- TP_Group Register output
	    TDO_MUX <= VAR_PD_DOUT when (VAR_PD_EN ='1') else 'Z';	-- Var. Gain Ampl. Power Down Register output

	    TDO_MUX <= ADC_DOUT(0) when (ADC_EN ="00001") else 'Z';	-- ADC0 interface output
	    TDO_MUX <= ADC_DOUT(1) when (ADC_EN ="00010") else 'Z';	-- ADC1 interface output
	    TDO_MUX <= ADC_DOUT(2) when (ADC_EN ="00100") else 'Z';	-- ADC2 interface output
	    TDO_MUX <= ADC_DOUT(3) when (ADC_EN ="01000") else 'Z';	-- ADC3 interface output
	    TDO_MUX <= ADC_DOUT(4) when (ADC_EN ="10000") else 'Z';	-- ADC4 interface output

	    TDO_MUX <= ID_REG_DOUT  when (ID_REG_EN ='1')  else 'Z';	-- Chip ID Register output
	    TDO_MUX <= STANDBY_DOUT when (STANDBY_EN ='1') else 'Z';	-- StandBy Register output

		end block TDO_MX;	-- TDO Multiplexer block END

TDO_FlFl: process (TCK)		-- TDO and TDO_EN Flip-Flop on the falling edge of TCK 
		begin
		    if TCK'event and TCK='0' then	-- TCK falling edge
		       	TDO_FF <= TDO_MUX;
		        TDO_OE <= IR_SH or DR_SH;
		    end if;
		end process;			-- TDO_FF process END

TDO <= TDO_FF when (TDO_OE ='1') else 'Z';	-- TDO output

--*************************** Debugging Circuits Section *******************************
OpCode <= INSTR;
--Future <= "00000000";
Future <= (Dout_ADC(0),Dout_ADC(1),Dout_ADC(2),Clk_ADC_dum(0),Clk_ADC_dum(1),Clk_ADC_dum(2),'0','0') ;
--************************* Debugging Circuits Section END *****************************

end behavioral;
