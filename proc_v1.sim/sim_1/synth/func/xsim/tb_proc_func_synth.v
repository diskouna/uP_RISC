// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Tue Nov 14 08:20:15 2023
// Host        : srv-tp06 running 64-bit Linux Mint 21.1
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/gnanguessim/Bureau/VHDL_CIRCUIT_NUM/proc_v1/proc_v1.sim/sim_1/synth/func/xsim/tb_proc_func_synth.v
// Design      : test_proc
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ALU_8BITS
   (D,
    Q,
    S);
  output [7:0]D;
  input [13:0]Q;
  input [3:0]S;

  wire ALU_AUX0_carry__0_n_1;
  wire ALU_AUX0_carry__0_n_2;
  wire ALU_AUX0_carry__0_n_3;
  wire ALU_AUX0_carry_i_1_n_0;
  wire ALU_AUX0_carry_i_2_n_0;
  wire ALU_AUX0_carry_i_3_n_0;
  wire ALU_AUX0_carry_i_4_n_0;
  wire ALU_AUX0_carry_n_0;
  wire ALU_AUX0_carry_n_1;
  wire ALU_AUX0_carry_n_2;
  wire ALU_AUX0_carry_n_3;
  wire [7:0]D;
  wire [13:0]Q;
  wire [3:0]S;
  wire [7:0]data0;
  wire [3:3]NLW_ALU_AUX0_carry__0_CO_UNCONNECTED;

  CARRY4 ALU_AUX0_carry
       (.CI(1'b0),
        .CO({ALU_AUX0_carry_n_0,ALU_AUX0_carry_n_1,ALU_AUX0_carry_n_2,ALU_AUX0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(data0[3:0]),
        .S({ALU_AUX0_carry_i_1_n_0,ALU_AUX0_carry_i_2_n_0,ALU_AUX0_carry_i_3_n_0,ALU_AUX0_carry_i_4_n_0}));
  CARRY4 ALU_AUX0_carry__0
       (.CI(ALU_AUX0_carry_n_0),
        .CO({NLW_ALU_AUX0_carry__0_CO_UNCONNECTED[3],ALU_AUX0_carry__0_n_1,ALU_AUX0_carry__0_n_2,ALU_AUX0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[10:8]}),
        .O(data0[7:4]),
        .S(S));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_AUX0_carry_i_1
       (.I0(Q[7]),
        .I1(Q[3]),
        .O(ALU_AUX0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_AUX0_carry_i_2
       (.I0(Q[6]),
        .I1(Q[2]),
        .O(ALU_AUX0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_AUX0_carry_i_3
       (.I0(Q[5]),
        .I1(Q[1]),
        .O(ALU_AUX0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_AUX0_carry_i_4
       (.I0(Q[4]),
        .I1(Q[0]),
        .O(ALU_AUX0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \BUFFER_EX_MEM[10]_i_1 
       (.I0(Q[6]),
        .I1(Q[13]),
        .I2(Q[12]),
        .I3(data0[2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \BUFFER_EX_MEM[11]_i_1 
       (.I0(Q[7]),
        .I1(Q[13]),
        .I2(Q[12]),
        .I3(data0[3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \BUFFER_EX_MEM[12]_i_1 
       (.I0(Q[8]),
        .I1(Q[13]),
        .I2(Q[12]),
        .I3(data0[4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \BUFFER_EX_MEM[13]_i_1 
       (.I0(Q[9]),
        .I1(Q[13]),
        .I2(Q[12]),
        .I3(data0[5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \BUFFER_EX_MEM[14]_i_1 
       (.I0(Q[10]),
        .I1(Q[13]),
        .I2(Q[12]),
        .I3(data0[6]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \BUFFER_EX_MEM[15]_i_1 
       (.I0(Q[11]),
        .I1(Q[13]),
        .I2(Q[12]),
        .I3(data0[7]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \BUFFER_EX_MEM[8]_i_1 
       (.I0(Q[4]),
        .I1(Q[13]),
        .I2(Q[12]),
        .I3(data0[0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \BUFFER_EX_MEM[9]_i_1 
       (.I0(Q[5]),
        .I1(Q[13]),
        .I2(Q[12]),
        .I3(data0[1]),
        .O(D[1]));
endmodule

module afficheur_7Seg
   (i,
    \FSM_sequential_i_reg[0]_0 ,
    \FSM_sequential_i_reg[0]_1 ,
    \address_dg[2] ,
    \FSM_sequential_i_reg[1]_0 ,
    Q,
    clk_IBUF_BUFG,
    address_dg_IBUF,
    select_reg_mem_IBUF,
    \aff_reg[5]_0 ,
    D);
  output [1:0]i;
  output \FSM_sequential_i_reg[0]_0 ;
  output \FSM_sequential_i_reg[0]_1 ;
  output \address_dg[2] ;
  output \FSM_sequential_i_reg[1]_0 ;
  output [11:0]Q;
  input clk_IBUF_BUFG;
  input [1:0]address_dg_IBUF;
  input select_reg_mem_IBUF;
  input \aff_reg[5]_0 ;
  input [7:0]D;

  wire [7:0]D;
  wire \FSM_sequential_i_reg[0]_0 ;
  wire \FSM_sequential_i_reg[0]_1 ;
  wire \FSM_sequential_i_reg[1]_0 ;
  wire \GENERATE_1KHz_Clock.compteur[0]_i_3_n_0 ;
  wire \GENERATE_1KHz_Clock.compteur[0]_i_4_n_0 ;
  wire \GENERATE_1KHz_Clock.compteur[0]_i_5_n_0 ;
  wire \GENERATE_1KHz_Clock.compteur[0]_i_6_n_0 ;
  wire \GENERATE_1KHz_Clock.compteur[0]_i_7_n_0 ;
  wire \GENERATE_1KHz_Clock.compteur[0]_i_8_n_0 ;
  wire \GENERATE_1KHz_Clock.compteur[0]_i_9_n_0 ;
  wire [31:0]\GENERATE_1KHz_Clock.compteur_reg ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_10_n_0 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_10_n_1 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_10_n_2 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_10_n_3 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_10_n_4 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_10_n_5 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_10_n_6 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_10_n_7 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_11_n_0 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_11_n_1 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_11_n_2 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_11_n_3 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_11_n_4 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_11_n_5 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_11_n_6 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_11_n_7 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_12_n_2 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_12_n_3 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_12_n_5 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_12_n_6 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_12_n_7 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_13_n_0 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_13_n_1 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_13_n_2 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_13_n_3 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_13_n_4 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_13_n_5 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_13_n_6 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_13_n_7 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_14_n_0 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_14_n_1 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_14_n_2 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_14_n_3 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_14_n_4 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_14_n_5 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_14_n_6 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_14_n_7 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_15_n_0 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_15_n_1 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_15_n_2 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_15_n_3 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_15_n_4 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_15_n_5 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_15_n_6 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_15_n_7 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_16_n_0 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_16_n_1 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_16_n_2 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_16_n_3 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_16_n_4 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_16_n_5 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_16_n_6 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_16_n_7 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_17_n_0 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_17_n_1 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_17_n_2 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_17_n_3 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_17_n_4 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_17_n_5 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_17_n_6 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_17_n_7 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_2_n_0 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_2_n_1 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_2_n_2 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_2_n_3 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_2_n_4 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_2_n_5 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_2_n_6 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[0]_i_2_n_7 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[12]_i_1_n_0 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[12]_i_1_n_1 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[12]_i_1_n_2 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[12]_i_1_n_3 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[12]_i_1_n_4 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[12]_i_1_n_5 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[12]_i_1_n_6 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[12]_i_1_n_7 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[16]_i_1_n_0 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[16]_i_1_n_1 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[16]_i_1_n_2 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[16]_i_1_n_3 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[16]_i_1_n_4 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[16]_i_1_n_5 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[16]_i_1_n_6 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[16]_i_1_n_7 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[20]_i_1_n_0 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[20]_i_1_n_1 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[20]_i_1_n_2 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[20]_i_1_n_3 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[20]_i_1_n_4 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[20]_i_1_n_5 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[20]_i_1_n_6 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[20]_i_1_n_7 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[24]_i_1_n_0 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[24]_i_1_n_1 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[24]_i_1_n_2 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[24]_i_1_n_3 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[24]_i_1_n_4 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[24]_i_1_n_5 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[24]_i_1_n_6 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[24]_i_1_n_7 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[28]_i_1_n_1 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[28]_i_1_n_2 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[28]_i_1_n_3 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[28]_i_1_n_4 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[28]_i_1_n_5 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[28]_i_1_n_6 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[28]_i_1_n_7 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[4]_i_1_n_0 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[4]_i_1_n_1 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[4]_i_1_n_2 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[4]_i_1_n_3 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[4]_i_1_n_4 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[4]_i_1_n_5 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[4]_i_1_n_6 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[4]_i_1_n_7 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[8]_i_1_n_0 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[8]_i_1_n_1 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[8]_i_1_n_2 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[8]_i_1_n_3 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[8]_i_1_n_4 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[8]_i_1_n_5 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[8]_i_1_n_6 ;
  wire \GENERATE_1KHz_Clock.compteur_reg[8]_i_1_n_7 ;
  wire [11:0]Q;
  wire \address_dg[2] ;
  wire [1:0]address_dg_IBUF;
  wire \aff[10]_i_1_n_0 ;
  wire \aff[11]_i_1_n_0 ;
  wire \aff[8]_i_1_n_0 ;
  wire \aff[9]_i_1_n_0 ;
  wire \aff_reg[5]_0 ;
  wire clear;
  wire clk_IBUF_BUFG;
  wire clock_1KHz;
  wire clock_1KHz0_carry__0_i_1_n_0;
  wire clock_1KHz0_carry__0_i_2_n_0;
  wire clock_1KHz0_carry__0_i_3_n_0;
  wire clock_1KHz0_carry__0_i_4_n_0;
  wire clock_1KHz0_carry__0_i_5_n_0;
  wire clock_1KHz0_carry__0_n_0;
  wire clock_1KHz0_carry__0_n_1;
  wire clock_1KHz0_carry__0_n_2;
  wire clock_1KHz0_carry__0_n_3;
  wire clock_1KHz0_carry__1_i_1_n_0;
  wire clock_1KHz0_carry__1_i_2_n_0;
  wire clock_1KHz0_carry__1_i_3_n_0;
  wire clock_1KHz0_carry__1_i_4_n_0;
  wire clock_1KHz0_carry__1_n_0;
  wire clock_1KHz0_carry__1_n_1;
  wire clock_1KHz0_carry__1_n_2;
  wire clock_1KHz0_carry__1_n_3;
  wire clock_1KHz0_carry__2_i_1_n_0;
  wire clock_1KHz0_carry__2_i_2_n_0;
  wire clock_1KHz0_carry__2_n_2;
  wire clock_1KHz0_carry__2_n_3;
  wire clock_1KHz0_carry__2_n_5;
  wire clock_1KHz0_carry_i_1_n_0;
  wire clock_1KHz0_carry_i_2_n_0;
  wire clock_1KHz0_carry_i_3_n_0;
  wire clock_1KHz0_carry_i_4_n_0;
  wire clock_1KHz0_carry_i_5_n_0;
  wire clock_1KHz0_carry_i_6_n_0;
  wire clock_1KHz0_carry_i_7_n_0;
  wire clock_1KHz0_carry_n_0;
  wire clock_1KHz0_carry_n_1;
  wire clock_1KHz0_carry_n_2;
  wire clock_1KHz0_carry_n_3;
  wire [1:0]i;
  wire [1:0]p_0_out;
  wire select_reg_mem_IBUF;
  wire [3:2]\NLW_GENERATE_1KHz_Clock.compteur_reg[0]_i_12_CO_UNCONNECTED ;
  wire [3:3]\NLW_GENERATE_1KHz_Clock.compteur_reg[0]_i_12_O_UNCONNECTED ;
  wire [3:3]\NLW_GENERATE_1KHz_Clock.compteur_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_clock_1KHz0_carry_O_UNCONNECTED;
  wire [3:0]NLW_clock_1KHz0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_clock_1KHz0_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_clock_1KHz0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_clock_1KHz0_carry__2_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_i[0]_i_1 
       (.I0(i[0]),
        .O(p_0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_i[1]_i_1 
       (.I0(i[0]),
        .I1(i[1]),
        .O(p_0_out[1]));
  (* FSM_ENCODED_STATES = "iSTATE:11,iSTATE0:00,iSTATE1:01,iSTATE2:10," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_i_reg[0] 
       (.C(clock_1KHz),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(i[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:11,iSTATE0:00,iSTATE1:01,iSTATE2:10," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_i_reg[1] 
       (.C(clock_1KHz),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(i[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \GENERATE_1KHz_Clock.compteur[0]_i_1 
       (.I0(\GENERATE_1KHz_Clock.compteur[0]_i_3_n_0 ),
        .I1(\GENERATE_1KHz_Clock.compteur[0]_i_4_n_0 ),
        .I2(\GENERATE_1KHz_Clock.compteur[0]_i_5_n_0 ),
        .I3(\GENERATE_1KHz_Clock.compteur[0]_i_6_n_0 ),
        .I4(\GENERATE_1KHz_Clock.compteur[0]_i_7_n_0 ),
        .I5(\GENERATE_1KHz_Clock.compteur[0]_i_8_n_0 ),
        .O(clear));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \GENERATE_1KHz_Clock.compteur[0]_i_3 
       (.I0(\GENERATE_1KHz_Clock.compteur_reg[0]_i_10_n_4 ),
        .I1(\GENERATE_1KHz_Clock.compteur_reg[0]_i_11_n_7 ),
        .I2(\GENERATE_1KHz_Clock.compteur_reg[0]_i_11_n_6 ),
        .I3(\GENERATE_1KHz_Clock.compteur_reg[0]_i_11_n_5 ),
        .I4(\GENERATE_1KHz_Clock.compteur_reg[0]_i_11_n_4 ),
        .I5(\GENERATE_1KHz_Clock.compteur_reg[0]_i_12_n_7 ),
        .O(\GENERATE_1KHz_Clock.compteur[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFFFF)) 
    \GENERATE_1KHz_Clock.compteur[0]_i_4 
       (.I0(\GENERATE_1KHz_Clock.compteur_reg[0]_i_13_n_6 ),
        .I1(\GENERATE_1KHz_Clock.compteur_reg[0]_i_13_n_5 ),
        .I2(\GENERATE_1KHz_Clock.compteur_reg[0]_i_13_n_4 ),
        .I3(\GENERATE_1KHz_Clock.compteur_reg[0]_i_14_n_6 ),
        .I4(\GENERATE_1KHz_Clock.compteur_reg[0]_i_14_n_5 ),
        .I5(\GENERATE_1KHz_Clock.compteur_reg[0]_i_14_n_7 ),
        .O(\GENERATE_1KHz_Clock.compteur[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \GENERATE_1KHz_Clock.compteur[0]_i_5 
       (.I0(\GENERATE_1KHz_Clock.compteur_reg[0]_i_15_n_6 ),
        .I1(\GENERATE_1KHz_Clock.compteur_reg[0]_i_15_n_5 ),
        .I2(\GENERATE_1KHz_Clock.compteur_reg[0]_i_15_n_4 ),
        .I3(\GENERATE_1KHz_Clock.compteur_reg[0]_i_10_n_7 ),
        .I4(\GENERATE_1KHz_Clock.compteur_reg[0]_i_10_n_6 ),
        .I5(\GENERATE_1KHz_Clock.compteur_reg[0]_i_10_n_5 ),
        .O(\GENERATE_1KHz_Clock.compteur[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \GENERATE_1KHz_Clock.compteur[0]_i_6 
       (.I0(\GENERATE_1KHz_Clock.compteur_reg[0]_i_14_n_4 ),
        .I1(\GENERATE_1KHz_Clock.compteur_reg[0]_i_16_n_7 ),
        .I2(\GENERATE_1KHz_Clock.compteur_reg[0]_i_16_n_6 ),
        .I3(\GENERATE_1KHz_Clock.compteur_reg[0]_i_16_n_4 ),
        .I4(\GENERATE_1KHz_Clock.compteur_reg[0]_i_15_n_7 ),
        .I5(\GENERATE_1KHz_Clock.compteur_reg[0]_i_16_n_5 ),
        .O(\GENERATE_1KHz_Clock.compteur[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \GENERATE_1KHz_Clock.compteur[0]_i_7 
       (.I0(\GENERATE_1KHz_Clock.compteur_reg[0]_i_12_n_6 ),
        .I1(\GENERATE_1KHz_Clock.compteur_reg[0]_i_12_n_5 ),
        .O(\GENERATE_1KHz_Clock.compteur[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    \GENERATE_1KHz_Clock.compteur[0]_i_8 
       (.I0(\GENERATE_1KHz_Clock.compteur_reg[0]_i_17_n_7 ),
        .I1(\GENERATE_1KHz_Clock.compteur_reg[0]_i_17_n_6 ),
        .I2(\GENERATE_1KHz_Clock.compteur_reg [0]),
        .I3(\GENERATE_1KHz_Clock.compteur_reg[0]_i_17_n_5 ),
        .I4(\GENERATE_1KHz_Clock.compteur_reg[0]_i_13_n_7 ),
        .I5(\GENERATE_1KHz_Clock.compteur_reg[0]_i_17_n_4 ),
        .O(\GENERATE_1KHz_Clock.compteur[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \GENERATE_1KHz_Clock.compteur[0]_i_9 
       (.I0(\GENERATE_1KHz_Clock.compteur_reg [0]),
        .O(\GENERATE_1KHz_Clock.compteur[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[0]_i_2_n_7 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [0]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \GENERATE_1KHz_Clock.compteur_reg[0]_i_10 
       (.CI(\GENERATE_1KHz_Clock.compteur_reg[0]_i_15_n_0 ),
        .CO({\GENERATE_1KHz_Clock.compteur_reg[0]_i_10_n_0 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_10_n_1 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_10_n_2 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_1KHz_Clock.compteur_reg[0]_i_10_n_4 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_10_n_5 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_10_n_6 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_10_n_7 }),
        .S(\GENERATE_1KHz_Clock.compteur_reg [24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \GENERATE_1KHz_Clock.compteur_reg[0]_i_11 
       (.CI(\GENERATE_1KHz_Clock.compteur_reg[0]_i_10_n_0 ),
        .CO({\GENERATE_1KHz_Clock.compteur_reg[0]_i_11_n_0 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_11_n_1 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_11_n_2 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_1KHz_Clock.compteur_reg[0]_i_11_n_4 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_11_n_5 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_11_n_6 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_11_n_7 }),
        .S(\GENERATE_1KHz_Clock.compteur_reg [28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \GENERATE_1KHz_Clock.compteur_reg[0]_i_12 
       (.CI(\GENERATE_1KHz_Clock.compteur_reg[0]_i_11_n_0 ),
        .CO({\NLW_GENERATE_1KHz_Clock.compteur_reg[0]_i_12_CO_UNCONNECTED [3:2],\GENERATE_1KHz_Clock.compteur_reg[0]_i_12_n_2 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_GENERATE_1KHz_Clock.compteur_reg[0]_i_12_O_UNCONNECTED [3],\GENERATE_1KHz_Clock.compteur_reg[0]_i_12_n_5 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_12_n_6 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_12_n_7 }),
        .S({1'b0,\GENERATE_1KHz_Clock.compteur_reg [31:29]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \GENERATE_1KHz_Clock.compteur_reg[0]_i_13 
       (.CI(\GENERATE_1KHz_Clock.compteur_reg[0]_i_17_n_0 ),
        .CO({\GENERATE_1KHz_Clock.compteur_reg[0]_i_13_n_0 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_13_n_1 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_13_n_2 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_1KHz_Clock.compteur_reg[0]_i_13_n_4 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_13_n_5 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_13_n_6 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_13_n_7 }),
        .S(\GENERATE_1KHz_Clock.compteur_reg [8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \GENERATE_1KHz_Clock.compteur_reg[0]_i_14 
       (.CI(\GENERATE_1KHz_Clock.compteur_reg[0]_i_13_n_0 ),
        .CO({\GENERATE_1KHz_Clock.compteur_reg[0]_i_14_n_0 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_14_n_1 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_14_n_2 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_1KHz_Clock.compteur_reg[0]_i_14_n_4 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_14_n_5 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_14_n_6 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_14_n_7 }),
        .S(\GENERATE_1KHz_Clock.compteur_reg [12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \GENERATE_1KHz_Clock.compteur_reg[0]_i_15 
       (.CI(\GENERATE_1KHz_Clock.compteur_reg[0]_i_16_n_0 ),
        .CO({\GENERATE_1KHz_Clock.compteur_reg[0]_i_15_n_0 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_15_n_1 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_15_n_2 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_1KHz_Clock.compteur_reg[0]_i_15_n_4 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_15_n_5 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_15_n_6 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_15_n_7 }),
        .S(\GENERATE_1KHz_Clock.compteur_reg [20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \GENERATE_1KHz_Clock.compteur_reg[0]_i_16 
       (.CI(\GENERATE_1KHz_Clock.compteur_reg[0]_i_14_n_0 ),
        .CO({\GENERATE_1KHz_Clock.compteur_reg[0]_i_16_n_0 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_16_n_1 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_16_n_2 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_1KHz_Clock.compteur_reg[0]_i_16_n_4 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_16_n_5 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_16_n_6 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_16_n_7 }),
        .S(\GENERATE_1KHz_Clock.compteur_reg [16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \GENERATE_1KHz_Clock.compteur_reg[0]_i_17 
       (.CI(1'b0),
        .CO({\GENERATE_1KHz_Clock.compteur_reg[0]_i_17_n_0 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_17_n_1 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_17_n_2 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_17_n_3 }),
        .CYINIT(\GENERATE_1KHz_Clock.compteur_reg [0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_1KHz_Clock.compteur_reg[0]_i_17_n_4 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_17_n_5 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_17_n_6 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_17_n_7 }),
        .S(\GENERATE_1KHz_Clock.compteur_reg [4:1]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \GENERATE_1KHz_Clock.compteur_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\GENERATE_1KHz_Clock.compteur_reg[0]_i_2_n_0 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_2_n_1 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_2_n_2 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\GENERATE_1KHz_Clock.compteur_reg[0]_i_2_n_4 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_2_n_5 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_2_n_6 ,\GENERATE_1KHz_Clock.compteur_reg[0]_i_2_n_7 }),
        .S({\GENERATE_1KHz_Clock.compteur_reg [3:1],\GENERATE_1KHz_Clock.compteur[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[8]_i_1_n_5 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[8]_i_1_n_4 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[12]_i_1_n_7 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \GENERATE_1KHz_Clock.compteur_reg[12]_i_1 
       (.CI(\GENERATE_1KHz_Clock.compteur_reg[8]_i_1_n_0 ),
        .CO({\GENERATE_1KHz_Clock.compteur_reg[12]_i_1_n_0 ,\GENERATE_1KHz_Clock.compteur_reg[12]_i_1_n_1 ,\GENERATE_1KHz_Clock.compteur_reg[12]_i_1_n_2 ,\GENERATE_1KHz_Clock.compteur_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_1KHz_Clock.compteur_reg[12]_i_1_n_4 ,\GENERATE_1KHz_Clock.compteur_reg[12]_i_1_n_5 ,\GENERATE_1KHz_Clock.compteur_reg[12]_i_1_n_6 ,\GENERATE_1KHz_Clock.compteur_reg[12]_i_1_n_7 }),
        .S(\GENERATE_1KHz_Clock.compteur_reg [15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[12]_i_1_n_6 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[12]_i_1_n_5 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[12]_i_1_n_4 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[16]_i_1_n_7 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \GENERATE_1KHz_Clock.compteur_reg[16]_i_1 
       (.CI(\GENERATE_1KHz_Clock.compteur_reg[12]_i_1_n_0 ),
        .CO({\GENERATE_1KHz_Clock.compteur_reg[16]_i_1_n_0 ,\GENERATE_1KHz_Clock.compteur_reg[16]_i_1_n_1 ,\GENERATE_1KHz_Clock.compteur_reg[16]_i_1_n_2 ,\GENERATE_1KHz_Clock.compteur_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_1KHz_Clock.compteur_reg[16]_i_1_n_4 ,\GENERATE_1KHz_Clock.compteur_reg[16]_i_1_n_5 ,\GENERATE_1KHz_Clock.compteur_reg[16]_i_1_n_6 ,\GENERATE_1KHz_Clock.compteur_reg[16]_i_1_n_7 }),
        .S(\GENERATE_1KHz_Clock.compteur_reg [19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[16]_i_1_n_6 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[16]_i_1_n_5 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[16]_i_1_n_4 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[0]_i_2_n_6 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[20]_i_1_n_7 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [20]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \GENERATE_1KHz_Clock.compteur_reg[20]_i_1 
       (.CI(\GENERATE_1KHz_Clock.compteur_reg[16]_i_1_n_0 ),
        .CO({\GENERATE_1KHz_Clock.compteur_reg[20]_i_1_n_0 ,\GENERATE_1KHz_Clock.compteur_reg[20]_i_1_n_1 ,\GENERATE_1KHz_Clock.compteur_reg[20]_i_1_n_2 ,\GENERATE_1KHz_Clock.compteur_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_1KHz_Clock.compteur_reg[20]_i_1_n_4 ,\GENERATE_1KHz_Clock.compteur_reg[20]_i_1_n_5 ,\GENERATE_1KHz_Clock.compteur_reg[20]_i_1_n_6 ,\GENERATE_1KHz_Clock.compteur_reg[20]_i_1_n_7 }),
        .S(\GENERATE_1KHz_Clock.compteur_reg [23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[20]_i_1_n_6 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[20]_i_1_n_5 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[20]_i_1_n_4 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[24]_i_1_n_7 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [24]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \GENERATE_1KHz_Clock.compteur_reg[24]_i_1 
       (.CI(\GENERATE_1KHz_Clock.compteur_reg[20]_i_1_n_0 ),
        .CO({\GENERATE_1KHz_Clock.compteur_reg[24]_i_1_n_0 ,\GENERATE_1KHz_Clock.compteur_reg[24]_i_1_n_1 ,\GENERATE_1KHz_Clock.compteur_reg[24]_i_1_n_2 ,\GENERATE_1KHz_Clock.compteur_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_1KHz_Clock.compteur_reg[24]_i_1_n_4 ,\GENERATE_1KHz_Clock.compteur_reg[24]_i_1_n_5 ,\GENERATE_1KHz_Clock.compteur_reg[24]_i_1_n_6 ,\GENERATE_1KHz_Clock.compteur_reg[24]_i_1_n_7 }),
        .S(\GENERATE_1KHz_Clock.compteur_reg [27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[24]_i_1_n_6 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[24]_i_1_n_5 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[24]_i_1_n_4 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[28]_i_1_n_7 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [28]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \GENERATE_1KHz_Clock.compteur_reg[28]_i_1 
       (.CI(\GENERATE_1KHz_Clock.compteur_reg[24]_i_1_n_0 ),
        .CO({\NLW_GENERATE_1KHz_Clock.compteur_reg[28]_i_1_CO_UNCONNECTED [3],\GENERATE_1KHz_Clock.compteur_reg[28]_i_1_n_1 ,\GENERATE_1KHz_Clock.compteur_reg[28]_i_1_n_2 ,\GENERATE_1KHz_Clock.compteur_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_1KHz_Clock.compteur_reg[28]_i_1_n_4 ,\GENERATE_1KHz_Clock.compteur_reg[28]_i_1_n_5 ,\GENERATE_1KHz_Clock.compteur_reg[28]_i_1_n_6 ,\GENERATE_1KHz_Clock.compteur_reg[28]_i_1_n_7 }),
        .S(\GENERATE_1KHz_Clock.compteur_reg [31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[28]_i_1_n_6 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[0]_i_2_n_5 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[28]_i_1_n_5 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[28]_i_1_n_4 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[0]_i_2_n_4 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[4]_i_1_n_7 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \GENERATE_1KHz_Clock.compteur_reg[4]_i_1 
       (.CI(\GENERATE_1KHz_Clock.compteur_reg[0]_i_2_n_0 ),
        .CO({\GENERATE_1KHz_Clock.compteur_reg[4]_i_1_n_0 ,\GENERATE_1KHz_Clock.compteur_reg[4]_i_1_n_1 ,\GENERATE_1KHz_Clock.compteur_reg[4]_i_1_n_2 ,\GENERATE_1KHz_Clock.compteur_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_1KHz_Clock.compteur_reg[4]_i_1_n_4 ,\GENERATE_1KHz_Clock.compteur_reg[4]_i_1_n_5 ,\GENERATE_1KHz_Clock.compteur_reg[4]_i_1_n_6 ,\GENERATE_1KHz_Clock.compteur_reg[4]_i_1_n_7 }),
        .S(\GENERATE_1KHz_Clock.compteur_reg [7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[4]_i_1_n_6 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[4]_i_1_n_5 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[4]_i_1_n_4 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[8]_i_1_n_7 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \GENERATE_1KHz_Clock.compteur_reg[8]_i_1 
       (.CI(\GENERATE_1KHz_Clock.compteur_reg[4]_i_1_n_0 ),
        .CO({\GENERATE_1KHz_Clock.compteur_reg[8]_i_1_n_0 ,\GENERATE_1KHz_Clock.compteur_reg[8]_i_1_n_1 ,\GENERATE_1KHz_Clock.compteur_reg[8]_i_1_n_2 ,\GENERATE_1KHz_Clock.compteur_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_1KHz_Clock.compteur_reg[8]_i_1_n_4 ,\GENERATE_1KHz_Clock.compteur_reg[8]_i_1_n_5 ,\GENERATE_1KHz_Clock.compteur_reg[8]_i_1_n_6 ,\GENERATE_1KHz_Clock.compteur_reg[8]_i_1_n_7 }),
        .S(\GENERATE_1KHz_Clock.compteur_reg [11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_1KHz_Clock.compteur_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_1KHz_Clock.compteur_reg[8]_i_1_n_6 ),
        .Q(\GENERATE_1KHz_Clock.compteur_reg [9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \aff[10]_i_1 
       (.I0(i[0]),
        .I1(i[1]),
        .O(\aff[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \aff[11]_i_1 
       (.I0(i[0]),
        .I1(i[1]),
        .O(\aff[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \aff[2]_i_3 
       (.I0(i[0]),
        .I1(i[1]),
        .O(\FSM_sequential_i_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \aff[4]_i_3 
       (.I0(i[0]),
        .I1(i[1]),
        .O(\FSM_sequential_i_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \aff[5]_i_6 
       (.I0(\aff_reg[5]_0 ),
        .I1(i[1]),
        .I2(i[0]),
        .O(\FSM_sequential_i_reg[1]_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \aff[6]_i_4 
       (.I0(address_dg_IBUF[1]),
        .I1(select_reg_mem_IBUF),
        .I2(address_dg_IBUF[0]),
        .O(\address_dg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \aff[8]_i_1 
       (.I0(i[1]),
        .I1(i[0]),
        .O(\aff[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \aff[9]_i_1 
       (.I0(i[1]),
        .I1(i[0]),
        .O(\aff[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \aff_reg[0] 
       (.C(clock_1KHz),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aff_reg[10] 
       (.C(clock_1KHz),
        .CE(1'b1),
        .D(\aff[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aff_reg[11] 
       (.C(clock_1KHz),
        .CE(1'b1),
        .D(\aff[11]_i_1_n_0 ),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aff_reg[1] 
       (.C(clock_1KHz),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aff_reg[2] 
       (.C(clock_1KHz),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aff_reg[3] 
       (.C(clock_1KHz),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aff_reg[4] 
       (.C(clock_1KHz),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aff_reg[5] 
       (.C(clock_1KHz),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aff_reg[6] 
       (.C(clock_1KHz),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aff_reg[7] 
       (.C(clock_1KHz),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aff_reg[8] 
       (.C(clock_1KHz),
        .CE(1'b1),
        .D(\aff[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aff_reg[9] 
       (.C(clock_1KHz),
        .CE(1'b1),
        .D(\aff[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(1'b0));
  CARRY4 clock_1KHz0_carry
       (.CI(1'b0),
        .CO({clock_1KHz0_carry_n_0,clock_1KHz0_carry_n_1,clock_1KHz0_carry_n_2,clock_1KHz0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,clock_1KHz0_carry_i_1_n_0,clock_1KHz0_carry_i_2_n_0,clock_1KHz0_carry_i_3_n_0}),
        .O(NLW_clock_1KHz0_carry_O_UNCONNECTED[3:0]),
        .S({clock_1KHz0_carry_i_4_n_0,clock_1KHz0_carry_i_5_n_0,clock_1KHz0_carry_i_6_n_0,clock_1KHz0_carry_i_7_n_0}));
  CARRY4 clock_1KHz0_carry__0
       (.CI(clock_1KHz0_carry_n_0),
        .CO({clock_1KHz0_carry__0_n_0,clock_1KHz0_carry__0_n_1,clock_1KHz0_carry__0_n_2,clock_1KHz0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,clock_1KHz0_carry__0_i_1_n_0,1'b0}),
        .O(NLW_clock_1KHz0_carry__0_O_UNCONNECTED[3:0]),
        .S({clock_1KHz0_carry__0_i_2_n_0,clock_1KHz0_carry__0_i_3_n_0,clock_1KHz0_carry__0_i_4_n_0,clock_1KHz0_carry__0_i_5_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    clock_1KHz0_carry__0_i_1
       (.I0(\GENERATE_1KHz_Clock.compteur_reg [14]),
        .I1(\GENERATE_1KHz_Clock.compteur_reg [15]),
        .O(clock_1KHz0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock_1KHz0_carry__0_i_2
       (.I0(\GENERATE_1KHz_Clock.compteur_reg [18]),
        .I1(\GENERATE_1KHz_Clock.compteur_reg [19]),
        .O(clock_1KHz0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock_1KHz0_carry__0_i_3
       (.I0(\GENERATE_1KHz_Clock.compteur_reg [16]),
        .I1(\GENERATE_1KHz_Clock.compteur_reg [17]),
        .O(clock_1KHz0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    clock_1KHz0_carry__0_i_4
       (.I0(\GENERATE_1KHz_Clock.compteur_reg [14]),
        .I1(\GENERATE_1KHz_Clock.compteur_reg [15]),
        .O(clock_1KHz0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock_1KHz0_carry__0_i_5
       (.I0(\GENERATE_1KHz_Clock.compteur_reg [12]),
        .I1(\GENERATE_1KHz_Clock.compteur_reg [13]),
        .O(clock_1KHz0_carry__0_i_5_n_0));
  CARRY4 clock_1KHz0_carry__1
       (.CI(clock_1KHz0_carry__0_n_0),
        .CO({clock_1KHz0_carry__1_n_0,clock_1KHz0_carry__1_n_1,clock_1KHz0_carry__1_n_2,clock_1KHz0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_clock_1KHz0_carry__1_O_UNCONNECTED[3:0]),
        .S({clock_1KHz0_carry__1_i_1_n_0,clock_1KHz0_carry__1_i_2_n_0,clock_1KHz0_carry__1_i_3_n_0,clock_1KHz0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    clock_1KHz0_carry__1_i_1
       (.I0(\GENERATE_1KHz_Clock.compteur_reg [26]),
        .I1(\GENERATE_1KHz_Clock.compteur_reg [27]),
        .O(clock_1KHz0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock_1KHz0_carry__1_i_2
       (.I0(\GENERATE_1KHz_Clock.compteur_reg [24]),
        .I1(\GENERATE_1KHz_Clock.compteur_reg [25]),
        .O(clock_1KHz0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock_1KHz0_carry__1_i_3
       (.I0(\GENERATE_1KHz_Clock.compteur_reg [22]),
        .I1(\GENERATE_1KHz_Clock.compteur_reg [23]),
        .O(clock_1KHz0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock_1KHz0_carry__1_i_4
       (.I0(\GENERATE_1KHz_Clock.compteur_reg [20]),
        .I1(\GENERATE_1KHz_Clock.compteur_reg [21]),
        .O(clock_1KHz0_carry__1_i_4_n_0));
  CARRY4 clock_1KHz0_carry__2
       (.CI(clock_1KHz0_carry__1_n_0),
        .CO({NLW_clock_1KHz0_carry__2_CO_UNCONNECTED[3:2],clock_1KHz0_carry__2_n_2,clock_1KHz0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\GENERATE_1KHz_Clock.compteur_reg [31],1'b0}),
        .O({NLW_clock_1KHz0_carry__2_O_UNCONNECTED[3],clock_1KHz0_carry__2_n_5,NLW_clock_1KHz0_carry__2_O_UNCONNECTED[1:0]}),
        .S({1'b0,1'b1,clock_1KHz0_carry__2_i_1_n_0,clock_1KHz0_carry__2_i_2_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    clock_1KHz0_carry__2_i_1
       (.I0(\GENERATE_1KHz_Clock.compteur_reg [30]),
        .I1(\GENERATE_1KHz_Clock.compteur_reg [31]),
        .O(clock_1KHz0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock_1KHz0_carry__2_i_2
       (.I0(\GENERATE_1KHz_Clock.compteur_reg [28]),
        .I1(\GENERATE_1KHz_Clock.compteur_reg [29]),
        .O(clock_1KHz0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    clock_1KHz0_carry_i_1
       (.I0(\GENERATE_1KHz_Clock.compteur_reg [8]),
        .I1(\GENERATE_1KHz_Clock.compteur_reg [9]),
        .O(clock_1KHz0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock_1KHz0_carry_i_2
       (.I0(\GENERATE_1KHz_Clock.compteur_reg [6]),
        .I1(\GENERATE_1KHz_Clock.compteur_reg [7]),
        .O(clock_1KHz0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock_1KHz0_carry_i_3
       (.I0(\GENERATE_1KHz_Clock.compteur_reg [4]),
        .I1(\GENERATE_1KHz_Clock.compteur_reg [5]),
        .O(clock_1KHz0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock_1KHz0_carry_i_4
       (.I0(\GENERATE_1KHz_Clock.compteur_reg [10]),
        .I1(\GENERATE_1KHz_Clock.compteur_reg [11]),
        .O(clock_1KHz0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    clock_1KHz0_carry_i_5
       (.I0(\GENERATE_1KHz_Clock.compteur_reg [8]),
        .I1(\GENERATE_1KHz_Clock.compteur_reg [9]),
        .O(clock_1KHz0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    clock_1KHz0_carry_i_6
       (.I0(\GENERATE_1KHz_Clock.compteur_reg [6]),
        .I1(\GENERATE_1KHz_Clock.compteur_reg [7]),
        .O(clock_1KHz0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    clock_1KHz0_carry_i_7
       (.I0(\GENERATE_1KHz_Clock.compteur_reg [4]),
        .I1(\GENERATE_1KHz_Clock.compteur_reg [5]),
        .O(clock_1KHz0_carry_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clock_1KHz_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clock_1KHz0_carry__2_n_5),
        .Q(clock_1KHz),
        .R(1'b0));
endmodule

module banc_de_registres
   (\registers_reg[8][7]_0 ,
    \registers_reg[9][7]_0 ,
    \registers_reg[0][7]_0 ,
    \registers_reg[8][6]_0 ,
    \registers_reg[8][5]_0 ,
    \registers_reg[8][4]_0 ,
    \registers_reg[8][3]_0 ,
    \registers_reg[8][2]_0 ,
    \registers_reg[8][1]_0 ,
    \registers_reg[8][0]_0 ,
    SR,
    D,
    \registers_reg[9][7]_1 ,
    Q,
    \BUFFER_DI_EX_reg[15] ,
    get_OPCODE,
    rst_IBUF,
    i,
    \aff_reg[4] ,
    \aff_reg[2] ,
    \aff_reg[5] ,
    \aff_reg[6] ,
    address_dg_IBUF,
    select_reg_mem_IBUF,
    CLK);
  output \registers_reg[8][7]_0 ;
  output [7:0]\registers_reg[9][7]_0 ;
  output [7:0]\registers_reg[0][7]_0 ;
  output \registers_reg[8][6]_0 ;
  output \registers_reg[8][5]_0 ;
  output \registers_reg[8][4]_0 ;
  output \registers_reg[8][3]_0 ;
  output \registers_reg[8][2]_0 ;
  output \registers_reg[8][1]_0 ;
  output \registers_reg[8][0]_0 ;
  output [0:0]SR;
  output [7:0]D;
  output \registers_reg[9][7]_1 ;
  input [11:0]Q;
  input \BUFFER_DI_EX_reg[15] ;
  input [0:0]get_OPCODE;
  input rst_IBUF;
  input [1:0]i;
  input \aff_reg[4] ;
  input \aff_reg[2] ;
  input \aff_reg[5] ;
  input \aff_reg[6] ;
  input [3:0]address_dg_IBUF;
  input select_reg_mem_IBUF;
  input CLK;

  wire \BUFFER_DI_EX_reg[15] ;
  wire CLK;
  wire [7:0]D;
  wire [11:0]Q;
  wire [0:0]SR;
  wire [3:0]address_dg_IBUF;
  wire \aff[0]_i_2_n_0 ;
  wire \aff[1]_i_2_n_0 ;
  wire \aff[2]_i_2_n_0 ;
  wire \aff[2]_i_4_n_0 ;
  wire \aff[2]_i_5_n_0 ;
  wire \aff[3]_i_2_n_0 ;
  wire \aff[3]_i_3_n_0 ;
  wire \aff[4]_i_2_n_0 ;
  wire \aff[4]_i_5_n_0 ;
  wire \aff[5]_i_2_n_0 ;
  wire \aff[5]_i_3_n_0 ;
  wire \aff[5]_i_4_n_0 ;
  wire \aff[5]_i_5_n_0 ;
  wire \aff[5]_i_7_n_0 ;
  wire \aff[5]_i_8_n_0 ;
  wire \aff[5]_i_9_n_0 ;
  wire \aff[6]_i_2_n_0 ;
  wire \aff[6]_i_3_n_0 ;
  wire \aff[7]_i_2_n_0 ;
  wire \aff[7]_i_3_n_0 ;
  wire \aff[7]_i_4_n_0 ;
  wire \aff[7]_i_5_n_0 ;
  wire \aff[7]_i_6_n_0 ;
  wire \aff[7]_i_7_n_0 ;
  wire \aff[7]_i_8_n_0 ;
  wire \aff_reg[2] ;
  wire \aff_reg[4] ;
  wire \aff_reg[5] ;
  wire \aff_reg[6] ;
  wire [0:0]get_OPCODE;
  wire [1:0]i;
  wire \registers[0][7]_i_2_n_0 ;
  wire \registers[1]_1 ;
  wire \registers[8][7]_i_1_n_0 ;
  wire \registers[9]_0 ;
  wire [7:0]\registers_reg[0][7]_0 ;
  wire [7:0]\registers_reg[1] ;
  wire [7:0]\registers_reg[8] ;
  wire \registers_reg[8][0]_0 ;
  wire \registers_reg[8][1]_0 ;
  wire \registers_reg[8][2]_0 ;
  wire \registers_reg[8][3]_0 ;
  wire \registers_reg[8][4]_0 ;
  wire \registers_reg[8][5]_0 ;
  wire \registers_reg[8][6]_0 ;
  wire \registers_reg[8][7]_0 ;
  wire [7:0]\registers_reg[9][7]_0 ;
  wire \registers_reg[9][7]_1 ;
  wire rst_IBUF;
  wire select_reg_mem_IBUF;

  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \BUFFER_DI_EX[10]_i_2 
       (.I0(\registers_reg[8] [2]),
        .I1(\registers_reg[9][7]_0 [2]),
        .I2(\registers_reg[0][7]_0 [2]),
        .I3(\BUFFER_DI_EX_reg[15] ),
        .I4(\registers_reg[1] [2]),
        .I5(get_OPCODE),
        .O(\registers_reg[8][2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \BUFFER_DI_EX[11]_i_2 
       (.I0(\registers_reg[8] [3]),
        .I1(\registers_reg[9][7]_0 [3]),
        .I2(get_OPCODE),
        .I3(\registers_reg[0][7]_0 [3]),
        .I4(\BUFFER_DI_EX_reg[15] ),
        .I5(\registers_reg[1] [3]),
        .O(\registers_reg[8][3]_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \BUFFER_DI_EX[12]_i_2 
       (.I0(\registers_reg[8] [4]),
        .I1(\registers_reg[9][7]_0 [4]),
        .I2(\registers_reg[0][7]_0 [4]),
        .I3(\BUFFER_DI_EX_reg[15] ),
        .I4(\registers_reg[1] [4]),
        .I5(get_OPCODE),
        .O(\registers_reg[8][4]_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \BUFFER_DI_EX[13]_i_2 
       (.I0(\registers_reg[8] [5]),
        .I1(\registers_reg[9][7]_0 [5]),
        .I2(\registers_reg[0][7]_0 [5]),
        .I3(\BUFFER_DI_EX_reg[15] ),
        .I4(\registers_reg[1] [5]),
        .I5(get_OPCODE),
        .O(\registers_reg[8][5]_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \BUFFER_DI_EX[14]_i_2 
       (.I0(\registers_reg[8] [6]),
        .I1(\registers_reg[9][7]_0 [6]),
        .I2(\registers_reg[0][7]_0 [6]),
        .I3(\BUFFER_DI_EX_reg[15] ),
        .I4(\registers_reg[1] [6]),
        .I5(get_OPCODE),
        .O(\registers_reg[8][6]_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \BUFFER_DI_EX[15]_i_2 
       (.I0(\registers_reg[8] [7]),
        .I1(\registers_reg[9][7]_0 [7]),
        .I2(\registers_reg[0][7]_0 [7]),
        .I3(\BUFFER_DI_EX_reg[15] ),
        .I4(\registers_reg[1] [7]),
        .I5(get_OPCODE),
        .O(\registers_reg[8][7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \BUFFER_DI_EX[8]_i_2 
       (.I0(\registers_reg[8] [0]),
        .I1(\registers_reg[9][7]_0 [0]),
        .I2(get_OPCODE),
        .I3(\registers_reg[0][7]_0 [0]),
        .I4(\BUFFER_DI_EX_reg[15] ),
        .I5(\registers_reg[1] [0]),
        .O(\registers_reg[8][0]_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \BUFFER_DI_EX[9]_i_2 
       (.I0(\registers_reg[8] [1]),
        .I1(\registers_reg[9][7]_0 [1]),
        .I2(\registers_reg[0][7]_0 [1]),
        .I3(\BUFFER_DI_EX_reg[15] ),
        .I4(\registers_reg[1] [1]),
        .I5(get_OPCODE),
        .O(\registers_reg[8][1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000012)) 
    \aff[0]_i_1 
       (.I0(\aff[7]_i_3_n_0 ),
        .I1(\aff[7]_i_4_n_0 ),
        .I2(\aff[2]_i_2_n_0 ),
        .I3(i[0]),
        .I4(\aff[7]_i_2_n_0 ),
        .I5(\aff[0]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h00001200FFFF0000)) 
    \aff[0]_i_2 
       (.I0(\aff[5]_i_5_n_0 ),
        .I1(\aff[5]_i_3_n_0 ),
        .I2(\aff[5]_i_4_n_0 ),
        .I3(\registers_reg[9][7]_1 ),
        .I4(i[1]),
        .I5(i[0]),
        .O(\aff[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08808808)) 
    \aff[1]_i_1 
       (.I0(\aff_reg[4] ),
        .I1(\aff[5]_i_5_n_0 ),
        .I2(\registers_reg[9][7]_1 ),
        .I3(\aff[5]_i_3_n_0 ),
        .I4(\aff[5]_i_4_n_0 ),
        .I5(\aff[1]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h000000000000D600)) 
    \aff[1]_i_2 
       (.I0(\aff[2]_i_2_n_0 ),
        .I1(\aff[7]_i_4_n_0 ),
        .I2(\aff[7]_i_2_n_0 ),
        .I3(\aff[7]_i_3_n_0 ),
        .I4(i[0]),
        .I5(i[1]),
        .O(\aff[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80980000)) 
    \aff[2]_i_1 
       (.I0(\aff[7]_i_2_n_0 ),
        .I1(\aff[7]_i_3_n_0 ),
        .I2(\aff[7]_i_4_n_0 ),
        .I3(\aff[2]_i_2_n_0 ),
        .I4(\aff_reg[2] ),
        .I5(\aff[2]_i_4_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \aff[2]_i_2 
       (.I0(address_dg_IBUF[1]),
        .I1(select_reg_mem_IBUF),
        .I2(address_dg_IBUF[2]),
        .I3(\aff[2]_i_5_n_0 ),
        .O(\aff[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000048A00000000)) 
    \aff[2]_i_4 
       (.I0(\aff[5]_i_5_n_0 ),
        .I1(\aff[5]_i_3_n_0 ),
        .I2(\aff[5]_i_4_n_0 ),
        .I3(\registers_reg[9][7]_1 ),
        .I4(i[1]),
        .I5(i[0]),
        .O(\aff[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \aff[2]_i_5 
       (.I0(\registers_reg[9][7]_0 [0]),
        .I1(\registers_reg[8] [0]),
        .I2(address_dg_IBUF[3]),
        .I3(\registers_reg[1] [0]),
        .I4(address_dg_IBUF[0]),
        .I5(\registers_reg[0][7]_0 [0]),
        .O(\aff[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEABAEBAE)) 
    \aff[3]_i_2 
       (.I0(i[1]),
        .I1(\aff[2]_i_2_n_0 ),
        .I2(\aff[7]_i_4_n_0 ),
        .I3(\aff[7]_i_3_n_0 ),
        .I4(\aff[7]_i_2_n_0 ),
        .O(\aff[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h41044010)) 
    \aff[3]_i_3 
       (.I0(i[1]),
        .I1(\aff[5]_i_5_n_0 ),
        .I2(\aff[5]_i_3_n_0 ),
        .I3(\aff[5]_i_4_n_0 ),
        .I4(\registers_reg[9][7]_1 ),
        .O(\aff[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAAAAABAAAAAA)) 
    \aff[4]_i_1 
       (.I0(\aff[4]_i_2_n_0 ),
        .I1(\aff[5]_i_5_n_0 ),
        .I2(\aff[5]_i_3_n_0 ),
        .I3(\aff[5]_i_4_n_0 ),
        .I4(\aff_reg[4] ),
        .I5(\registers_reg[9][7]_1 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h50505000F0007000)) 
    \aff[4]_i_2 
       (.I0(\aff[7]_i_2_n_0 ),
        .I1(\aff_reg[6] ),
        .I2(\aff_reg[2] ),
        .I3(\aff[2]_i_2_n_0 ),
        .I4(\aff[7]_i_8_n_0 ),
        .I5(\aff[7]_i_3_n_0 ),
        .O(\aff[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \aff[4]_i_4 
       (.I0(\aff[4]_i_5_n_0 ),
        .I1(address_dg_IBUF[1]),
        .I2(select_reg_mem_IBUF),
        .I3(address_dg_IBUF[2]),
        .O(\registers_reg[9][7]_1 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \aff[4]_i_5 
       (.I0(\registers_reg[9][7]_0 [7]),
        .I1(\registers_reg[8] [7]),
        .I2(address_dg_IBUF[3]),
        .I3(\registers_reg[1] [7]),
        .I4(address_dg_IBUF[0]),
        .I5(\registers_reg[0][7]_0 [7]),
        .O(\aff[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEAFEAAAA)) 
    \aff[5]_i_1 
       (.I0(\aff[5]_i_2_n_0 ),
        .I1(\aff[5]_i_3_n_0 ),
        .I2(\aff[5]_i_4_n_0 ),
        .I3(\aff[5]_i_5_n_0 ),
        .I4(\aff_reg[5] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h000000000000008E)) 
    \aff[5]_i_2 
       (.I0(\aff[2]_i_2_n_0 ),
        .I1(\aff[7]_i_4_n_0 ),
        .I2(\aff[7]_i_3_n_0 ),
        .I3(i[0]),
        .I4(i[1]),
        .I5(\aff[7]_i_2_n_0 ),
        .O(\aff[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \aff[5]_i_3 
       (.I0(address_dg_IBUF[1]),
        .I1(select_reg_mem_IBUF),
        .I2(address_dg_IBUF[2]),
        .I3(\aff[5]_i_7_n_0 ),
        .O(\aff[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \aff[5]_i_4 
       (.I0(address_dg_IBUF[1]),
        .I1(select_reg_mem_IBUF),
        .I2(address_dg_IBUF[2]),
        .I3(\aff[5]_i_8_n_0 ),
        .O(\aff[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \aff[5]_i_5 
       (.I0(address_dg_IBUF[1]),
        .I1(select_reg_mem_IBUF),
        .I2(address_dg_IBUF[2]),
        .I3(\aff[5]_i_9_n_0 ),
        .O(\aff[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \aff[5]_i_7 
       (.I0(\registers_reg[9][7]_0 [5]),
        .I1(\registers_reg[8] [5]),
        .I2(address_dg_IBUF[3]),
        .I3(\registers_reg[1] [5]),
        .I4(address_dg_IBUF[0]),
        .I5(\registers_reg[0][7]_0 [5]),
        .O(\aff[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \aff[5]_i_8 
       (.I0(\registers_reg[9][7]_0 [4]),
        .I1(\registers_reg[8] [4]),
        .I2(address_dg_IBUF[3]),
        .I3(\registers_reg[1] [4]),
        .I4(address_dg_IBUF[0]),
        .I5(\registers_reg[0][7]_0 [4]),
        .O(\aff[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \aff[5]_i_9 
       (.I0(\registers_reg[9][7]_0 [6]),
        .I1(\registers_reg[8] [6]),
        .I2(address_dg_IBUF[3]),
        .I3(\registers_reg[1] [6]),
        .I4(address_dg_IBUF[0]),
        .I5(\registers_reg[0][7]_0 [6]),
        .O(\aff[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4400440010450045)) 
    \aff[6]_i_2 
       (.I0(i[1]),
        .I1(\aff[7]_i_8_n_0 ),
        .I2(\aff_reg[6] ),
        .I3(\aff[7]_i_3_n_0 ),
        .I4(\aff[2]_i_2_n_0 ),
        .I5(\aff[7]_i_2_n_0 ),
        .O(\aff[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF8330)) 
    \aff[6]_i_3 
       (.I0(\aff[5]_i_4_n_0 ),
        .I1(\aff[5]_i_3_n_0 ),
        .I2(\aff[5]_i_5_n_0 ),
        .I3(\registers_reg[9][7]_1 ),
        .I4(i[1]),
        .O(\aff[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0000570057)) 
    \aff[7]_i_1 
       (.I0(\aff[7]_i_2_n_0 ),
        .I1(\aff[7]_i_3_n_0 ),
        .I2(\aff[7]_i_4_n_0 ),
        .I3(i[1]),
        .I4(\aff[7]_i_5_n_0 ),
        .I5(i[0]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \aff[7]_i_2 
       (.I0(address_dg_IBUF[1]),
        .I1(select_reg_mem_IBUF),
        .I2(address_dg_IBUF[2]),
        .I3(\aff[7]_i_6_n_0 ),
        .O(\aff[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \aff[7]_i_3 
       (.I0(address_dg_IBUF[1]),
        .I1(select_reg_mem_IBUF),
        .I2(address_dg_IBUF[2]),
        .I3(\aff[7]_i_7_n_0 ),
        .O(\aff[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \aff[7]_i_4 
       (.I0(address_dg_IBUF[1]),
        .I1(select_reg_mem_IBUF),
        .I2(address_dg_IBUF[2]),
        .I3(\aff[7]_i_8_n_0 ),
        .O(\aff[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \aff[7]_i_5 
       (.I0(\registers_reg[9][7]_1 ),
        .I1(\aff[5]_i_5_n_0 ),
        .I2(\aff[5]_i_3_n_0 ),
        .O(\aff[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \aff[7]_i_6 
       (.I0(\registers_reg[9][7]_0 [3]),
        .I1(\registers_reg[8] [3]),
        .I2(address_dg_IBUF[3]),
        .I3(\registers_reg[1] [3]),
        .I4(address_dg_IBUF[0]),
        .I5(\registers_reg[0][7]_0 [3]),
        .O(\aff[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \aff[7]_i_7 
       (.I0(\registers_reg[9][7]_0 [2]),
        .I1(\registers_reg[8] [2]),
        .I2(address_dg_IBUF[3]),
        .I3(\registers_reg[1] [2]),
        .I4(address_dg_IBUF[0]),
        .I5(\registers_reg[0][7]_0 [2]),
        .O(\aff[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \aff[7]_i_8 
       (.I0(\registers_reg[9][7]_0 [1]),
        .I1(\registers_reg[8] [1]),
        .I2(address_dg_IBUF[3]),
        .I3(\registers_reg[1] [1]),
        .I4(address_dg_IBUF[0]),
        .I5(\registers_reg[0][7]_0 [1]),
        .O(\aff[7]_i_8_n_0 ));
  MUXF7 \aff_reg[3]_i_1 
       (.I0(\aff[3]_i_2_n_0 ),
        .I1(\aff[3]_i_3_n_0 ),
        .O(D[3]),
        .S(i[0]));
  MUXF7 \aff_reg[6]_i_1 
       (.I0(\aff[6]_i_2_n_0 ),
        .I1(\aff[6]_i_3_n_0 ),
        .O(D[6]),
        .S(i[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \registers[0][7]_i_1 
       (.I0(rst_IBUF),
        .O(SR));
  LUT4 #(
    .INIT(16'h0054)) 
    \registers[0][7]_i_2 
       (.I0(Q[8]),
        .I1(Q[11]),
        .I2(Q[10]),
        .I3(Q[9]),
        .O(\registers[0][7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00A8)) 
    \registers[1][7]_i_1 
       (.I0(Q[8]),
        .I1(Q[11]),
        .I2(Q[10]),
        .I3(Q[9]),
        .O(\registers[1]_1 ));
  LUT4 #(
    .INIT(16'h4440)) 
    \registers[8][7]_i_1 
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[11]),
        .I3(Q[10]),
        .O(\registers[8][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8880)) 
    \registers[9][7]_i_1 
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[11]),
        .I3(Q[10]),
        .O(\registers[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][0] 
       (.C(CLK),
        .CE(\registers[0][7]_i_2_n_0 ),
        .D(Q[0]),
        .Q(\registers_reg[0][7]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][1] 
       (.C(CLK),
        .CE(\registers[0][7]_i_2_n_0 ),
        .D(Q[1]),
        .Q(\registers_reg[0][7]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][2] 
       (.C(CLK),
        .CE(\registers[0][7]_i_2_n_0 ),
        .D(Q[2]),
        .Q(\registers_reg[0][7]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][3] 
       (.C(CLK),
        .CE(\registers[0][7]_i_2_n_0 ),
        .D(Q[3]),
        .Q(\registers_reg[0][7]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][4] 
       (.C(CLK),
        .CE(\registers[0][7]_i_2_n_0 ),
        .D(Q[4]),
        .Q(\registers_reg[0][7]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][5] 
       (.C(CLK),
        .CE(\registers[0][7]_i_2_n_0 ),
        .D(Q[5]),
        .Q(\registers_reg[0][7]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][6] 
       (.C(CLK),
        .CE(\registers[0][7]_i_2_n_0 ),
        .D(Q[6]),
        .Q(\registers_reg[0][7]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][7] 
       (.C(CLK),
        .CE(\registers[0][7]_i_2_n_0 ),
        .D(Q[7]),
        .Q(\registers_reg[0][7]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][0] 
       (.C(CLK),
        .CE(\registers[1]_1 ),
        .D(Q[0]),
        .Q(\registers_reg[1] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][1] 
       (.C(CLK),
        .CE(\registers[1]_1 ),
        .D(Q[1]),
        .Q(\registers_reg[1] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][2] 
       (.C(CLK),
        .CE(\registers[1]_1 ),
        .D(Q[2]),
        .Q(\registers_reg[1] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][3] 
       (.C(CLK),
        .CE(\registers[1]_1 ),
        .D(Q[3]),
        .Q(\registers_reg[1] [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][4] 
       (.C(CLK),
        .CE(\registers[1]_1 ),
        .D(Q[4]),
        .Q(\registers_reg[1] [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][5] 
       (.C(CLK),
        .CE(\registers[1]_1 ),
        .D(Q[5]),
        .Q(\registers_reg[1] [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][6] 
       (.C(CLK),
        .CE(\registers[1]_1 ),
        .D(Q[6]),
        .Q(\registers_reg[1] [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][7] 
       (.C(CLK),
        .CE(\registers[1]_1 ),
        .D(Q[7]),
        .Q(\registers_reg[1] [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[8][0] 
       (.C(CLK),
        .CE(\registers[8][7]_i_1_n_0 ),
        .D(Q[0]),
        .Q(\registers_reg[8] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[8][1] 
       (.C(CLK),
        .CE(\registers[8][7]_i_1_n_0 ),
        .D(Q[1]),
        .Q(\registers_reg[8] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[8][2] 
       (.C(CLK),
        .CE(\registers[8][7]_i_1_n_0 ),
        .D(Q[2]),
        .Q(\registers_reg[8] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[8][3] 
       (.C(CLK),
        .CE(\registers[8][7]_i_1_n_0 ),
        .D(Q[3]),
        .Q(\registers_reg[8] [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[8][4] 
       (.C(CLK),
        .CE(\registers[8][7]_i_1_n_0 ),
        .D(Q[4]),
        .Q(\registers_reg[8] [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[8][5] 
       (.C(CLK),
        .CE(\registers[8][7]_i_1_n_0 ),
        .D(Q[5]),
        .Q(\registers_reg[8] [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[8][6] 
       (.C(CLK),
        .CE(\registers[8][7]_i_1_n_0 ),
        .D(Q[6]),
        .Q(\registers_reg[8] [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[8][7] 
       (.C(CLK),
        .CE(\registers[8][7]_i_1_n_0 ),
        .D(Q[7]),
        .Q(\registers_reg[8] [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[9][0] 
       (.C(CLK),
        .CE(\registers[9]_0 ),
        .D(Q[0]),
        .Q(\registers_reg[9][7]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[9][1] 
       (.C(CLK),
        .CE(\registers[9]_0 ),
        .D(Q[1]),
        .Q(\registers_reg[9][7]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[9][2] 
       (.C(CLK),
        .CE(\registers[9]_0 ),
        .D(Q[2]),
        .Q(\registers_reg[9][7]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[9][3] 
       (.C(CLK),
        .CE(\registers[9]_0 ),
        .D(Q[3]),
        .Q(\registers_reg[9][7]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[9][4] 
       (.C(CLK),
        .CE(\registers[9]_0 ),
        .D(Q[4]),
        .Q(\registers_reg[9][7]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[9][5] 
       (.C(CLK),
        .CE(\registers[9]_0 ),
        .D(Q[5]),
        .Q(\registers_reg[9][7]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[9][6] 
       (.C(CLK),
        .CE(\registers[9]_0 ),
        .D(Q[6]),
        .Q(\registers_reg[9][7]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[9][7] 
       (.C(CLK),
        .CE(\registers[9]_0 ),
        .D(Q[7]),
        .Q(\registers_reg[9][7]_0 [7]),
        .R(SR));
endmodule

module memoire_instructions
   (D,
    \INSTR_reg[8]_0 ,
    \INSTR_reg[8]_1 ,
    \INSTR_reg[8]_2 ,
    E,
    \CURRENT_INSTR_PTR_reg[7] ,
    Q,
    \BUFFER_DI_EX_reg[8] ,
    \BUFFER_DI_EX_reg[9] ,
    \BUFFER_DI_EX_reg[10] ,
    \BUFFER_DI_EX_reg[11] ,
    \BUFFER_DI_EX_reg[12] ,
    \BUFFER_DI_EX_reg[13] ,
    \BUFFER_DI_EX_reg[14] ,
    \BUFFER_DI_EX_reg[15] ,
    \BUFFER_DI_EX_reg[7] ,
    \BUFFER_DI_EX_reg[7]_0 ,
    \BUFFER_DI_EX[26]_i_3 ,
    \BUFFER_DI_EX[26]_i_3_0 ,
    rst_IBUF,
    \INSTR_PTR_reg[7] ,
    \INSTR_reg[19]_0 ,
    \INSTR_PTR_reg[4] ,
    \INSTR_PTR_reg[5] ,
    \INSTR_PTR_reg[6] ,
    \INSTR_PTR_reg[0] ,
    CLK);
  output [19:0]D;
  output \INSTR_reg[8]_0 ;
  output \INSTR_reg[8]_1 ;
  output \INSTR_reg[8]_2 ;
  output [0:0]E;
  output [7:0]\CURRENT_INSTR_PTR_reg[7] ;
  input [11:0]Q;
  input \BUFFER_DI_EX_reg[8] ;
  input \BUFFER_DI_EX_reg[9] ;
  input \BUFFER_DI_EX_reg[10] ;
  input \BUFFER_DI_EX_reg[11] ;
  input \BUFFER_DI_EX_reg[12] ;
  input \BUFFER_DI_EX_reg[13] ;
  input \BUFFER_DI_EX_reg[14] ;
  input \BUFFER_DI_EX_reg[15] ;
  input [7:0]\BUFFER_DI_EX_reg[7] ;
  input [7:0]\BUFFER_DI_EX_reg[7]_0 ;
  input [1:0]\BUFFER_DI_EX[26]_i_3 ;
  input [1:0]\BUFFER_DI_EX[26]_i_3_0 ;
  input rst_IBUF;
  input [7:0]\INSTR_PTR_reg[7] ;
  input [7:0]\INSTR_reg[19]_0 ;
  input \INSTR_PTR_reg[4] ;
  input \INSTR_PTR_reg[5] ;
  input \INSTR_PTR_reg[6] ;
  input \INSTR_PTR_reg[0] ;
  input CLK;

  wire \BUFFER_DI_EX[15]_i_3_n_0 ;
  wire \BUFFER_DI_EX[26]_i_2_n_0 ;
  wire [1:0]\BUFFER_DI_EX[26]_i_3 ;
  wire [1:0]\BUFFER_DI_EX[26]_i_3_0 ;
  wire \BUFFER_DI_EX[7]_i_2_n_0 ;
  wire \BUFFER_DI_EX_reg[10] ;
  wire \BUFFER_DI_EX_reg[11] ;
  wire \BUFFER_DI_EX_reg[12] ;
  wire \BUFFER_DI_EX_reg[13] ;
  wire \BUFFER_DI_EX_reg[14] ;
  wire \BUFFER_DI_EX_reg[15] ;
  wire [7:0]\BUFFER_DI_EX_reg[7] ;
  wire [7:0]\BUFFER_DI_EX_reg[7]_0 ;
  wire \BUFFER_DI_EX_reg[8] ;
  wire \BUFFER_DI_EX_reg[9] ;
  wire CLK;
  wire [7:0]\CURRENT_INSTR_PTR_reg[7] ;
  wire [19:0]D;
  wire [0:0]E;
  wire [26:3]INSTR;
  wire \INSTR[16]_i_1_n_0 ;
  wire \INSTR[19]_i_1_n_0 ;
  wire \INSTR[26]_i_1_n_0 ;
  wire \INSTR[3]_i_1_n_0 ;
  wire \INSTR[8]_i_1_n_0 ;
  wire \INSTR_PTR_reg[0] ;
  wire \INSTR_PTR_reg[4] ;
  wire \INSTR_PTR_reg[5] ;
  wire \INSTR_PTR_reg[6] ;
  wire [7:0]\INSTR_PTR_reg[7] ;
  wire [7:0]\INSTR_reg[19]_0 ;
  wire \INSTR_reg[8]_0 ;
  wire \INSTR_reg[8]_1 ;
  wire \INSTR_reg[8]_2 ;
  wire [11:0]Q;
  wire rst_IBUF;

  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \BUFFER_DI_EX[0]_i_1 
       (.I0(Q[0]),
        .I1(\BUFFER_DI_EX[7]_i_2_n_0 ),
        .I2(\BUFFER_DI_EX_reg[7] [0]),
        .I3(INSTR[3]),
        .I4(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I5(\BUFFER_DI_EX_reg[7]_0 [0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hE200E2E2)) 
    \BUFFER_DI_EX[10]_i_1 
       (.I0(\BUFFER_DI_EX_reg[10] ),
        .I1(\BUFFER_DI_EX[15]_i_3_n_0 ),
        .I2(Q[2]),
        .I3(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I4(INSTR[26]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \BUFFER_DI_EX[11]_i_1 
       (.I0(INSTR[3]),
        .I1(INSTR[26]),
        .I2(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(\BUFFER_DI_EX[15]_i_3_n_0 ),
        .I5(\BUFFER_DI_EX_reg[11] ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hE200E2E2)) 
    \BUFFER_DI_EX[12]_i_1 
       (.I0(\BUFFER_DI_EX_reg[12] ),
        .I1(\BUFFER_DI_EX[15]_i_3_n_0 ),
        .I2(Q[4]),
        .I3(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I4(INSTR[26]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hE200E2E2)) 
    \BUFFER_DI_EX[13]_i_1 
       (.I0(\BUFFER_DI_EX_reg[13] ),
        .I1(\BUFFER_DI_EX[15]_i_3_n_0 ),
        .I2(Q[5]),
        .I3(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I4(INSTR[26]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hE200E2E2)) 
    \BUFFER_DI_EX[14]_i_1 
       (.I0(\BUFFER_DI_EX_reg[14] ),
        .I1(\BUFFER_DI_EX[15]_i_3_n_0 ),
        .I2(Q[6]),
        .I3(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I4(INSTR[26]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hE200E2E2)) 
    \BUFFER_DI_EX[15]_i_1 
       (.I0(\BUFFER_DI_EX_reg[15] ),
        .I1(\BUFFER_DI_EX[15]_i_3_n_0 ),
        .I2(Q[7]),
        .I3(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I4(INSTR[26]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h0990099009900000)) 
    \BUFFER_DI_EX[15]_i_3 
       (.I0(Q[9]),
        .I1(D[18]),
        .I2(Q[8]),
        .I3(\INSTR_reg[8]_0 ),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(\BUFFER_DI_EX[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \BUFFER_DI_EX[15]_i_4 
       (.I0(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I1(INSTR[8]),
        .O(\INSTR_reg[8]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \BUFFER_DI_EX[16]_i_1 
       (.I0(INSTR[16]),
        .I1(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BUFFER_DI_EX[19]_i_1 
       (.I0(INSTR[19]),
        .I1(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \BUFFER_DI_EX[1]_i_1 
       (.I0(Q[1]),
        .I1(\BUFFER_DI_EX[7]_i_2_n_0 ),
        .I2(\BUFFER_DI_EX_reg[7] [1]),
        .I3(INSTR[3]),
        .I4(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I5(\BUFFER_DI_EX_reg[7]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BUFFER_DI_EX[24]_i_1 
       (.I0(INSTR[3]),
        .I1(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BUFFER_DI_EX[26]_i_1 
       (.I0(INSTR[26]),
        .I1(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .O(D[19]));
  LUT4 #(
    .INIT(16'h0002)) 
    \BUFFER_DI_EX[26]_i_2 
       (.I0(INSTR[3]),
        .I1(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I2(INSTR[26]),
        .I3(\INSTR_PTR_reg[0] ),
        .O(\BUFFER_DI_EX[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080C02020404F1F1)) 
    \BUFFER_DI_EX[26]_i_4 
       (.I0(INSTR[8]),
        .I1(INSTR[3]),
        .I2(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I3(INSTR[26]),
        .I4(\BUFFER_DI_EX[26]_i_3_0 [1]),
        .I5(\BUFFER_DI_EX[26]_i_3_0 [0]),
        .O(\INSTR_reg[8]_2 ));
  LUT6 #(
    .INIT(64'h0082334100C23341)) 
    \BUFFER_DI_EX[26]_i_5 
       (.I0(INSTR[8]),
        .I1(\BUFFER_DI_EX[26]_i_3 [1]),
        .I2(INSTR[3]),
        .I3(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I4(\BUFFER_DI_EX[26]_i_3 [0]),
        .I5(INSTR[26]),
        .O(\INSTR_reg[8]_1 ));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \BUFFER_DI_EX[2]_i_1 
       (.I0(Q[2]),
        .I1(\BUFFER_DI_EX[7]_i_2_n_0 ),
        .I2(\BUFFER_DI_EX_reg[7] [2]),
        .I3(INSTR[3]),
        .I4(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I5(\BUFFER_DI_EX_reg[7]_0 [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \BUFFER_DI_EX[3]_i_1 
       (.I0(Q[3]),
        .I1(\BUFFER_DI_EX[7]_i_2_n_0 ),
        .I2(\BUFFER_DI_EX_reg[7] [3]),
        .I3(INSTR[3]),
        .I4(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I5(\BUFFER_DI_EX_reg[7]_0 [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \BUFFER_DI_EX[4]_i_1 
       (.I0(Q[4]),
        .I1(\BUFFER_DI_EX[7]_i_2_n_0 ),
        .I2(\BUFFER_DI_EX_reg[7] [4]),
        .I3(INSTR[3]),
        .I4(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I5(\BUFFER_DI_EX_reg[7]_0 [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \BUFFER_DI_EX[5]_i_1 
       (.I0(Q[5]),
        .I1(\BUFFER_DI_EX[7]_i_2_n_0 ),
        .I2(\BUFFER_DI_EX_reg[7] [5]),
        .I3(INSTR[3]),
        .I4(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I5(\BUFFER_DI_EX_reg[7]_0 [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \BUFFER_DI_EX[6]_i_1 
       (.I0(Q[6]),
        .I1(\BUFFER_DI_EX[7]_i_2_n_0 ),
        .I2(\BUFFER_DI_EX_reg[7] [6]),
        .I3(INSTR[3]),
        .I4(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I5(\BUFFER_DI_EX_reg[7]_0 [6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \BUFFER_DI_EX[7]_i_1 
       (.I0(Q[7]),
        .I1(\BUFFER_DI_EX[7]_i_2_n_0 ),
        .I2(\BUFFER_DI_EX_reg[7] [7]),
        .I3(INSTR[3]),
        .I4(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I5(\BUFFER_DI_EX_reg[7]_0 [7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h202020000D0D0D00)) 
    \BUFFER_DI_EX[7]_i_2 
       (.I0(INSTR[3]),
        .I1(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I2(Q[8]),
        .I3(Q[11]),
        .I4(Q[10]),
        .I5(Q[9]),
        .O(\BUFFER_DI_EX[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \BUFFER_DI_EX[8]_i_1 
       (.I0(INSTR[8]),
        .I1(INSTR[26]),
        .I2(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I3(Q[0]),
        .I4(\BUFFER_DI_EX[15]_i_3_n_0 ),
        .I5(\BUFFER_DI_EX_reg[8] ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hE200E2E2)) 
    \BUFFER_DI_EX[9]_i_1 
       (.I0(\BUFFER_DI_EX_reg[9] ),
        .I1(\BUFFER_DI_EX[15]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I4(INSTR[26]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CURRENT_INSTR_PTR[7]_i_1 
       (.I0(rst_IBUF),
        .I1(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \INSTR[16]_i_1 
       (.I0(\INSTR[19]_i_1_n_0 ),
        .I1(\INSTR_reg[19]_0 [1]),
        .I2(\INSTR_reg[19]_0 [0]),
        .O(\INSTR[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \INSTR[19]_i_1 
       (.I0(\INSTR_reg[19]_0 [4]),
        .I1(\INSTR_reg[19]_0 [5]),
        .I2(\INSTR_reg[19]_0 [6]),
        .I3(\INSTR_reg[19]_0 [7]),
        .I4(\INSTR_reg[19]_0 [3]),
        .I5(\INSTR_reg[19]_0 [2]),
        .O(\INSTR[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \INSTR[26]_i_1 
       (.I0(\INSTR[19]_i_1_n_0 ),
        .I1(\INSTR_reg[19]_0 [1]),
        .O(\INSTR[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \INSTR[3]_i_1 
       (.I0(\INSTR[19]_i_1_n_0 ),
        .I1(\INSTR_reg[19]_0 [1]),
        .O(\INSTR[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \INSTR[8]_i_1 
       (.I0(\INSTR_reg[19]_0 [0]),
        .I1(\INSTR_reg[19]_0 [1]),
        .I2(\INSTR[19]_i_1_n_0 ),
        .O(\INSTR[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \INSTR_PTR[0]_i_1 
       (.I0(\INSTR_PTR_reg[7] [0]),
        .I1(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I2(\INSTR_reg[19]_0 [0]),
        .O(\CURRENT_INSTR_PTR_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \INSTR_PTR[1]_i_1 
       (.I0(\INSTR_PTR_reg[7] [1]),
        .I1(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I2(\INSTR_reg[19]_0 [0]),
        .I3(\INSTR_reg[19]_0 [1]),
        .O(\CURRENT_INSTR_PTR_reg[7] [1]));
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \INSTR_PTR[2]_i_1 
       (.I0(\INSTR_PTR_reg[7] [2]),
        .I1(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I2(\INSTR_reg[19]_0 [2]),
        .I3(\INSTR_reg[19]_0 [1]),
        .I4(\INSTR_reg[19]_0 [0]),
        .O(\CURRENT_INSTR_PTR_reg[7] [2]));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \INSTR_PTR[3]_i_1 
       (.I0(\INSTR_PTR_reg[7] [3]),
        .I1(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I2(\INSTR_reg[19]_0 [3]),
        .I3(\INSTR_reg[19]_0 [0]),
        .I4(\INSTR_reg[19]_0 [1]),
        .I5(\INSTR_reg[19]_0 [2]),
        .O(\CURRENT_INSTR_PTR_reg[7] [3]));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \INSTR_PTR[4]_i_1 
       (.I0(\INSTR_PTR_reg[7] [4]),
        .I1(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I2(\INSTR_reg[19]_0 [4]),
        .I3(\INSTR_reg[19]_0 [2]),
        .I4(\INSTR_PTR_reg[4] ),
        .I5(\INSTR_reg[19]_0 [3]),
        .O(\CURRENT_INSTR_PTR_reg[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \INSTR_PTR[5]_i_1 
       (.I0(\INSTR_PTR_reg[7] [5]),
        .I1(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I2(\INSTR_reg[19]_0 [5]),
        .I3(\INSTR_PTR_reg[5] ),
        .O(\CURRENT_INSTR_PTR_reg[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \INSTR_PTR[6]_i_1 
       (.I0(\INSTR_PTR_reg[7] [6]),
        .I1(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I2(\INSTR_reg[19]_0 [6]),
        .I3(\INSTR_PTR_reg[6] ),
        .O(\CURRENT_INSTR_PTR_reg[7] [6]));
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \INSTR_PTR[7]_i_1 
       (.I0(\INSTR_PTR_reg[7] [7]),
        .I1(\BUFFER_DI_EX[26]_i_2_n_0 ),
        .I2(\INSTR_reg[19]_0 [7]),
        .I3(\INSTR_PTR_reg[6] ),
        .I4(\INSTR_reg[19]_0 [6]),
        .O(\CURRENT_INSTR_PTR_reg[7] [7]));
  FDRE #(
    .INIT(1'b0)) 
    \INSTR_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\INSTR[16]_i_1_n_0 ),
        .Q(INSTR[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \INSTR_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\INSTR[19]_i_1_n_0 ),
        .Q(INSTR[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \INSTR_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(\INSTR[26]_i_1_n_0 ),
        .Q(INSTR[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \INSTR_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\INSTR[3]_i_1_n_0 ),
        .Q(INSTR[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \INSTR_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\INSTR[8]_i_1_n_0 ),
        .Q(INSTR[8]),
        .R(1'b0));
endmodule

module proc
   (D,
    \registers_reg[9][7] ,
    rst_IBUF,
    i,
    \aff_reg[4] ,
    \aff_reg[2] ,
    \aff_reg[5] ,
    \aff_reg[6] ,
    address_dg_IBUF,
    select_reg_mem_IBUF,
    CLK);
  output [7:0]D;
  output \registers_reg[9][7] ;
  input rst_IBUF;
  input [1:0]i;
  input \aff_reg[4] ;
  input \aff_reg[2] ;
  input \aff_reg[5] ;
  input \aff_reg[6] ;
  input [3:0]address_dg_IBUF;
  input select_reg_mem_IBUF;
  input CLK;

  wire ALU_AUX0_carry__0_i_1_n_0;
  wire ALU_AUX0_carry__0_i_2_n_0;
  wire ALU_AUX0_carry__0_i_3_n_0;
  wire ALU_AUX0_carry__0_i_4_n_0;
  wire ALU_UNIT_n_0;
  wire ALU_UNIT_n_1;
  wire ALU_UNIT_n_2;
  wire ALU_UNIT_n_3;
  wire ALU_UNIT_n_4;
  wire ALU_UNIT_n_5;
  wire ALU_UNIT_n_6;
  wire ALU_UNIT_n_7;
  wire [3:0]Address_W;
  wire BANC_REGISTRE_UNIT_n_0;
  wire BANC_REGISTRE_UNIT_n_17;
  wire BANC_REGISTRE_UNIT_n_18;
  wire BANC_REGISTRE_UNIT_n_19;
  wire BANC_REGISTRE_UNIT_n_20;
  wire BANC_REGISTRE_UNIT_n_21;
  wire BANC_REGISTRE_UNIT_n_22;
  wire BANC_REGISTRE_UNIT_n_23;
  wire BANC_REGISTRE_UNIT_n_24;
  wire \BUFFER_DI_EX[26]_i_3_n_0 ;
  wire \BUFFER_DI_EX_reg_n_0_[0] ;
  wire \BUFFER_DI_EX_reg_n_0_[1] ;
  wire \BUFFER_DI_EX_reg_n_0_[24] ;
  wire \BUFFER_DI_EX_reg_n_0_[26] ;
  wire \BUFFER_DI_EX_reg_n_0_[2] ;
  wire \BUFFER_DI_EX_reg_n_0_[3] ;
  wire \BUFFER_DI_EX_reg_n_0_[4] ;
  wire \BUFFER_DI_EX_reg_n_0_[5] ;
  wire \BUFFER_DI_EX_reg_n_0_[6] ;
  wire \BUFFER_DI_EX_reg_n_0_[7] ;
  wire \BUFFER_EX_MEM[24]_i_1_n_0 ;
  wire \BUFFER_EX_MEM[26]_i_1_n_0 ;
  wire \BUFFER_EX_MEM_reg_n_0_[10] ;
  wire \BUFFER_EX_MEM_reg_n_0_[11] ;
  wire \BUFFER_EX_MEM_reg_n_0_[12] ;
  wire \BUFFER_EX_MEM_reg_n_0_[13] ;
  wire \BUFFER_EX_MEM_reg_n_0_[14] ;
  wire \BUFFER_EX_MEM_reg_n_0_[15] ;
  wire \BUFFER_EX_MEM_reg_n_0_[16] ;
  wire \BUFFER_EX_MEM_reg_n_0_[19] ;
  wire \BUFFER_EX_MEM_reg_n_0_[8] ;
  wire \BUFFER_EX_MEM_reg_n_0_[9] ;
  wire \BUFFER_MEM_RE_reg_n_0_[24] ;
  wire \BUFFER_MEM_RE_reg_n_0_[26] ;
  wire CLK;
  wire [7:0]CURRENT_INSTR_PTR;
  wire CURRENT_INSTR_PTR_2;
  wire [7:0]D;
  wire [7:0]DATA;
  wire [7:0]INSTR_PTR;
  wire \INSTR_PTR[4]_i_2_n_0 ;
  wire \INSTR_PTR[5]_i_2_n_0 ;
  wire \INSTR_PTR[7]_i_2_n_0 ;
  wire MEMORY_INSTRUCTIONS_UNIT_n_20;
  wire MEMORY_INSTRUCTIONS_UNIT_n_21;
  wire MEMORY_INSTRUCTIONS_UNIT_n_22;
  wire [7:0]MUX_MEM_OP_OUT;
  wire [3:0]address_dg_IBUF;
  wire \aff_reg[2] ;
  wire \aff_reg[4] ;
  wire \aff_reg[5] ;
  wire \aff_reg[6] ;
  wire [19:16]get_A;
  wire [19:16]get_A1_in;
  wire [15:8]get_B;
  wire [25:24]get_OPCODE;
  wire [1:0]i;
  wire [2:0]p_0_in;
  wire [15:0]p_0_out;
  wire [7:0]p_1_in;
  wire [7:0]\registers_reg[0] ;
  wire [7:0]\registers_reg[9] ;
  wire \registers_reg[9]_7_sn_1 ;
  wire rst_IBUF;
  wire select_reg_mem_IBUF;

  assign \registers_reg[9][7]  = \registers_reg[9]_7_sn_1 ;
  LUT2 #(
    .INIT(4'h6)) 
    ALU_AUX0_carry__0_i_1
       (.I0(\BUFFER_DI_EX_reg_n_0_[7] ),
        .I1(get_B[15]),
        .O(ALU_AUX0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_AUX0_carry__0_i_2
       (.I0(get_B[14]),
        .I1(\BUFFER_DI_EX_reg_n_0_[6] ),
        .O(ALU_AUX0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_AUX0_carry__0_i_3
       (.I0(get_B[13]),
        .I1(\BUFFER_DI_EX_reg_n_0_[5] ),
        .O(ALU_AUX0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_AUX0_carry__0_i_4
       (.I0(get_B[12]),
        .I1(\BUFFER_DI_EX_reg_n_0_[4] ),
        .O(ALU_AUX0_carry__0_i_4_n_0));
  ALU_8BITS ALU_UNIT
       (.D({ALU_UNIT_n_0,ALU_UNIT_n_1,ALU_UNIT_n_2,ALU_UNIT_n_3,ALU_UNIT_n_4,ALU_UNIT_n_5,ALU_UNIT_n_6,ALU_UNIT_n_7}),
        .Q({\BUFFER_DI_EX_reg_n_0_[26] ,\BUFFER_DI_EX_reg_n_0_[24] ,get_B,\BUFFER_DI_EX_reg_n_0_[3] ,\BUFFER_DI_EX_reg_n_0_[2] ,\BUFFER_DI_EX_reg_n_0_[1] ,\BUFFER_DI_EX_reg_n_0_[0] }),
        .S({ALU_AUX0_carry__0_i_1_n_0,ALU_AUX0_carry__0_i_2_n_0,ALU_AUX0_carry__0_i_3_n_0,ALU_AUX0_carry__0_i_4_n_0}));
  banc_de_registres BANC_REGISTRE_UNIT
       (.\BUFFER_DI_EX_reg[15] (MEMORY_INSTRUCTIONS_UNIT_n_20),
        .CLK(CLK),
        .D(D),
        .Q({\BUFFER_MEM_RE_reg_n_0_[26] ,\BUFFER_MEM_RE_reg_n_0_[24] ,Address_W[3],Address_W[0],DATA}),
        .SR(BANC_REGISTRE_UNIT_n_24),
        .address_dg_IBUF(address_dg_IBUF),
        .\aff_reg[2] (\aff_reg[2] ),
        .\aff_reg[4] (\aff_reg[4] ),
        .\aff_reg[5] (\aff_reg[5] ),
        .\aff_reg[6] (\aff_reg[6] ),
        .get_OPCODE(get_OPCODE[24]),
        .i(i),
        .\registers_reg[0][7]_0 (\registers_reg[0] ),
        .\registers_reg[8][0]_0 (BANC_REGISTRE_UNIT_n_23),
        .\registers_reg[8][1]_0 (BANC_REGISTRE_UNIT_n_22),
        .\registers_reg[8][2]_0 (BANC_REGISTRE_UNIT_n_21),
        .\registers_reg[8][3]_0 (BANC_REGISTRE_UNIT_n_20),
        .\registers_reg[8][4]_0 (BANC_REGISTRE_UNIT_n_19),
        .\registers_reg[8][5]_0 (BANC_REGISTRE_UNIT_n_18),
        .\registers_reg[8][6]_0 (BANC_REGISTRE_UNIT_n_17),
        .\registers_reg[8][7]_0 (BANC_REGISTRE_UNIT_n_0),
        .\registers_reg[9][7]_0 (\registers_reg[9] ),
        .\registers_reg[9][7]_1 (\registers_reg[9]_7_sn_1 ),
        .rst_IBUF(rst_IBUF),
        .select_reg_mem_IBUF(select_reg_mem_IBUF));
  LUT6 #(
    .INIT(64'h0000005757575757)) 
    \BUFFER_DI_EX[26]_i_3 
       (.I0(MEMORY_INSTRUCTIONS_UNIT_n_22),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(\BUFFER_DI_EX_reg_n_0_[26] ),
        .I4(\BUFFER_DI_EX_reg_n_0_[24] ),
        .I5(MEMORY_INSTRUCTIONS_UNIT_n_21),
        .O(\BUFFER_DI_EX[26]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_DI_EX_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(\BUFFER_DI_EX_reg_n_0_[0] ),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_DI_EX_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[10]),
        .Q(get_B[10]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_DI_EX_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[11]),
        .Q(get_B[11]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_DI_EX_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[12]),
        .Q(get_B[12]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_DI_EX_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[13]),
        .Q(get_B[13]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_DI_EX_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[14]),
        .Q(get_B[14]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_DI_EX_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[15]),
        .Q(get_B[15]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_DI_EX_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(get_A[16]),
        .Q(get_A1_in[16]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_DI_EX_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(get_A[19]),
        .Q(get_A1_in[19]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_DI_EX_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(\BUFFER_DI_EX_reg_n_0_[1] ),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_DI_EX_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(get_OPCODE[24]),
        .Q(\BUFFER_DI_EX_reg_n_0_[24] ),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_DI_EX_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(get_OPCODE[25]),
        .Q(\BUFFER_DI_EX_reg_n_0_[26] ),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_DI_EX_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[2]),
        .Q(\BUFFER_DI_EX_reg_n_0_[2] ),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_DI_EX_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[3]),
        .Q(\BUFFER_DI_EX_reg_n_0_[3] ),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_DI_EX_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[4]),
        .Q(\BUFFER_DI_EX_reg_n_0_[4] ),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_DI_EX_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[5]),
        .Q(\BUFFER_DI_EX_reg_n_0_[5] ),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_DI_EX_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[6]),
        .Q(\BUFFER_DI_EX_reg_n_0_[6] ),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_DI_EX_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[7]),
        .Q(\BUFFER_DI_EX_reg_n_0_[7] ),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_DI_EX_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[8]),
        .Q(get_B[8]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_DI_EX_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[9]),
        .Q(get_B[9]),
        .R(BANC_REGISTRE_UNIT_n_24));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BUFFER_EX_MEM[24]_i_1 
       (.I0(rst_IBUF),
        .I1(\BUFFER_DI_EX_reg_n_0_[24] ),
        .O(\BUFFER_EX_MEM[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BUFFER_EX_MEM[26]_i_1 
       (.I0(rst_IBUF),
        .I1(\BUFFER_DI_EX_reg_n_0_[26] ),
        .O(\BUFFER_EX_MEM[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_EX_MEM_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(ALU_UNIT_n_5),
        .Q(\BUFFER_EX_MEM_reg_n_0_[10] ),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_EX_MEM_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(ALU_UNIT_n_4),
        .Q(\BUFFER_EX_MEM_reg_n_0_[11] ),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_EX_MEM_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(ALU_UNIT_n_3),
        .Q(\BUFFER_EX_MEM_reg_n_0_[12] ),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_EX_MEM_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(ALU_UNIT_n_2),
        .Q(\BUFFER_EX_MEM_reg_n_0_[13] ),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_EX_MEM_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(ALU_UNIT_n_1),
        .Q(\BUFFER_EX_MEM_reg_n_0_[14] ),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_EX_MEM_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(ALU_UNIT_n_0),
        .Q(\BUFFER_EX_MEM_reg_n_0_[15] ),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_EX_MEM_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(get_A1_in[16]),
        .Q(\BUFFER_EX_MEM_reg_n_0_[16] ),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_EX_MEM_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(get_A1_in[19]),
        .Q(\BUFFER_EX_MEM_reg_n_0_[19] ),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_EX_MEM_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(\BUFFER_EX_MEM[24]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_EX_MEM_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(\BUFFER_EX_MEM[26]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_EX_MEM_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(ALU_UNIT_n_7),
        .Q(\BUFFER_EX_MEM_reg_n_0_[8] ),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_EX_MEM_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(ALU_UNIT_n_6),
        .Q(\BUFFER_EX_MEM_reg_n_0_[9] ),
        .R(BANC_REGISTRE_UNIT_n_24));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \BUFFER_MEM_RE[10]_i_1 
       (.I0(\BUFFER_EX_MEM_reg_n_0_[10] ),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .O(MUX_MEM_OP_OUT[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \BUFFER_MEM_RE[11]_i_1 
       (.I0(\BUFFER_EX_MEM_reg_n_0_[11] ),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .O(MUX_MEM_OP_OUT[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \BUFFER_MEM_RE[12]_i_1 
       (.I0(\BUFFER_EX_MEM_reg_n_0_[12] ),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .O(MUX_MEM_OP_OUT[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \BUFFER_MEM_RE[13]_i_1 
       (.I0(\BUFFER_EX_MEM_reg_n_0_[13] ),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .O(MUX_MEM_OP_OUT[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \BUFFER_MEM_RE[14]_i_1 
       (.I0(\BUFFER_EX_MEM_reg_n_0_[14] ),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .O(MUX_MEM_OP_OUT[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \BUFFER_MEM_RE[15]_i_1 
       (.I0(\BUFFER_EX_MEM_reg_n_0_[15] ),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .O(MUX_MEM_OP_OUT[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \BUFFER_MEM_RE[8]_i_1 
       (.I0(\BUFFER_EX_MEM_reg_n_0_[8] ),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .O(MUX_MEM_OP_OUT[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \BUFFER_MEM_RE[9]_i_1 
       (.I0(\BUFFER_EX_MEM_reg_n_0_[9] ),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .O(MUX_MEM_OP_OUT[1]));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_MEM_RE_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(MUX_MEM_OP_OUT[2]),
        .Q(DATA[2]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_MEM_RE_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(MUX_MEM_OP_OUT[3]),
        .Q(DATA[3]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_MEM_RE_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(MUX_MEM_OP_OUT[4]),
        .Q(DATA[4]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_MEM_RE_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(MUX_MEM_OP_OUT[5]),
        .Q(DATA[5]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_MEM_RE_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(MUX_MEM_OP_OUT[6]),
        .Q(DATA[6]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_MEM_RE_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(MUX_MEM_OP_OUT[7]),
        .Q(DATA[7]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_MEM_RE_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\BUFFER_EX_MEM_reg_n_0_[16] ),
        .Q(Address_W[0]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_MEM_RE_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\BUFFER_EX_MEM_reg_n_0_[19] ),
        .Q(Address_W[3]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_MEM_RE_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\BUFFER_MEM_RE_reg_n_0_[24] ),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_MEM_RE_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\BUFFER_MEM_RE_reg_n_0_[26] ),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_MEM_RE_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(MUX_MEM_OP_OUT[0]),
        .Q(DATA[0]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \BUFFER_MEM_RE_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(MUX_MEM_OP_OUT[1]),
        .Q(DATA[1]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_INSTR_PTR_reg[0] 
       (.C(CLK),
        .CE(CURRENT_INSTR_PTR_2),
        .D(INSTR_PTR[0]),
        .Q(CURRENT_INSTR_PTR[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_INSTR_PTR_reg[1] 
       (.C(CLK),
        .CE(CURRENT_INSTR_PTR_2),
        .D(INSTR_PTR[1]),
        .Q(CURRENT_INSTR_PTR[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_INSTR_PTR_reg[2] 
       (.C(CLK),
        .CE(CURRENT_INSTR_PTR_2),
        .D(INSTR_PTR[2]),
        .Q(CURRENT_INSTR_PTR[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_INSTR_PTR_reg[3] 
       (.C(CLK),
        .CE(CURRENT_INSTR_PTR_2),
        .D(INSTR_PTR[3]),
        .Q(CURRENT_INSTR_PTR[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_INSTR_PTR_reg[4] 
       (.C(CLK),
        .CE(CURRENT_INSTR_PTR_2),
        .D(INSTR_PTR[4]),
        .Q(CURRENT_INSTR_PTR[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_INSTR_PTR_reg[5] 
       (.C(CLK),
        .CE(CURRENT_INSTR_PTR_2),
        .D(INSTR_PTR[5]),
        .Q(CURRENT_INSTR_PTR[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_INSTR_PTR_reg[6] 
       (.C(CLK),
        .CE(CURRENT_INSTR_PTR_2),
        .D(INSTR_PTR[6]),
        .Q(CURRENT_INSTR_PTR[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_INSTR_PTR_reg[7] 
       (.C(CLK),
        .CE(CURRENT_INSTR_PTR_2),
        .D(INSTR_PTR[7]),
        .Q(CURRENT_INSTR_PTR[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \INSTR_PTR[4]_i_2 
       (.I0(INSTR_PTR[0]),
        .I1(INSTR_PTR[1]),
        .O(\INSTR_PTR[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \INSTR_PTR[5]_i_2 
       (.I0(INSTR_PTR[4]),
        .I1(INSTR_PTR[2]),
        .I2(INSTR_PTR[1]),
        .I3(INSTR_PTR[0]),
        .I4(INSTR_PTR[3]),
        .O(\INSTR_PTR[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \INSTR_PTR[7]_i_2 
       (.I0(INSTR_PTR[5]),
        .I1(INSTR_PTR[3]),
        .I2(INSTR_PTR[0]),
        .I3(INSTR_PTR[1]),
        .I4(INSTR_PTR[2]),
        .I5(INSTR_PTR[4]),
        .O(\INSTR_PTR[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \INSTR_PTR_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(INSTR_PTR[0]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \INSTR_PTR_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(INSTR_PTR[1]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \INSTR_PTR_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(INSTR_PTR[2]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \INSTR_PTR_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(INSTR_PTR[3]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \INSTR_PTR_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(INSTR_PTR[4]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \INSTR_PTR_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(INSTR_PTR[5]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \INSTR_PTR_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(INSTR_PTR[6]),
        .R(BANC_REGISTRE_UNIT_n_24));
  FDRE #(
    .INIT(1'b0)) 
    \INSTR_PTR_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(INSTR_PTR[7]),
        .R(BANC_REGISTRE_UNIT_n_24));
  memoire_instructions MEMORY_INSTRUCTIONS_UNIT
       (.\BUFFER_DI_EX[26]_i_3 ({get_A1_in[19],get_A1_in[16]}),
        .\BUFFER_DI_EX[26]_i_3_0 ({\BUFFER_EX_MEM_reg_n_0_[19] ,\BUFFER_EX_MEM_reg_n_0_[16] }),
        .\BUFFER_DI_EX_reg[10] (BANC_REGISTRE_UNIT_n_21),
        .\BUFFER_DI_EX_reg[11] (BANC_REGISTRE_UNIT_n_20),
        .\BUFFER_DI_EX_reg[12] (BANC_REGISTRE_UNIT_n_19),
        .\BUFFER_DI_EX_reg[13] (BANC_REGISTRE_UNIT_n_18),
        .\BUFFER_DI_EX_reg[14] (BANC_REGISTRE_UNIT_n_17),
        .\BUFFER_DI_EX_reg[15] (BANC_REGISTRE_UNIT_n_0),
        .\BUFFER_DI_EX_reg[7] (\registers_reg[9] ),
        .\BUFFER_DI_EX_reg[7]_0 (\registers_reg[0] ),
        .\BUFFER_DI_EX_reg[8] (BANC_REGISTRE_UNIT_n_23),
        .\BUFFER_DI_EX_reg[9] (BANC_REGISTRE_UNIT_n_22),
        .CLK(CLK),
        .\CURRENT_INSTR_PTR_reg[7] (p_1_in),
        .D({get_OPCODE,get_A[19],get_A[16],p_0_out}),
        .E(CURRENT_INSTR_PTR_2),
        .\INSTR_PTR_reg[0] (\BUFFER_DI_EX[26]_i_3_n_0 ),
        .\INSTR_PTR_reg[4] (\INSTR_PTR[4]_i_2_n_0 ),
        .\INSTR_PTR_reg[5] (\INSTR_PTR[5]_i_2_n_0 ),
        .\INSTR_PTR_reg[6] (\INSTR_PTR[7]_i_2_n_0 ),
        .\INSTR_PTR_reg[7] (CURRENT_INSTR_PTR),
        .\INSTR_reg[19]_0 (INSTR_PTR),
        .\INSTR_reg[8]_0 (MEMORY_INSTRUCTIONS_UNIT_n_20),
        .\INSTR_reg[8]_1 (MEMORY_INSTRUCTIONS_UNIT_n_21),
        .\INSTR_reg[8]_2 (MEMORY_INSTRUCTIONS_UNIT_n_22),
        .Q({\BUFFER_MEM_RE_reg_n_0_[26] ,\BUFFER_MEM_RE_reg_n_0_[24] ,Address_W[3],Address_W[0],DATA}),
        .rst_IBUF(rst_IBUF));
endmodule

(* NotValidForBitStream *)
module test_proc
   (clk,
    rst,
    address_dg,
    select_reg_mem,
    aff);
  input clk;
  input rst;
  input [7:0]address_dg;
  input select_reg_mem;
  output [11:0]aff;

  wire DISPLAY_n_2;
  wire DISPLAY_n_3;
  wire DISPLAY_n_4;
  wire DISPLAY_n_5;
  wire \GENERATE_CLK_10KHz.i[0]_i_1_n_0 ;
  wire \GENERATE_CLK_10KHz.i[0]_i_3_n_0 ;
  wire \GENERATE_CLK_10KHz.i[0]_i_4_n_0 ;
  wire \GENERATE_CLK_10KHz.i[0]_i_5_n_0 ;
  wire \GENERATE_CLK_10KHz.i[0]_i_6_n_0 ;
  wire \GENERATE_CLK_10KHz.i[0]_i_7_n_0 ;
  wire \GENERATE_CLK_10KHz.i[0]_i_8_n_0 ;
  wire \GENERATE_CLK_10KHz.i[0]_i_9_n_0 ;
  wire [31:0]\GENERATE_CLK_10KHz.i_reg ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_10_n_0 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_10_n_1 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_10_n_2 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_10_n_3 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_10_n_4 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_10_n_5 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_10_n_6 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_10_n_7 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_11_n_0 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_11_n_1 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_11_n_2 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_11_n_3 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_11_n_4 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_11_n_5 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_11_n_6 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_11_n_7 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_12_n_2 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_12_n_3 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_12_n_5 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_12_n_6 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_12_n_7 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_13_n_0 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_13_n_1 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_13_n_2 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_13_n_3 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_13_n_4 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_13_n_5 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_13_n_6 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_13_n_7 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_14_n_0 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_14_n_1 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_14_n_2 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_14_n_3 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_14_n_4 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_14_n_5 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_14_n_6 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_14_n_7 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_15_n_0 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_15_n_1 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_15_n_2 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_15_n_3 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_15_n_4 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_15_n_5 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_15_n_6 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_15_n_7 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_16_n_0 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_16_n_1 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_16_n_2 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_16_n_3 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_16_n_4 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_16_n_5 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_16_n_6 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_16_n_7 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_17_n_0 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_17_n_1 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_17_n_2 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_17_n_3 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_17_n_4 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_17_n_5 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_17_n_6 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_17_n_7 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_2_n_0 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_2_n_1 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_2_n_2 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_2_n_3 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_2_n_4 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_2_n_5 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_2_n_6 ;
  wire \GENERATE_CLK_10KHz.i_reg[0]_i_2_n_7 ;
  wire \GENERATE_CLK_10KHz.i_reg[12]_i_1_n_0 ;
  wire \GENERATE_CLK_10KHz.i_reg[12]_i_1_n_1 ;
  wire \GENERATE_CLK_10KHz.i_reg[12]_i_1_n_2 ;
  wire \GENERATE_CLK_10KHz.i_reg[12]_i_1_n_3 ;
  wire \GENERATE_CLK_10KHz.i_reg[12]_i_1_n_4 ;
  wire \GENERATE_CLK_10KHz.i_reg[12]_i_1_n_5 ;
  wire \GENERATE_CLK_10KHz.i_reg[12]_i_1_n_6 ;
  wire \GENERATE_CLK_10KHz.i_reg[12]_i_1_n_7 ;
  wire \GENERATE_CLK_10KHz.i_reg[16]_i_1_n_0 ;
  wire \GENERATE_CLK_10KHz.i_reg[16]_i_1_n_1 ;
  wire \GENERATE_CLK_10KHz.i_reg[16]_i_1_n_2 ;
  wire \GENERATE_CLK_10KHz.i_reg[16]_i_1_n_3 ;
  wire \GENERATE_CLK_10KHz.i_reg[16]_i_1_n_4 ;
  wire \GENERATE_CLK_10KHz.i_reg[16]_i_1_n_5 ;
  wire \GENERATE_CLK_10KHz.i_reg[16]_i_1_n_6 ;
  wire \GENERATE_CLK_10KHz.i_reg[16]_i_1_n_7 ;
  wire \GENERATE_CLK_10KHz.i_reg[20]_i_1_n_0 ;
  wire \GENERATE_CLK_10KHz.i_reg[20]_i_1_n_1 ;
  wire \GENERATE_CLK_10KHz.i_reg[20]_i_1_n_2 ;
  wire \GENERATE_CLK_10KHz.i_reg[20]_i_1_n_3 ;
  wire \GENERATE_CLK_10KHz.i_reg[20]_i_1_n_4 ;
  wire \GENERATE_CLK_10KHz.i_reg[20]_i_1_n_5 ;
  wire \GENERATE_CLK_10KHz.i_reg[20]_i_1_n_6 ;
  wire \GENERATE_CLK_10KHz.i_reg[20]_i_1_n_7 ;
  wire \GENERATE_CLK_10KHz.i_reg[24]_i_1_n_0 ;
  wire \GENERATE_CLK_10KHz.i_reg[24]_i_1_n_1 ;
  wire \GENERATE_CLK_10KHz.i_reg[24]_i_1_n_2 ;
  wire \GENERATE_CLK_10KHz.i_reg[24]_i_1_n_3 ;
  wire \GENERATE_CLK_10KHz.i_reg[24]_i_1_n_4 ;
  wire \GENERATE_CLK_10KHz.i_reg[24]_i_1_n_5 ;
  wire \GENERATE_CLK_10KHz.i_reg[24]_i_1_n_6 ;
  wire \GENERATE_CLK_10KHz.i_reg[24]_i_1_n_7 ;
  wire \GENERATE_CLK_10KHz.i_reg[28]_i_1_n_1 ;
  wire \GENERATE_CLK_10KHz.i_reg[28]_i_1_n_2 ;
  wire \GENERATE_CLK_10KHz.i_reg[28]_i_1_n_3 ;
  wire \GENERATE_CLK_10KHz.i_reg[28]_i_1_n_4 ;
  wire \GENERATE_CLK_10KHz.i_reg[28]_i_1_n_5 ;
  wire \GENERATE_CLK_10KHz.i_reg[28]_i_1_n_6 ;
  wire \GENERATE_CLK_10KHz.i_reg[28]_i_1_n_7 ;
  wire \GENERATE_CLK_10KHz.i_reg[4]_i_1_n_0 ;
  wire \GENERATE_CLK_10KHz.i_reg[4]_i_1_n_1 ;
  wire \GENERATE_CLK_10KHz.i_reg[4]_i_1_n_2 ;
  wire \GENERATE_CLK_10KHz.i_reg[4]_i_1_n_3 ;
  wire \GENERATE_CLK_10KHz.i_reg[4]_i_1_n_4 ;
  wire \GENERATE_CLK_10KHz.i_reg[4]_i_1_n_5 ;
  wire \GENERATE_CLK_10KHz.i_reg[4]_i_1_n_6 ;
  wire \GENERATE_CLK_10KHz.i_reg[4]_i_1_n_7 ;
  wire \GENERATE_CLK_10KHz.i_reg[8]_i_1_n_0 ;
  wire \GENERATE_CLK_10KHz.i_reg[8]_i_1_n_1 ;
  wire \GENERATE_CLK_10KHz.i_reg[8]_i_1_n_2 ;
  wire \GENERATE_CLK_10KHz.i_reg[8]_i_1_n_3 ;
  wire \GENERATE_CLK_10KHz.i_reg[8]_i_1_n_4 ;
  wire \GENERATE_CLK_10KHz.i_reg[8]_i_1_n_5 ;
  wire \GENERATE_CLK_10KHz.i_reg[8]_i_1_n_6 ;
  wire \GENERATE_CLK_10KHz.i_reg[8]_i_1_n_7 ;
  wire PROCESSOR_n_0;
  wire PROCESSOR_n_1;
  wire PROCESSOR_n_2;
  wire PROCESSOR_n_3;
  wire PROCESSOR_n_4;
  wire PROCESSOR_n_5;
  wire PROCESSOR_n_6;
  wire PROCESSOR_n_7;
  wire PROCESSOR_n_8;
  wire [7:0]address_dg;
  wire [3:0]address_dg_IBUF;
  wire [11:0]aff;
  wire [11:0]aff_OBUF;
  wire clk;
  wire clk_10Hz_i_11_n_0;
  wire clk_10Hz_i_12_n_0;
  wire clk_10Hz_i_13_n_0;
  wire clk_10Hz_i_14_n_0;
  wire clk_10Hz_i_15_n_0;
  wire clk_10Hz_i_16_n_0;
  wire clk_10Hz_i_17_n_0;
  wire clk_10Hz_i_18_n_0;
  wire clk_10Hz_i_19_n_0;
  wire clk_10Hz_i_20_n_0;
  wire clk_10Hz_i_21_n_0;
  wire clk_10Hz_i_22_n_0;
  wire clk_10Hz_i_23_n_0;
  wire clk_10Hz_i_3_n_0;
  wire clk_10Hz_i_5_n_0;
  wire clk_10Hz_i_6_n_0;
  wire clk_10Hz_i_7_n_0;
  wire clk_10Hz_i_8_n_0;
  wire clk_10Hz_i_9_n_0;
  wire clk_10Hz_reg_i_10_n_0;
  wire clk_10Hz_reg_i_10_n_1;
  wire clk_10Hz_reg_i_10_n_2;
  wire clk_10Hz_reg_i_10_n_3;
  wire clk_10Hz_reg_i_1_n_3;
  wire clk_10Hz_reg_i_1_n_6;
  wire clk_10Hz_reg_i_2_n_0;
  wire clk_10Hz_reg_i_2_n_1;
  wire clk_10Hz_reg_i_2_n_2;
  wire clk_10Hz_reg_i_2_n_3;
  wire clk_10Hz_reg_i_4_n_0;
  wire clk_10Hz_reg_i_4_n_1;
  wire clk_10Hz_reg_i_4_n_2;
  wire clk_10Hz_reg_i_4_n_3;
  wire clk_10Hz_reg_n_0_BUFG;
  wire clk_10Hz_reg_n_0_BUFG_inst_n_0;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [1:0]i;
  wire rst;
  wire rst_IBUF;
  wire select_reg_mem;
  wire select_reg_mem_IBUF;
  wire [3:2]\NLW_GENERATE_CLK_10KHz.i_reg[0]_i_12_CO_UNCONNECTED ;
  wire [3:3]\NLW_GENERATE_CLK_10KHz.i_reg[0]_i_12_O_UNCONNECTED ;
  wire [3:3]\NLW_GENERATE_CLK_10KHz.i_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:1]NLW_clk_10Hz_reg_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_clk_10Hz_reg_i_1_O_UNCONNECTED;
  wire [3:0]NLW_clk_10Hz_reg_i_10_O_UNCONNECTED;
  wire [3:0]NLW_clk_10Hz_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_clk_10Hz_reg_i_4_O_UNCONNECTED;

  afficheur_7Seg DISPLAY
       (.D({PROCESSOR_n_0,PROCESSOR_n_1,PROCESSOR_n_2,PROCESSOR_n_3,PROCESSOR_n_4,PROCESSOR_n_5,PROCESSOR_n_6,PROCESSOR_n_7}),
        .\FSM_sequential_i_reg[0]_0 (DISPLAY_n_2),
        .\FSM_sequential_i_reg[0]_1 (DISPLAY_n_3),
        .\FSM_sequential_i_reg[1]_0 (DISPLAY_n_5),
        .Q(aff_OBUF),
        .\address_dg[2] (DISPLAY_n_4),
        .address_dg_IBUF(address_dg_IBUF[2:1]),
        .\aff_reg[5]_0 (PROCESSOR_n_8),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i(i),
        .select_reg_mem_IBUF(select_reg_mem_IBUF));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \GENERATE_CLK_10KHz.i[0]_i_1 
       (.I0(\GENERATE_CLK_10KHz.i[0]_i_3_n_0 ),
        .I1(\GENERATE_CLK_10KHz.i[0]_i_4_n_0 ),
        .I2(\GENERATE_CLK_10KHz.i[0]_i_5_n_0 ),
        .I3(\GENERATE_CLK_10KHz.i[0]_i_6_n_0 ),
        .I4(\GENERATE_CLK_10KHz.i[0]_i_7_n_0 ),
        .I5(\GENERATE_CLK_10KHz.i[0]_i_8_n_0 ),
        .O(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \GENERATE_CLK_10KHz.i[0]_i_3 
       (.I0(\GENERATE_CLK_10KHz.i_reg[0]_i_10_n_4 ),
        .I1(\GENERATE_CLK_10KHz.i_reg[0]_i_11_n_7 ),
        .I2(\GENERATE_CLK_10KHz.i_reg[0]_i_11_n_6 ),
        .I3(\GENERATE_CLK_10KHz.i_reg[0]_i_11_n_5 ),
        .I4(\GENERATE_CLK_10KHz.i_reg[0]_i_11_n_4 ),
        .I5(\GENERATE_CLK_10KHz.i_reg[0]_i_12_n_7 ),
        .O(\GENERATE_CLK_10KHz.i[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFFFF)) 
    \GENERATE_CLK_10KHz.i[0]_i_4 
       (.I0(\GENERATE_CLK_10KHz.i_reg[0]_i_13_n_6 ),
        .I1(\GENERATE_CLK_10KHz.i_reg[0]_i_13_n_5 ),
        .I2(\GENERATE_CLK_10KHz.i_reg[0]_i_13_n_4 ),
        .I3(\GENERATE_CLK_10KHz.i_reg[0]_i_14_n_6 ),
        .I4(\GENERATE_CLK_10KHz.i_reg[0]_i_14_n_5 ),
        .I5(\GENERATE_CLK_10KHz.i_reg[0]_i_14_n_7 ),
        .O(\GENERATE_CLK_10KHz.i[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBFFFFF)) 
    \GENERATE_CLK_10KHz.i[0]_i_5 
       (.I0(\GENERATE_CLK_10KHz.i_reg[0]_i_15_n_6 ),
        .I1(\GENERATE_CLK_10KHz.i_reg[0]_i_15_n_5 ),
        .I2(\GENERATE_CLK_10KHz.i_reg[0]_i_15_n_4 ),
        .I3(\GENERATE_CLK_10KHz.i_reg[0]_i_10_n_7 ),
        .I4(\GENERATE_CLK_10KHz.i_reg[0]_i_10_n_5 ),
        .I5(\GENERATE_CLK_10KHz.i_reg[0]_i_10_n_6 ),
        .O(\GENERATE_CLK_10KHz.i[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFFF)) 
    \GENERATE_CLK_10KHz.i[0]_i_6 
       (.I0(\GENERATE_CLK_10KHz.i_reg[0]_i_16_n_7 ),
        .I1(\GENERATE_CLK_10KHz.i_reg[0]_i_16_n_6 ),
        .I2(\GENERATE_CLK_10KHz.i_reg[0]_i_14_n_4 ),
        .I3(\GENERATE_CLK_10KHz.i_reg[0]_i_16_n_4 ),
        .I4(\GENERATE_CLK_10KHz.i_reg[0]_i_15_n_7 ),
        .I5(\GENERATE_CLK_10KHz.i_reg[0]_i_16_n_5 ),
        .O(\GENERATE_CLK_10KHz.i[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \GENERATE_CLK_10KHz.i[0]_i_7 
       (.I0(\GENERATE_CLK_10KHz.i_reg[0]_i_12_n_6 ),
        .I1(\GENERATE_CLK_10KHz.i_reg[0]_i_12_n_5 ),
        .O(\GENERATE_CLK_10KHz.i[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \GENERATE_CLK_10KHz.i[0]_i_8 
       (.I0(\GENERATE_CLK_10KHz.i_reg[0]_i_17_n_7 ),
        .I1(\GENERATE_CLK_10KHz.i_reg[0]_i_17_n_6 ),
        .I2(\GENERATE_CLK_10KHz.i_reg [0]),
        .I3(\GENERATE_CLK_10KHz.i_reg[0]_i_17_n_5 ),
        .I4(\GENERATE_CLK_10KHz.i_reg[0]_i_17_n_4 ),
        .I5(\GENERATE_CLK_10KHz.i_reg[0]_i_13_n_7 ),
        .O(\GENERATE_CLK_10KHz.i[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \GENERATE_CLK_10KHz.i[0]_i_9 
       (.I0(\GENERATE_CLK_10KHz.i_reg [0]),
        .O(\GENERATE_CLK_10KHz.i[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[0]_i_2_n_7 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [0]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \GENERATE_CLK_10KHz.i_reg[0]_i_10 
       (.CI(\GENERATE_CLK_10KHz.i_reg[0]_i_15_n_0 ),
        .CO({\GENERATE_CLK_10KHz.i_reg[0]_i_10_n_0 ,\GENERATE_CLK_10KHz.i_reg[0]_i_10_n_1 ,\GENERATE_CLK_10KHz.i_reg[0]_i_10_n_2 ,\GENERATE_CLK_10KHz.i_reg[0]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_CLK_10KHz.i_reg[0]_i_10_n_4 ,\GENERATE_CLK_10KHz.i_reg[0]_i_10_n_5 ,\GENERATE_CLK_10KHz.i_reg[0]_i_10_n_6 ,\GENERATE_CLK_10KHz.i_reg[0]_i_10_n_7 }),
        .S(\GENERATE_CLK_10KHz.i_reg [24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \GENERATE_CLK_10KHz.i_reg[0]_i_11 
       (.CI(\GENERATE_CLK_10KHz.i_reg[0]_i_10_n_0 ),
        .CO({\GENERATE_CLK_10KHz.i_reg[0]_i_11_n_0 ,\GENERATE_CLK_10KHz.i_reg[0]_i_11_n_1 ,\GENERATE_CLK_10KHz.i_reg[0]_i_11_n_2 ,\GENERATE_CLK_10KHz.i_reg[0]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_CLK_10KHz.i_reg[0]_i_11_n_4 ,\GENERATE_CLK_10KHz.i_reg[0]_i_11_n_5 ,\GENERATE_CLK_10KHz.i_reg[0]_i_11_n_6 ,\GENERATE_CLK_10KHz.i_reg[0]_i_11_n_7 }),
        .S(\GENERATE_CLK_10KHz.i_reg [28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \GENERATE_CLK_10KHz.i_reg[0]_i_12 
       (.CI(\GENERATE_CLK_10KHz.i_reg[0]_i_11_n_0 ),
        .CO({\NLW_GENERATE_CLK_10KHz.i_reg[0]_i_12_CO_UNCONNECTED [3:2],\GENERATE_CLK_10KHz.i_reg[0]_i_12_n_2 ,\GENERATE_CLK_10KHz.i_reg[0]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_GENERATE_CLK_10KHz.i_reg[0]_i_12_O_UNCONNECTED [3],\GENERATE_CLK_10KHz.i_reg[0]_i_12_n_5 ,\GENERATE_CLK_10KHz.i_reg[0]_i_12_n_6 ,\GENERATE_CLK_10KHz.i_reg[0]_i_12_n_7 }),
        .S({1'b0,\GENERATE_CLK_10KHz.i_reg [31:29]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \GENERATE_CLK_10KHz.i_reg[0]_i_13 
       (.CI(\GENERATE_CLK_10KHz.i_reg[0]_i_17_n_0 ),
        .CO({\GENERATE_CLK_10KHz.i_reg[0]_i_13_n_0 ,\GENERATE_CLK_10KHz.i_reg[0]_i_13_n_1 ,\GENERATE_CLK_10KHz.i_reg[0]_i_13_n_2 ,\GENERATE_CLK_10KHz.i_reg[0]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_CLK_10KHz.i_reg[0]_i_13_n_4 ,\GENERATE_CLK_10KHz.i_reg[0]_i_13_n_5 ,\GENERATE_CLK_10KHz.i_reg[0]_i_13_n_6 ,\GENERATE_CLK_10KHz.i_reg[0]_i_13_n_7 }),
        .S(\GENERATE_CLK_10KHz.i_reg [8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \GENERATE_CLK_10KHz.i_reg[0]_i_14 
       (.CI(\GENERATE_CLK_10KHz.i_reg[0]_i_13_n_0 ),
        .CO({\GENERATE_CLK_10KHz.i_reg[0]_i_14_n_0 ,\GENERATE_CLK_10KHz.i_reg[0]_i_14_n_1 ,\GENERATE_CLK_10KHz.i_reg[0]_i_14_n_2 ,\GENERATE_CLK_10KHz.i_reg[0]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_CLK_10KHz.i_reg[0]_i_14_n_4 ,\GENERATE_CLK_10KHz.i_reg[0]_i_14_n_5 ,\GENERATE_CLK_10KHz.i_reg[0]_i_14_n_6 ,\GENERATE_CLK_10KHz.i_reg[0]_i_14_n_7 }),
        .S(\GENERATE_CLK_10KHz.i_reg [12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \GENERATE_CLK_10KHz.i_reg[0]_i_15 
       (.CI(\GENERATE_CLK_10KHz.i_reg[0]_i_16_n_0 ),
        .CO({\GENERATE_CLK_10KHz.i_reg[0]_i_15_n_0 ,\GENERATE_CLK_10KHz.i_reg[0]_i_15_n_1 ,\GENERATE_CLK_10KHz.i_reg[0]_i_15_n_2 ,\GENERATE_CLK_10KHz.i_reg[0]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_CLK_10KHz.i_reg[0]_i_15_n_4 ,\GENERATE_CLK_10KHz.i_reg[0]_i_15_n_5 ,\GENERATE_CLK_10KHz.i_reg[0]_i_15_n_6 ,\GENERATE_CLK_10KHz.i_reg[0]_i_15_n_7 }),
        .S(\GENERATE_CLK_10KHz.i_reg [20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \GENERATE_CLK_10KHz.i_reg[0]_i_16 
       (.CI(\GENERATE_CLK_10KHz.i_reg[0]_i_14_n_0 ),
        .CO({\GENERATE_CLK_10KHz.i_reg[0]_i_16_n_0 ,\GENERATE_CLK_10KHz.i_reg[0]_i_16_n_1 ,\GENERATE_CLK_10KHz.i_reg[0]_i_16_n_2 ,\GENERATE_CLK_10KHz.i_reg[0]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_CLK_10KHz.i_reg[0]_i_16_n_4 ,\GENERATE_CLK_10KHz.i_reg[0]_i_16_n_5 ,\GENERATE_CLK_10KHz.i_reg[0]_i_16_n_6 ,\GENERATE_CLK_10KHz.i_reg[0]_i_16_n_7 }),
        .S(\GENERATE_CLK_10KHz.i_reg [16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \GENERATE_CLK_10KHz.i_reg[0]_i_17 
       (.CI(1'b0),
        .CO({\GENERATE_CLK_10KHz.i_reg[0]_i_17_n_0 ,\GENERATE_CLK_10KHz.i_reg[0]_i_17_n_1 ,\GENERATE_CLK_10KHz.i_reg[0]_i_17_n_2 ,\GENERATE_CLK_10KHz.i_reg[0]_i_17_n_3 }),
        .CYINIT(\GENERATE_CLK_10KHz.i_reg [0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_CLK_10KHz.i_reg[0]_i_17_n_4 ,\GENERATE_CLK_10KHz.i_reg[0]_i_17_n_5 ,\GENERATE_CLK_10KHz.i_reg[0]_i_17_n_6 ,\GENERATE_CLK_10KHz.i_reg[0]_i_17_n_7 }),
        .S(\GENERATE_CLK_10KHz.i_reg [4:1]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \GENERATE_CLK_10KHz.i_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\GENERATE_CLK_10KHz.i_reg[0]_i_2_n_0 ,\GENERATE_CLK_10KHz.i_reg[0]_i_2_n_1 ,\GENERATE_CLK_10KHz.i_reg[0]_i_2_n_2 ,\GENERATE_CLK_10KHz.i_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\GENERATE_CLK_10KHz.i_reg[0]_i_2_n_4 ,\GENERATE_CLK_10KHz.i_reg[0]_i_2_n_5 ,\GENERATE_CLK_10KHz.i_reg[0]_i_2_n_6 ,\GENERATE_CLK_10KHz.i_reg[0]_i_2_n_7 }),
        .S({\GENERATE_CLK_10KHz.i_reg [3:1],\GENERATE_CLK_10KHz.i[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[8]_i_1_n_5 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [10]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[8]_i_1_n_4 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [11]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[12]_i_1_n_7 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [12]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \GENERATE_CLK_10KHz.i_reg[12]_i_1 
       (.CI(\GENERATE_CLK_10KHz.i_reg[8]_i_1_n_0 ),
        .CO({\GENERATE_CLK_10KHz.i_reg[12]_i_1_n_0 ,\GENERATE_CLK_10KHz.i_reg[12]_i_1_n_1 ,\GENERATE_CLK_10KHz.i_reg[12]_i_1_n_2 ,\GENERATE_CLK_10KHz.i_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_CLK_10KHz.i_reg[12]_i_1_n_4 ,\GENERATE_CLK_10KHz.i_reg[12]_i_1_n_5 ,\GENERATE_CLK_10KHz.i_reg[12]_i_1_n_6 ,\GENERATE_CLK_10KHz.i_reg[12]_i_1_n_7 }),
        .S(\GENERATE_CLK_10KHz.i_reg [15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[12]_i_1_n_6 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [13]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[12]_i_1_n_5 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [14]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[12]_i_1_n_4 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [15]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[16]_i_1_n_7 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [16]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \GENERATE_CLK_10KHz.i_reg[16]_i_1 
       (.CI(\GENERATE_CLK_10KHz.i_reg[12]_i_1_n_0 ),
        .CO({\GENERATE_CLK_10KHz.i_reg[16]_i_1_n_0 ,\GENERATE_CLK_10KHz.i_reg[16]_i_1_n_1 ,\GENERATE_CLK_10KHz.i_reg[16]_i_1_n_2 ,\GENERATE_CLK_10KHz.i_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_CLK_10KHz.i_reg[16]_i_1_n_4 ,\GENERATE_CLK_10KHz.i_reg[16]_i_1_n_5 ,\GENERATE_CLK_10KHz.i_reg[16]_i_1_n_6 ,\GENERATE_CLK_10KHz.i_reg[16]_i_1_n_7 }),
        .S(\GENERATE_CLK_10KHz.i_reg [19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[16]_i_1_n_6 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [17]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[16]_i_1_n_5 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [18]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[16]_i_1_n_4 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [19]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[0]_i_2_n_6 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [1]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[20]_i_1_n_7 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [20]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \GENERATE_CLK_10KHz.i_reg[20]_i_1 
       (.CI(\GENERATE_CLK_10KHz.i_reg[16]_i_1_n_0 ),
        .CO({\GENERATE_CLK_10KHz.i_reg[20]_i_1_n_0 ,\GENERATE_CLK_10KHz.i_reg[20]_i_1_n_1 ,\GENERATE_CLK_10KHz.i_reg[20]_i_1_n_2 ,\GENERATE_CLK_10KHz.i_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_CLK_10KHz.i_reg[20]_i_1_n_4 ,\GENERATE_CLK_10KHz.i_reg[20]_i_1_n_5 ,\GENERATE_CLK_10KHz.i_reg[20]_i_1_n_6 ,\GENERATE_CLK_10KHz.i_reg[20]_i_1_n_7 }),
        .S(\GENERATE_CLK_10KHz.i_reg [23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[20]_i_1_n_6 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [21]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[20]_i_1_n_5 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [22]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[20]_i_1_n_4 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [23]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[24]_i_1_n_7 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [24]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \GENERATE_CLK_10KHz.i_reg[24]_i_1 
       (.CI(\GENERATE_CLK_10KHz.i_reg[20]_i_1_n_0 ),
        .CO({\GENERATE_CLK_10KHz.i_reg[24]_i_1_n_0 ,\GENERATE_CLK_10KHz.i_reg[24]_i_1_n_1 ,\GENERATE_CLK_10KHz.i_reg[24]_i_1_n_2 ,\GENERATE_CLK_10KHz.i_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_CLK_10KHz.i_reg[24]_i_1_n_4 ,\GENERATE_CLK_10KHz.i_reg[24]_i_1_n_5 ,\GENERATE_CLK_10KHz.i_reg[24]_i_1_n_6 ,\GENERATE_CLK_10KHz.i_reg[24]_i_1_n_7 }),
        .S(\GENERATE_CLK_10KHz.i_reg [27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[24]_i_1_n_6 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [25]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[24]_i_1_n_5 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [26]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[24]_i_1_n_4 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [27]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[28]_i_1_n_7 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [28]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \GENERATE_CLK_10KHz.i_reg[28]_i_1 
       (.CI(\GENERATE_CLK_10KHz.i_reg[24]_i_1_n_0 ),
        .CO({\NLW_GENERATE_CLK_10KHz.i_reg[28]_i_1_CO_UNCONNECTED [3],\GENERATE_CLK_10KHz.i_reg[28]_i_1_n_1 ,\GENERATE_CLK_10KHz.i_reg[28]_i_1_n_2 ,\GENERATE_CLK_10KHz.i_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_CLK_10KHz.i_reg[28]_i_1_n_4 ,\GENERATE_CLK_10KHz.i_reg[28]_i_1_n_5 ,\GENERATE_CLK_10KHz.i_reg[28]_i_1_n_6 ,\GENERATE_CLK_10KHz.i_reg[28]_i_1_n_7 }),
        .S(\GENERATE_CLK_10KHz.i_reg [31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[28]_i_1_n_6 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [29]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[0]_i_2_n_5 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [2]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[28]_i_1_n_5 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [30]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[28]_i_1_n_4 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [31]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[0]_i_2_n_4 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [3]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[4]_i_1_n_7 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [4]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \GENERATE_CLK_10KHz.i_reg[4]_i_1 
       (.CI(\GENERATE_CLK_10KHz.i_reg[0]_i_2_n_0 ),
        .CO({\GENERATE_CLK_10KHz.i_reg[4]_i_1_n_0 ,\GENERATE_CLK_10KHz.i_reg[4]_i_1_n_1 ,\GENERATE_CLK_10KHz.i_reg[4]_i_1_n_2 ,\GENERATE_CLK_10KHz.i_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_CLK_10KHz.i_reg[4]_i_1_n_4 ,\GENERATE_CLK_10KHz.i_reg[4]_i_1_n_5 ,\GENERATE_CLK_10KHz.i_reg[4]_i_1_n_6 ,\GENERATE_CLK_10KHz.i_reg[4]_i_1_n_7 }),
        .S(\GENERATE_CLK_10KHz.i_reg [7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[4]_i_1_n_6 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [5]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[4]_i_1_n_5 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [6]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[4]_i_1_n_4 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [7]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[8]_i_1_n_7 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [8]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \GENERATE_CLK_10KHz.i_reg[8]_i_1 
       (.CI(\GENERATE_CLK_10KHz.i_reg[4]_i_1_n_0 ),
        .CO({\GENERATE_CLK_10KHz.i_reg[8]_i_1_n_0 ,\GENERATE_CLK_10KHz.i_reg[8]_i_1_n_1 ,\GENERATE_CLK_10KHz.i_reg[8]_i_1_n_2 ,\GENERATE_CLK_10KHz.i_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GENERATE_CLK_10KHz.i_reg[8]_i_1_n_4 ,\GENERATE_CLK_10KHz.i_reg[8]_i_1_n_5 ,\GENERATE_CLK_10KHz.i_reg[8]_i_1_n_6 ,\GENERATE_CLK_10KHz.i_reg[8]_i_1_n_7 }),
        .S(\GENERATE_CLK_10KHz.i_reg [11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_CLK_10KHz.i_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GENERATE_CLK_10KHz.i_reg[8]_i_1_n_6 ),
        .Q(\GENERATE_CLK_10KHz.i_reg [9]),
        .R(\GENERATE_CLK_10KHz.i[0]_i_1_n_0 ));
  proc PROCESSOR
       (.CLK(clk_10Hz_reg_n_0_BUFG),
        .D({PROCESSOR_n_0,PROCESSOR_n_1,PROCESSOR_n_2,PROCESSOR_n_3,PROCESSOR_n_4,PROCESSOR_n_5,PROCESSOR_n_6,PROCESSOR_n_7}),
        .address_dg_IBUF(address_dg_IBUF),
        .\aff_reg[2] (DISPLAY_n_3),
        .\aff_reg[4] (DISPLAY_n_2),
        .\aff_reg[5] (DISPLAY_n_5),
        .\aff_reg[6] (DISPLAY_n_4),
        .i(i),
        .\registers_reg[9][7] (PROCESSOR_n_8),
        .rst_IBUF(rst_IBUF),
        .select_reg_mem_IBUF(select_reg_mem_IBUF));
  IBUF \address_dg_IBUF[0]_inst 
       (.I(address_dg[0]),
        .O(address_dg_IBUF[0]));
  IBUF \address_dg_IBUF[1]_inst 
       (.I(address_dg[1]),
        .O(address_dg_IBUF[1]));
  IBUF \address_dg_IBUF[2]_inst 
       (.I(address_dg[2]),
        .O(address_dg_IBUF[2]));
  IBUF \address_dg_IBUF[3]_inst 
       (.I(address_dg[3]),
        .O(address_dg_IBUF[3]));
  OBUF \aff_OBUF[0]_inst 
       (.I(aff_OBUF[0]),
        .O(aff[0]));
  OBUF \aff_OBUF[10]_inst 
       (.I(aff_OBUF[10]),
        .O(aff[10]));
  OBUF \aff_OBUF[11]_inst 
       (.I(aff_OBUF[11]),
        .O(aff[11]));
  OBUF \aff_OBUF[1]_inst 
       (.I(aff_OBUF[1]),
        .O(aff[1]));
  OBUF \aff_OBUF[2]_inst 
       (.I(aff_OBUF[2]),
        .O(aff[2]));
  OBUF \aff_OBUF[3]_inst 
       (.I(aff_OBUF[3]),
        .O(aff[3]));
  OBUF \aff_OBUF[4]_inst 
       (.I(aff_OBUF[4]),
        .O(aff[4]));
  OBUF \aff_OBUF[5]_inst 
       (.I(aff_OBUF[5]),
        .O(aff[5]));
  OBUF \aff_OBUF[6]_inst 
       (.I(aff_OBUF[6]),
        .O(aff[6]));
  OBUF \aff_OBUF[7]_inst 
       (.I(aff_OBUF[7]),
        .O(aff[7]));
  OBUF \aff_OBUF[8]_inst 
       (.I(aff_OBUF[8]),
        .O(aff[8]));
  OBUF \aff_OBUF[9]_inst 
       (.I(aff_OBUF[9]),
        .O(aff[9]));
  LUT2 #(
    .INIT(4'h7)) 
    clk_10Hz_i_11
       (.I0(\GENERATE_CLK_10KHz.i_reg [18]),
        .I1(\GENERATE_CLK_10KHz.i_reg [19]),
        .O(clk_10Hz_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clk_10Hz_i_12
       (.I0(\GENERATE_CLK_10KHz.i_reg [14]),
        .I1(\GENERATE_CLK_10KHz.i_reg [15]),
        .O(clk_10Hz_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clk_10Hz_i_13
       (.I0(\GENERATE_CLK_10KHz.i_reg [20]),
        .I1(\GENERATE_CLK_10KHz.i_reg [21]),
        .O(clk_10Hz_i_13_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    clk_10Hz_i_14
       (.I0(\GENERATE_CLK_10KHz.i_reg [18]),
        .I1(\GENERATE_CLK_10KHz.i_reg [19]),
        .O(clk_10Hz_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clk_10Hz_i_15
       (.I0(\GENERATE_CLK_10KHz.i_reg [16]),
        .I1(\GENERATE_CLK_10KHz.i_reg [17]),
        .O(clk_10Hz_i_15_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    clk_10Hz_i_16
       (.I0(\GENERATE_CLK_10KHz.i_reg [14]),
        .I1(\GENERATE_CLK_10KHz.i_reg [15]),
        .O(clk_10Hz_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clk_10Hz_i_17
       (.I0(\GENERATE_CLK_10KHz.i_reg [11]),
        .O(clk_10Hz_i_17_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    clk_10Hz_i_18
       (.I0(\GENERATE_CLK_10KHz.i_reg [8]),
        .I1(\GENERATE_CLK_10KHz.i_reg [9]),
        .O(clk_10Hz_i_18_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clk_10Hz_i_19
       (.I0(\GENERATE_CLK_10KHz.i_reg [6]),
        .I1(\GENERATE_CLK_10KHz.i_reg [7]),
        .O(clk_10Hz_i_19_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clk_10Hz_i_20
       (.I0(\GENERATE_CLK_10KHz.i_reg [12]),
        .I1(\GENERATE_CLK_10KHz.i_reg [13]),
        .O(clk_10Hz_i_20_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    clk_10Hz_i_21
       (.I0(\GENERATE_CLK_10KHz.i_reg [11]),
        .I1(\GENERATE_CLK_10KHz.i_reg [10]),
        .O(clk_10Hz_i_21_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    clk_10Hz_i_22
       (.I0(\GENERATE_CLK_10KHz.i_reg [8]),
        .I1(\GENERATE_CLK_10KHz.i_reg [9]),
        .O(clk_10Hz_i_22_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    clk_10Hz_i_23
       (.I0(\GENERATE_CLK_10KHz.i_reg [6]),
        .I1(\GENERATE_CLK_10KHz.i_reg [7]),
        .O(clk_10Hz_i_23_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clk_10Hz_i_3
       (.I0(\GENERATE_CLK_10KHz.i_reg [30]),
        .I1(\GENERATE_CLK_10KHz.i_reg [31]),
        .O(clk_10Hz_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clk_10Hz_i_5
       (.I0(\GENERATE_CLK_10KHz.i_reg [22]),
        .I1(\GENERATE_CLK_10KHz.i_reg [23]),
        .O(clk_10Hz_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clk_10Hz_i_6
       (.I0(\GENERATE_CLK_10KHz.i_reg [28]),
        .I1(\GENERATE_CLK_10KHz.i_reg [29]),
        .O(clk_10Hz_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clk_10Hz_i_7
       (.I0(\GENERATE_CLK_10KHz.i_reg [26]),
        .I1(\GENERATE_CLK_10KHz.i_reg [27]),
        .O(clk_10Hz_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clk_10Hz_i_8
       (.I0(\GENERATE_CLK_10KHz.i_reg [24]),
        .I1(\GENERATE_CLK_10KHz.i_reg [25]),
        .O(clk_10Hz_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    clk_10Hz_i_9
       (.I0(\GENERATE_CLK_10KHz.i_reg [22]),
        .I1(\GENERATE_CLK_10KHz.i_reg [23]),
        .O(clk_10Hz_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_10Hz_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_10Hz_reg_i_1_n_6),
        .Q(clk_10Hz_reg_n_0_BUFG_inst_n_0),
        .R(1'b0));
  CARRY4 clk_10Hz_reg_i_1
       (.CI(clk_10Hz_reg_i_2_n_0),
        .CO({NLW_clk_10Hz_reg_i_1_CO_UNCONNECTED[3:1],clk_10Hz_reg_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\GENERATE_CLK_10KHz.i_reg [31]}),
        .O({NLW_clk_10Hz_reg_i_1_O_UNCONNECTED[3:2],clk_10Hz_reg_i_1_n_6,NLW_clk_10Hz_reg_i_1_O_UNCONNECTED[0]}),
        .S({1'b0,1'b0,1'b1,clk_10Hz_i_3_n_0}));
  CARRY4 clk_10Hz_reg_i_10
       (.CI(1'b0),
        .CO({clk_10Hz_reg_i_10_n_0,clk_10Hz_reg_i_10_n_1,clk_10Hz_reg_i_10_n_2,clk_10Hz_reg_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,clk_10Hz_i_17_n_0,clk_10Hz_i_18_n_0,clk_10Hz_i_19_n_0}),
        .O(NLW_clk_10Hz_reg_i_10_O_UNCONNECTED[3:0]),
        .S({clk_10Hz_i_20_n_0,clk_10Hz_i_21_n_0,clk_10Hz_i_22_n_0,clk_10Hz_i_23_n_0}));
  CARRY4 clk_10Hz_reg_i_2
       (.CI(clk_10Hz_reg_i_4_n_0),
        .CO({clk_10Hz_reg_i_2_n_0,clk_10Hz_reg_i_2_n_1,clk_10Hz_reg_i_2_n_2,clk_10Hz_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,clk_10Hz_i_5_n_0}),
        .O(NLW_clk_10Hz_reg_i_2_O_UNCONNECTED[3:0]),
        .S({clk_10Hz_i_6_n_0,clk_10Hz_i_7_n_0,clk_10Hz_i_8_n_0,clk_10Hz_i_9_n_0}));
  CARRY4 clk_10Hz_reg_i_4
       (.CI(clk_10Hz_reg_i_10_n_0),
        .CO({clk_10Hz_reg_i_4_n_0,clk_10Hz_reg_i_4_n_1,clk_10Hz_reg_i_4_n_2,clk_10Hz_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,clk_10Hz_i_11_n_0,1'b0,clk_10Hz_i_12_n_0}),
        .O(NLW_clk_10Hz_reg_i_4_O_UNCONNECTED[3:0]),
        .S({clk_10Hz_i_13_n_0,clk_10Hz_i_14_n_0,clk_10Hz_i_15_n_0,clk_10Hz_i_16_n_0}));
  BUFG clk_10Hz_reg_n_0_BUFG_inst
       (.I(clk_10Hz_reg_n_0_BUFG_inst_n_0),
        .O(clk_10Hz_reg_n_0_BUFG));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF select_reg_mem_IBUF_inst
       (.I(select_reg_mem),
        .O(select_reg_mem_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
