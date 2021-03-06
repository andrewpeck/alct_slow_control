-- JTAG TAP controller VHDL Module (file TAP.vhd)
-- FOR ->
-- Slow Control ALCT-2001 Chip
-- Xilinx Spartan XL: XCS40XL-4PQ208C
-- SVN, July 2001

library IEEE;
use IEEE.std_logic_1164.all;

--use IEEE.std_logic_arith.all;
--use IEEE.std_logic_unsigned.all;

--library SYNOPSYS;
--use SYNOPSYS.attributes.all;

entity TAP is 
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
end;

architecture TAP_arch of TAP is

-- BINARY ENCODED state machine: TAP
type TAP_state is (Test_Logic_Reset, Run_Test_Idle, Select_DR_Scan, Capture_DR, 
                  Shift_DR, Exit1_DR, Pause_DR, Exit2_DR, Update_DR, Select_IR_Scan, 
                  Capture_IR, Shift_IR, Exit1_IR, Pause_IR, Exit2_IR, Update_IR);
attribute ENUM_ENCODING: STRING;
attribute enum_encoding of TAP_state: type is
	"0000 " &		-- Test_Logic_Reset
	"0001 " &		-- Run_Test_Idle
	"0010 " &		-- Select_DR_Scan
	"0011 " &		-- Capture_DR
	"0100 " &		-- Shift_DR
	"0101 " &		-- Exit1_DR
	"0110 " &		-- Pause_DR
	"0111 " &		-- Exit2_DR
	"1000 " &		-- Update_DR
	"1001 " &		-- Select_IR_Scan
	"1010 " &		-- Capture_IR
	"1011 " &		-- Shift_IR
	"1100 " &		-- Exit1_IR
	"1101 " &		-- Pause_IR
	"1110 " &		-- Exit2_IR
	"1111 ";		-- Update_IR

signal TAP_CS, TAP_NS: TAP_state; -- Current and Next State

begin

TAP_machine_comb: process (TAP_CS, TMS)  -- Next State calculation
begin
    case TAP_CS is
       when Test_Logic_Reset =>
            if (TMS = '0') then TAP_NS <= Run_Test_Idle;
            else                TAP_NS <= Test_Logic_Reset;
	    	end if;
       when Run_Test_Idle =>
            if (TMS = '0') then TAP_NS <= Run_Test_Idle;
            else                TAP_NS <= Select_DR_Scan;
	    	end if;

-- Data Register loop
       when Select_DR_Scan =>
            if (TMS = '0') then TAP_NS <= Capture_DR;
            else                TAP_NS <= Select_IR_Scan;
	    	end if;
       when Capture_DR =>
            if (TMS = '0') then TAP_NS <= Shift_DR;
            else                TAP_NS <= Exit1_DR;
	    	end if;
       when Shift_DR =>
            if (TMS = '0') then TAP_NS <= Shift_DR;
            else                TAP_NS <= Exit1_DR;
	    	end if;
       when Exit1_DR =>
            if (TMS = '0') then TAP_NS <= Pause_DR;
            else                TAP_NS <= Update_DR;
	    	end if;
       when Pause_DR =>
            if (TMS = '0') then TAP_NS <= Pause_DR;
            else                TAP_NS <= Exit2_DR;
	    	end if;
       when Exit2_DR =>
            if (TMS = '0') then TAP_NS <= Shift_DR;
            else                TAP_NS <= Update_DR;
	    	end if;
       when Update_DR =>
            if (TMS = '0') then TAP_NS <= Run_Test_Idle;
            else                TAP_NS <= Select_DR_Scan;
	    	end if;

-- Instruction Register loop
       when Select_IR_Scan =>
            if (TMS = '0') then TAP_NS <= Capture_IR;
            else                TAP_NS <= Test_Logic_Reset;
	    	end if;
       when Capture_IR =>
            if (TMS = '0') then TAP_NS <= Shift_IR;
            else                TAP_NS <= Exit1_IR;
	    	end if;
       when Shift_IR =>
            if (TMS = '0') then TAP_NS <= Shift_IR;
            else                TAP_NS <= Exit1_IR;
	    	end if;
       when Exit1_IR =>
            if (TMS = '0') then TAP_NS <= Pause_IR;
            else                TAP_NS <= Update_IR;
	    	end if;
       when Pause_IR =>
            if (TMS = '0') then TAP_NS <= Pause_IR;
            else                TAP_NS <= Exit2_IR;
	    	end if;
       when Exit2_IR =>
            if (TMS = '0') then TAP_NS <= Shift_IR;
            else                TAP_NS <= Update_IR;
	    	end if;
       when Update_IR =>
            if (TMS = '0') then TAP_NS <= Run_Test_Idle;
            else                TAP_NS <= Select_DR_Scan;
	    	end if;
	end case;
end process;
  

TAP_machine_sync: process (TCK)
begin
	if (TCK'event and TCK = '1') then TAP_CS <= TAP_NS;
	end if;
end process;

-- signal assignment statements for combinatorial outputs
Reset_assignment:
Reset <= '1'   when (TAP_CS = Test_Logic_Reset) else '0';

DR_CAPT_assignment:
DR_CAPT <= '1' when (TAP_CS = Capture_DR) else '0';

IR_CAPT_assignment:
IR_CAPT <= '1' when (TAP_CS = Capture_IR) else '0';

DR_SH_assignment:
DR_SH <= '1'   when (TAP_CS = Shift_DR)   else '0';

IR_SH_assignment:
IR_SH <= '1'   when (TAP_CS = Shift_IR)   else '0';

DR_UPD_assignment:
DR_UPD <= '1'   when (TAP_CS = Update_DR)  else '0';

IR_UPD_assignment:
IR_UPD <= '1'   when (TAP_CS = Update_IR)  else '0';

--*************************** Debugging Circuits Section *******************************

process (TAP_CS)  -- type TAP_state to std_logic_vector conversion
begin
    case TAP_CS is
       when Test_Logic_Reset => State  <= "0000";
       when Run_Test_Idle    => State  <= "0001";

-- Data Register loop
       when Select_DR_Scan => State  <= "0010";
       when Capture_DR     => State  <= "0011";
       when Shift_DR       => State  <= "0100";
       when Exit1_DR       => State  <= "0101";
       when Pause_DR       => State  <= "0110";
       when Exit2_DR       => State  <= "0111";
       when Update_DR      => State  <= "1000";

-- Instruction Register loop
       when Select_IR_Scan => State  <= "1001";
       when Capture_IR     => State  <= "1010";
       when Shift_IR       => State  <= "1011";
       when Exit1_IR       => State  <= "1100";
       when Pause_IR       => State  <= "1101";
       when Exit2_IR       => State  <= "1110";
       when Update_IR      => State  <= "1111";
	end case;
end process;
 
--************************* Debugging Circuits Section END *****************************

end TAP_arch;
