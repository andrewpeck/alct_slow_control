////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.76xd
//  \   \         Application: netgen
//  /   /         Filename: Sl_Ctrl_translate.v
// /___/   /\     Timestamp: Wed Jul 18 11:20:43 2012
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim Sl_Ctrl.ngd Sl_Ctrl_translate.v 
// Device	: 6slx150fgg900-3
// Input file	: Sl_Ctrl.ngd
// Output file	: D:\MC_S6\Xilinx\sl_ctrlv3_ise\netgen\translate\Sl_Ctrl_translate.v
// # of Modules	: 1
// Design Name	: Sl_Ctrl
// Xilinx        : D:\Xilinx\XilISE13.3\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Sl_Ctrl (
  TCK, TMS, TDI, Din_TP, Clk_TP, CS_TP_N, PD_TP_N, TDO, Dout_ADC, Din_ADC, Clk_ADC, CS_ADC_N, Din_DAC, Clk_DAC, CS_DAC_N, RS_DAC_N, Stand_By_N, 
TP_Gr_En, TP_Strp_En, OpCode, State, Future
);
  input TCK;
  input TMS;
  input TDI;
  output Din_TP;
  output Clk_TP;
  output CS_TP_N;
  output PD_TP_N;
  output TDO;
  input [4 : 0] Dout_ADC;
  output [4 : 0] Din_ADC;
  output [4 : 0] Clk_ADC;
  output [4 : 0] CS_ADC_N;
  output [3 : 0] Din_DAC;
  output [3 : 0] Clk_DAC;
  output [3 : 0] CS_DAC_N;
  output [3 : 0] RS_DAC_N;
  output [41 : 0] Stand_By_N;
  output [6 : 0] TP_Gr_En;
  output [5 : 0] TP_Strp_En;
  output [5 : 0] OpCode;
  output [3 : 0] State;
  output [7 : 0] Future;
  wire Future_7_OBUF_0;
  wire Future_6_OBUF_1;
  wire Future_5_OBUF_2;
  wire Dout_ADC_3_IBUF_3;
  wire Dout_ADC_4_IBUF_4;
  wire TCK_IBUF_BUFG_5;
  wire TMS_IBUF_6;
  wire TDI_IBUF_7;
  wire \T/TAP_CS_FSM_FFd1_8 ;
  wire \T/TAP_CS_FSM_FFd2_9 ;
  wire \T/TAP_CS_FSM_FFd3_10 ;
  wire \T/TAP_CS_FSM_FFd4_11 ;
  wire DR_UPD;
  wire IR_SH;
  wire IR_UPD;
  wire \VAR_PD/SREG_80 ;
  wire \VAR_PD/PREG_81 ;
  wire Clk_TP_OBUF_83;
  wire RS_DAC_N_0_84;
  wire CS_TP_N_OBUF_90;
  wire TDO_FF_91;
  wire TDO_OE_92;
  wire BP_DOUT_93;
  wire Din_TP_OBUF_94;
  wire TDO_MUX;
  wire STANDBY_CAPT;
  wire TP_STP_CAPT;
  wire TP_GRP_CAPT;
  wire IR_SH_DR_SH_OR_28_o;
  wire TP_GRP_UPD;
  wire TP_STP_UPD;
  wire VAR_PD_UPD;
  wire ID_REG_EN;
  wire RS_THR_DAC;
  wire TP_VAL_EN;
  wire BYPASS_EN;
  wire Clk_ADC_4_OBUF_112;
  wire Clk_ADC_3_OBUF_113;
  wire Future_2_OBUF_114;
  wire Future_3_OBUF_115;
  wire Future_4_OBUF_116;
  wire Clk_DAC_3_OBUF_117;
  wire Clk_DAC_2_OBUF_118;
  wire Clk_DAC_1_OBUF_119;
  wire Clk_DAC_0_OBUF_120;
  wire Din_ADC_4_OBUF_121;
  wire Din_ADC_3_OBUF_122;
  wire Din_ADC_2_OBUF_123;
  wire Din_ADC_1_OBUF_124;
  wire Din_ADC_0_OBUF_125;
  wire Din_DAC_3_OBUF_127;
  wire Din_DAC_2_OBUF_128;
  wire Din_DAC_1_OBUF_129;
  wire Din_DAC_0_OBUF_130;
  wire \DAC_SH[3] ;
  wire \DAC_SH[1] ;
  wire \CS_ADC_N[4]_ADC_SH[4]_MUX_188_o ;
  wire \CS_ADC_N[4]_ADC_SH[4]_MUX_190_o ;
  wire \CS_ADC_N[4]_ADC_SH[4]_MUX_192_o ;
  wire \CS_ADC_N[4]_ADC_SH[4]_MUX_194_o ;
  wire \CS_ADC_N[4]_ADC_SH[4]_MUX_196_o ;
  wire CS_ADC_N_4_138;
  wire CS_ADC_N_3_139;
  wire CS_ADC_N_2_140;
  wire CS_ADC_N_1_141;
  wire CS_ADC_N_0_142;
  wire \CS_DAC_N[3]_DAC_SH[3]_MUX_198_o ;
  wire \CS_DAC_N[3]_DAC_SH[3]_MUX_200_o ;
  wire \CS_DAC_N[3]_DAC_SH[3]_MUX_202_o ;
  wire \CS_DAC_N[3]_DAC_SH[3]_MUX_204_o ;
  wire \ADC_SH[4]_ADC_UPD[4]_OR_8_o_147 ;
  wire CS_DAC_N_3_148;
  wire CS_DAC_N_2_149;
  wire CS_DAC_N_1_150;
  wire CS_DAC_N_0_151;
  wire \DAC_SH[3]_DAC_UPD[3]_OR_20_o_152 ;
  wire Future_0_OBUF_153;
  wire CS_TP_M_norst;
  wire DR_SH_inv;
  wire TDO_OE_inv;
  wire \VAR_PD/_n0011_inv_157 ;
  wire \VAR_PD/SREG_PREG_MUX_207_o ;
  wire \T/TAP_CS_FSM_FFd4-In ;
  wire \T/TAP_CS_FSM_FFd3-In ;
  wire \T/TAP_CS_FSM_FFd2-In ;
  wire \T/TAP_CS_FSM_FFd1-In ;
  wire \IN_DEC/_n0260<5>1 ;
  wire \IN_DEC/_n0132<5>1 ;
  wire \IN_DEC/_n0196<5>1 ;
  wire ID_REG_CAPT1;
  wire \IN_DEC/_n0164<5>1 ;
  wire \IR/_n0018_inv ;
  wire \IR/SREG[5]_PWR_7_o_mux_1_OUT<0> ;
  wire \IR/SREG[5]_PWR_7_o_mux_1_OUT<1> ;
  wire \IR/SREG[5]_PWR_7_o_mux_1_OUT<2> ;
  wire \IR/SREG[5]_PWR_7_o_mux_1_OUT<3> ;
  wire \IR/SREG[5]_PWR_7_o_mux_1_OUT<4> ;
  wire \IR/SREG[5]_PWR_7_o_mux_1_OUT<5> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<0> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<1> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<2> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<3> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<4> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<5> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<6> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<7> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<8> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<9> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<10> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<11> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<12> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<13> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<14> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<15> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<16> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<17> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<18> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<19> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<20> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<21> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<22> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<23> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<24> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<25> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<26> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<27> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<28> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<29> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<30> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<31> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<32> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<33> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<34> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<35> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<36> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<37> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<38> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<39> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<40> ;
  wire \SBR/SREG[41]_PREG[41]_mux_1_OUT<41> ;
  wire \TPSTP/_n0018_inv ;
  wire \TPSTP/SREG[5]_PREG[5]_mux_1_OUT<0> ;
  wire \TPSTP/SREG[5]_PREG[5]_mux_1_OUT<1> ;
  wire \TPSTP/SREG[5]_PREG[5]_mux_1_OUT<2> ;
  wire \TPSTP/SREG[5]_PREG[5]_mux_1_OUT<3> ;
  wire \TPSTP/SREG[5]_PREG[5]_mux_1_OUT<4> ;
  wire \TPSTP/SREG[5]_PREG[5]_mux_1_OUT<5> ;
  wire \TPGRP/_n0018_inv ;
  wire \TPGRP/SREG[6]_PREG[6]_mux_1_OUT<0> ;
  wire \TPGRP/SREG[6]_PREG[6]_mux_1_OUT<1> ;
  wire \TPGRP/SREG[6]_PREG[6]_mux_1_OUT<2> ;
  wire \TPGRP/SREG[6]_PREG[6]_mux_1_OUT<3> ;
  wire \TPGRP/SREG[6]_PREG[6]_mux_1_OUT<4> ;
  wire \TPGRP/SREG[6]_PREG[6]_mux_1_OUT<5> ;
  wire \TPGRP/SREG[6]_PREG[6]_mux_1_OUT<6> ;
  wire \IN_DEC/Mmux_BYPASS_EN1 ;
  wire N2;
  wire TDO_MUXLogicTrst;
  wire TDO_MUXLogicTrst1_331;
  wire TDO_MUXLogicTrst2_332;
  wire TDO_MUXLogicTrst3_333;
  wire TDO_MUXLogicTrst4_334;
  wire TDO_MUXLogicTrst5_335;
  wire N4;
  wire N8;
  wire N10;
  wire CS_TP_N_rstpot;
  wire BP_DOUT_rstpot_456;
  wire \VAR_PD/PREG_rstpot_457 ;
  wire \VAR_PD/SREG_rstpot_458 ;
  wire \ID_REG/SREG_39_rstpot_459 ;
  wire \ID_REG/SREG_38_rstpot_460 ;
  wire \ID_REG/SREG_37_rstpot_461 ;
  wire \ID_REG/SREG_36_rstpot_462 ;
  wire \ID_REG/SREG_35_rstpot_463 ;
  wire \ID_REG/SREG_34_rstpot_464 ;
  wire \ID_REG/SREG_33_rstpot_465 ;
  wire \ID_REG/SREG_32_rstpot_466 ;
  wire \ID_REG/SREG_31_rstpot_467 ;
  wire \ID_REG/SREG_30_rstpot_468 ;
  wire \ID_REG/SREG_29_rstpot_469 ;
  wire \ID_REG/SREG_28_rstpot_470 ;
  wire \ID_REG/SREG_27_rstpot_471 ;
  wire \ID_REG/SREG_26_rstpot_472 ;
  wire \ID_REG/SREG_25_rstpot_473 ;
  wire \ID_REG/SREG_24_rstpot_474 ;
  wire \ID_REG/SREG_23_rstpot_475 ;
  wire \ID_REG/SREG_22_rstpot_476 ;
  wire \ID_REG/SREG_21_rstpot_477 ;
  wire \ID_REG/SREG_20_rstpot_478 ;
  wire \ID_REG/SREG_19_rstpot_479 ;
  wire \ID_REG/SREG_18_rstpot_480 ;
  wire \ID_REG/SREG_17_rstpot_481 ;
  wire \ID_REG/SREG_16_rstpot_482 ;
  wire \ID_REG/SREG_15_rstpot_483 ;
  wire \ID_REG/SREG_14_rstpot_484 ;
  wire \ID_REG/SREG_13_rstpot_485 ;
  wire \ID_REG/SREG_12_rstpot_486 ;
  wire \ID_REG/SREG_11_rstpot_487 ;
  wire \ID_REG/SREG_10_rstpot_488 ;
  wire \ID_REG/SREG_9_rstpot_489 ;
  wire \ID_REG/SREG_8_rstpot_490 ;
  wire \ID_REG/SREG_7_rstpot_491 ;
  wire \ID_REG/SREG_6_rstpot_492 ;
  wire \ID_REG/SREG_5_rstpot_493 ;
  wire \ID_REG/SREG_4_rstpot_494 ;
  wire \ID_REG/SREG_3_rstpot_495 ;
  wire \ID_REG/SREG_2_rstpot_496 ;
  wire \ID_REG/SREG_1_rstpot_497 ;
  wire \ID_REG/SREG_0_rstpot_498 ;
  wire N12;
  wire N14;
  wire N18;
  wire \IN_DEC/Mmux_ID_REG_EN11_502 ;
  wire \T/TAP_CS_FSM_FFd1_1_503 ;
  wire \T/TAP_CS_FSM_FFd2_1_504 ;
  wire \T/TAP_CS_FSM_FFd3_1_505 ;
  wire \T/TAP_CS_FSM_FFd4_1_506 ;
  wire \T/TAP_CS_IR_SH1_507 ;
  wire STANDBY_UPD1_rstpot_508;
  wire \SBR/PREG_0_dpot_509 ;
  wire \SBR/PREG_1_dpot_510 ;
  wire \SBR/PREG_2_dpot_511 ;
  wire \SBR/PREG_3_dpot_512 ;
  wire \SBR/PREG_4_dpot_513 ;
  wire \SBR/PREG_5_dpot_514 ;
  wire \SBR/PREG_6_dpot_515 ;
  wire \SBR/PREG_7_dpot_516 ;
  wire \SBR/PREG_8_dpot_517 ;
  wire \SBR/PREG_9_dpot_518 ;
  wire \SBR/PREG_10_dpot_519 ;
  wire \SBR/PREG_11_dpot_520 ;
  wire \SBR/PREG_12_dpot_521 ;
  wire \SBR/PREG_13_dpot_522 ;
  wire \SBR/PREG_14_dpot_523 ;
  wire \SBR/PREG_15_dpot_524 ;
  wire \SBR/PREG_16_dpot_525 ;
  wire \SBR/PREG_17_dpot_526 ;
  wire \SBR/PREG_18_dpot_527 ;
  wire \SBR/PREG_19_dpot_528 ;
  wire \SBR/PREG_20_dpot_529 ;
  wire \SBR/PREG_21_dpot_530 ;
  wire \SBR/PREG_22_dpot_531 ;
  wire \SBR/PREG_23_dpot_532 ;
  wire \SBR/PREG_24_dpot_533 ;
  wire \SBR/PREG_25_dpot_534 ;
  wire \SBR/PREG_26_dpot_535 ;
  wire \SBR/PREG_27_dpot_536 ;
  wire \SBR/PREG_28_dpot_537 ;
  wire \SBR/PREG_29_dpot_538 ;
  wire \SBR/PREG_30_dpot_539 ;
  wire \SBR/PREG_31_dpot_540 ;
  wire \SBR/PREG_32_dpot_541 ;
  wire \SBR/PREG_33_dpot_542 ;
  wire \SBR/PREG_34_dpot_543 ;
  wire \SBR/PREG_35_dpot_544 ;
  wire \SBR/PREG_36_dpot_545 ;
  wire \SBR/PREG_37_dpot_546 ;
  wire \SBR/PREG_38_dpot_547 ;
  wire \SBR/PREG_39_dpot_548 ;
  wire \SBR/PREG_40_dpot_549 ;
  wire \SBR/PREG_41_dpot_550 ;
  wire \T/TAP_CS_DR_UPD1_551 ;
  wire \SBR/_n0018_inv1 ;
  wire \T/TAP_CS_FSM_FFd1_2_553 ;
  wire \T/TAP_CS_FSM_FFd3_2_554 ;
  wire \T/TAP_CS_FSM_FFd2_2_555 ;
  wire \T/TAP_CS_FSM_FFd4_2_556 ;
  wire STANDBY_CAPT1_557;
  wire STANDBY_CAPT11;
  wire \SBR/_n0018_inv1_rstpot_559 ;
  wire \SBR/SREG_0_dpot_560 ;
  wire \SBR/SREG_1_dpot_561 ;
  wire \SBR/SREG_2_dpot_562 ;
  wire \SBR/SREG_3_dpot_563 ;
  wire \SBR/SREG_4_dpot_564 ;
  wire \SBR/SREG_5_dpot_565 ;
  wire \SBR/SREG_6_dpot_566 ;
  wire \SBR/SREG_7_dpot_567 ;
  wire \SBR/SREG_8_dpot_568 ;
  wire \SBR/SREG_9_dpot_569 ;
  wire \SBR/SREG_10_dpot_570 ;
  wire \SBR/SREG_11_dpot_571 ;
  wire \SBR/SREG_12_dpot_572 ;
  wire \SBR/SREG_13_dpot_573 ;
  wire \SBR/SREG_14_dpot_574 ;
  wire \SBR/SREG_15_dpot_575 ;
  wire \SBR/SREG_16_dpot_576 ;
  wire \SBR/SREG_17_dpot_577 ;
  wire \SBR/SREG_18_dpot_578 ;
  wire \SBR/SREG_19_dpot_579 ;
  wire \SBR/SREG_20_dpot_580 ;
  wire \SBR/SREG_21_dpot_581 ;
  wire \SBR/SREG_22_dpot_582 ;
  wire \SBR/SREG_23_dpot_583 ;
  wire \SBR/SREG_24_dpot_584 ;
  wire \SBR/SREG_25_dpot_585 ;
  wire \SBR/SREG_26_dpot_586 ;
  wire \SBR/SREG_27_dpot_587 ;
  wire \SBR/SREG_28_dpot_588 ;
  wire \SBR/SREG_29_dpot_589 ;
  wire \SBR/SREG_30_dpot_590 ;
  wire \SBR/SREG_31_dpot_591 ;
  wire \IN_DEC/Mmux_ID_REG_EN111 ;
  wire TCK_IBUF_593;
  wire \NlwInverterSignal_TDO_OE/C ;
  wire VCC;
  wire GND;
  wire \NlwInverterSignal_ADC_SH_0/C ;
  wire \NlwInverterSignal_ADC_SH_1/C ;
  wire \NlwInverterSignal_ADC_SH_2/C ;
  wire \NlwInverterSignal_ADC_SH_3/C ;
  wire \NlwInverterSignal_ADC_SH_4/C ;
  wire \NlwInverterSignal_TDO_FF/C ;
  wire \NlwInverterSignal_IR/PREG_5/C ;
  wire \NlwInverterSignal_IR/PREG_4/C ;
  wire \NlwInverterSignal_IR/PREG_3/C ;
  wire \NlwInverterSignal_IR/PREG_2/C ;
  wire \NlwInverterSignal_IR/PREG_1/C ;
  wire \NlwInverterSignal_IR/PREG_0/C ;
  wire \NlwInverterSignal_SBR/PREG_41/C ;
  wire \NlwInverterSignal_SBR/PREG_40/C ;
  wire \NlwInverterSignal_SBR/PREG_39/C ;
  wire \NlwInverterSignal_SBR/PREG_38/C ;
  wire \NlwInverterSignal_SBR/PREG_37/C ;
  wire \NlwInverterSignal_SBR/PREG_36/C ;
  wire \NlwInverterSignal_SBR/PREG_35/C ;
  wire \NlwInverterSignal_SBR/PREG_34/C ;
  wire \NlwInverterSignal_SBR/PREG_33/C ;
  wire \NlwInverterSignal_SBR/PREG_32/C ;
  wire \NlwInverterSignal_SBR/PREG_31/C ;
  wire \NlwInverterSignal_SBR/PREG_30/C ;
  wire \NlwInverterSignal_SBR/PREG_29/C ;
  wire \NlwInverterSignal_SBR/PREG_28/C ;
  wire \NlwInverterSignal_SBR/PREG_27/C ;
  wire \NlwInverterSignal_SBR/PREG_26/C ;
  wire \NlwInverterSignal_SBR/PREG_25/C ;
  wire \NlwInverterSignal_SBR/PREG_24/C ;
  wire \NlwInverterSignal_SBR/PREG_23/C ;
  wire \NlwInverterSignal_SBR/PREG_22/C ;
  wire \NlwInverterSignal_SBR/PREG_21/C ;
  wire \NlwInverterSignal_SBR/PREG_20/C ;
  wire \NlwInverterSignal_SBR/PREG_19/C ;
  wire \NlwInverterSignal_SBR/PREG_18/C ;
  wire \NlwInverterSignal_SBR/PREG_17/C ;
  wire \NlwInverterSignal_SBR/PREG_16/C ;
  wire \NlwInverterSignal_SBR/PREG_15/C ;
  wire \NlwInverterSignal_SBR/PREG_14/C ;
  wire \NlwInverterSignal_SBR/PREG_13/C ;
  wire \NlwInverterSignal_SBR/PREG_12/C ;
  wire \NlwInverterSignal_SBR/PREG_11/C ;
  wire \NlwInverterSignal_SBR/PREG_10/C ;
  wire \NlwInverterSignal_SBR/PREG_9/C ;
  wire \NlwInverterSignal_SBR/PREG_8/C ;
  wire \NlwInverterSignal_SBR/PREG_7/C ;
  wire \NlwInverterSignal_SBR/PREG_6/C ;
  wire \NlwInverterSignal_SBR/PREG_5/C ;
  wire \NlwInverterSignal_SBR/PREG_4/C ;
  wire \NlwInverterSignal_SBR/PREG_3/C ;
  wire \NlwInverterSignal_SBR/PREG_2/C ;
  wire \NlwInverterSignal_SBR/PREG_1/C ;
  wire \NlwInverterSignal_SBR/PREG_0/C ;
  wire \NlwInverterSignal_TPSTP/PREG_5/C ;
  wire \NlwInverterSignal_TPSTP/PREG_4/C ;
  wire \NlwInverterSignal_TPSTP/PREG_3/C ;
  wire \NlwInverterSignal_TPSTP/PREG_2/C ;
  wire \NlwInverterSignal_TPSTP/PREG_1/C ;
  wire \NlwInverterSignal_TPSTP/PREG_0/C ;
  wire \NlwInverterSignal_TPGRP/PREG_6/C ;
  wire \NlwInverterSignal_TPGRP/PREG_5/C ;
  wire \NlwInverterSignal_TPGRP/PREG_4/C ;
  wire \NlwInverterSignal_TPGRP/PREG_3/C ;
  wire \NlwInverterSignal_TPGRP/PREG_2/C ;
  wire \NlwInverterSignal_TPGRP/PREG_1/C ;
  wire \NlwInverterSignal_TPGRP/PREG_0/C ;
  wire \NlwInverterSignal_CS_TP_N/C ;
  wire \NlwInverterSignal_VAR_PD/PREG/C ;
  wire [5 : 0] \IR/PREG ;
  wire [5 : 0] \IR/SREG ;
  wire [41 : 0] \SBR/PREG ;
  wire [41 : 0] \SBR/SREG ;
  wire [5 : 0] \TPSTP/PREG ;
  wire [5 : 0] \TPSTP/SREG ;
  wire [6 : 0] \TPGRP/PREG ;
  wire [6 : 0] \TPGRP/SREG ;
  wire [39 : 0] \ID_REG/SREG ;
  wire [4 : 0] ADC_SH;
  wire [4 : 0] ADC_EN;
  X_ONE   XST_VCC (
    .O(CS_TP_M_norst)
  );
  X_ZERO   XST_GND (
    .O(Future_0_OBUF_153)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  TDO_OE (
    .CLK(\NlwInverterSignal_TDO_OE/C ),
    .I(IR_SH_DR_SH_OR_28_o),
    .O(TDO_OE_92),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  CS_ADC_N_3 (
    .I(\CS_ADC_N[4]_ADC_SH[4]_MUX_190_o ),
    .CLK(\ADC_SH[4]_ADC_UPD[4]_OR_8_o_147 ),
    .O(CS_ADC_N_3_139),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  CS_ADC_N_4 (
    .I(\CS_ADC_N[4]_ADC_SH[4]_MUX_188_o ),
    .CLK(\ADC_SH[4]_ADC_UPD[4]_OR_8_o_147 ),
    .O(CS_ADC_N_4_138),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  CS_ADC_N_2 (
    .I(\CS_ADC_N[4]_ADC_SH[4]_MUX_192_o ),
    .CLK(\ADC_SH[4]_ADC_UPD[4]_OR_8_o_147 ),
    .O(CS_ADC_N_2_140),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  CS_ADC_N_1 (
    .I(\CS_ADC_N[4]_ADC_SH[4]_MUX_194_o ),
    .CLK(\ADC_SH[4]_ADC_UPD[4]_OR_8_o_147 ),
    .O(CS_ADC_N_1_141),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  CS_ADC_N_0 (
    .I(\CS_ADC_N[4]_ADC_SH[4]_MUX_196_o ),
    .CLK(\ADC_SH[4]_ADC_UPD[4]_OR_8_o_147 ),
    .O(CS_ADC_N_0_142),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  CS_DAC_N_3 (
    .I(\CS_DAC_N[3]_DAC_SH[3]_MUX_198_o ),
    .CLK(\DAC_SH[3]_DAC_UPD[3]_OR_20_o_152 ),
    .O(CS_DAC_N_3_148),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  CS_DAC_N_0 (
    .I(\CS_DAC_N[3]_DAC_SH[3]_MUX_204_o ),
    .CLK(\DAC_SH[3]_DAC_UPD[3]_OR_20_o_152 ),
    .O(CS_DAC_N_0_151),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  CS_DAC_N_2 (
    .I(\CS_DAC_N[3]_DAC_SH[3]_MUX_200_o ),
    .CLK(\DAC_SH[3]_DAC_UPD[3]_OR_20_o_152 ),
    .O(CS_DAC_N_2_149),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  CS_DAC_N_1 (
    .I(\CS_DAC_N[3]_DAC_SH[3]_MUX_202_o ),
    .CLK(\DAC_SH[3]_DAC_UPD[3]_OR_20_o_152 ),
    .O(CS_DAC_N_1_150),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  RS_DAC_N_0 (
    .CLK(TCK_IBUF_BUFG_5),
    .RST(RS_THR_DAC),
    .I(CS_TP_M_norst),
    .O(RS_DAC_N_0_84),
    .CE(VCC),
    .SET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  ADC_SH_0 (
    .CLK(\NlwInverterSignal_ADC_SH_0/C ),
    .I(ADC_EN[0]),
    .SRST(DR_SH_inv),
    .O(ADC_SH[0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  ADC_SH_1 (
    .CLK(\NlwInverterSignal_ADC_SH_1/C ),
    .I(ADC_EN[1]),
    .SRST(DR_SH_inv),
    .O(ADC_SH[1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  ADC_SH_2 (
    .CLK(\NlwInverterSignal_ADC_SH_2/C ),
    .I(ADC_EN[2]),
    .SRST(DR_SH_inv),
    .O(ADC_SH[2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  ADC_SH_3 (
    .CLK(\NlwInverterSignal_ADC_SH_3/C ),
    .I(ADC_EN[3]),
    .SRST(DR_SH_inv),
    .O(ADC_SH[3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  ADC_SH_4 (
    .CLK(\NlwInverterSignal_ADC_SH_4/C ),
    .I(ADC_EN[4]),
    .SRST(DR_SH_inv),
    .O(ADC_SH[4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  TDO_FF (
    .CLK(\NlwInverterSignal_TDO_FF/C ),
    .I(TDO_MUX),
    .O(TDO_FF_91),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \T/TAP_CS_FSM_FFd4  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\T/TAP_CS_FSM_FFd4-In ),
    .O(\T/TAP_CS_FSM_FFd4_11 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \T/TAP_CS_FSM_FFd3  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\T/TAP_CS_FSM_FFd3-In ),
    .O(\T/TAP_CS_FSM_FFd3_10 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \T/TAP_CS_FSM_FFd2  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\T/TAP_CS_FSM_FFd2-In ),
    .O(\T/TAP_CS_FSM_FFd2_9 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \T/TAP_CS_FSM_FFd1  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\T/TAP_CS_FSM_FFd1-In ),
    .O(\T/TAP_CS_FSM_FFd1_8 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \IR/PREG_5  (
    .CLK(\NlwInverterSignal_IR/PREG_5/C ),
    .CE(IR_UPD),
    .I(\IR/SREG [5]),
    .O(\IR/PREG [5]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \IR/PREG_4  (
    .CLK(\NlwInverterSignal_IR/PREG_4/C ),
    .CE(IR_UPD),
    .I(\IR/SREG [4]),
    .O(\IR/PREG [4]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \IR/PREG_3  (
    .CLK(\NlwInverterSignal_IR/PREG_3/C ),
    .CE(IR_UPD),
    .I(\IR/SREG [3]),
    .O(\IR/PREG [3]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \IR/PREG_2  (
    .CLK(\NlwInverterSignal_IR/PREG_2/C ),
    .CE(IR_UPD),
    .I(\IR/SREG [2]),
    .O(\IR/PREG [2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \IR/PREG_1  (
    .CLK(\NlwInverterSignal_IR/PREG_1/C ),
    .CE(IR_UPD),
    .I(\IR/SREG [1]),
    .O(\IR/PREG [1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \IR/PREG_0  (
    .CLK(\NlwInverterSignal_IR/PREG_0/C ),
    .CE(IR_UPD),
    .I(\IR/SREG [0]),
    .O(\IR/PREG [0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \IR/SREG_5  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IR/_n0018_inv ),
    .I(\IR/SREG[5]_PWR_7_o_mux_1_OUT<5> ),
    .O(\IR/SREG [5]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \IR/SREG_4  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IR/_n0018_inv ),
    .I(\IR/SREG[5]_PWR_7_o_mux_1_OUT<4> ),
    .O(\IR/SREG [4]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \IR/SREG_3  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IR/_n0018_inv ),
    .I(\IR/SREG[5]_PWR_7_o_mux_1_OUT<3> ),
    .O(\IR/SREG [3]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \IR/SREG_2  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IR/_n0018_inv ),
    .I(\IR/SREG[5]_PWR_7_o_mux_1_OUT<2> ),
    .O(\IR/SREG [2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \IR/SREG_1  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IR/_n0018_inv ),
    .I(\IR/SREG[5]_PWR_7_o_mux_1_OUT<1> ),
    .O(\IR/SREG [1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \IR/SREG_0  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IR/_n0018_inv ),
    .I(\IR/SREG[5]_PWR_7_o_mux_1_OUT<0> ),
    .O(\IR/SREG [0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_41  (
    .CLK(\NlwInverterSignal_SBR/PREG_41/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_41_dpot_550 ),
    .O(\SBR/PREG [41]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_40  (
    .CLK(\NlwInverterSignal_SBR/PREG_40/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_40_dpot_549 ),
    .O(\SBR/PREG [40]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_39  (
    .CLK(\NlwInverterSignal_SBR/PREG_39/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_39_dpot_548 ),
    .O(\SBR/PREG [39]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_38  (
    .CLK(\NlwInverterSignal_SBR/PREG_38/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_38_dpot_547 ),
    .O(\SBR/PREG [38]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_37  (
    .CLK(\NlwInverterSignal_SBR/PREG_37/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_37_dpot_546 ),
    .O(\SBR/PREG [37]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_36  (
    .CLK(\NlwInverterSignal_SBR/PREG_36/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_36_dpot_545 ),
    .O(\SBR/PREG [36]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_35  (
    .CLK(\NlwInverterSignal_SBR/PREG_35/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_35_dpot_544 ),
    .O(\SBR/PREG [35]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_34  (
    .CLK(\NlwInverterSignal_SBR/PREG_34/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_34_dpot_543 ),
    .O(\SBR/PREG [34]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_33  (
    .CLK(\NlwInverterSignal_SBR/PREG_33/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_33_dpot_542 ),
    .O(\SBR/PREG [33]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_32  (
    .CLK(\NlwInverterSignal_SBR/PREG_32/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_32_dpot_541 ),
    .O(\SBR/PREG [32]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_31  (
    .CLK(\NlwInverterSignal_SBR/PREG_31/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_31_dpot_540 ),
    .O(\SBR/PREG [31]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_30  (
    .CLK(\NlwInverterSignal_SBR/PREG_30/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_30_dpot_539 ),
    .O(\SBR/PREG [30]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_29  (
    .CLK(\NlwInverterSignal_SBR/PREG_29/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_29_dpot_538 ),
    .O(\SBR/PREG [29]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_28  (
    .CLK(\NlwInverterSignal_SBR/PREG_28/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_28_dpot_537 ),
    .O(\SBR/PREG [28]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_27  (
    .CLK(\NlwInverterSignal_SBR/PREG_27/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_27_dpot_536 ),
    .O(\SBR/PREG [27]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_26  (
    .CLK(\NlwInverterSignal_SBR/PREG_26/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_26_dpot_535 ),
    .O(\SBR/PREG [26]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_25  (
    .CLK(\NlwInverterSignal_SBR/PREG_25/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_25_dpot_534 ),
    .O(\SBR/PREG [25]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_24  (
    .CLK(\NlwInverterSignal_SBR/PREG_24/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_24_dpot_533 ),
    .O(\SBR/PREG [24]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_23  (
    .CLK(\NlwInverterSignal_SBR/PREG_23/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_23_dpot_532 ),
    .O(\SBR/PREG [23]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_22  (
    .CLK(\NlwInverterSignal_SBR/PREG_22/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_22_dpot_531 ),
    .O(\SBR/PREG [22]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_21  (
    .CLK(\NlwInverterSignal_SBR/PREG_21/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_21_dpot_530 ),
    .O(\SBR/PREG [21]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_20  (
    .CLK(\NlwInverterSignal_SBR/PREG_20/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_20_dpot_529 ),
    .O(\SBR/PREG [20]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_19  (
    .CLK(\NlwInverterSignal_SBR/PREG_19/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_19_dpot_528 ),
    .O(\SBR/PREG [19]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_18  (
    .CLK(\NlwInverterSignal_SBR/PREG_18/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_18_dpot_527 ),
    .O(\SBR/PREG [18]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_17  (
    .CLK(\NlwInverterSignal_SBR/PREG_17/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_17_dpot_526 ),
    .O(\SBR/PREG [17]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_16  (
    .CLK(\NlwInverterSignal_SBR/PREG_16/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_16_dpot_525 ),
    .O(\SBR/PREG [16]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_15  (
    .CLK(\NlwInverterSignal_SBR/PREG_15/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_15_dpot_524 ),
    .O(\SBR/PREG [15]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_14  (
    .CLK(\NlwInverterSignal_SBR/PREG_14/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_14_dpot_523 ),
    .O(\SBR/PREG [14]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_13  (
    .CLK(\NlwInverterSignal_SBR/PREG_13/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_13_dpot_522 ),
    .O(\SBR/PREG [13]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_12  (
    .CLK(\NlwInverterSignal_SBR/PREG_12/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_12_dpot_521 ),
    .O(\SBR/PREG [12]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_11  (
    .CLK(\NlwInverterSignal_SBR/PREG_11/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_11_dpot_520 ),
    .O(\SBR/PREG [11]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_10  (
    .CLK(\NlwInverterSignal_SBR/PREG_10/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_10_dpot_519 ),
    .O(\SBR/PREG [10]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_9  (
    .CLK(\NlwInverterSignal_SBR/PREG_9/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_9_dpot_518 ),
    .O(\SBR/PREG [9]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_8  (
    .CLK(\NlwInverterSignal_SBR/PREG_8/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_8_dpot_517 ),
    .O(\SBR/PREG [8]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_7  (
    .CLK(\NlwInverterSignal_SBR/PREG_7/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_7_dpot_516 ),
    .O(\SBR/PREG [7]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_6  (
    .CLK(\NlwInverterSignal_SBR/PREG_6/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_6_dpot_515 ),
    .O(\SBR/PREG [6]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_5  (
    .CLK(\NlwInverterSignal_SBR/PREG_5/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_5_dpot_514 ),
    .O(\SBR/PREG [5]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_4  (
    .CLK(\NlwInverterSignal_SBR/PREG_4/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_4_dpot_513 ),
    .O(\SBR/PREG [4]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_3  (
    .CLK(\NlwInverterSignal_SBR/PREG_3/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_3_dpot_512 ),
    .O(\SBR/PREG [3]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_2  (
    .CLK(\NlwInverterSignal_SBR/PREG_2/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_2_dpot_511 ),
    .O(\SBR/PREG [2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_1  (
    .CLK(\NlwInverterSignal_SBR/PREG_1/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_1_dpot_510 ),
    .O(\SBR/PREG [1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/PREG_0  (
    .CLK(\NlwInverterSignal_SBR/PREG_0/C ),
    .CE(DR_UPD),
    .I(\SBR/PREG_0_dpot_509 ),
    .O(\SBR/PREG [0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_41  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\SBR/_n0018_inv1 ),
    .I(\SBR/SREG[41]_PREG[41]_mux_1_OUT<41> ),
    .O(\SBR/SREG [41]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_40  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\SBR/_n0018_inv1 ),
    .I(\SBR/SREG[41]_PREG[41]_mux_1_OUT<40> ),
    .O(\SBR/SREG [40]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_39  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\SBR/_n0018_inv1 ),
    .I(\SBR/SREG[41]_PREG[41]_mux_1_OUT<39> ),
    .O(\SBR/SREG [39]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_38  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\SBR/_n0018_inv1 ),
    .I(\SBR/SREG[41]_PREG[41]_mux_1_OUT<38> ),
    .O(\SBR/SREG [38]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_37  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\SBR/_n0018_inv1 ),
    .I(\SBR/SREG[41]_PREG[41]_mux_1_OUT<37> ),
    .O(\SBR/SREG [37]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_36  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\SBR/_n0018_inv1 ),
    .I(\SBR/SREG[41]_PREG[41]_mux_1_OUT<36> ),
    .O(\SBR/SREG [36]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_35  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\SBR/_n0018_inv1 ),
    .I(\SBR/SREG[41]_PREG[41]_mux_1_OUT<35> ),
    .O(\SBR/SREG [35]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_34  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\SBR/_n0018_inv1 ),
    .I(\SBR/SREG[41]_PREG[41]_mux_1_OUT<34> ),
    .O(\SBR/SREG [34]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_33  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\SBR/_n0018_inv1 ),
    .I(\SBR/SREG[41]_PREG[41]_mux_1_OUT<33> ),
    .O(\SBR/SREG [33]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_32  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\SBR/_n0018_inv1 ),
    .I(\SBR/SREG[41]_PREG[41]_mux_1_OUT<32> ),
    .O(\SBR/SREG [32]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_31  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_31_dpot_591 ),
    .O(\SBR/SREG [31]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_30  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_30_dpot_590 ),
    .O(\SBR/SREG [30]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_29  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_29_dpot_589 ),
    .O(\SBR/SREG [29]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_28  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_28_dpot_588 ),
    .O(\SBR/SREG [28]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_27  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_27_dpot_587 ),
    .O(\SBR/SREG [27]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_26  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_26_dpot_586 ),
    .O(\SBR/SREG [26]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_25  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_25_dpot_585 ),
    .O(\SBR/SREG [25]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_24  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_24_dpot_584 ),
    .O(\SBR/SREG [24]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_23  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_23_dpot_583 ),
    .O(\SBR/SREG [23]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_22  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_22_dpot_582 ),
    .O(\SBR/SREG [22]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_21  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_21_dpot_581 ),
    .O(\SBR/SREG [21]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_20  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_20_dpot_580 ),
    .O(\SBR/SREG [20]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_19  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_19_dpot_579 ),
    .O(\SBR/SREG [19]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_18  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_18_dpot_578 ),
    .O(\SBR/SREG [18]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_17  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_17_dpot_577 ),
    .O(\SBR/SREG [17]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_16  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_16_dpot_576 ),
    .O(\SBR/SREG [16]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_15  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_15_dpot_575 ),
    .O(\SBR/SREG [15]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_14  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_14_dpot_574 ),
    .O(\SBR/SREG [14]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_13  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_13_dpot_573 ),
    .O(\SBR/SREG [13]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_12  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_12_dpot_572 ),
    .O(\SBR/SREG [12]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_11  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_11_dpot_571 ),
    .O(\SBR/SREG [11]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_10  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_10_dpot_570 ),
    .O(\SBR/SREG [10]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_9  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_9_dpot_569 ),
    .O(\SBR/SREG [9]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_8  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_8_dpot_568 ),
    .O(\SBR/SREG [8]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_7  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_7_dpot_567 ),
    .O(\SBR/SREG [7]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_6  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_6_dpot_566 ),
    .O(\SBR/SREG [6]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_5  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_5_dpot_565 ),
    .O(\SBR/SREG [5]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_4  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_4_dpot_564 ),
    .O(\SBR/SREG [4]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_3  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_3_dpot_563 ),
    .O(\SBR/SREG [3]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_2  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_2_dpot_562 ),
    .O(\SBR/SREG [2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_1  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_1_dpot_561 ),
    .O(\SBR/SREG [1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SBR/SREG_0  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\IN_DEC/_n0260<5>1 ),
    .I(\SBR/SREG_0_dpot_560 ),
    .O(\SBR/SREG [0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPSTP/PREG_5  (
    .CLK(\NlwInverterSignal_TPSTP/PREG_5/C ),
    .CE(TP_STP_UPD),
    .I(\TPSTP/SREG [5]),
    .O(\TPSTP/PREG [5]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPSTP/PREG_4  (
    .CLK(\NlwInverterSignal_TPSTP/PREG_4/C ),
    .CE(TP_STP_UPD),
    .I(\TPSTP/SREG [4]),
    .O(\TPSTP/PREG [4]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPSTP/PREG_3  (
    .CLK(\NlwInverterSignal_TPSTP/PREG_3/C ),
    .CE(TP_STP_UPD),
    .I(\TPSTP/SREG [3]),
    .O(\TPSTP/PREG [3]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPSTP/PREG_2  (
    .CLK(\NlwInverterSignal_TPSTP/PREG_2/C ),
    .CE(TP_STP_UPD),
    .I(\TPSTP/SREG [2]),
    .O(\TPSTP/PREG [2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPSTP/PREG_1  (
    .CLK(\NlwInverterSignal_TPSTP/PREG_1/C ),
    .CE(TP_STP_UPD),
    .I(\TPSTP/SREG [1]),
    .O(\TPSTP/PREG [1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPSTP/PREG_0  (
    .CLK(\NlwInverterSignal_TPSTP/PREG_0/C ),
    .CE(TP_STP_UPD),
    .I(\TPSTP/SREG [0]),
    .O(\TPSTP/PREG [0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPSTP/SREG_5  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\TPSTP/_n0018_inv ),
    .I(\TPSTP/SREG[5]_PREG[5]_mux_1_OUT<5> ),
    .O(\TPSTP/SREG [5]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPSTP/SREG_4  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\TPSTP/_n0018_inv ),
    .I(\TPSTP/SREG[5]_PREG[5]_mux_1_OUT<4> ),
    .O(\TPSTP/SREG [4]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPSTP/SREG_3  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\TPSTP/_n0018_inv ),
    .I(\TPSTP/SREG[5]_PREG[5]_mux_1_OUT<3> ),
    .O(\TPSTP/SREG [3]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPSTP/SREG_2  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\TPSTP/_n0018_inv ),
    .I(\TPSTP/SREG[5]_PREG[5]_mux_1_OUT<2> ),
    .O(\TPSTP/SREG [2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPSTP/SREG_1  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\TPSTP/_n0018_inv ),
    .I(\TPSTP/SREG[5]_PREG[5]_mux_1_OUT<1> ),
    .O(\TPSTP/SREG [1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPSTP/SREG_0  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\TPSTP/_n0018_inv ),
    .I(\TPSTP/SREG[5]_PREG[5]_mux_1_OUT<0> ),
    .O(\TPSTP/SREG [0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPGRP/PREG_6  (
    .CLK(\NlwInverterSignal_TPGRP/PREG_6/C ),
    .CE(TP_GRP_UPD),
    .I(\TPGRP/SREG [6]),
    .O(\TPGRP/PREG [6]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPGRP/PREG_5  (
    .CLK(\NlwInverterSignal_TPGRP/PREG_5/C ),
    .CE(TP_GRP_UPD),
    .I(\TPGRP/SREG [5]),
    .O(\TPGRP/PREG [5]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPGRP/PREG_4  (
    .CLK(\NlwInverterSignal_TPGRP/PREG_4/C ),
    .CE(TP_GRP_UPD),
    .I(\TPGRP/SREG [4]),
    .O(\TPGRP/PREG [4]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPGRP/PREG_3  (
    .CLK(\NlwInverterSignal_TPGRP/PREG_3/C ),
    .CE(TP_GRP_UPD),
    .I(\TPGRP/SREG [3]),
    .O(\TPGRP/PREG [3]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPGRP/PREG_2  (
    .CLK(\NlwInverterSignal_TPGRP/PREG_2/C ),
    .CE(TP_GRP_UPD),
    .I(\TPGRP/SREG [2]),
    .O(\TPGRP/PREG [2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPGRP/PREG_1  (
    .CLK(\NlwInverterSignal_TPGRP/PREG_1/C ),
    .CE(TP_GRP_UPD),
    .I(\TPGRP/SREG [1]),
    .O(\TPGRP/PREG [1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPGRP/PREG_0  (
    .CLK(\NlwInverterSignal_TPGRP/PREG_0/C ),
    .CE(TP_GRP_UPD),
    .I(\TPGRP/SREG [0]),
    .O(\TPGRP/PREG [0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPGRP/SREG_6  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\TPGRP/_n0018_inv ),
    .I(\TPGRP/SREG[6]_PREG[6]_mux_1_OUT<6> ),
    .O(\TPGRP/SREG [6]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPGRP/SREG_5  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\TPGRP/_n0018_inv ),
    .I(\TPGRP/SREG[6]_PREG[6]_mux_1_OUT<5> ),
    .O(\TPGRP/SREG [5]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPGRP/SREG_4  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\TPGRP/_n0018_inv ),
    .I(\TPGRP/SREG[6]_PREG[6]_mux_1_OUT<4> ),
    .O(\TPGRP/SREG [4]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPGRP/SREG_3  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\TPGRP/_n0018_inv ),
    .I(\TPGRP/SREG[6]_PREG[6]_mux_1_OUT<3> ),
    .O(\TPGRP/SREG [3]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPGRP/SREG_2  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\TPGRP/_n0018_inv ),
    .I(\TPGRP/SREG[6]_PREG[6]_mux_1_OUT<2> ),
    .O(\TPGRP/SREG [2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPGRP/SREG_1  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\TPGRP/_n0018_inv ),
    .I(\TPGRP/SREG[6]_PREG[6]_mux_1_OUT<1> ),
    .O(\TPGRP/SREG [1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \TPGRP/SREG_0  (
    .CLK(TCK_IBUF_BUFG_5),
    .CE(\TPGRP/_n0018_inv ),
    .I(\TPGRP/SREG[6]_PREG[6]_mux_1_OUT<0> ),
    .O(\TPGRP/SREG [0]),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \Clk_ADC<4>1  (
    .ADR0(ADC_SH[4]),
    .ADR1(TCK_IBUF_593),
    .O(Clk_ADC_4_OBUF_112)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \Clk_ADC<3>1  (
    .ADR0(ADC_SH[3]),
    .ADR1(TCK_IBUF_593),
    .O(Clk_ADC_3_OBUF_113)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \Clk_ADC<2>1  (
    .ADR0(ADC_SH[2]),
    .ADR1(TCK_IBUF_593),
    .O(Future_2_OBUF_114)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \Clk_ADC<1>1  (
    .ADR0(ADC_SH[1]),
    .ADR1(TCK_IBUF_593),
    .O(Future_3_OBUF_115)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \Clk_ADC<0>1  (
    .ADR0(ADC_SH[0]),
    .ADR1(TCK_IBUF_593),
    .O(Future_4_OBUF_116)
  );
  X_LUT2 #(
    .INIT ( 4'hB ))
  \Clk_DAC<3>1  (
    .ADR0(TCK_IBUF_593),
    .ADR1(\DAC_SH[3] ),
    .O(Clk_DAC_3_OBUF_117)
  );
  X_LUT2 #(
    .INIT ( 4'hB ))
  \Clk_DAC<1>1  (
    .ADR0(TCK_IBUF_593),
    .ADR1(\DAC_SH[1] ),
    .O(Clk_DAC_1_OBUF_119)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \Din_ADC<4>1  (
    .ADR0(ADC_SH[4]),
    .ADR1(TDI_IBUF_7),
    .O(Din_ADC_4_OBUF_121)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \Din_ADC<3>1  (
    .ADR0(ADC_SH[3]),
    .ADR1(TDI_IBUF_7),
    .O(Din_ADC_3_OBUF_122)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \Din_ADC<2>1  (
    .ADR0(ADC_SH[2]),
    .ADR1(TDI_IBUF_7),
    .O(Din_ADC_2_OBUF_123)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \Din_ADC<1>1  (
    .ADR0(ADC_SH[1]),
    .ADR1(TDI_IBUF_7),
    .O(Din_ADC_1_OBUF_124)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \Din_ADC<0>1  (
    .ADR0(ADC_SH[0]),
    .ADR1(TDI_IBUF_7),
    .O(Din_ADC_0_OBUF_125)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \Din_DAC<3>1  (
    .ADR0(\DAC_SH[3] ),
    .ADR1(TDI_IBUF_7),
    .O(Din_DAC_3_OBUF_127)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \Din_DAC<1>1  (
    .ADR0(\DAC_SH[1] ),
    .ADR1(TDI_IBUF_7),
    .O(Din_DAC_1_OBUF_129)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \T/TAP_CS_IR_UPD1  (
    .ADR0(\T/TAP_CS_FSM_FFd4_11 ),
    .ADR1(\T/TAP_CS_FSM_FFd3_10 ),
    .ADR2(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR3(\T/TAP_CS_FSM_FFd1_8 ),
    .O(IR_UPD)
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ))
  \T/TAP_CS_DR_UPD1  (
    .ADR0(\T/TAP_CS_FSM_FFd4_11 ),
    .ADR1(\T/TAP_CS_FSM_FFd3_10 ),
    .ADR2(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR3(\T/TAP_CS_FSM_FFd1_8 ),
    .O(DR_UPD)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFB ))
  DR_SH_inv1 (
    .ADR0(\T/TAP_CS_FSM_FFd4_11 ),
    .ADR1(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR2(\T/TAP_CS_FSM_FFd3_10 ),
    .ADR3(\T/TAP_CS_FSM_FFd1_8 ),
    .O(DR_SH_inv)
  );
  X_LUT3 #(
    .INIT ( 8'h04 ))
  \IN_DEC/_n0260<5>11  (
    .ADR0(\IR/PREG [4]),
    .ADR1(\IR/PREG [5]),
    .ADR2(\IR/PREG [3]),
    .O(\IN_DEC/_n0260<5>1 )
  );
  X_LUT3 #(
    .INIT ( 8'h01 ))
  \IN_DEC/_n0132<5>11  (
    .ADR0(\IR/PREG [4]),
    .ADR1(\IR/PREG [5]),
    .ADR2(\IR/PREG [2]),
    .O(\IN_DEC/_n0132<5>1 )
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ))
  \IN_DEC/_n0196<5>11  (
    .ADR0(\IR/PREG [5]),
    .ADR1(\IR/PREG [3]),
    .ADR2(\IR/PREG [2]),
    .ADR3(\IR/PREG [4]),
    .O(\IN_DEC/_n0196<5>1 )
  );
  X_LUT5 #(
    .INIT ( 32'h6BC82AA8 ))
  \T/TAP_CS_FSM_FFd1-In1  (
    .ADR0(\T/TAP_CS_FSM_FFd1_8 ),
    .ADR1(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR2(\T/TAP_CS_FSM_FFd4_11 ),
    .ADR3(\T/TAP_CS_FSM_FFd3_10 ),
    .ADR4(TMS_IBUF_6),
    .O(\T/TAP_CS_FSM_FFd1-In )
  );
  X_LUT5 #(
    .INIT ( 32'h706EAA2A ))
  \T/TAP_CS_FSM_FFd2-In1  (
    .ADR0(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR1(\T/TAP_CS_FSM_FFd4_11 ),
    .ADR2(TMS_IBUF_6),
    .ADR3(\T/TAP_CS_FSM_FFd1_8 ),
    .ADR4(\T/TAP_CS_FSM_FFd3_10 ),
    .O(\T/TAP_CS_FSM_FFd2-In )
  );
  X_LUT5 #(
    .INIT ( 32'h5421DDB9 ))
  \T/TAP_CS_FSM_FFd4-In1  (
    .ADR0(TMS_IBUF_6),
    .ADR1(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR2(\T/TAP_CS_FSM_FFd3_10 ),
    .ADR3(\T/TAP_CS_FSM_FFd1_8 ),
    .ADR4(\T/TAP_CS_FSM_FFd4_11 ),
    .O(\T/TAP_CS_FSM_FFd4-In )
  );
  X_LUT5 #(
    .INIT ( 32'h82F39688 ))
  \T/TAP_CS_FSM_FFd3-In1  (
    .ADR0(\T/TAP_CS_FSM_FFd1_8 ),
    .ADR1(TMS_IBUF_6),
    .ADR2(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR3(\T/TAP_CS_FSM_FFd4_11 ),
    .ADR4(\T/TAP_CS_FSM_FFd3_10 ),
    .O(\T/TAP_CS_FSM_FFd3-In )
  );
  X_LUT4 #(
    .INIT ( 16'h0810 ))
  IR_SH_DR_SH_OR_28_o1 (
    .ADR0(\T/TAP_CS_FSM_FFd1_8 ),
    .ADR1(\T/TAP_CS_FSM_FFd4_11 ),
    .ADR2(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR3(\T/TAP_CS_FSM_FFd3_10 ),
    .O(IR_SH_DR_SH_OR_28_o)
  );
  X_LUT4 #(
    .INIT ( 16'h0400 ))
  ID_REG_CAPT11 (
    .ADR0(\T/TAP_CS_FSM_FFd1_8 ),
    .ADR1(\T/TAP_CS_FSM_FFd4_11 ),
    .ADR2(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR3(\T/TAP_CS_FSM_FFd3_10 ),
    .O(ID_REG_CAPT1)
  );
  X_LUT5 #(
    .INIT ( 32'h01000000 ))
  \IN_DEC/Mmux_RS_THR_DAC11  (
    .ADR0(IR_SH),
    .ADR1(\IR/PREG [3]),
    .ADR2(\IR/PREG [1]),
    .ADR3(\IR/PREG [0]),
    .ADR4(\IN_DEC/_n0132<5>1 ),
    .O(RS_THR_DAC)
  );
  X_LUT6 #(
    .INIT ( 64'h0010000000000000 ))
  \DAC_SH<1>1  (
    .ADR0(DR_SH_inv),
    .ADR1(IR_SH),
    .ADR2(\IR/PREG [3]),
    .ADR3(\IR/PREG [1]),
    .ADR4(\IR/PREG [0]),
    .ADR5(\IN_DEC/_n0132<5>1 ),
    .O(\DAC_SH[1] )
  );
  X_LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \DAC_SH<3>1  (
    .ADR0(DR_SH_inv),
    .ADR1(IR_SH),
    .ADR2(\IR/PREG [3]),
    .ADR3(\IR/PREG [1]),
    .ADR4(\IR/PREG [0]),
    .ADR5(\IN_DEC/_n0132<5>1 ),
    .O(\DAC_SH[3] )
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ))
  \T/TAP_CS_IR_SH1  (
    .ADR0(\T/TAP_CS_FSM_FFd4_1_506 ),
    .ADR1(\T/TAP_CS_FSM_FFd2_1_504 ),
    .ADR2(\T/TAP_CS_FSM_FFd1_1_503 ),
    .ADR3(\T/TAP_CS_FSM_FFd3_1_505 ),
    .O(IR_SH)
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ))
  \IN_DEC/Mmux_ADC_EN11  (
    .ADR0(\IR/PREG [0]),
    .ADR1(IR_SH),
    .ADR2(\IR/PREG [1]),
    .ADR3(\IN_DEC/_n0196<5>1 ),
    .O(ADC_EN[0])
  );
  X_LUT4 #(
    .INIT ( 16'h0400 ))
  \IN_DEC/Mmux_ADC_EN21  (
    .ADR0(IR_SH),
    .ADR1(\IR/PREG [0]),
    .ADR2(\IR/PREG [1]),
    .ADR3(\IN_DEC/_n0196<5>1 ),
    .O(ADC_EN[1])
  );
  X_LUT4 #(
    .INIT ( 16'h0400 ))
  \IN_DEC/Mmux_ADC_EN31  (
    .ADR0(\IR/PREG [0]),
    .ADR1(\IR/PREG [1]),
    .ADR2(IR_SH),
    .ADR3(\IN_DEC/_n0196<5>1 ),
    .O(ADC_EN[2])
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ))
  \IN_DEC/Mmux_ADC_EN41  (
    .ADR0(\IR/PREG [0]),
    .ADR1(IR_SH),
    .ADR2(\IR/PREG [1]),
    .ADR3(\IN_DEC/_n0196<5>1 ),
    .O(ADC_EN[3])
  );
  X_LUT5 #(
    .INIT ( 32'h00010000 ))
  \IN_DEC/Mmux_ID_REG_EN11  (
    .ADR0(IR_SH),
    .ADR1(\IR/PREG [3]),
    .ADR2(\IR/PREG [0]),
    .ADR3(\IR/PREG [1]),
    .ADR4(\IN_DEC/_n0132<5>1 ),
    .O(ID_REG_EN)
  );
  X_LUT5 #(
    .INIT ( 32'hFFFFFFEF ))
  \Clk_DAC<0>1  (
    .ADR0(\IR/PREG [1]),
    .ADR1(IR_SH),
    .ADR2(\IN_DEC/_n0164<5>1 ),
    .ADR3(DR_SH_inv),
    .ADR4(TCK_IBUF_593),
    .O(Clk_DAC_0_OBUF_120)
  );
  X_LUT5 #(
    .INIT ( 32'h01000000 ))
  \Din_DAC<0>1  (
    .ADR0(DR_SH_inv),
    .ADR1(IR_SH),
    .ADR2(\IR/PREG [1]),
    .ADR3(TDI_IBUF_7),
    .ADR4(\IN_DEC/_n0164<5>1 ),
    .O(Din_DAC_0_OBUF_130)
  );
  X_LUT5 #(
    .INIT ( 32'hFFFFFFBF ))
  \Clk_DAC<2>1  (
    .ADR0(DR_SH_inv),
    .ADR1(\IR/PREG [1]),
    .ADR2(\IN_DEC/_n0164<5>1 ),
    .ADR3(IR_SH),
    .ADR4(TCK_IBUF_593),
    .O(Clk_DAC_2_OBUF_118)
  );
  X_LUT5 #(
    .INIT ( 32'h10000000 ))
  \Din_DAC<2>1  (
    .ADR0(DR_SH_inv),
    .ADR1(IR_SH),
    .ADR2(TDI_IBUF_7),
    .ADR3(\IR/PREG [1]),
    .ADR4(\IN_DEC/_n0164<5>1 ),
    .O(Din_DAC_2_OBUF_128)
  );
  X_LUT5 #(
    .INIT ( 32'h10000000 ))
  STANDBY_CAPT1 (
    .ADR0(IR_SH),
    .ADR1(\IR/PREG [1]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(\IR/PREG [2]),
    .ADR4(\IN_DEC/_n0260<5>1 ),
    .O(STANDBY_CAPT)
  );
  X_LUT5 #(
    .INIT ( 32'h01000000 ))
  TP_GRP_CAPT1 (
    .ADR0(\IR/PREG [2]),
    .ADR1(IR_SH),
    .ADR2(\IR/PREG [1]),
    .ADR3(ID_REG_CAPT1),
    .ADR4(\IN_DEC/_n0260<5>1 ),
    .O(TP_GRP_CAPT)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000001000000 ))
  TP_GRP_UPD1 (
    .ADR0(\IR/PREG [2]),
    .ADR1(\IR/PREG [0]),
    .ADR2(\IR/PREG [1]),
    .ADR3(\IN_DEC/_n0260<5>1 ),
    .ADR4(\T/TAP_CS_DR_UPD1_551 ),
    .ADR5(IR_SH),
    .O(TP_GRP_UPD)
  );
  X_LUT5 #(
    .INIT ( 32'h10000000 ))
  TP_STP_CAPT1 (
    .ADR0(\IR/PREG [2]),
    .ADR1(IR_SH),
    .ADR2(ID_REG_CAPT1),
    .ADR3(\IR/PREG [1]),
    .ADR4(\IN_DEC/_n0260<5>1 ),
    .O(TP_STP_CAPT)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000010000000 ))
  TP_STP_UPD1 (
    .ADR0(\IR/PREG [2]),
    .ADR1(\IR/PREG [0]),
    .ADR2(\IR/PREG [1]),
    .ADR3(\IN_DEC/_n0260<5>1 ),
    .ADR4(\T/TAP_CS_DR_UPD1_551 ),
    .ADR5(IR_SH),
    .O(TP_STP_UPD)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000020000000 ))
  VAR_PD_UPD1 (
    .ADR0(\IR/PREG [2]),
    .ADR1(\IR/PREG [0]),
    .ADR2(\IR/PREG [1]),
    .ADR3(\IN_DEC/_n0260<5>1 ),
    .ADR4(\T/TAP_CS_DR_UPD1_551 ),
    .ADR5(IR_SH),
    .O(VAR_PD_UPD)
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux41111  (
    .ADR0(\SBR/SREG [10]),
    .ADR1(\SBR/PREG [9]),
    .ADR2(STANDBY_CAPT),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<9> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux4011  (
    .ADR0(\SBR/SREG [9]),
    .ADR1(\SBR/PREG [8]),
    .ADR2(STANDBY_CAPT),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<8> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux3811  (
    .ADR0(\SBR/SREG [7]),
    .ADR1(\SBR/PREG [6]),
    .ADR2(STANDBY_CAPT),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<6> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux3711  (
    .ADR0(\SBR/SREG [6]),
    .ADR1(\SBR/PREG [5]),
    .ADR2(STANDBY_CAPT),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<5> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux3911  (
    .ADR0(\SBR/SREG [8]),
    .ADR1(\SBR/PREG [7]),
    .ADR2(STANDBY_CAPT),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<7> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux3611  (
    .ADR0(\SBR/SREG [5]),
    .ADR1(\SBR/PREG [4]),
    .ADR2(STANDBY_CAPT),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<4> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux3511  (
    .ADR0(TDI_IBUF_7),
    .ADR1(\SBR/PREG [41]),
    .ADR2(STANDBY_CAPT),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<41> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux3311  (
    .ADR0(\SBR/SREG [4]),
    .ADR1(\SBR/PREG [3]),
    .ADR2(STANDBY_CAPT),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<3> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux3211  (
    .ADR0(\SBR/SREG [40]),
    .ADR1(\SBR/PREG [39]),
    .ADR2(STANDBY_CAPT),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<39> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux3411  (
    .ADR0(\SBR/SREG [41]),
    .ADR1(\SBR/PREG [40]),
    .ADR2(STANDBY_CAPT),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<40> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux31111  (
    .ADR0(\SBR/SREG [39]),
    .ADR1(\SBR/PREG [38]),
    .ADR2(STANDBY_CAPT),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<38> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux3011  (
    .ADR0(\SBR/SREG [38]),
    .ADR1(\SBR/PREG [37]),
    .ADR2(STANDBY_CAPT),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<37> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux2811  (
    .ADR0(\SBR/SREG [36]),
    .ADR1(\SBR/PREG [35]),
    .ADR2(STANDBY_CAPT),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<35> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux2711  (
    .ADR0(\SBR/SREG [35]),
    .ADR1(\SBR/PREG [34]),
    .ADR2(STANDBY_CAPT),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<34> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux2911  (
    .ADR0(\SBR/SREG [37]),
    .ADR1(\SBR/PREG [36]),
    .ADR2(STANDBY_CAPT),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<36> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux2511  (
    .ADR0(\SBR/SREG [33]),
    .ADR1(\SBR/PREG [32]),
    .ADR2(STANDBY_CAPT1_557),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<32> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux2411  (
    .ADR0(\SBR/SREG [32]),
    .ADR1(\SBR/PREG [31]),
    .ADR2(STANDBY_CAPT1_557),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<31> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux2611  (
    .ADR0(\SBR/SREG [34]),
    .ADR1(\SBR/PREG [33]),
    .ADR2(STANDBY_CAPT1_557),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<33> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux2211  (
    .ADR0(\SBR/SREG [3]),
    .ADR1(\SBR/PREG [2]),
    .ADR2(STANDBY_CAPT1_557),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<2> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux21111  (
    .ADR0(\SBR/SREG [30]),
    .ADR1(\SBR/PREG [29]),
    .ADR2(STANDBY_CAPT1_557),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<29> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux2311  (
    .ADR0(\SBR/SREG [31]),
    .ADR1(\SBR/PREG [30]),
    .ADR2(STANDBY_CAPT1_557),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<30> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux2011  (
    .ADR0(\SBR/SREG [29]),
    .ADR1(\SBR/PREG [28]),
    .ADR2(STANDBY_CAPT1_557),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<28> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux1911  (
    .ADR0(\SBR/SREG [28]),
    .ADR1(\SBR/PREG [27]),
    .ADR2(STANDBY_CAPT1_557),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<27> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux1711  (
    .ADR0(\SBR/SREG [26]),
    .ADR1(\SBR/PREG [25]),
    .ADR2(STANDBY_CAPT1_557),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<25> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux1611  (
    .ADR0(\SBR/SREG [25]),
    .ADR1(\SBR/PREG [24]),
    .ADR2(STANDBY_CAPT1_557),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<24> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux1811  (
    .ADR0(\SBR/SREG [27]),
    .ADR1(\SBR/PREG [26]),
    .ADR2(STANDBY_CAPT1_557),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<26> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux1511  (
    .ADR0(\SBR/SREG [24]),
    .ADR1(\SBR/PREG [23]),
    .ADR2(STANDBY_CAPT1_557),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<23> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux1411  (
    .ADR0(\SBR/SREG [23]),
    .ADR1(\SBR/PREG [22]),
    .ADR2(STANDBY_CAPT1_557),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<22> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux1211  (
    .ADR0(\SBR/SREG [21]),
    .ADR1(\SBR/PREG [20]),
    .ADR2(STANDBY_CAPT1_557),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<20> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux11111  (
    .ADR0(\SBR/SREG [2]),
    .ADR1(\SBR/PREG [1]),
    .ADR2(STANDBY_CAPT1_557),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<1> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux1311  (
    .ADR0(\SBR/SREG [22]),
    .ADR1(\SBR/PREG [21]),
    .ADR2(STANDBY_CAPT11),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<21> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux1011  (
    .ADR0(\SBR/SREG [20]),
    .ADR1(\SBR/PREG [19]),
    .ADR2(STANDBY_CAPT11),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<19> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux911  (
    .ADR0(\SBR/SREG [19]),
    .ADR1(\SBR/PREG [18]),
    .ADR2(STANDBY_CAPT11),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<18> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux711  (
    .ADR0(\SBR/SREG [17]),
    .ADR1(\SBR/PREG [16]),
    .ADR2(STANDBY_CAPT11),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<16> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux611  (
    .ADR0(\SBR/SREG [16]),
    .ADR1(\SBR/PREG [15]),
    .ADR2(STANDBY_CAPT11),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<15> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux811  (
    .ADR0(\SBR/SREG [18]),
    .ADR1(\SBR/PREG [17]),
    .ADR2(STANDBY_CAPT11),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<17> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux4111  (
    .ADR0(\SBR/SREG [14]),
    .ADR1(\SBR/PREG [13]),
    .ADR2(STANDBY_CAPT11),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<13> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux3111  (
    .ADR0(\SBR/SREG [13]),
    .ADR1(\SBR/PREG [12]),
    .ADR2(STANDBY_CAPT11),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<12> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux511  (
    .ADR0(\SBR/SREG [15]),
    .ADR1(\SBR/PREG [14]),
    .ADR2(STANDBY_CAPT11),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<14> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux1111  (
    .ADR0(\SBR/SREG [11]),
    .ADR1(\SBR/PREG [10]),
    .ADR2(STANDBY_CAPT11),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<10> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux1101  (
    .ADR0(\SBR/SREG [1]),
    .ADR1(\SBR/PREG [0]),
    .ADR2(STANDBY_CAPT11),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<0> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/mux2111  (
    .ADR0(\SBR/SREG [12]),
    .ADR1(\SBR/PREG [11]),
    .ADR2(STANDBY_CAPT11),
    .O(\SBR/SREG[41]_PREG[41]_mux_1_OUT<11> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \TPSTP/mux411  (
    .ADR0(\TPSTP/SREG [5]),
    .ADR1(\TPSTP/PREG [4]),
    .ADR2(TP_STP_CAPT),
    .O(\TPSTP/SREG[5]_PREG[5]_mux_1_OUT<4> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \TPSTP/mux311  (
    .ADR0(\TPSTP/SREG [4]),
    .ADR1(\TPSTP/PREG [3]),
    .ADR2(TP_STP_CAPT),
    .O(\TPSTP/SREG[5]_PREG[5]_mux_1_OUT<3> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \TPSTP/mux511  (
    .ADR0(TDI_IBUF_7),
    .ADR1(\TPSTP/PREG [5]),
    .ADR2(TP_STP_CAPT),
    .O(\TPSTP/SREG[5]_PREG[5]_mux_1_OUT<5> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \TPSTP/mux1111  (
    .ADR0(\TPSTP/SREG [2]),
    .ADR1(\TPSTP/PREG [1]),
    .ADR2(TP_STP_CAPT),
    .O(\TPSTP/SREG[5]_PREG[5]_mux_1_OUT<1> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \TPSTP/mux111  (
    .ADR0(\TPSTP/SREG [1]),
    .ADR1(\TPSTP/PREG [0]),
    .ADR2(TP_STP_CAPT),
    .O(\TPSTP/SREG[5]_PREG[5]_mux_1_OUT<0> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \TPSTP/mux211  (
    .ADR0(\TPSTP/SREG [3]),
    .ADR1(\TPSTP/PREG [2]),
    .ADR2(TP_STP_CAPT),
    .O(\TPSTP/SREG[5]_PREG[5]_mux_1_OUT<2> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \TPGRP/mux511  (
    .ADR0(\TPGRP/SREG [6]),
    .ADR1(\TPGRP/PREG [5]),
    .ADR2(TP_GRP_CAPT),
    .O(\TPGRP/SREG[6]_PREG[6]_mux_1_OUT<5> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \TPGRP/mux411  (
    .ADR0(\TPGRP/SREG [5]),
    .ADR1(\TPGRP/PREG [4]),
    .ADR2(TP_GRP_CAPT),
    .O(\TPGRP/SREG[6]_PREG[6]_mux_1_OUT<4> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \TPGRP/mux611  (
    .ADR0(TDI_IBUF_7),
    .ADR1(\TPGRP/PREG [6]),
    .ADR2(TP_GRP_CAPT),
    .O(\TPGRP/SREG[6]_PREG[6]_mux_1_OUT<6> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \TPGRP/mux311  (
    .ADR0(\TPGRP/SREG [4]),
    .ADR1(\TPGRP/PREG [3]),
    .ADR2(TP_GRP_CAPT),
    .O(\TPGRP/SREG[6]_PREG[6]_mux_1_OUT<3> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \TPGRP/mux211  (
    .ADR0(\TPGRP/SREG [3]),
    .ADR1(\TPGRP/PREG [2]),
    .ADR2(TP_GRP_CAPT),
    .O(\TPGRP/SREG[6]_PREG[6]_mux_1_OUT<2> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \TPGRP/mux1111  (
    .ADR0(\TPGRP/SREG [2]),
    .ADR1(\TPGRP/PREG [1]),
    .ADR2(TP_GRP_CAPT),
    .O(\TPGRP/SREG[6]_PREG[6]_mux_1_OUT<1> )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \TPGRP/mux111  (
    .ADR0(\TPGRP/SREG [1]),
    .ADR1(\TPGRP/PREG [0]),
    .ADR2(TP_GRP_CAPT),
    .O(\TPGRP/SREG[6]_PREG[6]_mux_1_OUT<0> )
  );
  X_LUT6 #(
    .INIT ( 64'hFBFBE8E9FBF9E9E8 ))
  \IN_DEC/Mmux_BYPASS_EN11  (
    .ADR0(\IR/PREG [4]),
    .ADR1(\IR/PREG [5]),
    .ADR2(\IR/PREG [3]),
    .ADR3(\IR/PREG [0]),
    .ADR4(\IR/PREG [2]),
    .ADR5(\IR/PREG [1]),
    .O(\IN_DEC/Mmux_BYPASS_EN1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \ADC_SH[4]_ADC_UPD[4]_OR_8_o_SW0  (
    .ADR0(ADC_SH[3]),
    .ADR1(ADC_SH[2]),
    .ADR2(ADC_SH[1]),
    .ADR3(ADC_SH[0]),
    .O(N2)
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFAA20 ))
  \ADC_SH[4]_ADC_UPD[4]_OR_8_o  (
    .ADR0(DR_UPD),
    .ADR1(IR_SH),
    .ADR2(\IN_DEC/_n0196<5>1 ),
    .ADR3(ADC_EN[4]),
    .ADR4(ADC_SH[4]),
    .ADR5(N2),
    .O(\ADC_SH[4]_ADC_UPD[4]_OR_8_o_147 )
  );
  X_LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  TDO_MUXLogicTrst2 (
    .ADR0(\IR/PREG [1]),
    .ADR1(\IR/PREG [2]),
    .ADR2(\TPSTP/SREG [0]),
    .ADR3(\VAR_PD/SREG_80 ),
    .ADR4(\SBR/SREG [0]),
    .ADR5(\TPGRP/SREG [0]),
    .O(TDO_MUXLogicTrst1_331)
  );
  X_LUT6 #(
    .INIT ( 64'hA0A0A0E4A0A0A0B1 ))
  TDO_MUXLogicTrst3 (
    .ADR0(\IN_DEC/_n0260<5>1 ),
    .ADR1(\IN_DEC/_n0196<5>1 ),
    .ADR2(TDO_MUXLogicTrst1_331),
    .ADR3(BYPASS_EN),
    .ADR4(\IN_DEC/Mmux_ID_REG_EN11_502 ),
    .ADR5(ADC_EN[4]),
    .O(TDO_MUXLogicTrst2_332)
  );
  X_LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  TDO_MUXLogicTrst5 (
    .ADR0(\IR/PREG [0]),
    .ADR1(\IR/PREG [1]),
    .ADR2(Future_6_OBUF_1),
    .ADR3(Dout_ADC_3_IBUF_3),
    .ADR4(Future_5_OBUF_2),
    .ADR5(Future_7_OBUF_0),
    .O(TDO_MUXLogicTrst4_334)
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFCF0FFFFFCC0A ))
  TDO_MUXLogicTrst7 (
    .ADR0(TDO_MUXLogicTrst5_335),
    .ADR1(TDO_MUXLogicTrst3_333),
    .ADR2(IR_SH),
    .ADR3(ADC_EN[4]),
    .ADR4(TDO_MUXLogicTrst),
    .ADR5(TDO_MUXLogicTrst2_332),
    .O(TDO_MUX)
  );
  X_LUT4 #(
    .INIT ( 16'hFFBA ))
  \DAC_SH[3]_DAC_UPD[3]_OR_20_o  (
    .ADR0(\DAC_SH[1] ),
    .ADR1(IR_SH),
    .ADR2(N4),
    .ADR3(\DAC_SH[3] ),
    .O(\DAC_SH[3]_DAC_UPD[3]_OR_20_o_152 )
  );
  X_LUT6 #(
    .INIT ( 64'hBAAA8AAAAAAAAAAA ))
  \VAR_PD/Mmux_SREG_PREG_MUX_207_o1  (
    .ADR0(TDI_IBUF_7),
    .ADR1(IR_SH),
    .ADR2(\IR/PREG [2]),
    .ADR3(\IR/PREG [1]),
    .ADR4(N8),
    .ADR5(\IN_DEC/_n0260<5>1 ),
    .O(\VAR_PD/SREG_PREG_MUX_207_o )
  );
  X_LUT3 #(
    .INIT ( 8'hBF ))
  \VAR_PD/_n0011_inv_SW0  (
    .ADR0(\T/TAP_CS_FSM_FFd1_8 ),
    .ADR1(\IR/PREG [2]),
    .ADR2(\IR/PREG [1]),
    .O(N10)
  );
  X_BUF   TCK_IBUF (
    .I(TCK),
    .O(TCK_IBUF_593)
  );
  X_BUF   Dout_ADC_4_IBUF (
    .I(Dout_ADC[4]),
    .O(Dout_ADC_4_IBUF_4)
  );
  X_BUF   Dout_ADC_3_IBUF (
    .I(Dout_ADC[3]),
    .O(Dout_ADC_3_IBUF_3)
  );
  X_BUF   Dout_ADC_2_IBUF (
    .I(Dout_ADC[2]),
    .O(Future_5_OBUF_2)
  );
  X_BUF   Dout_ADC_1_IBUF (
    .I(Dout_ADC[1]),
    .O(Future_6_OBUF_1)
  );
  X_BUF   Dout_ADC_0_IBUF (
    .I(Dout_ADC[0]),
    .O(Future_7_OBUF_0)
  );
  X_BUF   TMS_IBUF (
    .I(TMS),
    .O(TMS_IBUF_6)
  );
  X_BUF   TDI_IBUF (
    .I(TDI),
    .O(TDI_IBUF_7)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  CS_TP_N_373 (
    .CLK(\NlwInverterSignal_CS_TP_N/C ),
    .I(CS_TP_N_rstpot),
    .O(CS_TP_N_OBUF_90),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT3 #(
    .INIT ( 8'hAC ))
  BP_DOUT_rstpot (
    .ADR0(TDI_IBUF_7),
    .ADR1(BP_DOUT_93),
    .ADR2(BYPASS_EN),
    .O(BP_DOUT_rstpot_456)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  BP_DOUT (
    .CLK(TCK_IBUF_BUFG_5),
    .I(BP_DOUT_rstpot_456),
    .O(BP_DOUT_93),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \VAR_PD/PREG_rstpot  (
    .ADR0(\VAR_PD/PREG_81 ),
    .ADR1(\VAR_PD/SREG_80 ),
    .ADR2(VAR_PD_UPD),
    .O(\VAR_PD/PREG_rstpot_457 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \VAR_PD/PREG  (
    .CLK(\NlwInverterSignal_VAR_PD/PREG/C ),
    .I(\VAR_PD/PREG_rstpot_457 ),
    .O(\VAR_PD/PREG_81 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \VAR_PD/SREG_rstpot  (
    .ADR0(\VAR_PD/SREG_80 ),
    .ADR1(\VAR_PD/SREG_PREG_MUX_207_o ),
    .ADR2(\VAR_PD/_n0011_inv_157 ),
    .O(\VAR_PD/SREG_rstpot_458 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \VAR_PD/SREG  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\VAR_PD/SREG_rstpot_458 ),
    .O(\VAR_PD/SREG_80 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT5 #(
    .INIT ( 32'hF7FF0000 ))
  \IN_DEC/Mmux_BYPASS_EN12  (
    .ADR0(\T/TAP_CS_FSM_FFd4_11 ),
    .ADR1(\T/TAP_CS_FSM_FFd3_10 ),
    .ADR2(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR3(\T/TAP_CS_FSM_FFd1_8 ),
    .ADR4(\IN_DEC/Mmux_BYPASS_EN1 ),
    .O(BYPASS_EN)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_39  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_39_rstpot_459 ),
    .O(\ID_REG/SREG [39]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_38  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_38_rstpot_460 ),
    .O(\ID_REG/SREG [38]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_37  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_37_rstpot_461 ),
    .O(\ID_REG/SREG [37]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_36  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_36_rstpot_462 ),
    .O(\ID_REG/SREG [36]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_35  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_35_rstpot_463 ),
    .O(\ID_REG/SREG [35]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_34  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_34_rstpot_464 ),
    .O(\ID_REG/SREG [34]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_33  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_33_rstpot_465 ),
    .O(\ID_REG/SREG [33]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_32  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_32_rstpot_466 ),
    .O(\ID_REG/SREG [32]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_31  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_31_rstpot_467 ),
    .O(\ID_REG/SREG [31]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_30  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_30_rstpot_468 ),
    .O(\ID_REG/SREG [30]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_29  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_29_rstpot_469 ),
    .O(\ID_REG/SREG [29]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_28  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_28_rstpot_470 ),
    .O(\ID_REG/SREG [28]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_27  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_27_rstpot_471 ),
    .O(\ID_REG/SREG [27]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_26  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_26_rstpot_472 ),
    .O(\ID_REG/SREG [26]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_25  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_25_rstpot_473 ),
    .O(\ID_REG/SREG [25]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_24  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_24_rstpot_474 ),
    .O(\ID_REG/SREG [24]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_23  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_23_rstpot_475 ),
    .O(\ID_REG/SREG [23]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_22  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_22_rstpot_476 ),
    .O(\ID_REG/SREG [22]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_21  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_21_rstpot_477 ),
    .O(\ID_REG/SREG [21]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_20  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_20_rstpot_478 ),
    .O(\ID_REG/SREG [20]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_19  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_19_rstpot_479 ),
    .O(\ID_REG/SREG [19]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_18  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_18_rstpot_480 ),
    .O(\ID_REG/SREG [18]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_17  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_17_rstpot_481 ),
    .O(\ID_REG/SREG [17]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_16  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_16_rstpot_482 ),
    .O(\ID_REG/SREG [16]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_15  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_15_rstpot_483 ),
    .O(\ID_REG/SREG [15]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_14  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_14_rstpot_484 ),
    .O(\ID_REG/SREG [14]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_13  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_13_rstpot_485 ),
    .O(\ID_REG/SREG [13]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_12  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_12_rstpot_486 ),
    .O(\ID_REG/SREG [12]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_11  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_11_rstpot_487 ),
    .O(\ID_REG/SREG [11]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_10  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_10_rstpot_488 ),
    .O(\ID_REG/SREG [10]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_9  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_9_rstpot_489 ),
    .O(\ID_REG/SREG [9]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_8  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_8_rstpot_490 ),
    .O(\ID_REG/SREG [8]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_7  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_7_rstpot_491 ),
    .O(\ID_REG/SREG [7]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_6  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_6_rstpot_492 ),
    .O(\ID_REG/SREG [6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_5  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_5_rstpot_493 ),
    .O(\ID_REG/SREG [5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_4  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_4_rstpot_494 ),
    .O(\ID_REG/SREG [4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_3  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_3_rstpot_495 ),
    .O(\ID_REG/SREG [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_2  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_2_rstpot_496 ),
    .O(\ID_REG/SREG [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_1  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_1_rstpot_497 ),
    .O(\ID_REG/SREG [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ID_REG/SREG_0  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\ID_REG/SREG_0_rstpot_498 ),
    .O(\ID_REG/SREG [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_39_rstpot  (
    .ADR0(TDI_IBUF_7),
    .ADR1(\ID_REG/SREG [39]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(ID_REG_EN),
    .O(\ID_REG/SREG_39_rstpot_459 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_38_rstpot  (
    .ADR0(\ID_REG/SREG [39]),
    .ADR1(\ID_REG/SREG [38]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(ID_REG_EN),
    .O(\ID_REG/SREG_38_rstpot_460 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_37_rstpot  (
    .ADR0(\ID_REG/SREG [38]),
    .ADR1(\ID_REG/SREG [37]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(ID_REG_EN),
    .O(\ID_REG/SREG_37_rstpot_461 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_36_rstpot  (
    .ADR0(\ID_REG/SREG [37]),
    .ADR1(\ID_REG/SREG [36]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(ID_REG_EN),
    .O(\ID_REG/SREG_36_rstpot_462 )
  );
  X_LUT5 #(
    .INIT ( 32'hFAFCAAAA ))
  \ID_REG/SREG_35_rstpot  (
    .ADR0(\ID_REG/SREG [35]),
    .ADR1(\ID_REG/SREG [36]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(ID_REG_EN),
    .O(\ID_REG/SREG_35_rstpot_463 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_34_rstpot  (
    .ADR0(\ID_REG/SREG [35]),
    .ADR1(\ID_REG/SREG [34]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(ID_REG_EN),
    .O(\ID_REG/SREG_34_rstpot_464 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_33_rstpot  (
    .ADR0(\ID_REG/SREG [34]),
    .ADR1(\ID_REG/SREG [33]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(ID_REG_EN),
    .O(\ID_REG/SREG_33_rstpot_465 )
  );
  X_LUT5 #(
    .INIT ( 32'hFAFCAAAA ))
  \ID_REG/SREG_32_rstpot  (
    .ADR0(\ID_REG/SREG [32]),
    .ADR1(\ID_REG/SREG [33]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(ID_REG_EN),
    .O(\ID_REG/SREG_32_rstpot_466 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_31_rstpot  (
    .ADR0(\ID_REG/SREG [32]),
    .ADR1(\ID_REG/SREG [31]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(ID_REG_EN),
    .O(\ID_REG/SREG_31_rstpot_467 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_30_rstpot  (
    .ADR0(\ID_REG/SREG [31]),
    .ADR1(\ID_REG/SREG [30]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(ID_REG_EN),
    .O(\ID_REG/SREG_30_rstpot_468 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_29_rstpot  (
    .ADR0(\ID_REG/SREG [30]),
    .ADR1(\ID_REG/SREG [29]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(ID_REG_EN),
    .O(\ID_REG/SREG_29_rstpot_469 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_28_rstpot  (
    .ADR0(\ID_REG/SREG [29]),
    .ADR1(\ID_REG/SREG [28]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(ID_REG_EN),
    .O(\ID_REG/SREG_28_rstpot_470 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_27_rstpot  (
    .ADR0(\ID_REG/SREG [28]),
    .ADR1(\ID_REG/SREG [27]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(ID_REG_EN),
    .O(\ID_REG/SREG_27_rstpot_471 )
  );
  X_LUT5 #(
    .INIT ( 32'hFAFCAAAA ))
  \ID_REG/SREG_26_rstpot  (
    .ADR0(\ID_REG/SREG [26]),
    .ADR1(\ID_REG/SREG [27]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(ID_REG_EN),
    .O(\ID_REG/SREG_26_rstpot_472 )
  );
  X_LUT5 #(
    .INIT ( 32'hFAFCAAAA ))
  \ID_REG/SREG_25_rstpot  (
    .ADR0(\ID_REG/SREG [25]),
    .ADR1(\ID_REG/SREG [26]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(ID_REG_EN),
    .O(\ID_REG/SREG_25_rstpot_473 )
  );
  X_LUT5 #(
    .INIT ( 32'hFAFCAAAA ))
  \ID_REG/SREG_24_rstpot  (
    .ADR0(\ID_REG/SREG [24]),
    .ADR1(\ID_REG/SREG [25]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(ID_REG_EN),
    .O(\ID_REG/SREG_24_rstpot_474 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_23_rstpot  (
    .ADR0(\ID_REG/SREG [24]),
    .ADR1(\ID_REG/SREG [23]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(ID_REG_EN),
    .O(\ID_REG/SREG_23_rstpot_475 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_22_rstpot  (
    .ADR0(\ID_REG/SREG [23]),
    .ADR1(\ID_REG/SREG [22]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(ID_REG_EN),
    .O(\ID_REG/SREG_22_rstpot_476 )
  );
  X_LUT5 #(
    .INIT ( 32'hFAFCAAAA ))
  \ID_REG/SREG_21_rstpot  (
    .ADR0(\ID_REG/SREG [21]),
    .ADR1(\ID_REG/SREG [22]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(ID_REG_EN),
    .O(\ID_REG/SREG_21_rstpot_477 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_20_rstpot  (
    .ADR0(\ID_REG/SREG [21]),
    .ADR1(\ID_REG/SREG [20]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(ID_REG_EN),
    .O(\ID_REG/SREG_20_rstpot_478 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_19_rstpot  (
    .ADR0(\ID_REG/SREG [20]),
    .ADR1(\ID_REG/SREG [19]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(ID_REG_EN),
    .O(\ID_REG/SREG_19_rstpot_479 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_18_rstpot  (
    .ADR0(\ID_REG/SREG [19]),
    .ADR1(\ID_REG/SREG [18]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(\IN_DEC/Mmux_ID_REG_EN111 ),
    .O(\ID_REG/SREG_18_rstpot_480 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_17_rstpot  (
    .ADR0(\ID_REG/SREG [18]),
    .ADR1(\ID_REG/SREG [17]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(\IN_DEC/Mmux_ID_REG_EN111 ),
    .O(\ID_REG/SREG_17_rstpot_481 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_16_rstpot  (
    .ADR0(\ID_REG/SREG [17]),
    .ADR1(\ID_REG/SREG [16]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(\IN_DEC/Mmux_ID_REG_EN111 ),
    .O(\ID_REG/SREG_16_rstpot_482 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_15_rstpot  (
    .ADR0(\ID_REG/SREG [16]),
    .ADR1(\ID_REG/SREG [15]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(\IN_DEC/Mmux_ID_REG_EN111 ),
    .O(\ID_REG/SREG_15_rstpot_483 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_14_rstpot  (
    .ADR0(\ID_REG/SREG [15]),
    .ADR1(\ID_REG/SREG [14]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(\IN_DEC/Mmux_ID_REG_EN111 ),
    .O(\ID_REG/SREG_14_rstpot_484 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_13_rstpot  (
    .ADR0(\ID_REG/SREG [14]),
    .ADR1(\ID_REG/SREG [13]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(\IN_DEC/Mmux_ID_REG_EN111 ),
    .O(\ID_REG/SREG_13_rstpot_485 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_12_rstpot  (
    .ADR0(\ID_REG/SREG [13]),
    .ADR1(\ID_REG/SREG [12]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(\IN_DEC/Mmux_ID_REG_EN111 ),
    .O(\ID_REG/SREG_12_rstpot_486 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_11_rstpot  (
    .ADR0(\ID_REG/SREG [12]),
    .ADR1(\ID_REG/SREG [11]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(\IN_DEC/Mmux_ID_REG_EN111 ),
    .O(\ID_REG/SREG_11_rstpot_487 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_10_rstpot  (
    .ADR0(\ID_REG/SREG [11]),
    .ADR1(\ID_REG/SREG [10]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(\IN_DEC/Mmux_ID_REG_EN111 ),
    .O(\ID_REG/SREG_10_rstpot_488 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_9_rstpot  (
    .ADR0(\ID_REG/SREG [10]),
    .ADR1(\ID_REG/SREG [9]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(\IN_DEC/Mmux_ID_REG_EN111 ),
    .O(\ID_REG/SREG_9_rstpot_489 )
  );
  X_LUT5 #(
    .INIT ( 32'hFAFCAAAA ))
  \ID_REG/SREG_8_rstpot  (
    .ADR0(\ID_REG/SREG [8]),
    .ADR1(\ID_REG/SREG [9]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(\IN_DEC/Mmux_ID_REG_EN111 ),
    .O(\ID_REG/SREG_8_rstpot_490 )
  );
  X_LUT5 #(
    .INIT ( 32'hFAFCAAAA ))
  \ID_REG/SREG_7_rstpot  (
    .ADR0(\ID_REG/SREG [7]),
    .ADR1(\ID_REG/SREG [8]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(\IN_DEC/Mmux_ID_REG_EN111 ),
    .O(\ID_REG/SREG_7_rstpot_491 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_6_rstpot  (
    .ADR0(\ID_REG/SREG [7]),
    .ADR1(\ID_REG/SREG [6]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(\IN_DEC/Mmux_ID_REG_EN111 ),
    .O(\ID_REG/SREG_6_rstpot_492 )
  );
  X_LUT5 #(
    .INIT ( 32'hFAFCAAAA ))
  \ID_REG/SREG_5_rstpot  (
    .ADR0(\ID_REG/SREG [5]),
    .ADR1(\ID_REG/SREG [6]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(\IN_DEC/Mmux_ID_REG_EN111 ),
    .O(\ID_REG/SREG_5_rstpot_493 )
  );
  X_LUT5 #(
    .INIT ( 32'hFAFCAAAA ))
  \ID_REG/SREG_4_rstpot  (
    .ADR0(\ID_REG/SREG [4]),
    .ADR1(\ID_REG/SREG [5]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(\IN_DEC/Mmux_ID_REG_EN111 ),
    .O(\ID_REG/SREG_4_rstpot_494 )
  );
  X_LUT5 #(
    .INIT ( 32'hFAFCAAAA ))
  \ID_REG/SREG_3_rstpot  (
    .ADR0(\ID_REG/SREG [3]),
    .ADR1(\ID_REG/SREG [4]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(\IN_DEC/Mmux_ID_REG_EN111 ),
    .O(\ID_REG/SREG_3_rstpot_495 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_2_rstpot  (
    .ADR0(\ID_REG/SREG [3]),
    .ADR1(\ID_REG/SREG [2]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(\IN_DEC/Mmux_ID_REG_EN111 ),
    .O(\ID_REG/SREG_2_rstpot_496 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_1_rstpot  (
    .ADR0(\ID_REG/SREG [2]),
    .ADR1(\ID_REG/SREG [1]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(\IN_DEC/Mmux_ID_REG_EN111 ),
    .O(\ID_REG/SREG_1_rstpot_497 )
  );
  X_LUT5 #(
    .INIT ( 32'h0C0ACCCC ))
  \ID_REG/SREG_0_rstpot  (
    .ADR0(\ID_REG/SREG [1]),
    .ADR1(\ID_REG/SREG [0]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(DR_SH_inv),
    .ADR4(\IN_DEC/Mmux_ID_REG_EN111 ),
    .O(\ID_REG/SREG_0_rstpot_498 )
  );
  X_LUT5 #(
    .INIT ( 32'hFFFFFFBF ))
  \IN_DEC/Mmux_TP_VAL_EN11_SW0  (
    .ADR0(\IR/PREG [3]),
    .ADR1(\IR/PREG [1]),
    .ADR2(\IR/PREG [0]),
    .ADR3(\IR/PREG [4]),
    .ADR4(\IR/PREG [2]),
    .O(N12)
  );
  X_LUT6 #(
    .INIT ( 64'h1111011111111111 ))
  \IN_DEC/Mmux_TP_VAL_EN11  (
    .ADR0(\IR/PREG [5]),
    .ADR1(N12),
    .ADR2(\T/TAP_CS_FSM_FFd4_11 ),
    .ADR3(\T/TAP_CS_FSM_FFd3_10 ),
    .ADR4(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR5(\T/TAP_CS_FSM_FFd1_8 ),
    .O(TP_VAL_EN)
  );
  X_LUT6 #(
    .INIT ( 64'hFFCCCCCCFF505050 ))
  TDO_MUXLogicTrst1 (
    .ADR0(N14),
    .ADR1(\IR/SREG [0]),
    .ADR2(\ID_REG/SREG [0]),
    .ADR3(BP_DOUT_93),
    .ADR4(BYPASS_EN),
    .ADR5(IR_SH),
    .O(TDO_MUXLogicTrst)
  );
  X_LUT6 #(
    .INIT ( 64'h0045000000000000 ))
  \TPSTP/_n0018_inv1  (
    .ADR0(IR_SH),
    .ADR1(ID_REG_CAPT1),
    .ADR2(DR_SH_inv),
    .ADR3(\IR/PREG [2]),
    .ADR4(\IR/PREG [1]),
    .ADR5(\IN_DEC/_n0260<5>1 ),
    .O(\TPSTP/_n0018_inv )
  );
  X_LUT6 #(
    .INIT ( 64'h0000004500000000 ))
  \TPGRP/_n0018_inv1  (
    .ADR0(IR_SH),
    .ADR1(ID_REG_CAPT1),
    .ADR2(DR_SH_inv),
    .ADR3(\IR/PREG [2]),
    .ADR4(\IR/PREG [1]),
    .ADR5(\IN_DEC/_n0260<5>1 ),
    .O(\TPGRP/_n0018_inv )
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \IN_DEC/Mmux_ADC_EN5_SW1  (
    .ADR0(\IR/PREG [5]),
    .ADR1(\T/TAP_CS_FSM_FFd4_2_556 ),
    .ADR2(\T/TAP_CS_FSM_FFd3_2_554 ),
    .ADR3(\T/TAP_CS_FSM_FFd2_2_555 ),
    .ADR4(\T/TAP_CS_FSM_FFd1_2_553 ),
    .O(N18)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000040000 ))
  \IN_DEC/Mmux_ADC_EN5  (
    .ADR0(\IR/PREG [0]),
    .ADR1(\IR/PREG [2]),
    .ADR2(\IR/PREG [1]),
    .ADR3(\IR/PREG [3]),
    .ADR4(\IR/PREG [4]),
    .ADR5(N18),
    .O(ADC_EN[4])
  );
  X_LUT6 #(
    .INIT ( 64'h08000000AAAAAAAA ))
  TDO_MUXLogicTrst4 (
    .ADR0(Dout_ADC_4_IBUF_4),
    .ADR1(\T/TAP_CS_FSM_FFd3_10 ),
    .ADR2(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR3(\T/TAP_CS_FSM_FFd4_11 ),
    .ADR4(\T/TAP_CS_FSM_FFd1_8 ),
    .ADR5(\IN_DEC/_n0196<5>1 ),
    .O(TDO_MUXLogicTrst3_333)
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \IN_DEC/Mmux_ID_REG_EN11_SW0  (
    .ADR0(\IR/PREG [1]),
    .ADR1(\IR/PREG [3]),
    .ADR2(\IR/PREG [4]),
    .ADR3(\IR/PREG [5]),
    .ADR4(\IR/PREG [2]),
    .ADR5(\IR/PREG [0]),
    .O(N14)
  );
  X_LUT5 #(
    .INIT ( 32'hAABAAAAA ))
  \IR/Mmux_SREG[5]_PWR_7_o_mux_1_OUT11  (
    .ADR0(\IR/SREG [1]),
    .ADR1(\T/TAP_CS_FSM_FFd4_11 ),
    .ADR2(\T/TAP_CS_FSM_FFd1_8 ),
    .ADR3(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR4(\T/TAP_CS_FSM_FFd3_10 ),
    .O(\IR/SREG[5]_PWR_7_o_mux_1_OUT<0> )
  );
  X_LUT5 #(
    .INIT ( 32'hAAAAA2AA ))
  \IR/Mmux_SREG[5]_PWR_7_o_mux_1_OUT21  (
    .ADR0(\IR/SREG [2]),
    .ADR1(\T/TAP_CS_FSM_FFd1_8 ),
    .ADR2(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR3(\T/TAP_CS_FSM_FFd3_10 ),
    .ADR4(\T/TAP_CS_FSM_FFd4_11 ),
    .O(\IR/SREG[5]_PWR_7_o_mux_1_OUT<1> )
  );
  X_LUT5 #(
    .INIT ( 32'hAAAAA2AA ))
  \IR/Mmux_SREG[5]_PWR_7_o_mux_1_OUT31  (
    .ADR0(\IR/SREG [3]),
    .ADR1(\T/TAP_CS_FSM_FFd1_8 ),
    .ADR2(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR3(\T/TAP_CS_FSM_FFd3_10 ),
    .ADR4(\T/TAP_CS_FSM_FFd4_11 ),
    .O(\IR/SREG[5]_PWR_7_o_mux_1_OUT<2> )
  );
  X_LUT5 #(
    .INIT ( 32'hAAAAA2AA ))
  \IR/Mmux_SREG[5]_PWR_7_o_mux_1_OUT41  (
    .ADR0(\IR/SREG [4]),
    .ADR1(\T/TAP_CS_FSM_FFd1_8 ),
    .ADR2(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR3(\T/TAP_CS_FSM_FFd3_10 ),
    .ADR4(\T/TAP_CS_FSM_FFd4_11 ),
    .O(\IR/SREG[5]_PWR_7_o_mux_1_OUT<3> )
  );
  X_LUT5 #(
    .INIT ( 32'hAAAAA2AA ))
  \IR/Mmux_SREG[5]_PWR_7_o_mux_1_OUT51  (
    .ADR0(\IR/SREG [5]),
    .ADR1(\T/TAP_CS_FSM_FFd1_8 ),
    .ADR2(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR3(\T/TAP_CS_FSM_FFd3_10 ),
    .ADR4(\T/TAP_CS_FSM_FFd4_11 ),
    .O(\IR/SREG[5]_PWR_7_o_mux_1_OUT<4> )
  );
  X_LUT5 #(
    .INIT ( 32'hAABAAAAA ))
  \IR/Mmux_SREG[5]_PWR_7_o_mux_1_OUT61  (
    .ADR0(TDI_IBUF_7),
    .ADR1(\T/TAP_CS_FSM_FFd4_11 ),
    .ADR2(\T/TAP_CS_FSM_FFd1_8 ),
    .ADR3(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR4(\T/TAP_CS_FSM_FFd3_10 ),
    .O(\IR/SREG[5]_PWR_7_o_mux_1_OUT<5> )
  );
  X_LUT6 #(
    .INIT ( 64'h0000101800000000 ))
  \VAR_PD/_n0011_inv  (
    .ADR0(\T/TAP_CS_FSM_FFd4_11 ),
    .ADR1(\T/TAP_CS_FSM_FFd3_10 ),
    .ADR2(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR3(\T/TAP_CS_FSM_FFd1_8 ),
    .ADR4(N10),
    .ADR5(\IN_DEC/_n0260<5>1 ),
    .O(\VAR_PD/_n0011_inv_157 )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAEAAAAAAA2AA ))
  \VAR_PD/Mmux_SREG_PREG_MUX_207_o1_SW0  (
    .ADR0(TDI_IBUF_7),
    .ADR1(\T/TAP_CS_FSM_FFd4_11 ),
    .ADR2(\T/TAP_CS_FSM_FFd1_8 ),
    .ADR3(\T/TAP_CS_FSM_FFd3_10 ),
    .ADR4(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR5(\VAR_PD/PREG_81 ),
    .O(N8)
  );
  X_LUT5 #(
    .INIT ( 32'h01000000 ))
  TDO_MUXLogicTrst6 (
    .ADR0(\IR/PREG [5]),
    .ADR1(\IR/PREG [3]),
    .ADR2(\IR/PREG [2]),
    .ADR3(\IR/PREG [4]),
    .ADR4(TDO_MUXLogicTrst4_334),
    .O(TDO_MUXLogicTrst5_335)
  );
  X_LUT5 #(
    .INIT ( 32'h88880008 ))
  \DAC_SH[3]_DAC_UPD[3]_OR_20_o_SW0  (
    .ADR0(\IR/PREG [3]),
    .ADR1(\IN_DEC/_n0132<5>1 ),
    .ADR2(\IR/PREG [0]),
    .ADR3(DR_SH_inv),
    .ADR4(DR_UPD),
    .O(N4)
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFFBFFFFFFF ))
  \Mmux_CS_DAC_N[3]_DAC_SH[3]_MUX_198_o11  (
    .ADR0(DR_SH_inv),
    .ADR1(\IR/PREG [3]),
    .ADR2(\IR/PREG [1]),
    .ADR3(\IR/PREG [0]),
    .ADR4(\IN_DEC/_n0132<5>1 ),
    .ADR5(IR_SH),
    .O(\CS_DAC_N[3]_DAC_SH[3]_MUX_198_o )
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFFFBFFFFFF ))
  \Mmux_CS_DAC_N[3]_DAC_SH[3]_MUX_202_o11  (
    .ADR0(\IR/PREG [1]),
    .ADR1(\IR/PREG [3]),
    .ADR2(IR_SH),
    .ADR3(\IR/PREG [0]),
    .ADR4(\IN_DEC/_n0132<5>1 ),
    .ADR5(DR_SH_inv),
    .O(\CS_DAC_N[3]_DAC_SH[3]_MUX_202_o )
  );
  X_LUT6 #(
    .INIT ( 64'h0010000000000000 ))
  Clk_TP1 (
    .ADR0(\T/TAP_CS_FSM_FFd3_10 ),
    .ADR1(\T/TAP_CS_FSM_FFd4_11 ),
    .ADR2(TP_VAL_EN),
    .ADR3(\T/TAP_CS_FSM_FFd1_8 ),
    .ADR4(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR5(TCK_IBUF_593),
    .O(Clk_TP_OBUF_83)
  );
  X_LUT6 #(
    .INIT ( 64'h0010000000000000 ))
  Din_TP1 (
    .ADR0(\T/TAP_CS_FSM_FFd3_10 ),
    .ADR1(\T/TAP_CS_FSM_FFd4_11 ),
    .ADR2(TP_VAL_EN),
    .ADR3(\T/TAP_CS_FSM_FFd1_8 ),
    .ADR4(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR5(TDI_IBUF_7),
    .O(Din_TP_OBUF_94)
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFBF ))
  \Mmux_CS_DAC_N[3]_DAC_SH[3]_MUX_204_o11  (
    .ADR0(IR_SH),
    .ADR1(\IN_DEC/_n0132<5>1 ),
    .ADR2(\IR/PREG [3]),
    .ADR3(\IR/PREG [1]),
    .ADR4(\IR/PREG [0]),
    .ADR5(DR_SH_inv),
    .O(\CS_DAC_N[3]_DAC_SH[3]_MUX_204_o )
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFFFBFFFFFF ))
  \Mmux_CS_DAC_N[3]_DAC_SH[3]_MUX_200_o11  (
    .ADR0(\IR/PREG [0]),
    .ADR1(\IR/PREG [1]),
    .ADR2(IR_SH),
    .ADR3(\IN_DEC/_n0132<5>1 ),
    .ADR4(\IR/PREG [3]),
    .ADR5(DR_SH_inv),
    .O(\CS_DAC_N[3]_DAC_SH[3]_MUX_200_o )
  );
  X_LUT3 #(
    .INIT ( 8'h08 ))
  \IR/_n0018_inv1  (
    .ADR0(\T/TAP_CS_FSM_FFd3_10 ),
    .ADR1(\T/TAP_CS_FSM_FFd1_8 ),
    .ADR2(\T/TAP_CS_FSM_FFd2_9 ),
    .O(\IR/_n0018_inv )
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFD ))
  CS_TP_N_rstpot1 (
    .ADR0(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR1(\T/TAP_CS_FSM_FFd3_10 ),
    .ADR2(\IR/PREG [5]),
    .ADR3(N12),
    .ADR4(\T/TAP_CS_FSM_FFd4_11 ),
    .ADR5(\T/TAP_CS_FSM_FFd1_8 ),
    .O(CS_TP_N_rstpot)
  );
  X_LUT5 #(
    .INIT ( 32'h00000004 ))
  \IN_DEC/_n0164<5>11  (
    .ADR0(\IR/PREG [4]),
    .ADR1(\IR/PREG [3]),
    .ADR2(\IR/PREG [5]),
    .ADR3(\IR/PREG [2]),
    .ADR4(\IR/PREG [0]),
    .O(\IN_DEC/_n0164<5>1 )
  );
  X_LUT5 #(
    .INIT ( 32'h00000100 ))
  \IN_DEC/Mmux_ID_REG_EN11_1  (
    .ADR0(\IR/PREG [3]),
    .ADR1(\IR/PREG [0]),
    .ADR2(\IR/PREG [1]),
    .ADR3(\IN_DEC/_n0132<5>1 ),
    .ADR4(\T/TAP_CS_IR_SH1_507 ),
    .O(\IN_DEC/Mmux_ID_REG_EN11_502 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \T/TAP_CS_FSM_FFd1_1  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\T/TAP_CS_FSM_FFd1-In ),
    .O(\T/TAP_CS_FSM_FFd1_1_503 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \T/TAP_CS_FSM_FFd2_1  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\T/TAP_CS_FSM_FFd2-In ),
    .O(\T/TAP_CS_FSM_FFd2_1_504 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \T/TAP_CS_FSM_FFd3_1  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\T/TAP_CS_FSM_FFd3-In ),
    .O(\T/TAP_CS_FSM_FFd3_1_505 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \T/TAP_CS_FSM_FFd4_1  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\T/TAP_CS_FSM_FFd4-In ),
    .O(\T/TAP_CS_FSM_FFd4_1_506 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ))
  \T/TAP_CS_IR_SH1_1  (
    .ADR0(\T/TAP_CS_FSM_FFd4_1_506 ),
    .ADR1(\T/TAP_CS_FSM_FFd2_1_504 ),
    .ADR2(\T/TAP_CS_FSM_FFd1_1_503 ),
    .ADR3(\T/TAP_CS_FSM_FFd3_1_505 ),
    .O(\T/TAP_CS_IR_SH1_507 )
  );
  X_LUT5 #(
    .INIT ( 32'h00000200 ))
  STANDBY_UPD1_rstpot (
    .ADR0(\IR/PREG [2]),
    .ADR1(\IR/PREG [0]),
    .ADR2(\IR/PREG [1]),
    .ADR3(\IN_DEC/_n0260<5>1 ),
    .ADR4(\T/TAP_CS_IR_SH1_507 ),
    .O(STANDBY_UPD1_rstpot_508)
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_0_dpot  (
    .ADR0(\SBR/PREG [0]),
    .ADR1(\SBR/SREG [0]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_0_dpot_509 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_1_dpot  (
    .ADR0(\SBR/PREG [1]),
    .ADR1(\SBR/SREG [1]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_1_dpot_510 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_2_dpot  (
    .ADR0(\SBR/PREG [2]),
    .ADR1(\SBR/SREG [2]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_2_dpot_511 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_3_dpot  (
    .ADR0(\SBR/PREG [3]),
    .ADR1(\SBR/SREG [3]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_3_dpot_512 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_4_dpot  (
    .ADR0(\SBR/PREG [4]),
    .ADR1(\SBR/SREG [4]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_4_dpot_513 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_5_dpot  (
    .ADR0(\SBR/PREG [5]),
    .ADR1(\SBR/SREG [5]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_5_dpot_514 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_6_dpot  (
    .ADR0(\SBR/PREG [6]),
    .ADR1(\SBR/SREG [6]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_6_dpot_515 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_7_dpot  (
    .ADR0(\SBR/PREG [7]),
    .ADR1(\SBR/SREG [7]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_7_dpot_516 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_8_dpot  (
    .ADR0(\SBR/PREG [8]),
    .ADR1(\SBR/SREG [8]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_8_dpot_517 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_9_dpot  (
    .ADR0(\SBR/PREG [9]),
    .ADR1(\SBR/SREG [9]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_9_dpot_518 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_10_dpot  (
    .ADR0(\SBR/PREG [10]),
    .ADR1(\SBR/SREG [10]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_10_dpot_519 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_11_dpot  (
    .ADR0(\SBR/PREG [11]),
    .ADR1(\SBR/SREG [11]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_11_dpot_520 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_12_dpot  (
    .ADR0(\SBR/PREG [12]),
    .ADR1(\SBR/SREG [12]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_12_dpot_521 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_13_dpot  (
    .ADR0(\SBR/PREG [13]),
    .ADR1(\SBR/SREG [13]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_13_dpot_522 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_14_dpot  (
    .ADR0(\SBR/PREG [14]),
    .ADR1(\SBR/SREG [14]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_14_dpot_523 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_15_dpot  (
    .ADR0(\SBR/PREG [15]),
    .ADR1(\SBR/SREG [15]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_15_dpot_524 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_16_dpot  (
    .ADR0(\SBR/PREG [16]),
    .ADR1(\SBR/SREG [16]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_16_dpot_525 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_17_dpot  (
    .ADR0(\SBR/PREG [17]),
    .ADR1(\SBR/SREG [17]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_17_dpot_526 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_18_dpot  (
    .ADR0(\SBR/PREG [18]),
    .ADR1(\SBR/SREG [18]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_18_dpot_527 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_19_dpot  (
    .ADR0(\SBR/PREG [19]),
    .ADR1(\SBR/SREG [19]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_19_dpot_528 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_20_dpot  (
    .ADR0(\SBR/PREG [20]),
    .ADR1(\SBR/SREG [20]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_20_dpot_529 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_21_dpot  (
    .ADR0(\SBR/PREG [21]),
    .ADR1(\SBR/SREG [21]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_21_dpot_530 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_22_dpot  (
    .ADR0(\SBR/PREG [22]),
    .ADR1(\SBR/SREG [22]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_22_dpot_531 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_23_dpot  (
    .ADR0(\SBR/PREG [23]),
    .ADR1(\SBR/SREG [23]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_23_dpot_532 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_24_dpot  (
    .ADR0(\SBR/PREG [24]),
    .ADR1(\SBR/SREG [24]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_24_dpot_533 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_25_dpot  (
    .ADR0(\SBR/PREG [25]),
    .ADR1(\SBR/SREG [25]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_25_dpot_534 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_26_dpot  (
    .ADR0(\SBR/PREG [26]),
    .ADR1(\SBR/SREG [26]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_26_dpot_535 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_27_dpot  (
    .ADR0(\SBR/PREG [27]),
    .ADR1(\SBR/SREG [27]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_27_dpot_536 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_28_dpot  (
    .ADR0(\SBR/PREG [28]),
    .ADR1(\SBR/SREG [28]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_28_dpot_537 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_29_dpot  (
    .ADR0(\SBR/PREG [29]),
    .ADR1(\SBR/SREG [29]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_29_dpot_538 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_30_dpot  (
    .ADR0(\SBR/PREG [30]),
    .ADR1(\SBR/SREG [30]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_30_dpot_539 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_31_dpot  (
    .ADR0(\SBR/PREG [31]),
    .ADR1(\SBR/SREG [31]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_31_dpot_540 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_32_dpot  (
    .ADR0(\SBR/PREG [32]),
    .ADR1(\SBR/SREG [32]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_32_dpot_541 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_33_dpot  (
    .ADR0(\SBR/PREG [33]),
    .ADR1(\SBR/SREG [33]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_33_dpot_542 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_34_dpot  (
    .ADR0(\SBR/PREG [34]),
    .ADR1(\SBR/SREG [34]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_34_dpot_543 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_35_dpot  (
    .ADR0(\SBR/PREG [35]),
    .ADR1(\SBR/SREG [35]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_35_dpot_544 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_36_dpot  (
    .ADR0(\SBR/PREG [36]),
    .ADR1(\SBR/SREG [36]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_36_dpot_545 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_37_dpot  (
    .ADR0(\SBR/PREG [37]),
    .ADR1(\SBR/SREG [37]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_37_dpot_546 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_38_dpot  (
    .ADR0(\SBR/PREG [38]),
    .ADR1(\SBR/SREG [38]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_38_dpot_547 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_39_dpot  (
    .ADR0(\SBR/PREG [39]),
    .ADR1(\SBR/SREG [39]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_39_dpot_548 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_40_dpot  (
    .ADR0(\SBR/PREG [40]),
    .ADR1(\SBR/SREG [40]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_40_dpot_549 )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \SBR/PREG_41_dpot  (
    .ADR0(\SBR/PREG [41]),
    .ADR1(\SBR/SREG [41]),
    .ADR2(STANDBY_UPD1_rstpot_508),
    .O(\SBR/PREG_41_dpot_550 )
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ))
  \T/TAP_CS_DR_UPD1_1  (
    .ADR0(\T/TAP_CS_FSM_FFd4_11 ),
    .ADR1(\T/TAP_CS_FSM_FFd3_10 ),
    .ADR2(\T/TAP_CS_FSM_FFd2_9 ),
    .ADR3(\T/TAP_CS_FSM_FFd1_8 ),
    .O(\T/TAP_CS_DR_UPD1_551 )
  );
  X_LUT6 #(
    .INIT ( 64'h0000450000000000 ))
  \SBR/_n0018_inv1_1  (
    .ADR0(IR_SH),
    .ADR1(ID_REG_CAPT1),
    .ADR2(DR_SH_inv),
    .ADR3(\IR/PREG [2]),
    .ADR4(\IR/PREG [1]),
    .ADR5(\IN_DEC/_n0260<5>1 ),
    .O(\SBR/_n0018_inv1 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \T/TAP_CS_FSM_FFd1_2  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\T/TAP_CS_FSM_FFd1-In ),
    .O(\T/TAP_CS_FSM_FFd1_2_553 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \T/TAP_CS_FSM_FFd3_2  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\T/TAP_CS_FSM_FFd3-In ),
    .O(\T/TAP_CS_FSM_FFd3_2_554 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \T/TAP_CS_FSM_FFd2_2  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\T/TAP_CS_FSM_FFd2-In ),
    .O(\T/TAP_CS_FSM_FFd2_2_555 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \T/TAP_CS_FSM_FFd4_2  (
    .CLK(TCK_IBUF_BUFG_5),
    .I(\T/TAP_CS_FSM_FFd4-In ),
    .O(\T/TAP_CS_FSM_FFd4_2_556 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT5 #(
    .INIT ( 32'h10000000 ))
  STANDBY_CAPT1_1 (
    .ADR0(IR_SH),
    .ADR1(\IR/PREG [1]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(\IR/PREG [2]),
    .ADR4(\IN_DEC/_n0260<5>1 ),
    .O(STANDBY_CAPT1_557)
  );
  X_LUT5 #(
    .INIT ( 32'h10000000 ))
  STANDBY_CAPT1_2 (
    .ADR0(IR_SH),
    .ADR1(\IR/PREG [1]),
    .ADR2(ID_REG_CAPT1),
    .ADR3(\IR/PREG [2]),
    .ADR4(\IN_DEC/_n0260<5>1 ),
    .O(STANDBY_CAPT11)
  );
  X_LUT5 #(
    .INIT ( 32'h10100010 ))
  \SBR/_n0018_inv1_rstpot  (
    .ADR0(IR_SH),
    .ADR1(\IR/PREG [1]),
    .ADR2(\IR/PREG [2]),
    .ADR3(DR_SH_inv),
    .ADR4(ID_REG_CAPT1),
    .O(\SBR/_n0018_inv1_rstpot_559 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_0_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [0]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<0> ),
    .O(\SBR/SREG_0_dpot_560 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_1_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [1]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<1> ),
    .O(\SBR/SREG_1_dpot_561 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_2_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [2]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<2> ),
    .O(\SBR/SREG_2_dpot_562 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_3_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [3]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<3> ),
    .O(\SBR/SREG_3_dpot_563 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_4_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [4]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<4> ),
    .O(\SBR/SREG_4_dpot_564 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_5_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [5]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<5> ),
    .O(\SBR/SREG_5_dpot_565 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_6_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [6]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<6> ),
    .O(\SBR/SREG_6_dpot_566 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_7_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [7]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<7> ),
    .O(\SBR/SREG_7_dpot_567 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_8_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [8]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<8> ),
    .O(\SBR/SREG_8_dpot_568 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_9_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [9]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<9> ),
    .O(\SBR/SREG_9_dpot_569 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_10_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [10]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<10> ),
    .O(\SBR/SREG_10_dpot_570 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_11_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [11]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<11> ),
    .O(\SBR/SREG_11_dpot_571 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_12_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [12]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<12> ),
    .O(\SBR/SREG_12_dpot_572 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_13_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [13]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<13> ),
    .O(\SBR/SREG_13_dpot_573 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_14_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [14]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<14> ),
    .O(\SBR/SREG_14_dpot_574 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_15_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [15]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<15> ),
    .O(\SBR/SREG_15_dpot_575 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_16_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [16]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<16> ),
    .O(\SBR/SREG_16_dpot_576 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_17_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [17]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<17> ),
    .O(\SBR/SREG_17_dpot_577 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_18_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [18]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<18> ),
    .O(\SBR/SREG_18_dpot_578 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_19_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [19]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<19> ),
    .O(\SBR/SREG_19_dpot_579 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_20_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [20]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<20> ),
    .O(\SBR/SREG_20_dpot_580 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_21_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [21]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<21> ),
    .O(\SBR/SREG_21_dpot_581 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_22_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [22]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<22> ),
    .O(\SBR/SREG_22_dpot_582 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_23_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [23]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<23> ),
    .O(\SBR/SREG_23_dpot_583 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_24_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [24]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<24> ),
    .O(\SBR/SREG_24_dpot_584 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_25_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [25]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<25> ),
    .O(\SBR/SREG_25_dpot_585 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_26_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [26]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<26> ),
    .O(\SBR/SREG_26_dpot_586 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_27_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [27]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<27> ),
    .O(\SBR/SREG_27_dpot_587 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_28_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [28]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<28> ),
    .O(\SBR/SREG_28_dpot_588 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_29_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [29]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<29> ),
    .O(\SBR/SREG_29_dpot_589 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_30_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [30]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<30> ),
    .O(\SBR/SREG_30_dpot_590 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \SBR/SREG_31_dpot  (
    .ADR0(\SBR/_n0018_inv1_rstpot_559 ),
    .ADR1(\SBR/SREG [31]),
    .ADR2(\SBR/SREG[41]_PREG[41]_mux_1_OUT<31> ),
    .O(\SBR/SREG_31_dpot_591 )
  );
  X_LUT5 #(
    .INIT ( 32'h00010000 ))
  \IN_DEC/Mmux_ID_REG_EN11_2  (
    .ADR0(IR_SH),
    .ADR1(\IR/PREG [3]),
    .ADR2(\IR/PREG [0]),
    .ADR3(\IR/PREG [1]),
    .ADR4(\IN_DEC/_n0132<5>1 ),
    .O(\IN_DEC/Mmux_ID_REG_EN111 )
  );
  X_CKBUF   TCK_IBUF_BUFG (
    .O(TCK_IBUF_BUFG_5),
    .I(TCK_IBUF_593)
  );
  X_INV   TDO_OE_inv1_INV_0 (
    .I(TDO_OE_92),
    .O(TDO_OE_inv)
  );
  X_INV   \Mmux_CS_ADC_N[4]_ADC_SH[4]_MUX_188_o11_INV_0  (
    .I(ADC_SH[4]),
    .O(\CS_ADC_N[4]_ADC_SH[4]_MUX_188_o )
  );
  X_INV   \Mmux_CS_ADC_N[4]_ADC_SH[4]_MUX_190_o11_INV_0  (
    .I(ADC_SH[3]),
    .O(\CS_ADC_N[4]_ADC_SH[4]_MUX_190_o )
  );
  X_INV   \Mmux_CS_ADC_N[4]_ADC_SH[4]_MUX_192_o11_INV_0  (
    .I(ADC_SH[2]),
    .O(\CS_ADC_N[4]_ADC_SH[4]_MUX_192_o )
  );
  X_INV   \Mmux_CS_ADC_N[4]_ADC_SH[4]_MUX_194_o11_INV_0  (
    .I(ADC_SH[1]),
    .O(\CS_ADC_N[4]_ADC_SH[4]_MUX_194_o )
  );
  X_INV   \Mmux_CS_ADC_N[4]_ADC_SH[4]_MUX_196_o11_INV_0  (
    .I(ADC_SH[0]),
    .O(\CS_ADC_N[4]_ADC_SH[4]_MUX_196_o )
  );
  X_OPAD   TDO_587 (
    .PAD(TDO)
  );
  X_IPAD   TCK_588 (
    .PAD(TCK)
  );
  X_IPAD   \Dout_ADC<4>  (
    .PAD(Dout_ADC[4])
  );
  X_IPAD   \Dout_ADC<3>  (
    .PAD(Dout_ADC[3])
  );
  X_IPAD   \Dout_ADC<2>  (
    .PAD(Dout_ADC[2])
  );
  X_IPAD   \Dout_ADC<1>  (
    .PAD(Dout_ADC[1])
  );
  X_IPAD   \Dout_ADC<0>  (
    .PAD(Dout_ADC[0])
  );
  X_IPAD   TMS_594 (
    .PAD(TMS)
  );
  X_IPAD   TDI_595 (
    .PAD(TDI)
  );
  X_OPAD   \Din_ADC<4>  (
    .PAD(Din_ADC[4])
  );
  X_OPAD   \Din_ADC<3>  (
    .PAD(Din_ADC[3])
  );
  X_OPAD   \Din_ADC<2>  (
    .PAD(Din_ADC[2])
  );
  X_OPAD   \Din_ADC<1>  (
    .PAD(Din_ADC[1])
  );
  X_OPAD   \Din_ADC<0>  (
    .PAD(Din_ADC[0])
  );
  X_OPAD   \Clk_ADC<4>  (
    .PAD(Clk_ADC[4])
  );
  X_OPAD   \Clk_ADC<3>  (
    .PAD(Clk_ADC[3])
  );
  X_OPAD   \Clk_ADC<2>  (
    .PAD(Clk_ADC[2])
  );
  X_OPAD   \Clk_ADC<1>  (
    .PAD(Clk_ADC[1])
  );
  X_OPAD   \Clk_ADC<0>  (
    .PAD(Clk_ADC[0])
  );
  X_OPAD   \CS_ADC_N<4>  (
    .PAD(CS_ADC_N[4])
  );
  X_OPAD   \CS_ADC_N<3>  (
    .PAD(CS_ADC_N[3])
  );
  X_OPAD   \CS_ADC_N<2>  (
    .PAD(CS_ADC_N[2])
  );
  X_OPAD   \CS_ADC_N<1>  (
    .PAD(CS_ADC_N[1])
  );
  X_OPAD   \CS_ADC_N<0>  (
    .PAD(CS_ADC_N[0])
  );
  X_OPAD   \Din_DAC<3>  (
    .PAD(Din_DAC[3])
  );
  X_OPAD   \Din_DAC<2>  (
    .PAD(Din_DAC[2])
  );
  X_OPAD   \Din_DAC<1>  (
    .PAD(Din_DAC[1])
  );
  X_OPAD   \Din_DAC<0>  (
    .PAD(Din_DAC[0])
  );
  X_OPAD   \Clk_DAC<3>  (
    .PAD(Clk_DAC[3])
  );
  X_OPAD   \Clk_DAC<2>  (
    .PAD(Clk_DAC[2])
  );
  X_OPAD   \Clk_DAC<1>  (
    .PAD(Clk_DAC[1])
  );
  X_OPAD   \Clk_DAC<0>  (
    .PAD(Clk_DAC[0])
  );
  X_OPAD   \CS_DAC_N<3>  (
    .PAD(CS_DAC_N[3])
  );
  X_OPAD   \CS_DAC_N<2>  (
    .PAD(CS_DAC_N[2])
  );
  X_OPAD   \CS_DAC_N<1>  (
    .PAD(CS_DAC_N[1])
  );
  X_OPAD   \CS_DAC_N<0>  (
    .PAD(CS_DAC_N[0])
  );
  X_OPAD   \RS_DAC_N<3>  (
    .PAD(RS_DAC_N[3])
  );
  X_OPAD   \RS_DAC_N<2>  (
    .PAD(RS_DAC_N[2])
  );
  X_OPAD   \RS_DAC_N<1>  (
    .PAD(RS_DAC_N[1])
  );
  X_OPAD   \RS_DAC_N<0>  (
    .PAD(RS_DAC_N[0])
  );
  X_OPAD   \Stand_By_N<41>  (
    .PAD(Stand_By_N[41])
  );
  X_OPAD   \Stand_By_N<40>  (
    .PAD(Stand_By_N[40])
  );
  X_OPAD   \Stand_By_N<39>  (
    .PAD(Stand_By_N[39])
  );
  X_OPAD   \Stand_By_N<38>  (
    .PAD(Stand_By_N[38])
  );
  X_OPAD   \Stand_By_N<37>  (
    .PAD(Stand_By_N[37])
  );
  X_OPAD   \Stand_By_N<36>  (
    .PAD(Stand_By_N[36])
  );
  X_OPAD   \Stand_By_N<35>  (
    .PAD(Stand_By_N[35])
  );
  X_OPAD   \Stand_By_N<34>  (
    .PAD(Stand_By_N[34])
  );
  X_OPAD   \Stand_By_N<33>  (
    .PAD(Stand_By_N[33])
  );
  X_OPAD   \Stand_By_N<32>  (
    .PAD(Stand_By_N[32])
  );
  X_OPAD   \Stand_By_N<31>  (
    .PAD(Stand_By_N[31])
  );
  X_OPAD   \Stand_By_N<30>  (
    .PAD(Stand_By_N[30])
  );
  X_OPAD   \Stand_By_N<29>  (
    .PAD(Stand_By_N[29])
  );
  X_OPAD   \Stand_By_N<28>  (
    .PAD(Stand_By_N[28])
  );
  X_OPAD   \Stand_By_N<27>  (
    .PAD(Stand_By_N[27])
  );
  X_OPAD   \Stand_By_N<26>  (
    .PAD(Stand_By_N[26])
  );
  X_OPAD   \Stand_By_N<25>  (
    .PAD(Stand_By_N[25])
  );
  X_OPAD   \Stand_By_N<24>  (
    .PAD(Stand_By_N[24])
  );
  X_OPAD   \Stand_By_N<23>  (
    .PAD(Stand_By_N[23])
  );
  X_OPAD   \Stand_By_N<22>  (
    .PAD(Stand_By_N[22])
  );
  X_OPAD   \Stand_By_N<21>  (
    .PAD(Stand_By_N[21])
  );
  X_OPAD   \Stand_By_N<20>  (
    .PAD(Stand_By_N[20])
  );
  X_OPAD   \Stand_By_N<19>  (
    .PAD(Stand_By_N[19])
  );
  X_OPAD   \Stand_By_N<18>  (
    .PAD(Stand_By_N[18])
  );
  X_OPAD   \Stand_By_N<17>  (
    .PAD(Stand_By_N[17])
  );
  X_OPAD   \Stand_By_N<16>  (
    .PAD(Stand_By_N[16])
  );
  X_OPAD   \Stand_By_N<15>  (
    .PAD(Stand_By_N[15])
  );
  X_OPAD   \Stand_By_N<14>  (
    .PAD(Stand_By_N[14])
  );
  X_OPAD   \Stand_By_N<13>  (
    .PAD(Stand_By_N[13])
  );
  X_OPAD   \Stand_By_N<12>  (
    .PAD(Stand_By_N[12])
  );
  X_OPAD   \Stand_By_N<11>  (
    .PAD(Stand_By_N[11])
  );
  X_OPAD   \Stand_By_N<10>  (
    .PAD(Stand_By_N[10])
  );
  X_OPAD   \Stand_By_N<9>  (
    .PAD(Stand_By_N[9])
  );
  X_OPAD   \Stand_By_N<8>  (
    .PAD(Stand_By_N[8])
  );
  X_OPAD   \Stand_By_N<7>  (
    .PAD(Stand_By_N[7])
  );
  X_OPAD   \Stand_By_N<6>  (
    .PAD(Stand_By_N[6])
  );
  X_OPAD   \Stand_By_N<5>  (
    .PAD(Stand_By_N[5])
  );
  X_OPAD   \Stand_By_N<4>  (
    .PAD(Stand_By_N[4])
  );
  X_OPAD   \Stand_By_N<3>  (
    .PAD(Stand_By_N[3])
  );
  X_OPAD   \Stand_By_N<2>  (
    .PAD(Stand_By_N[2])
  );
  X_OPAD   \Stand_By_N<1>  (
    .PAD(Stand_By_N[1])
  );
  X_OPAD   \Stand_By_N<0>  (
    .PAD(Stand_By_N[0])
  );
  X_OPAD   \TP_Gr_En<6>  (
    .PAD(TP_Gr_En[6])
  );
  X_OPAD   \TP_Gr_En<5>  (
    .PAD(TP_Gr_En[5])
  );
  X_OPAD   \TP_Gr_En<4>  (
    .PAD(TP_Gr_En[4])
  );
  X_OPAD   \TP_Gr_En<3>  (
    .PAD(TP_Gr_En[3])
  );
  X_OPAD   \TP_Gr_En<2>  (
    .PAD(TP_Gr_En[2])
  );
  X_OPAD   \TP_Gr_En<1>  (
    .PAD(TP_Gr_En[1])
  );
  X_OPAD   \TP_Gr_En<0>  (
    .PAD(TP_Gr_En[0])
  );
  X_OPAD   \TP_Strp_En<5>  (
    .PAD(TP_Strp_En[5])
  );
  X_OPAD   \TP_Strp_En<4>  (
    .PAD(TP_Strp_En[4])
  );
  X_OPAD   \TP_Strp_En<3>  (
    .PAD(TP_Strp_En[3])
  );
  X_OPAD   \TP_Strp_En<2>  (
    .PAD(TP_Strp_En[2])
  );
  X_OPAD   \TP_Strp_En<1>  (
    .PAD(TP_Strp_En[1])
  );
  X_OPAD   \TP_Strp_En<0>  (
    .PAD(TP_Strp_En[0])
  );
  X_OPAD   \OpCode<5>  (
    .PAD(OpCode[5])
  );
  X_OPAD   \OpCode<4>  (
    .PAD(OpCode[4])
  );
  X_OPAD   \OpCode<3>  (
    .PAD(OpCode[3])
  );
  X_OPAD   \OpCode<2>  (
    .PAD(OpCode[2])
  );
  X_OPAD   \OpCode<1>  (
    .PAD(OpCode[1])
  );
  X_OPAD   \OpCode<0>  (
    .PAD(OpCode[0])
  );
  X_OPAD   \State<3>  (
    .PAD(State[3])
  );
  X_OPAD   \State<2>  (
    .PAD(State[2])
  );
  X_OPAD   \State<1>  (
    .PAD(State[1])
  );
  X_OPAD   \State<0>  (
    .PAD(State[0])
  );
  X_OPAD   \Future<7>  (
    .PAD(Future[7])
  );
  X_OPAD   \Future<6>  (
    .PAD(Future[6])
  );
  X_OPAD   \Future<5>  (
    .PAD(Future[5])
  );
  X_OPAD   \Future<4>  (
    .PAD(Future[4])
  );
  X_OPAD   \Future<3>  (
    .PAD(Future[3])
  );
  X_OPAD   \Future<2>  (
    .PAD(Future[2])
  );
  X_OPAD   \Future<1>  (
    .PAD(Future[1])
  );
  X_OPAD   \Future<0>  (
    .PAD(Future[0])
  );
  X_OPAD   Din_TP_700 (
    .PAD(Din_TP)
  );
  X_OPAD   Clk_TP_701 (
    .PAD(Clk_TP)
  );
  X_OPAD   \CS_TP_N.PAD  (
    .PAD(CS_TP_N)
  );
  X_OPAD   PD_TP_N_703 (
    .PAD(PD_TP_N)
  );
  X_OBUFT   TDO_OBUFT (
    .I(TDO_FF_91),
    .CTL(TDO_OE_inv),
    .O(TDO)
  );
  X_OBUF   Din_ADC_4_OBUF (
    .I(Din_ADC_4_OBUF_121),
    .O(Din_ADC[4])
  );
  X_OBUF   Din_ADC_3_OBUF (
    .I(Din_ADC_3_OBUF_122),
    .O(Din_ADC[3])
  );
  X_OBUF   Din_ADC_2_OBUF (
    .I(Din_ADC_2_OBUF_123),
    .O(Din_ADC[2])
  );
  X_OBUF   Din_ADC_1_OBUF (
    .I(Din_ADC_1_OBUF_124),
    .O(Din_ADC[1])
  );
  X_OBUF   Din_ADC_0_OBUF (
    .I(Din_ADC_0_OBUF_125),
    .O(Din_ADC[0])
  );
  X_OBUF   Clk_ADC_4_OBUF (
    .I(Clk_ADC_4_OBUF_112),
    .O(Clk_ADC[4])
  );
  X_OBUF   Clk_ADC_3_OBUF (
    .I(Clk_ADC_3_OBUF_113),
    .O(Clk_ADC[3])
  );
  X_OBUF   Clk_ADC_2_OBUF (
    .I(Future_2_OBUF_114),
    .O(Clk_ADC[2])
  );
  X_OBUF   Clk_ADC_1_OBUF (
    .I(Future_3_OBUF_115),
    .O(Clk_ADC[1])
  );
  X_OBUF   Clk_ADC_0_OBUF (
    .I(Future_4_OBUF_116),
    .O(Clk_ADC[0])
  );
  X_OBUF   CS_ADC_N_4_OBUF (
    .I(CS_ADC_N_4_138),
    .O(CS_ADC_N[4])
  );
  X_OBUF   CS_ADC_N_3_OBUF (
    .I(CS_ADC_N_3_139),
    .O(CS_ADC_N[3])
  );
  X_OBUF   CS_ADC_N_2_OBUF (
    .I(CS_ADC_N_2_140),
    .O(CS_ADC_N[2])
  );
  X_OBUF   CS_ADC_N_1_OBUF (
    .I(CS_ADC_N_1_141),
    .O(CS_ADC_N[1])
  );
  X_OBUF   CS_ADC_N_0_OBUF (
    .I(CS_ADC_N_0_142),
    .O(CS_ADC_N[0])
  );
  X_OBUF   Din_DAC_3_OBUF (
    .I(Din_DAC_3_OBUF_127),
    .O(Din_DAC[3])
  );
  X_OBUF   Din_DAC_2_OBUF (
    .I(Din_DAC_2_OBUF_128),
    .O(Din_DAC[2])
  );
  X_OBUF   Din_DAC_1_OBUF (
    .I(Din_DAC_1_OBUF_129),
    .O(Din_DAC[1])
  );
  X_OBUF   Din_DAC_0_OBUF (
    .I(Din_DAC_0_OBUF_130),
    .O(Din_DAC[0])
  );
  X_OBUF   Clk_DAC_3_OBUF (
    .I(Clk_DAC_3_OBUF_117),
    .O(Clk_DAC[3])
  );
  X_OBUF   Clk_DAC_2_OBUF (
    .I(Clk_DAC_2_OBUF_118),
    .O(Clk_DAC[2])
  );
  X_OBUF   Clk_DAC_1_OBUF (
    .I(Clk_DAC_1_OBUF_119),
    .O(Clk_DAC[1])
  );
  X_OBUF   Clk_DAC_0_OBUF (
    .I(Clk_DAC_0_OBUF_120),
    .O(Clk_DAC[0])
  );
  X_OBUF   CS_DAC_N_3_OBUF (
    .I(CS_DAC_N_3_148),
    .O(CS_DAC_N[3])
  );
  X_OBUF   CS_DAC_N_2_OBUF (
    .I(CS_DAC_N_2_149),
    .O(CS_DAC_N[2])
  );
  X_OBUF   CS_DAC_N_1_OBUF (
    .I(CS_DAC_N_1_150),
    .O(CS_DAC_N[1])
  );
  X_OBUF   CS_DAC_N_0_OBUF (
    .I(CS_DAC_N_0_151),
    .O(CS_DAC_N[0])
  );
  X_OBUF   RS_DAC_N_3_OBUF (
    .I(RS_DAC_N_0_84),
    .O(RS_DAC_N[3])
  );
  X_OBUF   RS_DAC_N_2_OBUF (
    .I(RS_DAC_N_0_84),
    .O(RS_DAC_N[2])
  );
  X_OBUF   RS_DAC_N_1_OBUF (
    .I(RS_DAC_N_0_84),
    .O(RS_DAC_N[1])
  );
  X_OBUF   RS_DAC_N_0_OBUF (
    .I(RS_DAC_N_0_84),
    .O(RS_DAC_N[0])
  );
  X_OBUF   Stand_By_N_41_OBUF (
    .I(\SBR/PREG [41]),
    .O(Stand_By_N[41])
  );
  X_OBUF   Stand_By_N_40_OBUF (
    .I(\SBR/PREG [40]),
    .O(Stand_By_N[40])
  );
  X_OBUF   Stand_By_N_39_OBUF (
    .I(\SBR/PREG [39]),
    .O(Stand_By_N[39])
  );
  X_OBUF   Stand_By_N_38_OBUF (
    .I(\SBR/PREG [38]),
    .O(Stand_By_N[38])
  );
  X_OBUF   Stand_By_N_37_OBUF (
    .I(\SBR/PREG [37]),
    .O(Stand_By_N[37])
  );
  X_OBUF   Stand_By_N_36_OBUF (
    .I(\SBR/PREG [36]),
    .O(Stand_By_N[36])
  );
  X_OBUF   Stand_By_N_35_OBUF (
    .I(\SBR/PREG [35]),
    .O(Stand_By_N[35])
  );
  X_OBUF   Stand_By_N_34_OBUF (
    .I(\SBR/PREG [34]),
    .O(Stand_By_N[34])
  );
  X_OBUF   Stand_By_N_33_OBUF (
    .I(\SBR/PREG [33]),
    .O(Stand_By_N[33])
  );
  X_OBUF   Stand_By_N_32_OBUF (
    .I(\SBR/PREG [32]),
    .O(Stand_By_N[32])
  );
  X_OBUF   Stand_By_N_31_OBUF (
    .I(\SBR/PREG [31]),
    .O(Stand_By_N[31])
  );
  X_OBUF   Stand_By_N_30_OBUF (
    .I(\SBR/PREG [30]),
    .O(Stand_By_N[30])
  );
  X_OBUF   Stand_By_N_29_OBUF (
    .I(\SBR/PREG [29]),
    .O(Stand_By_N[29])
  );
  X_OBUF   Stand_By_N_28_OBUF (
    .I(\SBR/PREG [28]),
    .O(Stand_By_N[28])
  );
  X_OBUF   Stand_By_N_27_OBUF (
    .I(\SBR/PREG [27]),
    .O(Stand_By_N[27])
  );
  X_OBUF   Stand_By_N_26_OBUF (
    .I(\SBR/PREG [26]),
    .O(Stand_By_N[26])
  );
  X_OBUF   Stand_By_N_25_OBUF (
    .I(\SBR/PREG [25]),
    .O(Stand_By_N[25])
  );
  X_OBUF   Stand_By_N_24_OBUF (
    .I(\SBR/PREG [24]),
    .O(Stand_By_N[24])
  );
  X_OBUF   Stand_By_N_23_OBUF (
    .I(\SBR/PREG [23]),
    .O(Stand_By_N[23])
  );
  X_OBUF   Stand_By_N_22_OBUF (
    .I(\SBR/PREG [22]),
    .O(Stand_By_N[22])
  );
  X_OBUF   Stand_By_N_21_OBUF (
    .I(\SBR/PREG [21]),
    .O(Stand_By_N[21])
  );
  X_OBUF   Stand_By_N_20_OBUF (
    .I(\SBR/PREG [20]),
    .O(Stand_By_N[20])
  );
  X_OBUF   Stand_By_N_19_OBUF (
    .I(\SBR/PREG [19]),
    .O(Stand_By_N[19])
  );
  X_OBUF   Stand_By_N_18_OBUF (
    .I(\SBR/PREG [18]),
    .O(Stand_By_N[18])
  );
  X_OBUF   Stand_By_N_17_OBUF (
    .I(\SBR/PREG [17]),
    .O(Stand_By_N[17])
  );
  X_OBUF   Stand_By_N_16_OBUF (
    .I(\SBR/PREG [16]),
    .O(Stand_By_N[16])
  );
  X_OBUF   Stand_By_N_15_OBUF (
    .I(\SBR/PREG [15]),
    .O(Stand_By_N[15])
  );
  X_OBUF   Stand_By_N_14_OBUF (
    .I(\SBR/PREG [14]),
    .O(Stand_By_N[14])
  );
  X_OBUF   Stand_By_N_13_OBUF (
    .I(\SBR/PREG [13]),
    .O(Stand_By_N[13])
  );
  X_OBUF   Stand_By_N_12_OBUF (
    .I(\SBR/PREG [12]),
    .O(Stand_By_N[12])
  );
  X_OBUF   Stand_By_N_11_OBUF (
    .I(\SBR/PREG [11]),
    .O(Stand_By_N[11])
  );
  X_OBUF   Stand_By_N_10_OBUF (
    .I(\SBR/PREG [10]),
    .O(Stand_By_N[10])
  );
  X_OBUF   Stand_By_N_9_OBUF (
    .I(\SBR/PREG [9]),
    .O(Stand_By_N[9])
  );
  X_OBUF   Stand_By_N_8_OBUF (
    .I(\SBR/PREG [8]),
    .O(Stand_By_N[8])
  );
  X_OBUF   Stand_By_N_7_OBUF (
    .I(\SBR/PREG [7]),
    .O(Stand_By_N[7])
  );
  X_OBUF   Stand_By_N_6_OBUF (
    .I(\SBR/PREG [6]),
    .O(Stand_By_N[6])
  );
  X_OBUF   Stand_By_N_5_OBUF (
    .I(\SBR/PREG [5]),
    .O(Stand_By_N[5])
  );
  X_OBUF   Stand_By_N_4_OBUF (
    .I(\SBR/PREG [4]),
    .O(Stand_By_N[4])
  );
  X_OBUF   Stand_By_N_3_OBUF (
    .I(\SBR/PREG [3]),
    .O(Stand_By_N[3])
  );
  X_OBUF   Stand_By_N_2_OBUF (
    .I(\SBR/PREG [2]),
    .O(Stand_By_N[2])
  );
  X_OBUF   Stand_By_N_1_OBUF (
    .I(\SBR/PREG [1]),
    .O(Stand_By_N[1])
  );
  X_OBUF   Stand_By_N_0_OBUF (
    .I(\SBR/PREG [0]),
    .O(Stand_By_N[0])
  );
  X_OBUF   TP_Gr_En_6_OBUF (
    .I(\TPGRP/PREG [6]),
    .O(TP_Gr_En[6])
  );
  X_OBUF   TP_Gr_En_5_OBUF (
    .I(\TPGRP/PREG [5]),
    .O(TP_Gr_En[5])
  );
  X_OBUF   TP_Gr_En_4_OBUF (
    .I(\TPGRP/PREG [4]),
    .O(TP_Gr_En[4])
  );
  X_OBUF   TP_Gr_En_3_OBUF (
    .I(\TPGRP/PREG [3]),
    .O(TP_Gr_En[3])
  );
  X_OBUF   TP_Gr_En_2_OBUF (
    .I(\TPGRP/PREG [2]),
    .O(TP_Gr_En[2])
  );
  X_OBUF   TP_Gr_En_1_OBUF (
    .I(\TPGRP/PREG [1]),
    .O(TP_Gr_En[1])
  );
  X_OBUF   TP_Gr_En_0_OBUF (
    .I(\TPGRP/PREG [0]),
    .O(TP_Gr_En[0])
  );
  X_OBUF   TP_Strp_En_5_OBUF (
    .I(\TPSTP/PREG [5]),
    .O(TP_Strp_En[5])
  );
  X_OBUF   TP_Strp_En_4_OBUF (
    .I(\TPSTP/PREG [4]),
    .O(TP_Strp_En[4])
  );
  X_OBUF   TP_Strp_En_3_OBUF (
    .I(\TPSTP/PREG [3]),
    .O(TP_Strp_En[3])
  );
  X_OBUF   TP_Strp_En_2_OBUF (
    .I(\TPSTP/PREG [2]),
    .O(TP_Strp_En[2])
  );
  X_OBUF   TP_Strp_En_1_OBUF (
    .I(\TPSTP/PREG [1]),
    .O(TP_Strp_En[1])
  );
  X_OBUF   TP_Strp_En_0_OBUF (
    .I(\TPSTP/PREG [0]),
    .O(TP_Strp_En[0])
  );
  X_OBUF   OpCode_5_OBUF (
    .I(\IR/PREG [5]),
    .O(OpCode[5])
  );
  X_OBUF   OpCode_4_OBUF (
    .I(\IR/PREG [4]),
    .O(OpCode[4])
  );
  X_OBUF   OpCode_3_OBUF (
    .I(\IR/PREG [3]),
    .O(OpCode[3])
  );
  X_OBUF   OpCode_2_OBUF (
    .I(\IR/PREG [2]),
    .O(OpCode[2])
  );
  X_OBUF   OpCode_1_OBUF (
    .I(\IR/PREG [1]),
    .O(OpCode[1])
  );
  X_OBUF   OpCode_0_OBUF (
    .I(\IR/PREG [0]),
    .O(OpCode[0])
  );
  X_OBUF   State_3_OBUF (
    .I(\T/TAP_CS_FSM_FFd1_8 ),
    .O(State[3])
  );
  X_OBUF   State_2_OBUF (
    .I(\T/TAP_CS_FSM_FFd2_9 ),
    .O(State[2])
  );
  X_OBUF   State_1_OBUF (
    .I(\T/TAP_CS_FSM_FFd3_10 ),
    .O(State[1])
  );
  X_OBUF   State_0_OBUF (
    .I(\T/TAP_CS_FSM_FFd4_11 ),
    .O(State[0])
  );
  X_OBUF   Future_7_OBUF (
    .I(Future_7_OBUF_0),
    .O(Future[7])
  );
  X_OBUF   Future_6_OBUF (
    .I(Future_6_OBUF_1),
    .O(Future[6])
  );
  X_OBUF   Future_5_OBUF (
    .I(Future_5_OBUF_2),
    .O(Future[5])
  );
  X_OBUF   Future_4_OBUF (
    .I(Future_4_OBUF_116),
    .O(Future[4])
  );
  X_OBUF   Future_3_OBUF (
    .I(Future_3_OBUF_115),
    .O(Future[3])
  );
  X_OBUF   Future_2_OBUF (
    .I(Future_2_OBUF_114),
    .O(Future[2])
  );
  X_OBUF   Future_1_OBUF (
    .I(Future_0_OBUF_153),
    .O(Future[1])
  );
  X_OBUF   Future_0_OBUF (
    .I(Future_0_OBUF_153),
    .O(Future[0])
  );
  X_OBUF   Din_TP_OBUF (
    .I(Din_TP_OBUF_94),
    .O(Din_TP)
  );
  X_OBUF   Clk_TP_OBUF (
    .I(Clk_TP_OBUF_83),
    .O(Clk_TP)
  );
  X_OBUF   CS_TP_N_OBUF (
    .I(CS_TP_N_OBUF_90),
    .O(CS_TP_N)
  );
  X_OBUF   PD_TP_N_OBUF (
    .I(\VAR_PD/PREG_81 ),
    .O(PD_TP_N)
  );
  X_INV   \NlwInverterBlock_TDO_OE/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_TDO_OE/C )
  );
  X_ONE   NlwBlock_Sl_Ctrl_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_Sl_Ctrl_GND (
    .O(GND)
  );
  X_INV   \NlwInverterBlock_ADC_SH_0/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_ADC_SH_0/C )
  );
  X_INV   \NlwInverterBlock_ADC_SH_1/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_ADC_SH_1/C )
  );
  X_INV   \NlwInverterBlock_ADC_SH_2/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_ADC_SH_2/C )
  );
  X_INV   \NlwInverterBlock_ADC_SH_3/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_ADC_SH_3/C )
  );
  X_INV   \NlwInverterBlock_ADC_SH_4/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_ADC_SH_4/C )
  );
  X_INV   \NlwInverterBlock_TDO_FF/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_TDO_FF/C )
  );
  X_INV   \NlwInverterBlock_IR/PREG_5/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_IR/PREG_5/C )
  );
  X_INV   \NlwInverterBlock_IR/PREG_4/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_IR/PREG_4/C )
  );
  X_INV   \NlwInverterBlock_IR/PREG_3/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_IR/PREG_3/C )
  );
  X_INV   \NlwInverterBlock_IR/PREG_2/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_IR/PREG_2/C )
  );
  X_INV   \NlwInverterBlock_IR/PREG_1/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_IR/PREG_1/C )
  );
  X_INV   \NlwInverterBlock_IR/PREG_0/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_IR/PREG_0/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_41/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_41/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_40/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_40/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_39/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_39/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_38/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_38/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_37/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_37/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_36/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_36/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_35/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_35/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_34/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_34/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_33/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_33/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_32/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_32/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_31/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_31/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_30/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_30/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_29/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_29/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_28/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_28/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_27/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_27/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_26/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_26/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_25/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_25/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_24/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_24/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_23/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_23/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_22/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_22/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_21/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_21/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_20/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_20/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_19/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_19/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_18/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_18/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_17/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_17/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_16/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_16/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_15/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_15/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_14/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_14/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_13/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_13/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_12/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_12/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_11/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_11/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_10/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_10/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_9/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_9/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_8/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_8/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_7/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_7/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_6/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_6/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_5/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_5/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_4/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_4/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_3/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_3/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_2/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_2/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_1/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_1/C )
  );
  X_INV   \NlwInverterBlock_SBR/PREG_0/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_SBR/PREG_0/C )
  );
  X_INV   \NlwInverterBlock_TPSTP/PREG_5/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_TPSTP/PREG_5/C )
  );
  X_INV   \NlwInverterBlock_TPSTP/PREG_4/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_TPSTP/PREG_4/C )
  );
  X_INV   \NlwInverterBlock_TPSTP/PREG_3/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_TPSTP/PREG_3/C )
  );
  X_INV   \NlwInverterBlock_TPSTP/PREG_2/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_TPSTP/PREG_2/C )
  );
  X_INV   \NlwInverterBlock_TPSTP/PREG_1/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_TPSTP/PREG_1/C )
  );
  X_INV   \NlwInverterBlock_TPSTP/PREG_0/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_TPSTP/PREG_0/C )
  );
  X_INV   \NlwInverterBlock_TPGRP/PREG_6/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_TPGRP/PREG_6/C )
  );
  X_INV   \NlwInverterBlock_TPGRP/PREG_5/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_TPGRP/PREG_5/C )
  );
  X_INV   \NlwInverterBlock_TPGRP/PREG_4/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_TPGRP/PREG_4/C )
  );
  X_INV   \NlwInverterBlock_TPGRP/PREG_3/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_TPGRP/PREG_3/C )
  );
  X_INV   \NlwInverterBlock_TPGRP/PREG_2/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_TPGRP/PREG_2/C )
  );
  X_INV   \NlwInverterBlock_TPGRP/PREG_1/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_TPGRP/PREG_1/C )
  );
  X_INV   \NlwInverterBlock_TPGRP/PREG_0/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_TPGRP/PREG_0/C )
  );
  X_INV   \NlwInverterBlock_CS_TP_N/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_CS_TP_N/C )
  );
  X_INV   \NlwInverterBlock_VAR_PD/PREG/C  (
    .I(TCK_IBUF_BUFG_5),
    .O(\NlwInverterSignal_VAR_PD/PREG/C )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

