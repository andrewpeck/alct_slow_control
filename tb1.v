`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:20:07 07/18/2012
// Design Name:   Sl_Ctrl
// Module Name:   D:/MC_S6/Xilinx/sl_ctrlv3_ise/tb1.v
// Project Name:  sl_ctrlv3_ise
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Sl_Ctrl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb1;

	// Inputs
	reg [4:0] Dout_ADC;
	reg TCK;
	reg TMS;
	reg TDI;

	// Outputs
	wire Din_TP;
	wire Clk_TP;
	wire CS_TP_N;
	wire PD_TP_N;
	wire [4:0] Din_ADC;
	wire [4:0] Clk_ADC;
	wire [4:0] CS_ADC_N;
	wire [3:0] Din_DAC;
	wire [3:0] Clk_DAC;
	wire [3:0] CS_DAC_N;
	wire [3:0] RS_DAC_N;
	wire [41:0] Stand_By_N;
	wire [6:0] TP_Gr_En;
	wire [5:0] TP_Strp_En;
	wire TDO;
	wire [5:0] OpCode;
	wire [3:0] State;
	wire [7:0] Future;

	// Instantiate the Unit Under Test (UUT)
	Sl_Ctrl uut (
		.Din_TP(Din_TP), 
		.Clk_TP(Clk_TP), 
		.CS_TP_N(CS_TP_N), 
		.PD_TP_N(PD_TP_N), 
		.Din_ADC(Din_ADC), 
		.Dout_ADC(Dout_ADC), 
		.Clk_ADC(Clk_ADC), 
		.CS_ADC_N(CS_ADC_N), 
		.Din_DAC(Din_DAC), 
		.Clk_DAC(Clk_DAC), 
		.CS_DAC_N(CS_DAC_N), 
		.RS_DAC_N(RS_DAC_N), 
		.Stand_By_N(Stand_By_N), 
		.TP_Gr_En(TP_Gr_En), 
		.TP_Strp_En(TP_Strp_En), 
		.TCK(TCK), 
		.TMS(TMS), 
		.TDI(TDI), 
		.TDO(TDO), 
		.OpCode(OpCode), 
		.State(State), 
		.Future(Future)
	);
	reg tdo_in;
// Initialize Inputs
	initial begin
	Dout_ADC = 0;
	TCK = 0;
	TMS = 0;
	TDI = 0;

// Wait 100 ns for global reset to finish
	#100;
	#2;

//	Opcode=0x01
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=0; TMS=1; TDI=0;
	#50 TCK=1; TMS=1; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=1; TDI=0;
	#50 TCK=1; TMS=1; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=1; TDI=0;
	#50 TCK=1; TMS=1; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=1; TDI=0;
	#50 TCK=1; TMS=1; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=1; TDI=0;
	#50 TCK=1; TMS=1; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=1; TMS=0; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=0; TMS=1; TDI=0;
	#50 TCK=1; TMS=1; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=1; TDI=0;
	#50 TCK=1; TMS=1; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=1; TMS=0; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=1; TMS=0; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=1;
	#50 TCK=1; TMS=0; TDI=1;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=1; TMS=0; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=1; TMS=0; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=1; TMS=0; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=1; TMS=0; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=1; TDI=0;
	#50 TCK=1; TMS=1; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=1; TDI=0;
	#50 TCK=1; TMS=1; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=1; TMS=0; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=0; TMS=1; TDI=0;
	#50 TCK=1; TMS=1; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=1; TMS=0; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=1; TMS=0; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=1; TDI=1;
	#50 TCK=1; TMS=1; TDI=1;
	#0  tdo_in=1;
	#50 TCK=0; TMS=1; TDI=0;
	#50 TCK=1; TMS=1; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=1; TMS=0; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=0; TMS=1; TDI=0;
	#50 TCK=1; TMS=1; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=1; TDI=0;
	#50 TCK=1; TMS=1; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=1; TMS=0; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=1; TMS=0; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=1;
	#50 TCK=1; TMS=0; TDI=1;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=1; TMS=0; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=1; TMS=0; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=1; TMS=0; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=1; TMS=0; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=1; TDI=0;
	#50 TCK=1; TMS=1; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=1; TDI=0;
	#50 TCK=1; TMS=1; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=1; TMS=0; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=0; TMS=1; TDI=0;
	#50 TCK=1; TMS=1; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=1; TMS=0; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=1; TMS=0; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=1; TDI=0;
	#50 TCK=1; TMS=1; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=1; TDI=0;
	#50 TCK=1; TMS=1; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;
	#50 TCK=1; TMS=0; TDI=0;
	#0  tdo_in=1;
	#50 TCK=0; TMS=0; TDI=0;


	end
      
endmodule

