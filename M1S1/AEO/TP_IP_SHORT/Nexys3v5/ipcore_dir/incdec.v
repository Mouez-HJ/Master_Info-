////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.81d
//  \   \         Application: netgen
//  /   /         Filename: incdec.v
// /___/   /\     Timestamp: Tue Feb 25 15:15:02 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog ./tmp/_cg\incdec.ngc ./tmp/_cg\incdec.v 
// Device	: 6slx16csg324-3
// Input file	: ./tmp/_cg/incdec.ngc
// Output file	: ./tmp/_cg/incdec.v
// # of Modules	: 1
// Design Name	: incdec
// Xilinx        : C:\Xilinx\12.4\ISE_DS\ISE\
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

module incdec (
  add, a, s
)/* synthesis syn_black_box syn_noprune=1 */;
  input add;
  input [31 : 0] a;
  output [31 : 0] s;
  
  // synthesis translate_off
  
  wire \BU2/c_out ;
  wire NLW_VCC_P_UNCONNECTED;
  wire NLW_GND_G_UNCONNECTED;
  wire [31 : 0] a_2;
  wire [31 : 0] s_3;
  wire [31 : 0] \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum ;
  wire [30 : 0] \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple ;
  wire [26 : 26] \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/b_or_not_b ;
  assign
    a_2[31] = a[31],
    a_2[30] = a[30],
    a_2[29] = a[29],
    a_2[28] = a[28],
    a_2[27] = a[27],
    a_2[26] = a[26],
    a_2[25] = a[25],
    a_2[24] = a[24],
    a_2[23] = a[23],
    a_2[22] = a[22],
    a_2[21] = a[21],
    a_2[20] = a[20],
    a_2[19] = a[19],
    a_2[18] = a[18],
    a_2[17] = a[17],
    a_2[16] = a[16],
    a_2[15] = a[15],
    a_2[14] = a[14],
    a_2[13] = a[13],
    a_2[12] = a[12],
    a_2[11] = a[11],
    a_2[10] = a[10],
    a_2[9] = a[9],
    a_2[8] = a[8],
    a_2[7] = a[7],
    a_2[6] = a[6],
    a_2[5] = a[5],
    a_2[4] = a[4],
    a_2[3] = a[3],
    a_2[2] = a[2],
    a_2[1] = a[1],
    a_2[0] = a[0],
    s[31] = s_3[31],
    s[30] = s_3[30],
    s[29] = s_3[29],
    s[28] = s_3[28],
    s[27] = s_3[27],
    s[26] = s_3[26],
    s[25] = s_3[25],
    s[24] = s_3[24],
    s[23] = s_3[23],
    s[22] = s_3[22],
    s[21] = s_3[21],
    s[20] = s_3[20],
    s[19] = s_3[19],
    s[18] = s_3[18],
    s[17] = s_3[17],
    s[16] = s_3[16],
    s[15] = s_3[15],
    s[14] = s_3[14],
    s[13] = s_3[13],
    s[12] = s_3[12],
    s[11] = s_3[11],
    s[10] = s_3[10],
    s[9] = s_3[9],
    s[8] = s_3[8],
    s[7] = s_3[7],
    s[6] = s_3[6],
    s[5] = s_3[5],
    s[4] = s_3[4],
    s[3] = s_3[3],
    s[2] = s_3[2],
    s[1] = s_3[1],
    s[0] = s_3[0];
  VCC   VCC_0 (
    .P(NLW_VCC_P_UNCONNECTED)
  );
  GND   GND_1 (
    .G(NLW_GND_G_UNCONNECTED)
  );
  INV   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/_n00221_INV_0  (
    .I(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/b_or_not_b [26])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_31_xo<0>1  (
    .I0(a_2[31]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [31])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_30_xo<0>1  (
    .I0(a_2[30]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [30])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_29_xo<0>1  (
    .I0(a_2[29]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [29])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_28_xo<0>1  (
    .I0(a_2[28]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [28])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_27_xo<0>1  (
    .I0(a_2[27]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [27])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_26_xo<0>1  (
    .I0(a_2[26]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [26])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_25_xo<0>1  (
    .I0(a_2[25]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [25])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_24_xo<0>1  (
    .I0(a_2[24]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [24])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_23_xo<0>1  (
    .I0(a_2[23]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [23])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_22_xo<0>1  (
    .I0(a_2[22]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [22])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_21_xo<0>1  (
    .I0(a_2[21]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [21])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_20_xo<0>1  (
    .I0(a_2[20]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [20])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_19_xo<0>1  (
    .I0(a_2[19]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [19])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_18_xo<0>1  (
    .I0(a_2[18]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [18])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_17_xo<0>1  (
    .I0(a_2[17]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [17])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_16_xo<0>1  (
    .I0(a_2[16]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [16])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_15_xo<0>1  (
    .I0(a_2[15]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [15])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_14_xo<0>1  (
    .I0(a_2[14]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [14])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_13_xo<0>1  (
    .I0(a_2[13]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [13])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_12_xo<0>1  (
    .I0(a_2[12]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [12])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_11_xo<0>1  (
    .I0(a_2[11]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [11])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_10_xo<0>1  (
    .I0(a_2[10]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [10])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_9_xo<0>1  (
    .I0(a_2[9]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [9])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_8_xo<0>1  (
    .I0(a_2[8]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [8])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_7_xo<0>1  (
    .I0(a_2[7]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_6_xo<0>1  (
    .I0(a_2[6]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_5_xo<0>1  (
    .I0(a_2[5]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_4_xo<0>1  (
    .I0(a_2[4]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_3_xo<0>1  (
    .I0(a_2[3]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_2_xo<0>1  (
    .I0(a_2[2]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_1_xo<0>1  (
    .I0(a_2[1]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_i_simple_model.halfsum_0_xo<0>1  (
    .I0(a_2[0]),
    .I1(add),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [0])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_need_mux.carrymux0  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/b_or_not_b [26]),
    .DI(a_2[0]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [0]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [0])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[1].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [0]),
    .DI(a_2[1]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [1]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [1])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[2].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [1]),
    .DI(a_2[2]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [2]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [2])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[3].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [2]),
    .DI(a_2[3]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [3]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [3])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[4].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [3]),
    .DI(a_2[4]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [4]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [4])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[5].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [4]),
    .DI(a_2[5]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [5]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [5])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[6].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [5]),
    .DI(a_2[6]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [6]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [6])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[7].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [6]),
    .DI(a_2[7]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [7]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [7])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[8].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [7]),
    .DI(a_2[8]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [8]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [8])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[9].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [8]),
    .DI(a_2[9]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [9]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [9])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[10].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [9]),
    .DI(a_2[10]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [10]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [10])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[11].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [10]),
    .DI(a_2[11]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [11]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [11])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[12].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [11]),
    .DI(a_2[12]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [12]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [12])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[13].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [12]),
    .DI(a_2[13]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [13]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [13])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[14].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [13]),
    .DI(a_2[14]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [14]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [14])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[15].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [14]),
    .DI(a_2[15]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [15]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [15])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[16].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [15]),
    .DI(a_2[16]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [16]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [16])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[17].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [16]),
    .DI(a_2[17]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [17]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [17])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[18].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [17]),
    .DI(a_2[18]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [18]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [18])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[19].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [18]),
    .DI(a_2[19]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [19]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [19])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[20].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [19]),
    .DI(a_2[20]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [20]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [20])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[21].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [20]),
    .DI(a_2[21]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [21]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [21])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[22].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [21]),
    .DI(a_2[22]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [22]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [22])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[23].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [22]),
    .DI(a_2[23]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [23]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [23])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[24].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [23]),
    .DI(a_2[24]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [24]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [24])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[25].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [24]),
    .DI(a_2[25]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [25]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [25])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[26].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [25]),
    .DI(a_2[26]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [26]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [26])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[27].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [26]),
    .DI(a_2[27]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [27]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [27])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[28].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [27]),
    .DI(a_2[28]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [28]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [28])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[29].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [28]),
    .DI(a_2[29]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [29]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [29])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[30].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [29]),
    .DI(a_2[30]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [30]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [30])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[1].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [0]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [1]),
    .O(s_3[1])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[2].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [1]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [2]),
    .O(s_3[2])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[3].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [2]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [3]),
    .O(s_3[3])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[4].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [3]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [4]),
    .O(s_3[4])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[5].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [4]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [5]),
    .O(s_3[5])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[6].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [5]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [6]),
    .O(s_3[6])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[7].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [6]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [7]),
    .O(s_3[7])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[8].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [7]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [8]),
    .O(s_3[8])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[9].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [8]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [9]),
    .O(s_3[9])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[10].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [9]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [10]),
    .O(s_3[10])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[11].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [10]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [11]),
    .O(s_3[11])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[12].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [11]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [12]),
    .O(s_3[12])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[13].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [12]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [13]),
    .O(s_3[13])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[14].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [13]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [14]),
    .O(s_3[14])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[15].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [14]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [15]),
    .O(s_3[15])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[16].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [15]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [16]),
    .O(s_3[16])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[17].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [16]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [17]),
    .O(s_3[17])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[18].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [17]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [18]),
    .O(s_3[18])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[19].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [18]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [19]),
    .O(s_3[19])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[20].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [19]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [20]),
    .O(s_3[20])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[21].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [20]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [21]),
    .O(s_3[21])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[22].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [21]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [22]),
    .O(s_3[22])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[23].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [22]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [23]),
    .O(s_3[23])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[24].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [23]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [24]),
    .O(s_3[24])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[25].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [24]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [25]),
    .O(s_3[25])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[26].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [25]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [26]),
    .O(s_3[26])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[27].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [26]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [27]),
    .O(s_3[27])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[28].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [27]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [28]),
    .O(s_3[28])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[29].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [28]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [29]),
    .O(s_3[29])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[30].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [29]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [30]),
    .O(s_3[30])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carryxortop  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [30]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [31]),
    .O(s_3[31])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.carryxor0  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/b_or_not_b [26]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.halfsum [0]),
    .O(s_3[0])
  );
  GND   \BU2/XST_GND  (
    .G(\BU2/c_out )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

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

// synthesis translate_on
