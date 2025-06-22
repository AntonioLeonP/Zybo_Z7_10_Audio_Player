// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Apr 13 20:13:34 2025
// Host        : LAPTOP-4ATNCMRC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Media/AppData/Roaming/Xilinx/Vivado/TFM/audio.srcs/sources_1/bd/system/ip/system_fir_0_1/system_fir_0_1_sim_netlist.v
// Design      : system_fir_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_fir_0_1,fir,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "fir,Vivado 2019.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module system_fir_0_1
   (s_axi_fir_io_AWADDR,
    s_axi_fir_io_AWVALID,
    s_axi_fir_io_AWREADY,
    s_axi_fir_io_WDATA,
    s_axi_fir_io_WSTRB,
    s_axi_fir_io_WVALID,
    s_axi_fir_io_WREADY,
    s_axi_fir_io_BRESP,
    s_axi_fir_io_BVALID,
    s_axi_fir_io_BREADY,
    s_axi_fir_io_ARADDR,
    s_axi_fir_io_ARVALID,
    s_axi_fir_io_ARREADY,
    s_axi_fir_io_RDATA,
    s_axi_fir_io_RRESP,
    s_axi_fir_io_RVALID,
    s_axi_fir_io_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io AWADDR" *) input [4:0]s_axi_fir_io_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io AWVALID" *) input s_axi_fir_io_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io AWREADY" *) output s_axi_fir_io_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io WDATA" *) input [31:0]s_axi_fir_io_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io WSTRB" *) input [3:0]s_axi_fir_io_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io WVALID" *) input s_axi_fir_io_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io WREADY" *) output s_axi_fir_io_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io BRESP" *) output [1:0]s_axi_fir_io_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io BVALID" *) output s_axi_fir_io_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io BREADY" *) input s_axi_fir_io_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io ARADDR" *) input [4:0]s_axi_fir_io_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io ARVALID" *) input s_axi_fir_io_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io ARREADY" *) output s_axi_fir_io_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io RDATA" *) output [31:0]s_axi_fir_io_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io RRESP" *) output [1:0]s_axi_fir_io_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io RVALID" *) output s_axi_fir_io_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_fir_io, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 50000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_fir_io_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_fir_io, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;

  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [4:0]s_axi_fir_io_ARADDR;
  wire s_axi_fir_io_ARREADY;
  wire s_axi_fir_io_ARVALID;
  wire [4:0]s_axi_fir_io_AWADDR;
  wire s_axi_fir_io_AWREADY;
  wire s_axi_fir_io_AWVALID;
  wire s_axi_fir_io_BREADY;
  wire [1:0]s_axi_fir_io_BRESP;
  wire s_axi_fir_io_BVALID;
  wire [31:0]s_axi_fir_io_RDATA;
  wire s_axi_fir_io_RREADY;
  wire [1:0]s_axi_fir_io_RRESP;
  wire s_axi_fir_io_RVALID;
  wire [31:0]s_axi_fir_io_WDATA;
  wire s_axi_fir_io_WREADY;
  wire [3:0]s_axi_fir_io_WSTRB;
  wire s_axi_fir_io_WVALID;

  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_FIR_IO_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_FIR_IO_DATA_WIDTH = "32" *) 
  (* C_S_AXI_FIR_IO_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* ap_ST_fsm_pp0_stage0 = "6'b010000" *) 
  (* ap_ST_fsm_state1 = "6'b000001" *) 
  (* ap_ST_fsm_state2 = "6'b000010" *) 
  (* ap_ST_fsm_state3 = "6'b000100" *) 
  (* ap_ST_fsm_state4 = "6'b001000" *) 
  (* ap_ST_fsm_state8 = "6'b100000" *) 
  system_fir_0_1_fir inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_fir_io_ARADDR(s_axi_fir_io_ARADDR),
        .s_axi_fir_io_ARREADY(s_axi_fir_io_ARREADY),
        .s_axi_fir_io_ARVALID(s_axi_fir_io_ARVALID),
        .s_axi_fir_io_AWADDR(s_axi_fir_io_AWADDR),
        .s_axi_fir_io_AWREADY(s_axi_fir_io_AWREADY),
        .s_axi_fir_io_AWVALID(s_axi_fir_io_AWVALID),
        .s_axi_fir_io_BREADY(s_axi_fir_io_BREADY),
        .s_axi_fir_io_BRESP(s_axi_fir_io_BRESP),
        .s_axi_fir_io_BVALID(s_axi_fir_io_BVALID),
        .s_axi_fir_io_RDATA(s_axi_fir_io_RDATA),
        .s_axi_fir_io_RREADY(s_axi_fir_io_RREADY),
        .s_axi_fir_io_RRESP(s_axi_fir_io_RRESP),
        .s_axi_fir_io_RVALID(s_axi_fir_io_RVALID),
        .s_axi_fir_io_WDATA(s_axi_fir_io_WDATA),
        .s_axi_fir_io_WREADY(s_axi_fir_io_WREADY),
        .s_axi_fir_io_WSTRB(s_axi_fir_io_WSTRB),
        .s_axi_fir_io_WVALID(s_axi_fir_io_WVALID));
endmodule

(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_FIR_IO_ADDR_WIDTH = "5" *) (* C_S_AXI_FIR_IO_DATA_WIDTH = "32" *) 
(* C_S_AXI_FIR_IO_WSTRB_WIDTH = "4" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ORIG_REF_NAME = "fir" *) 
(* ap_ST_fsm_pp0_stage0 = "6'b010000" *) (* ap_ST_fsm_state1 = "6'b000001" *) (* ap_ST_fsm_state2 = "6'b000010" *) 
(* ap_ST_fsm_state3 = "6'b000100" *) (* ap_ST_fsm_state4 = "6'b001000" *) (* ap_ST_fsm_state8 = "6'b100000" *) 
(* hls_module = "yes" *) 
module system_fir_0_1_fir
   (ap_clk,
    ap_rst_n,
    s_axi_fir_io_AWVALID,
    s_axi_fir_io_AWREADY,
    s_axi_fir_io_AWADDR,
    s_axi_fir_io_WVALID,
    s_axi_fir_io_WREADY,
    s_axi_fir_io_WDATA,
    s_axi_fir_io_WSTRB,
    s_axi_fir_io_ARVALID,
    s_axi_fir_io_ARREADY,
    s_axi_fir_io_ARADDR,
    s_axi_fir_io_RVALID,
    s_axi_fir_io_RREADY,
    s_axi_fir_io_RDATA,
    s_axi_fir_io_RRESP,
    s_axi_fir_io_BVALID,
    s_axi_fir_io_BREADY,
    s_axi_fir_io_BRESP,
    interrupt);
  input ap_clk;
  input ap_rst_n;
  input s_axi_fir_io_AWVALID;
  output s_axi_fir_io_AWREADY;
  input [4:0]s_axi_fir_io_AWADDR;
  input s_axi_fir_io_WVALID;
  output s_axi_fir_io_WREADY;
  input [31:0]s_axi_fir_io_WDATA;
  input [3:0]s_axi_fir_io_WSTRB;
  input s_axi_fir_io_ARVALID;
  output s_axi_fir_io_ARREADY;
  input [4:0]s_axi_fir_io_ARADDR;
  output s_axi_fir_io_RVALID;
  input s_axi_fir_io_RREADY;
  output [31:0]s_axi_fir_io_RDATA;
  output [1:0]s_axi_fir_io_RRESP;
  output s_axi_fir_io_BVALID;
  input s_axi_fir_io_BREADY;
  output [1:0]s_axi_fir_io_BRESP;
  output interrupt;

  wire \<const0> ;
  wire acc_reg_221_reg_n_100;
  wire acc_reg_221_reg_n_101;
  wire acc_reg_221_reg_n_102;
  wire acc_reg_221_reg_n_103;
  wire acc_reg_221_reg_n_104;
  wire acc_reg_221_reg_n_105;
  wire acc_reg_221_reg_n_106;
  wire acc_reg_221_reg_n_81;
  wire acc_reg_221_reg_n_82;
  wire acc_reg_221_reg_n_83;
  wire acc_reg_221_reg_n_84;
  wire acc_reg_221_reg_n_85;
  wire acc_reg_221_reg_n_86;
  wire acc_reg_221_reg_n_87;
  wire acc_reg_221_reg_n_88;
  wire acc_reg_221_reg_n_89;
  wire acc_reg_221_reg_n_90;
  wire acc_reg_221_reg_n_91;
  wire acc_reg_221_reg_n_92;
  wire acc_reg_221_reg_n_93;
  wire acc_reg_221_reg_n_94;
  wire acc_reg_221_reg_n_95;
  wire acc_reg_221_reg_n_96;
  wire acc_reg_221_reg_n_97;
  wire acc_reg_221_reg_n_98;
  wire acc_reg_221_reg_n_99;
  wire ap_CS_fsm_pp0_stage0;
  wire \ap_CS_fsm_reg_n_1_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state8;
  wire [5:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_condition_pp0_exit_iter0_state5;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1_n_1;
  wire ap_enable_reg_pp0_iter1_i_1_n_1;
  wire ap_enable_reg_pp0_iter1_reg_n_1;
  wire ap_enable_reg_pp0_iter2;
  wire ap_phi_mux_i_0_phi_fu_134_p41;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [5:0]c_address0;
  wire c_ce0;
  wire fir_mac_muladd_16cud_U2_n_10;
  wire fir_mac_muladd_16cud_U2_n_11;
  wire fir_mac_muladd_16cud_U2_n_12;
  wire fir_mac_muladd_16cud_U2_n_13;
  wire fir_mac_muladd_16cud_U2_n_14;
  wire fir_mac_muladd_16cud_U2_n_15;
  wire fir_mac_muladd_16cud_U2_n_16;
  wire fir_mac_muladd_16cud_U2_n_17;
  wire fir_mac_muladd_16cud_U2_n_18;
  wire fir_mac_muladd_16cud_U2_n_19;
  wire fir_mac_muladd_16cud_U2_n_20;
  wire fir_mac_muladd_16cud_U2_n_21;
  wire fir_mac_muladd_16cud_U2_n_22;
  wire fir_mac_muladd_16cud_U2_n_23;
  wire fir_mac_muladd_16cud_U2_n_24;
  wire fir_mac_muladd_16cud_U2_n_25;
  wire fir_mac_muladd_16cud_U2_n_26;
  wire fir_mac_muladd_16cud_U2_n_27;
  wire fir_mac_muladd_16cud_U2_n_28;
  wire fir_mac_muladd_16cud_U2_n_29;
  wire fir_mac_muladd_16cud_U2_n_30;
  wire fir_mac_muladd_16cud_U2_n_31;
  wire fir_mac_muladd_16cud_U2_n_32;
  wire fir_mac_muladd_16cud_U2_n_33;
  wire fir_mac_muladd_16cud_U2_n_34;
  wire fir_mac_muladd_16cud_U2_n_35;
  wire fir_mac_muladd_16cud_U2_n_36;
  wire fir_mac_muladd_16cud_U2_n_37;
  wire fir_mac_muladd_16cud_U2_n_38;
  wire fir_mac_muladd_16cud_U2_n_8;
  wire fir_mac_muladd_16cud_U2_n_9;
  wire i_0_reg_130;
  wire \i_0_reg_130_reg_n_1_[0] ;
  wire \i_0_reg_130_reg_n_1_[1] ;
  wire \i_0_reg_130_reg_n_1_[2] ;
  wire \i_0_reg_130_reg_n_1_[3] ;
  wire \i_0_reg_130_reg_n_1_[4] ;
  wire \i_0_reg_130_reg_n_1_[5] ;
  wire [5:0]i_fu_158_p2;
  wire \i_reg_241[5]_i_1_n_1 ;
  wire [5:0]i_reg_241_reg;
  wire \icmp_ln15_reg_237[0]_i_1_n_1 ;
  wire icmp_ln15_reg_237_pp0_iter1_reg;
  wire \icmp_ln15_reg_237_pp0_iter1_reg[0]_i_1_n_1 ;
  wire \icmp_ln15_reg_237_reg_n_1_[0] ;
  wire [15:0]int_y;
  wire interrupt;
  wire [15:0]q00;
  wire reg_1410;
  wire [4:0]s_axi_fir_io_ARADDR;
  wire s_axi_fir_io_ARREADY;
  wire s_axi_fir_io_ARVALID;
  wire [4:0]s_axi_fir_io_AWADDR;
  wire s_axi_fir_io_AWREADY;
  wire s_axi_fir_io_AWVALID;
  wire s_axi_fir_io_BREADY;
  wire s_axi_fir_io_BVALID;
  wire [15:0]\^s_axi_fir_io_RDATA ;
  wire s_axi_fir_io_RREADY;
  wire s_axi_fir_io_RVALID;
  wire [31:0]s_axi_fir_io_WDATA;
  wire s_axi_fir_io_WREADY;
  wire [3:0]s_axi_fir_io_WSTRB;
  wire s_axi_fir_io_WVALID;
  wire shift_reg_ce0;
  wire [15:0]x;
  wire [15:0]x_read_reg_226;
  wire zext_ln17_1_reg_251_reg0;
  wire \zext_ln17_1_reg_251_reg_n_1_[0] ;
  wire \zext_ln17_1_reg_251_reg_n_1_[1] ;
  wire \zext_ln17_1_reg_251_reg_n_1_[2] ;
  wire \zext_ln17_1_reg_251_reg_n_1_[3] ;
  wire \zext_ln17_1_reg_251_reg_n_1_[4] ;
  wire \zext_ln17_1_reg_251_reg_n_1_[5] ;
  wire NLW_acc_reg_221_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_acc_reg_221_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_acc_reg_221_reg_OVERFLOW_UNCONNECTED;
  wire NLW_acc_reg_221_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_acc_reg_221_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_acc_reg_221_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_acc_reg_221_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_acc_reg_221_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_acc_reg_221_reg_CARRYOUT_UNCONNECTED;
  wire [47:26]NLW_acc_reg_221_reg_P_UNCONNECTED;
  wire [47:0]NLW_acc_reg_221_reg_PCOUT_UNCONNECTED;

  assign s_axi_fir_io_BRESP[1] = \<const0> ;
  assign s_axi_fir_io_BRESP[0] = \<const0> ;
  assign s_axi_fir_io_RDATA[31] = \<const0> ;
  assign s_axi_fir_io_RDATA[30] = \<const0> ;
  assign s_axi_fir_io_RDATA[29] = \<const0> ;
  assign s_axi_fir_io_RDATA[28] = \<const0> ;
  assign s_axi_fir_io_RDATA[27] = \<const0> ;
  assign s_axi_fir_io_RDATA[26] = \<const0> ;
  assign s_axi_fir_io_RDATA[25] = \<const0> ;
  assign s_axi_fir_io_RDATA[24] = \<const0> ;
  assign s_axi_fir_io_RDATA[23] = \<const0> ;
  assign s_axi_fir_io_RDATA[22] = \<const0> ;
  assign s_axi_fir_io_RDATA[21] = \<const0> ;
  assign s_axi_fir_io_RDATA[20] = \<const0> ;
  assign s_axi_fir_io_RDATA[19] = \<const0> ;
  assign s_axi_fir_io_RDATA[18] = \<const0> ;
  assign s_axi_fir_io_RDATA[17] = \<const0> ;
  assign s_axi_fir_io_RDATA[16] = \<const0> ;
  assign s_axi_fir_io_RDATA[15:0] = \^s_axi_fir_io_RDATA [15:0];
  assign s_axi_fir_io_RRESP[1] = \<const0> ;
  assign s_axi_fir_io_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    acc_reg_221_reg
       (.A({q00[15],q00[15],q00[15],q00[15],q00[15],q00[15],q00[15],q00[15],q00[15],q00[15],q00[15],q00[15],q00[15],q00[15],q00}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_acc_reg_221_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_acc_reg_221_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_acc_reg_221_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_acc_reg_221_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(shift_reg_ce0),
        .CEA2(reg_1410),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(ap_CS_fsm_state3),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_acc_reg_221_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_acc_reg_221_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_acc_reg_221_reg_P_UNCONNECTED[47:26],acc_reg_221_reg_n_81,acc_reg_221_reg_n_82,acc_reg_221_reg_n_83,acc_reg_221_reg_n_84,acc_reg_221_reg_n_85,acc_reg_221_reg_n_86,acc_reg_221_reg_n_87,acc_reg_221_reg_n_88,acc_reg_221_reg_n_89,acc_reg_221_reg_n_90,acc_reg_221_reg_n_91,acc_reg_221_reg_n_92,acc_reg_221_reg_n_93,acc_reg_221_reg_n_94,acc_reg_221_reg_n_95,acc_reg_221_reg_n_96,acc_reg_221_reg_n_97,acc_reg_221_reg_n_98,acc_reg_221_reg_n_99,acc_reg_221_reg_n_100,acc_reg_221_reg_n_101,acc_reg_221_reg_n_102,acc_reg_221_reg_n_103,acc_reg_221_reg_n_104,acc_reg_221_reg_n_105,acc_reg_221_reg_n_106}),
        .PATTERNBDETECT(NLW_acc_reg_221_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_acc_reg_221_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_acc_reg_221_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_acc_reg_221_reg_UNDERFLOW_UNCONNECTED));
  LUT6 #(
    .INIT(64'hEEEFEFEFAAAAAAAA)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(ap_CS_fsm_state4),
        .I1(ap_enable_reg_pp0_iter1_reg_n_1),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(ap_condition_pp0_exit_iter0_state5),
        .I5(ap_CS_fsm_pp0_stage0),
        .O(ap_NS_fsm[4]));
  LUT5 #(
    .INIT(32'h0000AA80)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(ap_condition_pp0_exit_iter0_state5),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(ap_enable_reg_pp0_iter2),
        .I4(ap_enable_reg_pp0_iter1_reg_n_1),
        .O(ap_NS_fsm[5]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ap_CS_fsm[5]_i_2 
       (.I0(c_address0[2]),
        .I1(c_address0[0]),
        .I2(c_address0[1]),
        .I3(c_address0[4]),
        .I4(c_address0[3]),
        .I5(c_address0[5]),
        .O(ap_condition_pp0_exit_iter0_state5));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_1_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state2),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state3),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_state8),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h77700000)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(ap_condition_pp0_exit_iter0_state5),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_CS_fsm_state4),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(ap_rst_n),
        .O(ap_enable_reg_pp0_iter0_i_1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1_n_1),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h40)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_condition_pp0_exit_iter0_state5),
        .I1(ap_rst_n),
        .I2(ap_enable_reg_pp0_iter0),
        .O(ap_enable_reg_pp0_iter1_i_1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_1),
        .Q(ap_enable_reg_pp0_iter1_reg_n_1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_reg_n_1),
        .Q(ap_enable_reg_pp0_iter2),
        .R(ap_rst_n_inv));
  system_fir_0_1_fir_fir_io_s_axi fir_fir_io_s_axi_U
       (.CEA1(shift_reg_ce0),
        .D(ap_NS_fsm[1:0]),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_fir_io_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_fir_io_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_fir_io_WREADY),
        .P(int_y),
        .Q({ap_CS_fsm_state8,ap_CS_fsm_pp0_stage0,ap_CS_fsm_state4,ap_CS_fsm_state3,ap_CS_fsm_state2,\ap_CS_fsm_reg_n_1_[0] }),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\int_x_reg[15]_0 (x),
        .interrupt(interrupt),
        .s_axi_fir_io_ARADDR(s_axi_fir_io_ARADDR),
        .s_axi_fir_io_ARVALID(s_axi_fir_io_ARVALID),
        .s_axi_fir_io_AWADDR(s_axi_fir_io_AWADDR),
        .s_axi_fir_io_AWVALID(s_axi_fir_io_AWVALID),
        .s_axi_fir_io_BREADY(s_axi_fir_io_BREADY),
        .s_axi_fir_io_BVALID(s_axi_fir_io_BVALID),
        .s_axi_fir_io_RDATA(\^s_axi_fir_io_RDATA ),
        .s_axi_fir_io_RREADY(s_axi_fir_io_RREADY),
        .s_axi_fir_io_RVALID(s_axi_fir_io_RVALID),
        .s_axi_fir_io_WDATA(s_axi_fir_io_WDATA[15:0]),
        .s_axi_fir_io_WSTRB(s_axi_fir_io_WSTRB[1:0]),
        .s_axi_fir_io_WVALID(s_axi_fir_io_WVALID));
  system_fir_0_1_fir_mac_muladd_10dEe fir_mac_muladd_10dEe_U3
       (.P(int_y),
        .Q({ap_CS_fsm_state8,ap_CS_fsm_state4}),
        .SR(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .p(x),
        .p_0({fir_mac_muladd_16cud_U2_n_8,fir_mac_muladd_16cud_U2_n_9,fir_mac_muladd_16cud_U2_n_10,fir_mac_muladd_16cud_U2_n_11,fir_mac_muladd_16cud_U2_n_12,fir_mac_muladd_16cud_U2_n_13,fir_mac_muladd_16cud_U2_n_14,fir_mac_muladd_16cud_U2_n_15,fir_mac_muladd_16cud_U2_n_16,fir_mac_muladd_16cud_U2_n_17,fir_mac_muladd_16cud_U2_n_18,fir_mac_muladd_16cud_U2_n_19,fir_mac_muladd_16cud_U2_n_20,fir_mac_muladd_16cud_U2_n_21,fir_mac_muladd_16cud_U2_n_22,fir_mac_muladd_16cud_U2_n_23,fir_mac_muladd_16cud_U2_n_24,fir_mac_muladd_16cud_U2_n_25,fir_mac_muladd_16cud_U2_n_26,fir_mac_muladd_16cud_U2_n_27,fir_mac_muladd_16cud_U2_n_28,fir_mac_muladd_16cud_U2_n_29,fir_mac_muladd_16cud_U2_n_30,fir_mac_muladd_16cud_U2_n_31,fir_mac_muladd_16cud_U2_n_32,fir_mac_muladd_16cud_U2_n_33,fir_mac_muladd_16cud_U2_n_34,fir_mac_muladd_16cud_U2_n_35,fir_mac_muladd_16cud_U2_n_36,fir_mac_muladd_16cud_U2_n_37,fir_mac_muladd_16cud_U2_n_38}));
  system_fir_0_1_fir_mac_muladd_16cud fir_mac_muladd_16cud_U2
       (.C({acc_reg_221_reg_n_81,acc_reg_221_reg_n_82,acc_reg_221_reg_n_83,acc_reg_221_reg_n_84,acc_reg_221_reg_n_85,acc_reg_221_reg_n_86,acc_reg_221_reg_n_87,acc_reg_221_reg_n_88,acc_reg_221_reg_n_89,acc_reg_221_reg_n_90,acc_reg_221_reg_n_91,acc_reg_221_reg_n_92,acc_reg_221_reg_n_93,acc_reg_221_reg_n_94,acc_reg_221_reg_n_95,acc_reg_221_reg_n_96,acc_reg_221_reg_n_97,acc_reg_221_reg_n_98,acc_reg_221_reg_n_99,acc_reg_221_reg_n_100,acc_reg_221_reg_n_101,acc_reg_221_reg_n_102,acc_reg_221_reg_n_103,acc_reg_221_reg_n_104,acc_reg_221_reg_n_105,acc_reg_221_reg_n_106}),
        .CEA1(shift_reg_ce0),
        .CEA2(reg_1410),
        .CEB1(c_ce0),
        .P({fir_mac_muladd_16cud_U2_n_8,fir_mac_muladd_16cud_U2_n_9,fir_mac_muladd_16cud_U2_n_10,fir_mac_muladd_16cud_U2_n_11,fir_mac_muladd_16cud_U2_n_12,fir_mac_muladd_16cud_U2_n_13,fir_mac_muladd_16cud_U2_n_14,fir_mac_muladd_16cud_U2_n_15,fir_mac_muladd_16cud_U2_n_16,fir_mac_muladd_16cud_U2_n_17,fir_mac_muladd_16cud_U2_n_18,fir_mac_muladd_16cud_U2_n_19,fir_mac_muladd_16cud_U2_n_20,fir_mac_muladd_16cud_U2_n_21,fir_mac_muladd_16cud_U2_n_22,fir_mac_muladd_16cud_U2_n_23,fir_mac_muladd_16cud_U2_n_24,fir_mac_muladd_16cud_U2_n_25,fir_mac_muladd_16cud_U2_n_26,fir_mac_muladd_16cud_U2_n_27,fir_mac_muladd_16cud_U2_n_28,fir_mac_muladd_16cud_U2_n_29,fir_mac_muladd_16cud_U2_n_30,fir_mac_muladd_16cud_U2_n_31,fir_mac_muladd_16cud_U2_n_32,fir_mac_muladd_16cud_U2_n_33,fir_mac_muladd_16cud_U2_n_34,fir_mac_muladd_16cud_U2_n_35,fir_mac_muladd_16cud_U2_n_36,fir_mac_muladd_16cud_U2_n_37,fir_mac_muladd_16cud_U2_n_38}),
        .Q({ap_CS_fsm_pp0_stage0,ap_CS_fsm_state4,ap_CS_fsm_state2}),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .c_address0(c_address0),
        .icmp_ln15_reg_237_pp0_iter1_reg(icmp_ln15_reg_237_pp0_iter1_reg),
        .p(\icmp_ln15_reg_237_reg_n_1_[0] ),
        .p_0(ap_enable_reg_pp0_iter1_reg_n_1),
        .q00(q00),
        .\zext_ln17_1_reg_251_reg[5] (i_reg_241_reg),
        .\zext_ln17_1_reg_251_reg[5]_0 ({\i_0_reg_130_reg_n_1_[5] ,\i_0_reg_130_reg_n_1_[4] ,\i_0_reg_130_reg_n_1_[3] ,\i_0_reg_130_reg_n_1_[2] ,\i_0_reg_130_reg_n_1_[1] ,\i_0_reg_130_reg_n_1_[0] }));
  LUT4 #(
    .INIT(16'h8AAA)) 
    \i_0_reg_130[5]_i_1 
       (.I0(ap_CS_fsm_state4),
        .I1(\icmp_ln15_reg_237_reg_n_1_[0] ),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(ap_enable_reg_pp0_iter1_reg_n_1),
        .O(i_0_reg_130));
  FDSE \i_0_reg_130_reg[0] 
       (.C(ap_clk),
        .CE(ap_phi_mux_i_0_phi_fu_134_p41),
        .D(i_reg_241_reg[0]),
        .Q(\i_0_reg_130_reg_n_1_[0] ),
        .S(i_0_reg_130));
  FDRE \i_0_reg_130_reg[1] 
       (.C(ap_clk),
        .CE(ap_phi_mux_i_0_phi_fu_134_p41),
        .D(i_reg_241_reg[1]),
        .Q(\i_0_reg_130_reg_n_1_[1] ),
        .R(i_0_reg_130));
  FDRE \i_0_reg_130_reg[2] 
       (.C(ap_clk),
        .CE(ap_phi_mux_i_0_phi_fu_134_p41),
        .D(i_reg_241_reg[2]),
        .Q(\i_0_reg_130_reg_n_1_[2] ),
        .R(i_0_reg_130));
  FDSE \i_0_reg_130_reg[3] 
       (.C(ap_clk),
        .CE(ap_phi_mux_i_0_phi_fu_134_p41),
        .D(i_reg_241_reg[3]),
        .Q(\i_0_reg_130_reg_n_1_[3] ),
        .S(i_0_reg_130));
  FDSE \i_0_reg_130_reg[4] 
       (.C(ap_clk),
        .CE(ap_phi_mux_i_0_phi_fu_134_p41),
        .D(i_reg_241_reg[4]),
        .Q(\i_0_reg_130_reg_n_1_[4] ),
        .S(i_0_reg_130));
  FDSE \i_0_reg_130_reg[5] 
       (.C(ap_clk),
        .CE(ap_phi_mux_i_0_phi_fu_134_p41),
        .D(i_reg_241_reg[5]),
        .Q(\i_0_reg_130_reg_n_1_[5] ),
        .S(i_0_reg_130));
  LUT4 #(
    .INIT(16'h4575)) 
    \i_reg_241[0]_i_1 
       (.I0(\i_0_reg_130_reg_n_1_[0] ),
        .I1(\icmp_ln15_reg_237_reg_n_1_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_1),
        .I3(i_reg_241_reg[0]),
        .O(i_fu_158_p2[0]));
  LUT5 #(
    .INIT(32'hFB0804F7)) 
    \i_reg_241[1]_i_1 
       (.I0(i_reg_241_reg[1]),
        .I1(ap_enable_reg_pp0_iter1_reg_n_1),
        .I2(\icmp_ln15_reg_237_reg_n_1_[0] ),
        .I3(\i_0_reg_130_reg_n_1_[1] ),
        .I4(c_address0[0]),
        .O(i_fu_158_p2[1]));
  LUT6 #(
    .INIT(64'hB8B8B88BB874B847)) 
    \i_reg_241[2]_i_1 
       (.I0(i_reg_241_reg[2]),
        .I1(ap_phi_mux_i_0_phi_fu_134_p41),
        .I2(\i_0_reg_130_reg_n_1_[2] ),
        .I3(c_address0[0]),
        .I4(\i_0_reg_130_reg_n_1_[1] ),
        .I5(i_reg_241_reg[1]),
        .O(i_fu_158_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \i_reg_241[3]_i_1 
       (.I0(c_address0[3]),
        .I1(c_address0[1]),
        .I2(c_address0[0]),
        .I3(c_address0[2]),
        .O(i_fu_158_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \i_reg_241[4]_i_1 
       (.I0(c_address0[4]),
        .I1(c_address0[3]),
        .I2(c_address0[1]),
        .I3(c_address0[0]),
        .I4(c_address0[2]),
        .O(i_fu_158_p2[4]));
  LUT3 #(
    .INIT(8'h08)) 
    \i_reg_241[5]_i_1 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_condition_pp0_exit_iter0_state5),
        .O(\i_reg_241[5]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \i_reg_241[5]_i_2 
       (.I0(c_address0[5]),
        .I1(c_address0[4]),
        .I2(c_address0[3]),
        .I3(c_address0[1]),
        .I4(c_address0[0]),
        .I5(c_address0[2]),
        .O(i_fu_158_p2[5]));
  FDRE \i_reg_241_reg[0] 
       (.C(ap_clk),
        .CE(\i_reg_241[5]_i_1_n_1 ),
        .D(i_fu_158_p2[0]),
        .Q(i_reg_241_reg[0]),
        .R(1'b0));
  FDRE \i_reg_241_reg[1] 
       (.C(ap_clk),
        .CE(\i_reg_241[5]_i_1_n_1 ),
        .D(i_fu_158_p2[1]),
        .Q(i_reg_241_reg[1]),
        .R(1'b0));
  FDRE \i_reg_241_reg[2] 
       (.C(ap_clk),
        .CE(\i_reg_241[5]_i_1_n_1 ),
        .D(i_fu_158_p2[2]),
        .Q(i_reg_241_reg[2]),
        .R(1'b0));
  FDRE \i_reg_241_reg[3] 
       (.C(ap_clk),
        .CE(\i_reg_241[5]_i_1_n_1 ),
        .D(i_fu_158_p2[3]),
        .Q(i_reg_241_reg[3]),
        .R(1'b0));
  FDRE \i_reg_241_reg[4] 
       (.C(ap_clk),
        .CE(\i_reg_241[5]_i_1_n_1 ),
        .D(i_fu_158_p2[4]),
        .Q(i_reg_241_reg[4]),
        .R(1'b0));
  FDRE \i_reg_241_reg[5] 
       (.C(ap_clk),
        .CE(\i_reg_241[5]_i_1_n_1 ),
        .D(i_fu_158_p2[5]),
        .Q(i_reg_241_reg[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \icmp_ln15_reg_237[0]_i_1 
       (.I0(ap_condition_pp0_exit_iter0_state5),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(\icmp_ln15_reg_237_reg_n_1_[0] ),
        .O(\icmp_ln15_reg_237[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \icmp_ln15_reg_237_pp0_iter1_reg[0]_i_1 
       (.I0(\icmp_ln15_reg_237_reg_n_1_[0] ),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(icmp_ln15_reg_237_pp0_iter1_reg),
        .O(\icmp_ln15_reg_237_pp0_iter1_reg[0]_i_1_n_1 ));
  FDRE \icmp_ln15_reg_237_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln15_reg_237_pp0_iter1_reg[0]_i_1_n_1 ),
        .Q(icmp_ln15_reg_237_pp0_iter1_reg),
        .R(1'b0));
  FDRE \icmp_ln15_reg_237_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln15_reg_237[0]_i_1_n_1 ),
        .Q(\icmp_ln15_reg_237_reg_n_1_[0] ),
        .R(1'b0));
  system_fir_0_1_fir_shift_reg shift_reg_U
       (.CEB1(c_ce0),
        .E(ap_phi_mux_i_0_phi_fu_134_p41),
        .Q({ap_CS_fsm_state8,ap_CS_fsm_pp0_stage0}),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .c_address0(c_address0),
        .\i_0_reg_130_reg[0] (\icmp_ln15_reg_237_reg_n_1_[0] ),
        .\i_0_reg_130_reg[0]_0 (ap_enable_reg_pp0_iter1_reg_n_1),
        .q00(q00),
        .\q0_reg[0] ({\zext_ln17_1_reg_251_reg_n_1_[5] ,\zext_ln17_1_reg_251_reg_n_1_[4] ,\zext_ln17_1_reg_251_reg_n_1_[3] ,\zext_ln17_1_reg_251_reg_n_1_[2] ,\zext_ln17_1_reg_251_reg_n_1_[1] ,\zext_ln17_1_reg_251_reg_n_1_[0] }),
        .\q0_reg[0]_0 (shift_reg_ce0),
        .\q0_reg[15] (x_read_reg_226),
        .ram_reg_0_63_0_2_i_5(i_reg_241_reg[2:0]),
        .ram_reg_0_63_0_2_i_5_0({\i_0_reg_130_reg_n_1_[2] ,\i_0_reg_130_reg_n_1_[1] ,\i_0_reg_130_reg_n_1_[0] }));
  FDRE \x_read_reg_226_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(x[0]),
        .Q(x_read_reg_226[0]),
        .R(1'b0));
  FDRE \x_read_reg_226_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(x[10]),
        .Q(x_read_reg_226[10]),
        .R(1'b0));
  FDRE \x_read_reg_226_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(x[11]),
        .Q(x_read_reg_226[11]),
        .R(1'b0));
  FDRE \x_read_reg_226_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(x[12]),
        .Q(x_read_reg_226[12]),
        .R(1'b0));
  FDRE \x_read_reg_226_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(x[13]),
        .Q(x_read_reg_226[13]),
        .R(1'b0));
  FDRE \x_read_reg_226_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(x[14]),
        .Q(x_read_reg_226[14]),
        .R(1'b0));
  FDRE \x_read_reg_226_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(x[15]),
        .Q(x_read_reg_226[15]),
        .R(1'b0));
  FDRE \x_read_reg_226_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(x[1]),
        .Q(x_read_reg_226[1]),
        .R(1'b0));
  FDRE \x_read_reg_226_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(x[2]),
        .Q(x_read_reg_226[2]),
        .R(1'b0));
  FDRE \x_read_reg_226_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(x[3]),
        .Q(x_read_reg_226[3]),
        .R(1'b0));
  FDRE \x_read_reg_226_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(x[4]),
        .Q(x_read_reg_226[4]),
        .R(1'b0));
  FDRE \x_read_reg_226_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(x[5]),
        .Q(x_read_reg_226[5]),
        .R(1'b0));
  FDRE \x_read_reg_226_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(x[6]),
        .Q(x_read_reg_226[6]),
        .R(1'b0));
  FDRE \x_read_reg_226_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(x[7]),
        .Q(x_read_reg_226[7]),
        .R(1'b0));
  FDRE \x_read_reg_226_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(x[8]),
        .Q(x_read_reg_226[8]),
        .R(1'b0));
  FDRE \x_read_reg_226_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(x[9]),
        .Q(x_read_reg_226[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \zext_ln17_1_reg_251[5]_i_1 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(ap_condition_pp0_exit_iter0_state5),
        .O(zext_ln17_1_reg_251_reg0));
  FDRE \zext_ln17_1_reg_251_reg[0] 
       (.C(ap_clk),
        .CE(zext_ln17_1_reg_251_reg0),
        .D(c_address0[0]),
        .Q(\zext_ln17_1_reg_251_reg_n_1_[0] ),
        .R(1'b0));
  FDRE \zext_ln17_1_reg_251_reg[1] 
       (.C(ap_clk),
        .CE(zext_ln17_1_reg_251_reg0),
        .D(c_address0[1]),
        .Q(\zext_ln17_1_reg_251_reg_n_1_[1] ),
        .R(1'b0));
  FDRE \zext_ln17_1_reg_251_reg[2] 
       (.C(ap_clk),
        .CE(zext_ln17_1_reg_251_reg0),
        .D(c_address0[2]),
        .Q(\zext_ln17_1_reg_251_reg_n_1_[2] ),
        .R(1'b0));
  FDRE \zext_ln17_1_reg_251_reg[3] 
       (.C(ap_clk),
        .CE(zext_ln17_1_reg_251_reg0),
        .D(c_address0[3]),
        .Q(\zext_ln17_1_reg_251_reg_n_1_[3] ),
        .R(1'b0));
  FDRE \zext_ln17_1_reg_251_reg[4] 
       (.C(ap_clk),
        .CE(zext_ln17_1_reg_251_reg0),
        .D(c_address0[4]),
        .Q(\zext_ln17_1_reg_251_reg_n_1_[4] ),
        .R(1'b0));
  FDRE \zext_ln17_1_reg_251_reg[5] 
       (.C(ap_clk),
        .CE(zext_ln17_1_reg_251_reg0),
        .D(c_address0[5]),
        .Q(\zext_ln17_1_reg_251_reg_n_1_[5] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fir_fir_io_s_axi" *) 
module system_fir_0_1_fir_fir_io_s_axi
   (ap_rst_n_inv,
    \FSM_onehot_wstate_reg[2]_0 ,
    s_axi_fir_io_BVALID,
    \FSM_onehot_rstate_reg[1]_0 ,
    s_axi_fir_io_RVALID,
    \int_x_reg[15]_0 ,
    interrupt,
    CEA1,
    D,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_fir_io_RDATA,
    ap_clk,
    Q,
    s_axi_fir_io_WDATA,
    s_axi_fir_io_WSTRB,
    s_axi_fir_io_WVALID,
    s_axi_fir_io_BREADY,
    s_axi_fir_io_ARADDR,
    s_axi_fir_io_ARVALID,
    s_axi_fir_io_RREADY,
    P,
    ap_rst_n,
    ap_enable_reg_pp0_iter0,
    s_axi_fir_io_AWVALID,
    s_axi_fir_io_AWADDR);
  output ap_rst_n_inv;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output s_axi_fir_io_BVALID;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output s_axi_fir_io_RVALID;
  output [15:0]\int_x_reg[15]_0 ;
  output interrupt;
  output CEA1;
  output [1:0]D;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output [15:0]s_axi_fir_io_RDATA;
  input ap_clk;
  input [5:0]Q;
  input [15:0]s_axi_fir_io_WDATA;
  input [1:0]s_axi_fir_io_WSTRB;
  input s_axi_fir_io_WVALID;
  input s_axi_fir_io_BREADY;
  input [4:0]s_axi_fir_io_ARADDR;
  input s_axi_fir_io_ARVALID;
  input s_axi_fir_io_RREADY;
  input [15:0]P;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter0;
  input s_axi_fir_io_AWVALID;
  input [4:0]s_axi_fir_io_AWADDR;

  wire CEA1;
  wire [1:0]D;
  wire \FSM_onehot_rstate[1]_i_1_n_1 ;
  wire \FSM_onehot_rstate[2]_i_1_n_1 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_2_n_1 ;
  wire \FSM_onehot_wstate[2]_i_1_n_1 ;
  wire \FSM_onehot_wstate[3]_i_1_n_1 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [15:0]P;
  wire [5:0]Q;
  wire \ap_CS_fsm[1]_i_2_n_1 ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire ar_hs;
  wire int_ap_done;
  wire int_ap_done_i_1_n_1;
  wire int_ap_done_i_2_n_1;
  wire int_ap_idle;
  wire int_ap_ready;
  wire int_ap_start3_out;
  wire int_ap_start_i_1_n_1;
  wire int_auto_restart;
  wire int_auto_restart_i_1_n_1;
  wire int_auto_restart_i_2_n_1;
  wire int_gie_i_1_n_1;
  wire int_gie_reg_n_1;
  wire \int_ier[0]_i_1_n_1 ;
  wire \int_ier[1]_i_1_n_1 ;
  wire \int_ier[1]_i_2_n_1 ;
  wire \int_ier_reg_n_1_[0] ;
  wire int_isr6_out;
  wire \int_isr[0]_i_1_n_1 ;
  wire \int_isr[1]_i_1_n_1 ;
  wire \int_isr_reg_n_1_[0] ;
  wire \int_isr_reg_n_1_[1] ;
  wire \int_x[0]_i_1_n_1 ;
  wire \int_x[10]_i_1_n_1 ;
  wire \int_x[11]_i_1_n_1 ;
  wire \int_x[12]_i_1_n_1 ;
  wire \int_x[13]_i_1_n_1 ;
  wire \int_x[14]_i_1_n_1 ;
  wire \int_x[15]_i_1_n_1 ;
  wire \int_x[15]_i_2_n_1 ;
  wire \int_x[15]_i_3_n_1 ;
  wire \int_x[1]_i_1_n_1 ;
  wire \int_x[2]_i_1_n_1 ;
  wire \int_x[3]_i_1_n_1 ;
  wire \int_x[4]_i_1_n_1 ;
  wire \int_x[5]_i_1_n_1 ;
  wire \int_x[6]_i_1_n_1 ;
  wire \int_x[7]_i_1_n_1 ;
  wire \int_x[8]_i_1_n_1 ;
  wire \int_x[9]_i_1_n_1 ;
  wire [15:0]\int_x_reg[15]_0 ;
  wire int_y_ap_vld;
  wire int_y_ap_vld_i_1_n_1;
  wire int_y_ap_vld_i_2_n_1;
  wire interrupt;
  wire p_0_in;
  wire [7:2]rdata;
  wire \rdata[0]_i_1_n_1 ;
  wire \rdata[0]_i_2_n_1 ;
  wire \rdata[0]_i_3_n_1 ;
  wire \rdata[10]_i_1_n_1 ;
  wire \rdata[11]_i_1_n_1 ;
  wire \rdata[12]_i_1_n_1 ;
  wire \rdata[13]_i_1_n_1 ;
  wire \rdata[14]_i_1_n_1 ;
  wire \rdata[15]_i_1_n_1 ;
  wire \rdata[15]_i_3_n_1 ;
  wire \rdata[1]_i_1_n_1 ;
  wire \rdata[1]_i_2_n_1 ;
  wire \rdata[1]_i_3_n_1 ;
  wire \rdata[2]_i_2_n_1 ;
  wire \rdata[2]_i_3_n_1 ;
  wire \rdata[4]_i_1_n_1 ;
  wire \rdata[5]_i_1_n_1 ;
  wire \rdata[6]_i_1_n_1 ;
  wire \rdata[7]_i_2_n_1 ;
  wire \rdata[7]_i_3_n_1 ;
  wire \rdata[8]_i_1_n_1 ;
  wire \rdata[9]_i_1_n_1 ;
  wire [4:0]s_axi_fir_io_ARADDR;
  wire s_axi_fir_io_ARVALID;
  wire [4:0]s_axi_fir_io_AWADDR;
  wire s_axi_fir_io_AWVALID;
  wire s_axi_fir_io_BREADY;
  wire s_axi_fir_io_BVALID;
  wire [15:0]s_axi_fir_io_RDATA;
  wire s_axi_fir_io_RREADY;
  wire s_axi_fir_io_RVALID;
  wire [15:0]s_axi_fir_io_WDATA;
  wire [1:0]s_axi_fir_io_WSTRB;
  wire s_axi_fir_io_WVALID;
  wire waddr;
  wire \waddr_reg_n_1_[0] ;
  wire \waddr_reg_n_1_[1] ;
  wire \waddr_reg_n_1_[2] ;
  wire \waddr_reg_n_1_[3] ;
  wire \waddr_reg_n_1_[4] ;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8BFB)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_fir_io_RREADY),
        .I1(s_axi_fir_io_RVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_fir_io_ARVALID),
        .O(\FSM_onehot_rstate[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_fir_io_ARVALID),
        .I2(s_axi_fir_io_RREADY),
        .I3(s_axi_fir_io_RVALID),
        .O(\FSM_onehot_rstate[2]_i_1_n_1 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_1 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_1 ),
        .Q(s_axi_fir_io_RVALID),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hBA30BA3F)) 
    \FSM_onehot_wstate[1]_i_2 
       (.I0(s_axi_fir_io_BREADY),
        .I1(s_axi_fir_io_AWVALID),
        .I2(\FSM_onehot_wstate_reg[1]_0 ),
        .I3(s_axi_fir_io_BVALID),
        .I4(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[1]_i_2_n_1 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_fir_io_AWVALID),
        .I2(s_axi_fir_io_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_fir_io_WVALID),
        .I2(s_axi_fir_io_BREADY),
        .I3(s_axi_fir_io_BVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_1 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_2_n_1 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_1 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_1 ),
        .Q(s_axi_fir_io_BVALID),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(Q[5]),
        .I1(ap_start),
        .I2(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(\ap_CS_fsm[1]_i_2_n_1 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(ap_start),
        .I1(Q[0]),
        .O(\ap_CS_fsm[1]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
    int_ap_done_i_1
       (.I0(Q[5]),
        .I1(int_ap_done_i_2_n_1),
        .I2(s_axi_fir_io_ARADDR[1]),
        .I3(s_axi_fir_io_ARADDR[0]),
        .I4(s_axi_fir_io_ARADDR[4]),
        .I5(int_ap_done),
        .O(int_ap_done_i_1_n_1));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    int_ap_done_i_2
       (.I0(s_axi_fir_io_ARADDR[3]),
        .I1(s_axi_fir_io_ARADDR[2]),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_fir_io_ARVALID),
        .O(int_ap_done_i_2_n_1));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_done_i_1_n_1),
        .Q(int_ap_done),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_idle_i_1
       (.I0(Q[0]),
        .I1(ap_start),
        .O(ap_idle));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(int_ap_idle),
        .R(ap_rst_n_inv));
  FDRE int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(int_ap_ready),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    int_ap_start_i_1
       (.I0(int_auto_restart),
        .I1(Q[5]),
        .I2(int_ap_start3_out),
        .I3(ap_start),
        .O(int_ap_start_i_1_n_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    int_ap_start_i_2
       (.I0(s_axi_fir_io_WDATA[0]),
        .I1(s_axi_fir_io_WSTRB[0]),
        .I2(\waddr_reg_n_1_[2] ),
        .I3(int_auto_restart_i_2_n_1),
        .O(int_ap_start3_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_1),
        .Q(ap_start),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    int_auto_restart_i_1
       (.I0(s_axi_fir_io_WDATA[7]),
        .I1(int_auto_restart_i_2_n_1),
        .I2(\waddr_reg_n_1_[2] ),
        .I3(s_axi_fir_io_WSTRB[0]),
        .I4(int_auto_restart),
        .O(int_auto_restart_i_1_n_1));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    int_auto_restart_i_2
       (.I0(\waddr_reg_n_1_[3] ),
        .I1(\waddr_reg_n_1_[4] ),
        .I2(s_axi_fir_io_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .I4(\waddr_reg_n_1_[0] ),
        .I5(\waddr_reg_n_1_[1] ),
        .O(int_auto_restart_i_2_n_1));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_1),
        .Q(int_auto_restart),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    int_gie_i_1
       (.I0(s_axi_fir_io_WDATA[0]),
        .I1(int_auto_restart_i_2_n_1),
        .I2(\waddr_reg_n_1_[2] ),
        .I3(s_axi_fir_io_WSTRB[0]),
        .I4(int_gie_reg_n_1),
        .O(int_gie_i_1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_1),
        .Q(int_gie_reg_n_1),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_fir_io_WDATA[0]),
        .I1(\waddr_reg_n_1_[2] ),
        .I2(s_axi_fir_io_WSTRB[0]),
        .I3(\int_ier[1]_i_2_n_1 ),
        .I4(\int_ier_reg_n_1_[0] ),
        .O(\int_ier[0]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_fir_io_WDATA[1]),
        .I1(\waddr_reg_n_1_[2] ),
        .I2(s_axi_fir_io_WSTRB[0]),
        .I3(\int_ier[1]_i_2_n_1 ),
        .I4(p_0_in),
        .O(\int_ier[1]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \int_ier[1]_i_2 
       (.I0(\waddr_reg_n_1_[4] ),
        .I1(\waddr_reg_n_1_[1] ),
        .I2(\waddr_reg_n_1_[0] ),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .I4(s_axi_fir_io_WVALID),
        .I5(\waddr_reg_n_1_[3] ),
        .O(\int_ier[1]_i_2_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_1 ),
        .Q(\int_ier_reg_n_1_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_1 ),
        .Q(p_0_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_fir_io_WDATA[0]),
        .I1(int_isr6_out),
        .I2(\int_ier_reg_n_1_[0] ),
        .I3(Q[5]),
        .I4(\int_isr_reg_n_1_[0] ),
        .O(\int_isr[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \int_isr[0]_i_2 
       (.I0(\waddr_reg_n_1_[2] ),
        .I1(s_axi_fir_io_WSTRB[0]),
        .I2(\int_ier[1]_i_2_n_1 ),
        .O(int_isr6_out));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_fir_io_WDATA[1]),
        .I1(int_isr6_out),
        .I2(p_0_in),
        .I3(Q[5]),
        .I4(\int_isr_reg_n_1_[1] ),
        .O(\int_isr[1]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_1 ),
        .Q(\int_isr_reg_n_1_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_1 ),
        .Q(\int_isr_reg_n_1_[1] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[0]_i_1 
       (.I0(s_axi_fir_io_WDATA[0]),
        .I1(s_axi_fir_io_WSTRB[0]),
        .I2(\int_x_reg[15]_0 [0]),
        .O(\int_x[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[10]_i_1 
       (.I0(s_axi_fir_io_WDATA[10]),
        .I1(s_axi_fir_io_WSTRB[1]),
        .I2(\int_x_reg[15]_0 [10]),
        .O(\int_x[10]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[11]_i_1 
       (.I0(s_axi_fir_io_WDATA[11]),
        .I1(s_axi_fir_io_WSTRB[1]),
        .I2(\int_x_reg[15]_0 [11]),
        .O(\int_x[11]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[12]_i_1 
       (.I0(s_axi_fir_io_WDATA[12]),
        .I1(s_axi_fir_io_WSTRB[1]),
        .I2(\int_x_reg[15]_0 [12]),
        .O(\int_x[12]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[13]_i_1 
       (.I0(s_axi_fir_io_WDATA[13]),
        .I1(s_axi_fir_io_WSTRB[1]),
        .I2(\int_x_reg[15]_0 [13]),
        .O(\int_x[13]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[14]_i_1 
       (.I0(s_axi_fir_io_WDATA[14]),
        .I1(s_axi_fir_io_WSTRB[1]),
        .I2(\int_x_reg[15]_0 [14]),
        .O(\int_x[14]_i_1_n_1 ));
  LUT3 #(
    .INIT(8'h08)) 
    \int_x[15]_i_1 
       (.I0(\int_x[15]_i_3_n_1 ),
        .I1(\waddr_reg_n_1_[4] ),
        .I2(\waddr_reg_n_1_[2] ),
        .O(\int_x[15]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[15]_i_2 
       (.I0(s_axi_fir_io_WDATA[15]),
        .I1(s_axi_fir_io_WSTRB[1]),
        .I2(\int_x_reg[15]_0 [15]),
        .O(\int_x[15]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \int_x[15]_i_3 
       (.I0(\waddr_reg_n_1_[3] ),
        .I1(s_axi_fir_io_WVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(\waddr_reg_n_1_[0] ),
        .I4(\waddr_reg_n_1_[1] ),
        .O(\int_x[15]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[1]_i_1 
       (.I0(s_axi_fir_io_WDATA[1]),
        .I1(s_axi_fir_io_WSTRB[0]),
        .I2(\int_x_reg[15]_0 [1]),
        .O(\int_x[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[2]_i_1 
       (.I0(s_axi_fir_io_WDATA[2]),
        .I1(s_axi_fir_io_WSTRB[0]),
        .I2(\int_x_reg[15]_0 [2]),
        .O(\int_x[2]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[3]_i_1 
       (.I0(s_axi_fir_io_WDATA[3]),
        .I1(s_axi_fir_io_WSTRB[0]),
        .I2(\int_x_reg[15]_0 [3]),
        .O(\int_x[3]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[4]_i_1 
       (.I0(s_axi_fir_io_WDATA[4]),
        .I1(s_axi_fir_io_WSTRB[0]),
        .I2(\int_x_reg[15]_0 [4]),
        .O(\int_x[4]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[5]_i_1 
       (.I0(s_axi_fir_io_WDATA[5]),
        .I1(s_axi_fir_io_WSTRB[0]),
        .I2(\int_x_reg[15]_0 [5]),
        .O(\int_x[5]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[6]_i_1 
       (.I0(s_axi_fir_io_WDATA[6]),
        .I1(s_axi_fir_io_WSTRB[0]),
        .I2(\int_x_reg[15]_0 [6]),
        .O(\int_x[6]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[7]_i_1 
       (.I0(s_axi_fir_io_WDATA[7]),
        .I1(s_axi_fir_io_WSTRB[0]),
        .I2(\int_x_reg[15]_0 [7]),
        .O(\int_x[7]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[8]_i_1 
       (.I0(s_axi_fir_io_WDATA[8]),
        .I1(s_axi_fir_io_WSTRB[1]),
        .I2(\int_x_reg[15]_0 [8]),
        .O(\int_x[8]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[9]_i_1 
       (.I0(s_axi_fir_io_WDATA[9]),
        .I1(s_axi_fir_io_WSTRB[1]),
        .I2(\int_x_reg[15]_0 [9]),
        .O(\int_x[9]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[0] 
       (.C(ap_clk),
        .CE(\int_x[15]_i_1_n_1 ),
        .D(\int_x[0]_i_1_n_1 ),
        .Q(\int_x_reg[15]_0 [0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[10] 
       (.C(ap_clk),
        .CE(\int_x[15]_i_1_n_1 ),
        .D(\int_x[10]_i_1_n_1 ),
        .Q(\int_x_reg[15]_0 [10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[11] 
       (.C(ap_clk),
        .CE(\int_x[15]_i_1_n_1 ),
        .D(\int_x[11]_i_1_n_1 ),
        .Q(\int_x_reg[15]_0 [11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[12] 
       (.C(ap_clk),
        .CE(\int_x[15]_i_1_n_1 ),
        .D(\int_x[12]_i_1_n_1 ),
        .Q(\int_x_reg[15]_0 [12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[13] 
       (.C(ap_clk),
        .CE(\int_x[15]_i_1_n_1 ),
        .D(\int_x[13]_i_1_n_1 ),
        .Q(\int_x_reg[15]_0 [13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[14] 
       (.C(ap_clk),
        .CE(\int_x[15]_i_1_n_1 ),
        .D(\int_x[14]_i_1_n_1 ),
        .Q(\int_x_reg[15]_0 [14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[15] 
       (.C(ap_clk),
        .CE(\int_x[15]_i_1_n_1 ),
        .D(\int_x[15]_i_2_n_1 ),
        .Q(\int_x_reg[15]_0 [15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[1] 
       (.C(ap_clk),
        .CE(\int_x[15]_i_1_n_1 ),
        .D(\int_x[1]_i_1_n_1 ),
        .Q(\int_x_reg[15]_0 [1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[2] 
       (.C(ap_clk),
        .CE(\int_x[15]_i_1_n_1 ),
        .D(\int_x[2]_i_1_n_1 ),
        .Q(\int_x_reg[15]_0 [2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[3] 
       (.C(ap_clk),
        .CE(\int_x[15]_i_1_n_1 ),
        .D(\int_x[3]_i_1_n_1 ),
        .Q(\int_x_reg[15]_0 [3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[4] 
       (.C(ap_clk),
        .CE(\int_x[15]_i_1_n_1 ),
        .D(\int_x[4]_i_1_n_1 ),
        .Q(\int_x_reg[15]_0 [4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[5] 
       (.C(ap_clk),
        .CE(\int_x[15]_i_1_n_1 ),
        .D(\int_x[5]_i_1_n_1 ),
        .Q(\int_x_reg[15]_0 [5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[6] 
       (.C(ap_clk),
        .CE(\int_x[15]_i_1_n_1 ),
        .D(\int_x[6]_i_1_n_1 ),
        .Q(\int_x_reg[15]_0 [6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[7] 
       (.C(ap_clk),
        .CE(\int_x[15]_i_1_n_1 ),
        .D(\int_x[7]_i_1_n_1 ),
        .Q(\int_x_reg[15]_0 [7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[8] 
       (.C(ap_clk),
        .CE(\int_x[15]_i_1_n_1 ),
        .D(\int_x[8]_i_1_n_1 ),
        .Q(\int_x_reg[15]_0 [8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[9] 
       (.C(ap_clk),
        .CE(\int_x[15]_i_1_n_1 ),
        .D(\int_x[9]_i_1_n_1 ),
        .Q(\int_x_reg[15]_0 [9]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFEFFFFAAAAAAAA)) 
    int_y_ap_vld_i_1
       (.I0(Q[5]),
        .I1(int_y_ap_vld_i_2_n_1),
        .I2(s_axi_fir_io_ARADDR[1]),
        .I3(s_axi_fir_io_ARADDR[0]),
        .I4(s_axi_fir_io_ARADDR[4]),
        .I5(int_y_ap_vld),
        .O(int_y_ap_vld_i_1_n_1));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    int_y_ap_vld_i_2
       (.I0(s_axi_fir_io_ARADDR[2]),
        .I1(s_axi_fir_io_ARADDR[3]),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_fir_io_ARVALID),
        .O(int_y_ap_vld_i_2_n_1));
  FDRE int_y_ap_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_y_ap_vld_i_1_n_1),
        .Q(int_y_ap_vld),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hA8)) 
    interrupt_INST_0
       (.I0(int_gie_reg_n_1),
        .I1(\int_isr_reg_n_1_[1] ),
        .I2(\int_isr_reg_n_1_[0] ),
        .O(interrupt));
  LUT4 #(
    .INIT(16'hF888)) 
    \q0[15]_i_1 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(ap_start),
        .O(CEA1));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \rdata[0]_i_1 
       (.I0(\rdata[0]_i_2_n_1 ),
        .I1(s_axi_fir_io_ARADDR[4]),
        .I2(\rdata[0]_i_3_n_1 ),
        .I3(s_axi_fir_io_ARADDR[1]),
        .I4(s_axi_fir_io_ARADDR[0]),
        .O(\rdata[0]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[0]_i_2 
       (.I0(\int_x_reg[15]_0 [0]),
        .I1(s_axi_fir_io_ARADDR[3]),
        .I2(int_y_ap_vld),
        .I3(s_axi_fir_io_ARADDR[2]),
        .I4(P[0]),
        .O(\rdata[0]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[0]_i_3 
       (.I0(\int_isr_reg_n_1_[0] ),
        .I1(\int_ier_reg_n_1_[0] ),
        .I2(s_axi_fir_io_ARADDR[3]),
        .I3(int_gie_reg_n_1),
        .I4(s_axi_fir_io_ARADDR[2]),
        .I5(ap_start),
        .O(\rdata[0]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[10]_i_1 
       (.I0(\int_x_reg[15]_0 [10]),
        .I1(s_axi_fir_io_ARADDR[3]),
        .I2(P[10]),
        .O(\rdata[10]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[11]_i_1 
       (.I0(\int_x_reg[15]_0 [11]),
        .I1(s_axi_fir_io_ARADDR[3]),
        .I2(P[11]),
        .O(\rdata[11]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[12]_i_1 
       (.I0(\int_x_reg[15]_0 [12]),
        .I1(s_axi_fir_io_ARADDR[3]),
        .I2(P[12]),
        .O(\rdata[12]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[13]_i_1 
       (.I0(\int_x_reg[15]_0 [13]),
        .I1(s_axi_fir_io_ARADDR[3]),
        .I2(P[13]),
        .O(\rdata[13]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[14]_i_1 
       (.I0(\int_x_reg[15]_0 [14]),
        .I1(s_axi_fir_io_ARADDR[3]),
        .I2(P[14]),
        .O(\rdata[14]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFD000000000000)) 
    \rdata[15]_i_1 
       (.I0(s_axi_fir_io_ARADDR[4]),
        .I1(s_axi_fir_io_ARADDR[2]),
        .I2(s_axi_fir_io_ARADDR[1]),
        .I3(s_axi_fir_io_ARADDR[0]),
        .I4(\FSM_onehot_rstate_reg[1]_0 ),
        .I5(s_axi_fir_io_ARVALID),
        .O(\rdata[15]_i_1_n_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[15]_i_2 
       (.I0(s_axi_fir_io_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(ar_hs));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[15]_i_3 
       (.I0(\int_x_reg[15]_0 [15]),
        .I1(s_axi_fir_io_ARADDR[3]),
        .I2(P[15]),
        .O(\rdata[15]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h000000B8)) 
    \rdata[1]_i_1 
       (.I0(\rdata[1]_i_2_n_1 ),
        .I1(s_axi_fir_io_ARADDR[4]),
        .I2(\rdata[1]_i_3_n_1 ),
        .I3(s_axi_fir_io_ARADDR[1]),
        .I4(s_axi_fir_io_ARADDR[0]),
        .O(\rdata[1]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \rdata[1]_i_2 
       (.I0(\int_x_reg[15]_0 [1]),
        .I1(s_axi_fir_io_ARADDR[3]),
        .I2(P[1]),
        .I3(s_axi_fir_io_ARADDR[2]),
        .O(\rdata[1]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[1]_i_3 
       (.I0(\int_isr_reg_n_1_[1] ),
        .I1(p_0_in),
        .I2(s_axi_fir_io_ARADDR[3]),
        .I3(int_ap_done),
        .I4(s_axi_fir_io_ARADDR[2]),
        .O(\rdata[1]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h000000000AFC0A0C)) 
    \rdata[2]_i_1 
       (.I0(\int_x_reg[15]_0 [2]),
        .I1(P[2]),
        .I2(\rdata[2]_i_2_n_1 ),
        .I3(s_axi_fir_io_ARADDR[3]),
        .I4(int_ap_idle),
        .I5(\rdata[2]_i_3_n_1 ),
        .O(rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \rdata[2]_i_2 
       (.I0(s_axi_fir_io_ARADDR[4]),
        .I1(s_axi_fir_io_ARADDR[0]),
        .I2(s_axi_fir_io_ARADDR[1]),
        .O(\rdata[2]_i_2_n_1 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \rdata[2]_i_3 
       (.I0(s_axi_fir_io_ARADDR[2]),
        .I1(s_axi_fir_io_ARADDR[1]),
        .I2(s_axi_fir_io_ARADDR[0]),
        .O(\rdata[2]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h00AA00AA0CFF0C0C)) 
    \rdata[3]_i_1 
       (.I0(\int_x_reg[15]_0 [3]),
        .I1(int_ap_ready),
        .I2(\rdata[7]_i_2_n_1 ),
        .I3(\rdata[7]_i_3_n_1 ),
        .I4(P[3]),
        .I5(s_axi_fir_io_ARADDR[3]),
        .O(rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[4]_i_1 
       (.I0(\int_x_reg[15]_0 [4]),
        .I1(s_axi_fir_io_ARADDR[3]),
        .I2(P[4]),
        .O(\rdata[4]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[5]_i_1 
       (.I0(\int_x_reg[15]_0 [5]),
        .I1(s_axi_fir_io_ARADDR[3]),
        .I2(P[5]),
        .O(\rdata[5]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[6]_i_1 
       (.I0(\int_x_reg[15]_0 [6]),
        .I1(s_axi_fir_io_ARADDR[3]),
        .I2(P[6]),
        .O(\rdata[6]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00AA00AA0CFF0C0C)) 
    \rdata[7]_i_1 
       (.I0(\int_x_reg[15]_0 [7]),
        .I1(int_auto_restart),
        .I2(\rdata[7]_i_2_n_1 ),
        .I3(\rdata[7]_i_3_n_1 ),
        .I4(P[7]),
        .I5(s_axi_fir_io_ARADDR[3]),
        .O(rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rdata[7]_i_2 
       (.I0(s_axi_fir_io_ARADDR[2]),
        .I1(s_axi_fir_io_ARADDR[1]),
        .I2(s_axi_fir_io_ARADDR[0]),
        .I3(s_axi_fir_io_ARADDR[4]),
        .O(\rdata[7]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \rdata[7]_i_3 
       (.I0(s_axi_fir_io_ARADDR[0]),
        .I1(s_axi_fir_io_ARADDR[1]),
        .I2(s_axi_fir_io_ARADDR[2]),
        .I3(s_axi_fir_io_ARADDR[4]),
        .O(\rdata[7]_i_3_n_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[8]_i_1 
       (.I0(\int_x_reg[15]_0 [8]),
        .I1(s_axi_fir_io_ARADDR[3]),
        .I2(P[8]),
        .O(\rdata[8]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[9]_i_1 
       (.I0(\int_x_reg[15]_0 [9]),
        .I1(s_axi_fir_io_ARADDR[3]),
        .I2(P[9]),
        .O(\rdata[9]_i_1_n_1 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[0]_i_1_n_1 ),
        .Q(s_axi_fir_io_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[10]_i_1_n_1 ),
        .Q(s_axi_fir_io_RDATA[10]),
        .R(\rdata[15]_i_1_n_1 ));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[11]_i_1_n_1 ),
        .Q(s_axi_fir_io_RDATA[11]),
        .R(\rdata[15]_i_1_n_1 ));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[12]_i_1_n_1 ),
        .Q(s_axi_fir_io_RDATA[12]),
        .R(\rdata[15]_i_1_n_1 ));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[13]_i_1_n_1 ),
        .Q(s_axi_fir_io_RDATA[13]),
        .R(\rdata[15]_i_1_n_1 ));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[14]_i_1_n_1 ),
        .Q(s_axi_fir_io_RDATA[14]),
        .R(\rdata[15]_i_1_n_1 ));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[15]_i_3_n_1 ),
        .Q(s_axi_fir_io_RDATA[15]),
        .R(\rdata[15]_i_1_n_1 ));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[1]_i_1_n_1 ),
        .Q(s_axi_fir_io_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[2]),
        .Q(s_axi_fir_io_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[3]),
        .Q(s_axi_fir_io_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[4]_i_1_n_1 ),
        .Q(s_axi_fir_io_RDATA[4]),
        .R(\rdata[15]_i_1_n_1 ));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[5]_i_1_n_1 ),
        .Q(s_axi_fir_io_RDATA[5]),
        .R(\rdata[15]_i_1_n_1 ));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[6]_i_1_n_1 ),
        .Q(s_axi_fir_io_RDATA[6]),
        .R(\rdata[15]_i_1_n_1 ));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[7]),
        .Q(s_axi_fir_io_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[8]_i_1_n_1 ),
        .Q(s_axi_fir_io_RDATA[8]),
        .R(\rdata[15]_i_1_n_1 ));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[9]_i_1_n_1 ),
        .Q(s_axi_fir_io_RDATA[9]),
        .R(\rdata[15]_i_1_n_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[4]_i_1 
       (.I0(s_axi_fir_io_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_fir_io_AWADDR[0]),
        .Q(\waddr_reg_n_1_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_fir_io_AWADDR[1]),
        .Q(\waddr_reg_n_1_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_fir_io_AWADDR[2]),
        .Q(\waddr_reg_n_1_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_fir_io_AWADDR[3]),
        .Q(\waddr_reg_n_1_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_fir_io_AWADDR[4]),
        .Q(\waddr_reg_n_1_[4] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fir_mac_muladd_10dEe" *) 
module system_fir_0_1_fir_mac_muladd_10dEe
   (P,
    Q,
    ap_clk,
    SR,
    p,
    p_0);
  output [15:0]P;
  input [1:0]Q;
  input ap_clk;
  input [0:0]SR;
  input [15:0]p;
  input [30:0]p_0;

  wire [15:0]P;
  wire [1:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire [15:0]p;
  wire [30:0]p_0;

  system_fir_0_1_fir_mac_muladd_10dEe_DSP48_2 fir_mac_muladd_10dEe_DSP48_2_U
       (.P(P),
        .Q(Q),
        .SR(SR),
        .ap_clk(ap_clk),
        .p_0(p),
        .p_1(p_0));
endmodule

(* ORIG_REF_NAME = "fir_mac_muladd_10dEe_DSP48_2" *) 
module system_fir_0_1_fir_mac_muladd_10dEe_DSP48_2
   (P,
    Q,
    ap_clk,
    SR,
    p_0,
    p_1);
  output [15:0]P;
  input [1:0]Q;
  input ap_clk;
  input [0:0]SR;
  input [15:0]p_0;
  input [30:0]p_1;

  wire [15:0]P;
  wire [1:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire [15:0]p_0;
  wire [30:0]p_1;
  wire p_n_100;
  wire p_n_101;
  wire p_n_102;
  wire p_n_103;
  wire p_n_104;
  wire p_n_105;
  wire p_n_106;
  wire p_n_92;
  wire p_n_93;
  wire p_n_94;
  wire p_n_95;
  wire p_n_96;
  wire p_n_97;
  wire p_n_98;
  wire p_n_99;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:31]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p
       (.A({p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({p_1[30],p_1[30],p_1[30],p_1[30],p_1[30],p_1[30],p_1[30],p_1[30],p_1[30],p_1[30],p_1[30],p_1[30],p_1[30],p_1[30],p_1[30],p_1[30],p_1[30],p_1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q[0]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(Q[1]),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({NLW_p_P_UNCONNECTED[47:31],P,p_n_92,p_n_93,p_n_94,p_n_95,p_n_96,p_n_97,p_n_98,p_n_99,p_n_100,p_n_101,p_n_102,p_n_103,p_n_104,p_n_105,p_n_106}),
        .PATTERNBDETECT(NLW_p_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(SR),
        .UNDERFLOW(NLW_p_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "fir_mac_muladd_16cud" *) 
module system_fir_0_1_fir_mac_muladd_16cud
   (c_address0,
    CEA2,
    P,
    Q,
    p,
    \zext_ln17_1_reg_251_reg[5] ,
    p_0,
    \zext_ln17_1_reg_251_reg[5]_0 ,
    icmp_ln15_reg_237_pp0_iter1_reg,
    ap_enable_reg_pp0_iter2,
    CEA1,
    CEB1,
    ap_clk,
    q00,
    C);
  output [5:0]c_address0;
  output CEA2;
  output [30:0]P;
  input [2:0]Q;
  input p;
  input [5:0]\zext_ln17_1_reg_251_reg[5] ;
  input p_0;
  input [5:0]\zext_ln17_1_reg_251_reg[5]_0 ;
  input icmp_ln15_reg_237_pp0_iter1_reg;
  input ap_enable_reg_pp0_iter2;
  input CEA1;
  input CEB1;
  input ap_clk;
  input [15:0]q00;
  input [25:0]C;

  wire [25:0]C;
  wire CEA1;
  wire CEA2;
  wire CEB1;
  wire [30:0]P;
  wire [2:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter2;
  wire [5:0]c_address0;
  wire icmp_ln15_reg_237_pp0_iter1_reg;
  wire p;
  wire p_0;
  wire [15:0]q00;
  wire [5:0]\zext_ln17_1_reg_251_reg[5] ;
  wire [5:0]\zext_ln17_1_reg_251_reg[5]_0 ;

  system_fir_0_1_fir_mac_muladd_16cud_DSP48_1 fir_mac_muladd_16cud_DSP48_1_U
       (.C(C),
        .CEA1(CEA1),
        .CEA2(CEA2),
        .CEB1(CEB1),
        .P(P),
        .Q(Q),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .icmp_ln15_reg_237_pp0_iter1_reg(icmp_ln15_reg_237_pp0_iter1_reg),
        .p_0(p),
        .p_1(p_0),
        .q00(q00),
        .sel(c_address0),
        .\zext_ln17_1_reg_251_reg[5] (\zext_ln17_1_reg_251_reg[5] ),
        .\zext_ln17_1_reg_251_reg[5]_0 (\zext_ln17_1_reg_251_reg[5]_0 ));
endmodule

(* ORIG_REF_NAME = "fir_mac_muladd_16cud_DSP48_1" *) 
module system_fir_0_1_fir_mac_muladd_16cud_DSP48_1
   (sel,
    CEA2,
    P,
    Q,
    p_0,
    \zext_ln17_1_reg_251_reg[5] ,
    p_1,
    \zext_ln17_1_reg_251_reg[5]_0 ,
    icmp_ln15_reg_237_pp0_iter1_reg,
    ap_enable_reg_pp0_iter2,
    CEA1,
    CEB1,
    ap_clk,
    q00,
    C);
  output [5:0]sel;
  output CEA2;
  output [30:0]P;
  input [2:0]Q;
  input p_0;
  input [5:0]\zext_ln17_1_reg_251_reg[5] ;
  input p_1;
  input [5:0]\zext_ln17_1_reg_251_reg[5]_0 ;
  input icmp_ln15_reg_237_pp0_iter1_reg;
  input ap_enable_reg_pp0_iter2;
  input CEA1;
  input CEB1;
  input ap_clk;
  input [15:0]q00;
  input [25:0]C;

  wire [25:0]C;
  wire CEA1;
  wire CEA2;
  wire CEB1;
  wire [30:0]P;
  wire [2:0]Q;
  wire acc_0_reg_1201;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter2;
  wire c_load_reg_2610;
  wire g0_b0_n_1;
  wire g0_b10_n_1;
  wire g0_b11_n_1;
  wire g0_b12_n_1;
  wire g0_b13_n_1;
  wire g0_b1_n_1;
  wire g0_b2_n_1;
  wire g0_b3_n_1;
  wire g0_b4_n_1;
  wire g0_b5_n_1;
  wire g0_b6_n_1;
  wire g0_b7_n_1;
  wire g0_b8_n_1;
  wire g0_b9_n_1;
  wire icmp_ln15_reg_237_pp0_iter1_reg;
  wire p_0;
  wire p_1;
  wire p_i_3_n_1;
  wire p_i_4_n_1;
  wire p_n_70;
  wire p_n_71;
  wire p_n_72;
  wire p_n_73;
  wire p_n_74;
  wire p_n_75;
  wire [15:0]q00;
  wire [5:0]sel;
  wire [5:0]\zext_ln17_1_reg_251_reg[5] ;
  wire [5:0]\zext_ln17_1_reg_251_reg[5]_0 ;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:37]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;

  LUT4 #(
    .INIT(16'hBAAA)) 
    acc_reg_221_reg_i_1
       (.I0(Q[0]),
        .I1(p_0),
        .I2(Q[2]),
        .I3(p_1),
        .O(CEA2));
  LUT6 #(
    .INIT(64'h0300865F27D30806)) 
    g0_b0
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(g0_b0_n_1));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    g0_b0_i_1
       (.I0(\zext_ln17_1_reg_251_reg[5] [0]),
        .I1(p_1),
        .I2(Q[2]),
        .I3(p_0),
        .I4(\zext_ln17_1_reg_251_reg[5]_0 [0]),
        .O(sel[0]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    g0_b0_i_2
       (.I0(\zext_ln17_1_reg_251_reg[5] [1]),
        .I1(p_1),
        .I2(Q[2]),
        .I3(p_0),
        .I4(\zext_ln17_1_reg_251_reg[5]_0 [1]),
        .O(sel[1]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    g0_b0_i_3
       (.I0(\zext_ln17_1_reg_251_reg[5] [2]),
        .I1(p_1),
        .I2(Q[2]),
        .I3(p_0),
        .I4(\zext_ln17_1_reg_251_reg[5]_0 [2]),
        .O(sel[2]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    g0_b0_i_4
       (.I0(\zext_ln17_1_reg_251_reg[5] [3]),
        .I1(p_1),
        .I2(Q[2]),
        .I3(p_0),
        .I4(\zext_ln17_1_reg_251_reg[5]_0 [3]),
        .O(sel[3]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    g0_b0_i_5
       (.I0(\zext_ln17_1_reg_251_reg[5] [4]),
        .I1(p_1),
        .I2(Q[2]),
        .I3(p_0),
        .I4(\zext_ln17_1_reg_251_reg[5]_0 [4]),
        .O(sel[4]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    g0_b0_i_6
       (.I0(\zext_ln17_1_reg_251_reg[5] [5]),
        .I1(p_1),
        .I2(Q[2]),
        .I3(p_0),
        .I4(\zext_ln17_1_reg_251_reg[5]_0 [5]),
        .O(sel[5]));
  LUT6 #(
    .INIT(64'h07D44194514C115F)) 
    g0_b1
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(g0_b1_n_1));
  LUT6 #(
    .INIT(64'h06030CE252398603)) 
    g0_b10
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(g0_b10_n_1));
  LUT6 #(
    .INIT(64'h06030FDC89DF8603)) 
    g0_b11
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(g0_b11_n_1));
  LUT6 #(
    .INIT(64'h06030FC0F81F8603)) 
    g0_b12
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(g0_b12_n_1));
  LUT6 #(
    .INIT(64'h06030FC0D81F8603)) 
    g0_b13
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(g0_b13_n_1));
  LUT6 #(
    .INIT(64'h06148EEC71BB8943)) 
    g0_b2
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(g0_b2_n_1));
  LUT6 #(
    .INIT(64'h01DC7F6974B7F1DC)) 
    g0_b3
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(g0_b3_n_1));
  LUT6 #(
    .INIT(64'h0302EE15DD43BA06)) 
    g0_b4
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(g0_b4_n_1));
  LUT6 #(
    .INIT(64'h02FAD33222665AFA)) 
    g0_b5
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(g0_b5_n_1));
  LUT6 #(
    .INIT(64'h002122E68B3A2420)) 
    g0_b6
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(g0_b6_n_1));
  LUT6 #(
    .INIT(64'h068B6F500057B68B)) 
    g0_b7
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(g0_b7_n_1));
  LUT6 #(
    .INIT(64'h0273004888900672)) 
    g0_b8
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(g0_b8_n_1));
  LUT6 #(
    .INIT(64'h06030B4E23968603)) 
    g0_b9
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(g0_b9_n_1));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p
       (.A({q00[15],q00[15],q00[15],q00[15],q00[15],q00[15],q00[15],q00[15],q00[15],q00[15],q00[15],q00[15],q00[15],q00[15],q00}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({g0_b13_n_1,g0_b13_n_1,g0_b13_n_1,g0_b12_n_1,g0_b12_n_1,g0_b12_n_1,g0_b11_n_1,g0_b10_n_1,g0_b9_n_1,g0_b8_n_1,g0_b7_n_1,g0_b6_n_1,g0_b5_n_1,g0_b4_n_1,g0_b3_n_1,g0_b2_n_1,g0_b1_n_1,g0_b0_n_1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,C[25],C[25],C[25],C[25],C[25],C[25],C[25],C[25],C[25],C[25],C[25],C}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(CEA1),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(CEB1),
        .CEB2(c_load_reg_2610),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(p_i_3_n_1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,p_i_4_n_1,1'b0,acc_0_reg_1201,1'b0,acc_0_reg_1201}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({NLW_p_P_UNCONNECTED[47:37],p_n_70,p_n_71,p_n_72,p_n_73,p_n_74,p_n_75,P}),
        .PATTERNBDETECT(NLW_p_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h2)) 
    p_i_2
       (.I0(Q[2]),
        .I1(p_0),
        .O(c_load_reg_2610));
  LUT3 #(
    .INIT(8'hBA)) 
    p_i_3
       (.I0(Q[1]),
        .I1(icmp_ln15_reg_237_pp0_iter1_reg),
        .I2(ap_enable_reg_pp0_iter2),
        .O(p_i_3_n_1));
  LUT2 #(
    .INIT(4'hB)) 
    p_i_4
       (.I0(icmp_ln15_reg_237_pp0_iter1_reg),
        .I1(ap_enable_reg_pp0_iter2),
        .O(p_i_4_n_1));
  LUT2 #(
    .INIT(4'h2)) 
    p_i_5
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(icmp_ln15_reg_237_pp0_iter1_reg),
        .O(acc_0_reg_1201));
endmodule

(* ORIG_REF_NAME = "fir_shift_reg" *) 
module system_fir_0_1_fir_shift_reg
   (E,
    CEB1,
    q00,
    Q,
    \i_0_reg_130_reg[0] ,
    \i_0_reg_130_reg[0]_0 ,
    ram_reg_0_63_0_2_i_5,
    ram_reg_0_63_0_2_i_5_0,
    c_address0,
    ap_enable_reg_pp0_iter0,
    \q0_reg[0] ,
    \q0_reg[15] ,
    \q0_reg[0]_0 ,
    ap_clk);
  output [0:0]E;
  output CEB1;
  output [15:0]q00;
  input [1:0]Q;
  input \i_0_reg_130_reg[0] ;
  input \i_0_reg_130_reg[0]_0 ;
  input [2:0]ram_reg_0_63_0_2_i_5;
  input [2:0]ram_reg_0_63_0_2_i_5_0;
  input [5:0]c_address0;
  input ap_enable_reg_pp0_iter0;
  input [5:0]\q0_reg[0] ;
  input [15:0]\q0_reg[15] ;
  input [0:0]\q0_reg[0]_0 ;
  input ap_clk;

  wire CEB1;
  wire [0:0]E;
  wire [1:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire [5:0]c_address0;
  wire \i_0_reg_130_reg[0] ;
  wire \i_0_reg_130_reg[0]_0 ;
  wire [15:0]q00;
  wire [5:0]\q0_reg[0] ;
  wire [0:0]\q0_reg[0]_0 ;
  wire [15:0]\q0_reg[15] ;
  wire [2:0]ram_reg_0_63_0_2_i_5;
  wire [2:0]ram_reg_0_63_0_2_i_5_0;

  system_fir_0_1_fir_shift_reg_ram fir_shift_reg_ram_U
       (.CEB1(CEB1),
        .E(E),
        .Q(Q),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .c_address0(c_address0),
        .\i_0_reg_130_reg[0] (\i_0_reg_130_reg[0] ),
        .\i_0_reg_130_reg[0]_0 (\i_0_reg_130_reg[0]_0 ),
        .q00(q00),
        .\q0_reg[0]_0 (\q0_reg[0] ),
        .\q0_reg[0]_1 (\q0_reg[0]_0 ),
        .\q0_reg[15]_0 (\q0_reg[15] ),
        .ram_reg_0_63_0_2_i_5_0(ram_reg_0_63_0_2_i_5),
        .ram_reg_0_63_0_2_i_5_1(ram_reg_0_63_0_2_i_5_0));
endmodule

(* ORIG_REF_NAME = "fir_shift_reg_ram" *) 
module system_fir_0_1_fir_shift_reg_ram
   (E,
    CEB1,
    q00,
    Q,
    \i_0_reg_130_reg[0] ,
    \i_0_reg_130_reg[0]_0 ,
    ram_reg_0_63_0_2_i_5_0,
    ram_reg_0_63_0_2_i_5_1,
    c_address0,
    ap_enable_reg_pp0_iter0,
    \q0_reg[0]_0 ,
    \q0_reg[15]_0 ,
    \q0_reg[0]_1 ,
    ap_clk);
  output [0:0]E;
  output CEB1;
  output [15:0]q00;
  input [1:0]Q;
  input \i_0_reg_130_reg[0] ;
  input \i_0_reg_130_reg[0]_0 ;
  input [2:0]ram_reg_0_63_0_2_i_5_0;
  input [2:0]ram_reg_0_63_0_2_i_5_1;
  input [5:0]c_address0;
  input ap_enable_reg_pp0_iter0;
  input [5:0]\q0_reg[0]_0 ;
  input [15:0]\q0_reg[15]_0 ;
  input [0:0]\q0_reg[0]_1 ;
  input ap_clk;

  wire CEB1;
  wire [0:0]E;
  wire [1:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire [5:0]c_address0;
  wire [15:0]d1;
  wire \i_0_reg_130_reg[0] ;
  wire \i_0_reg_130_reg[0]_0 ;
  wire p_0_in;
  wire [15:0]q0;
  wire [15:0]q00;
  wire [5:0]\q0_reg[0]_0 ;
  wire [0:0]\q0_reg[0]_1 ;
  wire [15:0]\q0_reg[15]_0 ;
  wire ram_reg_0_63_0_2_i_17_n_1;
  wire [2:0]ram_reg_0_63_0_2_i_5_0;
  wire [2:0]ram_reg_0_63_0_2_i_5_1;
  wire ram_reg_0_63_0_2_i_5_n_1;
  wire ram_reg_0_63_0_2_i_6_n_1;
  wire ram_reg_0_63_0_2_i_7_n_1;
  wire [2:0]shift_reg_address0;
  wire [5:0]shift_reg_address1;
  wire NLW_ram_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_15_15_DOB_UNCONNECTED;
  wire NLW_ram_reg_0_63_15_15_DOC_UNCONNECTED;
  wire NLW_ram_reg_0_63_15_15_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_9_11_DOD_UNCONNECTED;

  LUT3 #(
    .INIT(8'h08)) 
    \i_0_reg_130[5]_i_2 
       (.I0(\i_0_reg_130_reg[0]_0 ),
        .I1(Q[0]),
        .I2(\i_0_reg_130_reg[0] ),
        .O(E));
  LUT2 #(
    .INIT(4'h8)) 
    p_i_1
       (.I0(Q[0]),
        .I1(ap_enable_reg_pp0_iter0),
        .O(CEB1));
  FDRE \q0_reg[0] 
       (.C(ap_clk),
        .CE(\q0_reg[0]_1 ),
        .D(q00[0]),
        .Q(q0[0]),
        .R(1'b0));
  FDRE \q0_reg[10] 
       (.C(ap_clk),
        .CE(\q0_reg[0]_1 ),
        .D(q00[10]),
        .Q(q0[10]),
        .R(1'b0));
  FDRE \q0_reg[11] 
       (.C(ap_clk),
        .CE(\q0_reg[0]_1 ),
        .D(q00[11]),
        .Q(q0[11]),
        .R(1'b0));
  FDRE \q0_reg[12] 
       (.C(ap_clk),
        .CE(\q0_reg[0]_1 ),
        .D(q00[12]),
        .Q(q0[12]),
        .R(1'b0));
  FDRE \q0_reg[13] 
       (.C(ap_clk),
        .CE(\q0_reg[0]_1 ),
        .D(q00[13]),
        .Q(q0[13]),
        .R(1'b0));
  FDRE \q0_reg[14] 
       (.C(ap_clk),
        .CE(\q0_reg[0]_1 ),
        .D(q00[14]),
        .Q(q0[14]),
        .R(1'b0));
  FDRE \q0_reg[15] 
       (.C(ap_clk),
        .CE(\q0_reg[0]_1 ),
        .D(q00[15]),
        .Q(q0[15]),
        .R(1'b0));
  FDRE \q0_reg[1] 
       (.C(ap_clk),
        .CE(\q0_reg[0]_1 ),
        .D(q00[1]),
        .Q(q0[1]),
        .R(1'b0));
  FDRE \q0_reg[2] 
       (.C(ap_clk),
        .CE(\q0_reg[0]_1 ),
        .D(q00[2]),
        .Q(q0[2]),
        .R(1'b0));
  FDRE \q0_reg[3] 
       (.C(ap_clk),
        .CE(\q0_reg[0]_1 ),
        .D(q00[3]),
        .Q(q0[3]),
        .R(1'b0));
  FDRE \q0_reg[4] 
       (.C(ap_clk),
        .CE(\q0_reg[0]_1 ),
        .D(q00[4]),
        .Q(q0[4]),
        .R(1'b0));
  FDRE \q0_reg[5] 
       (.C(ap_clk),
        .CE(\q0_reg[0]_1 ),
        .D(q00[5]),
        .Q(q0[5]),
        .R(1'b0));
  FDRE \q0_reg[6] 
       (.C(ap_clk),
        .CE(\q0_reg[0]_1 ),
        .D(q00[6]),
        .Q(q0[6]),
        .R(1'b0));
  FDRE \q0_reg[7] 
       (.C(ap_clk),
        .CE(\q0_reg[0]_1 ),
        .D(q00[7]),
        .Q(q0[7]),
        .R(1'b0));
  FDRE \q0_reg[8] 
       (.C(ap_clk),
        .CE(\q0_reg[0]_1 ),
        .D(q00[8]),
        .Q(q0[8]),
        .R(1'b0));
  FDRE \q0_reg[9] 
       (.C(ap_clk),
        .CE(\q0_reg[0]_1 ),
        .D(q00[9]),
        .Q(q0[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "928" *) 
  (* RTL_RAM_NAME = "shift_reg_U/fir_shift_reg_ram_U/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "57" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_0_2
       (.ADDRA({ram_reg_0_63_0_2_i_5_n_1,ram_reg_0_63_0_2_i_6_n_1,ram_reg_0_63_0_2_i_7_n_1,shift_reg_address0}),
        .ADDRB({ram_reg_0_63_0_2_i_5_n_1,ram_reg_0_63_0_2_i_6_n_1,ram_reg_0_63_0_2_i_7_n_1,shift_reg_address0}),
        .ADDRC({ram_reg_0_63_0_2_i_5_n_1,ram_reg_0_63_0_2_i_6_n_1,ram_reg_0_63_0_2_i_7_n_1,shift_reg_address0}),
        .ADDRD(shift_reg_address1),
        .DIA(d1[0]),
        .DIB(d1[1]),
        .DIC(d1[2]),
        .DID(1'b0),
        .DOA(q00[0]),
        .DOB(q00[1]),
        .DOC(q00[2]),
        .DOD(NLW_ram_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(p_0_in));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_63_0_2_i_1
       (.I0(\q0_reg[15]_0 [0]),
        .I1(Q[1]),
        .I2(q0[0]),
        .O(d1[0]));
  LUT6 #(
    .INIT(64'h4575FFFFFFFFFFFF)) 
    ram_reg_0_63_0_2_i_10
       (.I0(ram_reg_0_63_0_2_i_5_1[0]),
        .I1(\i_0_reg_130_reg[0] ),
        .I2(\i_0_reg_130_reg[0]_0 ),
        .I3(ram_reg_0_63_0_2_i_5_0[0]),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(Q[0]),
        .O(shift_reg_address0[0]));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_0_63_0_2_i_11
       (.I0(\q0_reg[0]_0 [5]),
        .I1(Q[1]),
        .O(shift_reg_address1[5]));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_0_63_0_2_i_12
       (.I0(\q0_reg[0]_0 [4]),
        .I1(Q[1]),
        .O(shift_reg_address1[4]));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_0_63_0_2_i_13
       (.I0(\q0_reg[0]_0 [3]),
        .I1(Q[1]),
        .O(shift_reg_address1[3]));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_0_63_0_2_i_14
       (.I0(\q0_reg[0]_0 [2]),
        .I1(Q[1]),
        .O(shift_reg_address1[2]));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_0_63_0_2_i_15
       (.I0(\q0_reg[0]_0 [1]),
        .I1(Q[1]),
        .O(shift_reg_address1[1]));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_0_63_0_2_i_16
       (.I0(\q0_reg[0]_0 [0]),
        .I1(Q[1]),
        .O(shift_reg_address1[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFCFAFAFFFC)) 
    ram_reg_0_63_0_2_i_17
       (.I0(ram_reg_0_63_0_2_i_5_0[1]),
        .I1(ram_reg_0_63_0_2_i_5_1[1]),
        .I2(c_address0[0]),
        .I3(ram_reg_0_63_0_2_i_5_1[2]),
        .I4(E),
        .I5(ram_reg_0_63_0_2_i_5_0[2]),
        .O(ram_reg_0_63_0_2_i_17_n_1));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_63_0_2_i_2
       (.I0(\q0_reg[15]_0 [1]),
        .I1(Q[1]),
        .I2(q0[1]),
        .O(d1[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_63_0_2_i_3
       (.I0(\q0_reg[15]_0 [2]),
        .I1(Q[1]),
        .I2(q0[2]),
        .O(d1[2]));
  LUT4 #(
    .INIT(16'hBAAA)) 
    ram_reg_0_63_0_2_i_4
       (.I0(Q[1]),
        .I1(\i_0_reg_130_reg[0] ),
        .I2(Q[0]),
        .I3(\i_0_reg_130_reg[0]_0 ),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hFE01FFFFFFFFFFFF)) 
    ram_reg_0_63_0_2_i_5
       (.I0(ram_reg_0_63_0_2_i_17_n_1),
        .I1(c_address0[3]),
        .I2(c_address0[4]),
        .I3(c_address0[5]),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(Q[0]),
        .O(ram_reg_0_63_0_2_i_5_n_1));
  LUT6 #(
    .INIT(64'hFFFE0001FFFFFFFF)) 
    ram_reg_0_63_0_2_i_6
       (.I0(c_address0[2]),
        .I1(c_address0[0]),
        .I2(c_address0[1]),
        .I3(c_address0[3]),
        .I4(c_address0[4]),
        .I5(CEB1),
        .O(ram_reg_0_63_0_2_i_6_n_1));
  LUT6 #(
    .INIT(64'hFE01FFFFFFFFFFFF)) 
    ram_reg_0_63_0_2_i_7
       (.I0(c_address0[2]),
        .I1(c_address0[0]),
        .I2(c_address0[1]),
        .I3(c_address0[3]),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(Q[0]),
        .O(ram_reg_0_63_0_2_i_7_n_1));
  LUT5 #(
    .INIT(32'h80808008)) 
    ram_reg_0_63_0_2_i_8
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(Q[0]),
        .I2(c_address0[2]),
        .I3(c_address0[0]),
        .I4(c_address0[1]),
        .O(shift_reg_address0[2]));
  LUT4 #(
    .INIT(16'h8008)) 
    ram_reg_0_63_0_2_i_9
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(Q[0]),
        .I2(c_address0[1]),
        .I3(c_address0[0]),
        .O(shift_reg_address0[1]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "928" *) 
  (* RTL_RAM_NAME = "shift_reg_U/fir_shift_reg_ram_U/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "57" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_12_14
       (.ADDRA({ram_reg_0_63_0_2_i_5_n_1,ram_reg_0_63_0_2_i_6_n_1,ram_reg_0_63_0_2_i_7_n_1,shift_reg_address0}),
        .ADDRB({ram_reg_0_63_0_2_i_5_n_1,ram_reg_0_63_0_2_i_6_n_1,ram_reg_0_63_0_2_i_7_n_1,shift_reg_address0}),
        .ADDRC({ram_reg_0_63_0_2_i_5_n_1,ram_reg_0_63_0_2_i_6_n_1,ram_reg_0_63_0_2_i_7_n_1,shift_reg_address0}),
        .ADDRD(shift_reg_address1),
        .DIA(d1[12]),
        .DIB(d1[13]),
        .DIC(d1[14]),
        .DID(1'b0),
        .DOA(q00[12]),
        .DOB(q00[13]),
        .DOC(q00[14]),
        .DOD(NLW_ram_reg_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(p_0_in));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_63_12_14_i_1
       (.I0(\q0_reg[15]_0 [12]),
        .I1(Q[1]),
        .I2(q0[12]),
        .O(d1[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_63_12_14_i_2
       (.I0(\q0_reg[15]_0 [13]),
        .I1(Q[1]),
        .I2(q0[13]),
        .O(d1[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_63_12_14_i_3
       (.I0(\q0_reg[15]_0 [14]),
        .I1(Q[1]),
        .I2(q0[14]),
        .O(d1[14]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "928" *) 
  (* RTL_RAM_NAME = "shift_reg_U/fir_shift_reg_ram_U/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "57" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_15_15
       (.ADDRA({ram_reg_0_63_0_2_i_5_n_1,ram_reg_0_63_0_2_i_6_n_1,ram_reg_0_63_0_2_i_7_n_1,shift_reg_address0}),
        .ADDRB({ram_reg_0_63_0_2_i_5_n_1,ram_reg_0_63_0_2_i_6_n_1,ram_reg_0_63_0_2_i_7_n_1,shift_reg_address0}),
        .ADDRC({ram_reg_0_63_0_2_i_5_n_1,ram_reg_0_63_0_2_i_6_n_1,ram_reg_0_63_0_2_i_7_n_1,shift_reg_address0}),
        .ADDRD(shift_reg_address1),
        .DIA(d1[15]),
        .DIB(1'b0),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(q00[15]),
        .DOB(NLW_ram_reg_0_63_15_15_DOB_UNCONNECTED),
        .DOC(NLW_ram_reg_0_63_15_15_DOC_UNCONNECTED),
        .DOD(NLW_ram_reg_0_63_15_15_DOD_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(p_0_in));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_63_15_15_i_1
       (.I0(\q0_reg[15]_0 [15]),
        .I1(Q[1]),
        .I2(q0[15]),
        .O(d1[15]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "928" *) 
  (* RTL_RAM_NAME = "shift_reg_U/fir_shift_reg_ram_U/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "57" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_3_5
       (.ADDRA({ram_reg_0_63_0_2_i_5_n_1,ram_reg_0_63_0_2_i_6_n_1,ram_reg_0_63_0_2_i_7_n_1,shift_reg_address0}),
        .ADDRB({ram_reg_0_63_0_2_i_5_n_1,ram_reg_0_63_0_2_i_6_n_1,ram_reg_0_63_0_2_i_7_n_1,shift_reg_address0}),
        .ADDRC({ram_reg_0_63_0_2_i_5_n_1,ram_reg_0_63_0_2_i_6_n_1,ram_reg_0_63_0_2_i_7_n_1,shift_reg_address0}),
        .ADDRD(shift_reg_address1),
        .DIA(d1[3]),
        .DIB(d1[4]),
        .DIC(d1[5]),
        .DID(1'b0),
        .DOA(q00[3]),
        .DOB(q00[4]),
        .DOC(q00[5]),
        .DOD(NLW_ram_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(p_0_in));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_63_3_5_i_1
       (.I0(\q0_reg[15]_0 [3]),
        .I1(Q[1]),
        .I2(q0[3]),
        .O(d1[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_63_3_5_i_2
       (.I0(\q0_reg[15]_0 [4]),
        .I1(Q[1]),
        .I2(q0[4]),
        .O(d1[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_63_3_5_i_3
       (.I0(\q0_reg[15]_0 [5]),
        .I1(Q[1]),
        .I2(q0[5]),
        .O(d1[5]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "928" *) 
  (* RTL_RAM_NAME = "shift_reg_U/fir_shift_reg_ram_U/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "57" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_6_8
       (.ADDRA({ram_reg_0_63_0_2_i_5_n_1,ram_reg_0_63_0_2_i_6_n_1,ram_reg_0_63_0_2_i_7_n_1,shift_reg_address0}),
        .ADDRB({ram_reg_0_63_0_2_i_5_n_1,ram_reg_0_63_0_2_i_6_n_1,ram_reg_0_63_0_2_i_7_n_1,shift_reg_address0}),
        .ADDRC({ram_reg_0_63_0_2_i_5_n_1,ram_reg_0_63_0_2_i_6_n_1,ram_reg_0_63_0_2_i_7_n_1,shift_reg_address0}),
        .ADDRD(shift_reg_address1),
        .DIA(d1[6]),
        .DIB(d1[7]),
        .DIC(d1[8]),
        .DID(1'b0),
        .DOA(q00[6]),
        .DOB(q00[7]),
        .DOC(q00[8]),
        .DOD(NLW_ram_reg_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(p_0_in));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_63_6_8_i_1
       (.I0(\q0_reg[15]_0 [6]),
        .I1(Q[1]),
        .I2(q0[6]),
        .O(d1[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_63_6_8_i_2
       (.I0(\q0_reg[15]_0 [7]),
        .I1(Q[1]),
        .I2(q0[7]),
        .O(d1[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_63_6_8_i_3
       (.I0(\q0_reg[15]_0 [8]),
        .I1(Q[1]),
        .I2(q0[8]),
        .O(d1[8]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "928" *) 
  (* RTL_RAM_NAME = "shift_reg_U/fir_shift_reg_ram_U/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "57" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_9_11
       (.ADDRA({ram_reg_0_63_0_2_i_5_n_1,ram_reg_0_63_0_2_i_6_n_1,ram_reg_0_63_0_2_i_7_n_1,shift_reg_address0}),
        .ADDRB({ram_reg_0_63_0_2_i_5_n_1,ram_reg_0_63_0_2_i_6_n_1,ram_reg_0_63_0_2_i_7_n_1,shift_reg_address0}),
        .ADDRC({ram_reg_0_63_0_2_i_5_n_1,ram_reg_0_63_0_2_i_6_n_1,ram_reg_0_63_0_2_i_7_n_1,shift_reg_address0}),
        .ADDRD(shift_reg_address1),
        .DIA(d1[9]),
        .DIB(d1[10]),
        .DIC(d1[11]),
        .DID(1'b0),
        .DOA(q00[9]),
        .DOB(q00[10]),
        .DOC(q00[11]),
        .DOD(NLW_ram_reg_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(p_0_in));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_63_9_11_i_1
       (.I0(\q0_reg[15]_0 [9]),
        .I1(Q[1]),
        .I2(q0[9]),
        .O(d1[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_63_9_11_i_2
       (.I0(\q0_reg[15]_0 [10]),
        .I1(Q[1]),
        .I2(q0[10]),
        .O(d1[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_63_9_11_i_3
       (.I0(\q0_reg[15]_0 [11]),
        .I1(Q[1]),
        .I2(q0[11]),
        .O(d1[11]));
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
