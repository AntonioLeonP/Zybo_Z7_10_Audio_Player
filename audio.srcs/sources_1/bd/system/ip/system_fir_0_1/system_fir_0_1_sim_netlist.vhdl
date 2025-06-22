-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Apr 13 20:13:34 2025
-- Host        : LAPTOP-4ATNCMRC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Media/AppData/Roaming/Xilinx/Vivado/TFM/audio.srcs/sources_1/bd/system/ip/system_fir_0_1/system_fir_0_1_sim_netlist.vhdl
-- Design      : system_fir_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_0_1_fir_fir_io_s_axi is
  port (
    ap_rst_n_inv : out STD_LOGIC;
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    s_axi_fir_io_BVALID : out STD_LOGIC;
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_fir_io_RVALID : out STD_LOGIC;
    \int_x_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    interrupt : out STD_LOGIC;
    CEA1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_fir_io_RDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_fir_io_WDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_fir_io_WSTRB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_fir_io_WVALID : in STD_LOGIC;
    s_axi_fir_io_BREADY : in STD_LOGIC;
    s_axi_fir_io_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_fir_io_ARVALID : in STD_LOGIC;
    s_axi_fir_io_RREADY : in STD_LOGIC;
    P : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_rst_n : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    s_axi_fir_io_AWVALID : in STD_LOGIC;
    s_axi_fir_io_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fir_0_1_fir_fir_io_s_axi : entity is "fir_fir_io_s_axi";
end system_fir_0_1_fir_fir_io_s_axi;

architecture STRUCTURE of system_fir_0_1_fir_fir_io_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_1\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_1\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_2_n_1\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_1\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_1\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_2_n_1\ : STD_LOGIC;
  signal ap_idle : STD_LOGIC;
  signal \^ap_rst_n_inv\ : STD_LOGIC;
  signal ap_start : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal int_ap_done : STD_LOGIC;
  signal int_ap_done_i_1_n_1 : STD_LOGIC;
  signal int_ap_done_i_2_n_1 : STD_LOGIC;
  signal int_ap_idle : STD_LOGIC;
  signal int_ap_ready : STD_LOGIC;
  signal int_ap_start3_out : STD_LOGIC;
  signal int_ap_start_i_1_n_1 : STD_LOGIC;
  signal int_auto_restart : STD_LOGIC;
  signal int_auto_restart_i_1_n_1 : STD_LOGIC;
  signal int_auto_restart_i_2_n_1 : STD_LOGIC;
  signal int_gie_i_1_n_1 : STD_LOGIC;
  signal int_gie_reg_n_1 : STD_LOGIC;
  signal \int_ier[0]_i_1_n_1\ : STD_LOGIC;
  signal \int_ier[1]_i_1_n_1\ : STD_LOGIC;
  signal \int_ier[1]_i_2_n_1\ : STD_LOGIC;
  signal \int_ier_reg_n_1_[0]\ : STD_LOGIC;
  signal int_isr6_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_1\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_1\ : STD_LOGIC;
  signal \int_isr_reg_n_1_[0]\ : STD_LOGIC;
  signal \int_isr_reg_n_1_[1]\ : STD_LOGIC;
  signal \int_x[0]_i_1_n_1\ : STD_LOGIC;
  signal \int_x[10]_i_1_n_1\ : STD_LOGIC;
  signal \int_x[11]_i_1_n_1\ : STD_LOGIC;
  signal \int_x[12]_i_1_n_1\ : STD_LOGIC;
  signal \int_x[13]_i_1_n_1\ : STD_LOGIC;
  signal \int_x[14]_i_1_n_1\ : STD_LOGIC;
  signal \int_x[15]_i_1_n_1\ : STD_LOGIC;
  signal \int_x[15]_i_2_n_1\ : STD_LOGIC;
  signal \int_x[15]_i_3_n_1\ : STD_LOGIC;
  signal \int_x[1]_i_1_n_1\ : STD_LOGIC;
  signal \int_x[2]_i_1_n_1\ : STD_LOGIC;
  signal \int_x[3]_i_1_n_1\ : STD_LOGIC;
  signal \int_x[4]_i_1_n_1\ : STD_LOGIC;
  signal \int_x[5]_i_1_n_1\ : STD_LOGIC;
  signal \int_x[6]_i_1_n_1\ : STD_LOGIC;
  signal \int_x[7]_i_1_n_1\ : STD_LOGIC;
  signal \int_x[8]_i_1_n_1\ : STD_LOGIC;
  signal \int_x[9]_i_1_n_1\ : STD_LOGIC;
  signal \^int_x_reg[15]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal int_y_ap_vld : STD_LOGIC;
  signal int_y_ap_vld_i_1_n_1 : STD_LOGIC;
  signal int_y_ap_vld_i_2_n_1 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal rdata : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \rdata[0]_i_1_n_1\ : STD_LOGIC;
  signal \rdata[0]_i_2_n_1\ : STD_LOGIC;
  signal \rdata[0]_i_3_n_1\ : STD_LOGIC;
  signal \rdata[10]_i_1_n_1\ : STD_LOGIC;
  signal \rdata[11]_i_1_n_1\ : STD_LOGIC;
  signal \rdata[12]_i_1_n_1\ : STD_LOGIC;
  signal \rdata[13]_i_1_n_1\ : STD_LOGIC;
  signal \rdata[14]_i_1_n_1\ : STD_LOGIC;
  signal \rdata[15]_i_1_n_1\ : STD_LOGIC;
  signal \rdata[15]_i_3_n_1\ : STD_LOGIC;
  signal \rdata[1]_i_1_n_1\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_1\ : STD_LOGIC;
  signal \rdata[1]_i_3_n_1\ : STD_LOGIC;
  signal \rdata[2]_i_2_n_1\ : STD_LOGIC;
  signal \rdata[2]_i_3_n_1\ : STD_LOGIC;
  signal \rdata[4]_i_1_n_1\ : STD_LOGIC;
  signal \rdata[5]_i_1_n_1\ : STD_LOGIC;
  signal \rdata[6]_i_1_n_1\ : STD_LOGIC;
  signal \rdata[7]_i_2_n_1\ : STD_LOGIC;
  signal \rdata[7]_i_3_n_1\ : STD_LOGIC;
  signal \rdata[8]_i_1_n_1\ : STD_LOGIC;
  signal \rdata[9]_i_1_n_1\ : STD_LOGIC;
  signal \^s_axi_fir_io_bvalid\ : STD_LOGIC;
  signal \^s_axi_fir_io_rvalid\ : STD_LOGIC;
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_1_[0]\ : STD_LOGIC;
  signal \waddr_reg_n_1_[1]\ : STD_LOGIC;
  signal \waddr_reg_n_1_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_1_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_1_[4]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of int_ap_done_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of int_ap_idle_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of int_ap_start_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of int_ap_start_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of int_gie_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \int_ier[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_isr[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_x[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \int_x[10]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_x[11]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_x[12]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_x[13]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_x[14]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_x[15]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_x[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \int_x[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_x[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_x[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_x[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_x[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_x[7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_x[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \int_x[9]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of int_y_ap_vld_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rdata[10]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rdata[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rdata[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rdata[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rdata[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rdata[15]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rdata[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdata[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdata[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rdata[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rdata[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rdata[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rdata[7]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rdata[9]_i_1\ : label is "soft_lutpair8";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  ap_rst_n_inv <= \^ap_rst_n_inv\;
  \int_x_reg[15]_0\(15 downto 0) <= \^int_x_reg[15]_0\(15 downto 0);
  s_axi_fir_io_BVALID <= \^s_axi_fir_io_bvalid\;
  s_axi_fir_io_RVALID <= \^s_axi_fir_io_rvalid\;
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BFB"
    )
        port map (
      I0 => s_axi_fir_io_RREADY,
      I1 => \^s_axi_fir_io_rvalid\,
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      I3 => s_axi_fir_io_ARVALID,
      O => \FSM_onehot_rstate[1]_i_1_n_1\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_fir_io_ARVALID,
      I2 => s_axi_fir_io_RREADY,
      I3 => \^s_axi_fir_io_rvalid\,
      O => \FSM_onehot_rstate[2]_i_1_n_1\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_1\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_1\,
      Q => \^s_axi_fir_io_rvalid\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BA30BA3F"
    )
        port map (
      I0 => s_axi_fir_io_BREADY,
      I1 => s_axi_fir_io_AWVALID,
      I2 => \^fsm_onehot_wstate_reg[1]_0\,
      I3 => \^s_axi_fir_io_bvalid\,
      I4 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[1]_i_2_n_1\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_fir_io_AWVALID,
      I2 => s_axi_fir_io_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_1\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => s_axi_fir_io_WVALID,
      I2 => s_axi_fir_io_BREADY,
      I3 => \^s_axi_fir_io_bvalid\,
      O => \FSM_onehot_wstate[3]_i_1_n_1\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_2_n_1\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_1\,
      Q => \^fsm_onehot_wstate_reg[2]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_1\,
      Q => \^s_axi_fir_io_bvalid\,
      R => \^ap_rst_n_inv\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => Q(5),
      I1 => ap_start,
      I2 => Q(0),
      O => D(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => Q(5),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(4),
      I4 => Q(3),
      I5 => \ap_CS_fsm[1]_i_2_n_1\,
      O => D(1)
    );
\ap_CS_fsm[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_start,
      I1 => Q(0),
      O => \ap_CS_fsm[1]_i_2_n_1\
    );
int_ap_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEAAAAAAAA"
    )
        port map (
      I0 => Q(5),
      I1 => int_ap_done_i_2_n_1,
      I2 => s_axi_fir_io_ARADDR(1),
      I3 => s_axi_fir_io_ARADDR(0),
      I4 => s_axi_fir_io_ARADDR(4),
      I5 => int_ap_done,
      O => int_ap_done_i_1_n_1
    );
int_ap_done_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => s_axi_fir_io_ARADDR(3),
      I1 => s_axi_fir_io_ARADDR(2),
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      I3 => s_axi_fir_io_ARVALID,
      O => int_ap_done_i_2_n_1
    );
int_ap_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_done_i_1_n_1,
      Q => int_ap_done,
      R => \^ap_rst_n_inv\
    );
int_ap_idle_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => ap_start,
      O => ap_idle
    );
int_ap_idle_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_idle,
      Q => int_ap_idle,
      R => \^ap_rst_n_inv\
    );
int_ap_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => Q(5),
      Q => int_ap_ready,
      R => \^ap_rst_n_inv\
    );
int_ap_start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF8"
    )
        port map (
      I0 => int_auto_restart,
      I1 => Q(5),
      I2 => int_ap_start3_out,
      I3 => ap_start,
      O => int_ap_start_i_1_n_1
    );
int_ap_start_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(0),
      I1 => s_axi_fir_io_WSTRB(0),
      I2 => \waddr_reg_n_1_[2]\,
      I3 => int_auto_restart_i_2_n_1,
      O => int_ap_start3_out
    );
int_ap_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_start_i_1_n_1,
      Q => ap_start,
      R => \^ap_rst_n_inv\
    );
int_auto_restart_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0800"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(7),
      I1 => int_auto_restart_i_2_n_1,
      I2 => \waddr_reg_n_1_[2]\,
      I3 => s_axi_fir_io_WSTRB(0),
      I4 => int_auto_restart,
      O => int_auto_restart_i_1_n_1
    );
int_auto_restart_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \waddr_reg_n_1_[3]\,
      I1 => \waddr_reg_n_1_[4]\,
      I2 => s_axi_fir_io_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      I4 => \waddr_reg_n_1_[0]\,
      I5 => \waddr_reg_n_1_[1]\,
      O => int_auto_restart_i_2_n_1
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_1,
      Q => int_auto_restart,
      R => \^ap_rst_n_inv\
    );
int_gie_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(0),
      I1 => int_auto_restart_i_2_n_1,
      I2 => \waddr_reg_n_1_[2]\,
      I3 => s_axi_fir_io_WSTRB(0),
      I4 => int_gie_reg_n_1,
      O => int_gie_i_1_n_1
    );
int_gie_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_1,
      Q => int_gie_reg_n_1,
      R => \^ap_rst_n_inv\
    );
\int_ier[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(0),
      I1 => \waddr_reg_n_1_[2]\,
      I2 => s_axi_fir_io_WSTRB(0),
      I3 => \int_ier[1]_i_2_n_1\,
      I4 => \int_ier_reg_n_1_[0]\,
      O => \int_ier[0]_i_1_n_1\
    );
\int_ier[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(1),
      I1 => \waddr_reg_n_1_[2]\,
      I2 => s_axi_fir_io_WSTRB(0),
      I3 => \int_ier[1]_i_2_n_1\,
      I4 => p_0_in,
      O => \int_ier[1]_i_1_n_1\
    );
\int_ier[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \waddr_reg_n_1_[4]\,
      I1 => \waddr_reg_n_1_[1]\,
      I2 => \waddr_reg_n_1_[0]\,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      I4 => s_axi_fir_io_WVALID,
      I5 => \waddr_reg_n_1_[3]\,
      O => \int_ier[1]_i_2_n_1\
    );
\int_ier_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[0]_i_1_n_1\,
      Q => \int_ier_reg_n_1_[0]\,
      R => \^ap_rst_n_inv\
    );
\int_ier_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[1]_i_1_n_1\,
      Q => p_0_in,
      R => \^ap_rst_n_inv\
    );
\int_isr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(0),
      I1 => int_isr6_out,
      I2 => \int_ier_reg_n_1_[0]\,
      I3 => Q(5),
      I4 => \int_isr_reg_n_1_[0]\,
      O => \int_isr[0]_i_1_n_1\
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \waddr_reg_n_1_[2]\,
      I1 => s_axi_fir_io_WSTRB(0),
      I2 => \int_ier[1]_i_2_n_1\,
      O => int_isr6_out
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(1),
      I1 => int_isr6_out,
      I2 => p_0_in,
      I3 => Q(5),
      I4 => \int_isr_reg_n_1_[1]\,
      O => \int_isr[1]_i_1_n_1\
    );
\int_isr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[0]_i_1_n_1\,
      Q => \int_isr_reg_n_1_[0]\,
      R => \^ap_rst_n_inv\
    );
\int_isr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[1]_i_1_n_1\,
      Q => \int_isr_reg_n_1_[1]\,
      R => \^ap_rst_n_inv\
    );
\int_x[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(0),
      I1 => s_axi_fir_io_WSTRB(0),
      I2 => \^int_x_reg[15]_0\(0),
      O => \int_x[0]_i_1_n_1\
    );
\int_x[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(10),
      I1 => s_axi_fir_io_WSTRB(1),
      I2 => \^int_x_reg[15]_0\(10),
      O => \int_x[10]_i_1_n_1\
    );
\int_x[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(11),
      I1 => s_axi_fir_io_WSTRB(1),
      I2 => \^int_x_reg[15]_0\(11),
      O => \int_x[11]_i_1_n_1\
    );
\int_x[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(12),
      I1 => s_axi_fir_io_WSTRB(1),
      I2 => \^int_x_reg[15]_0\(12),
      O => \int_x[12]_i_1_n_1\
    );
\int_x[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(13),
      I1 => s_axi_fir_io_WSTRB(1),
      I2 => \^int_x_reg[15]_0\(13),
      O => \int_x[13]_i_1_n_1\
    );
\int_x[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(14),
      I1 => s_axi_fir_io_WSTRB(1),
      I2 => \^int_x_reg[15]_0\(14),
      O => \int_x[14]_i_1_n_1\
    );
\int_x[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \int_x[15]_i_3_n_1\,
      I1 => \waddr_reg_n_1_[4]\,
      I2 => \waddr_reg_n_1_[2]\,
      O => \int_x[15]_i_1_n_1\
    );
\int_x[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(15),
      I1 => s_axi_fir_io_WSTRB(1),
      I2 => \^int_x_reg[15]_0\(15),
      O => \int_x[15]_i_2_n_1\
    );
\int_x[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \waddr_reg_n_1_[3]\,
      I1 => s_axi_fir_io_WVALID,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => \waddr_reg_n_1_[0]\,
      I4 => \waddr_reg_n_1_[1]\,
      O => \int_x[15]_i_3_n_1\
    );
\int_x[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(1),
      I1 => s_axi_fir_io_WSTRB(0),
      I2 => \^int_x_reg[15]_0\(1),
      O => \int_x[1]_i_1_n_1\
    );
\int_x[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(2),
      I1 => s_axi_fir_io_WSTRB(0),
      I2 => \^int_x_reg[15]_0\(2),
      O => \int_x[2]_i_1_n_1\
    );
\int_x[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(3),
      I1 => s_axi_fir_io_WSTRB(0),
      I2 => \^int_x_reg[15]_0\(3),
      O => \int_x[3]_i_1_n_1\
    );
\int_x[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(4),
      I1 => s_axi_fir_io_WSTRB(0),
      I2 => \^int_x_reg[15]_0\(4),
      O => \int_x[4]_i_1_n_1\
    );
\int_x[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(5),
      I1 => s_axi_fir_io_WSTRB(0),
      I2 => \^int_x_reg[15]_0\(5),
      O => \int_x[5]_i_1_n_1\
    );
\int_x[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(6),
      I1 => s_axi_fir_io_WSTRB(0),
      I2 => \^int_x_reg[15]_0\(6),
      O => \int_x[6]_i_1_n_1\
    );
\int_x[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(7),
      I1 => s_axi_fir_io_WSTRB(0),
      I2 => \^int_x_reg[15]_0\(7),
      O => \int_x[7]_i_1_n_1\
    );
\int_x[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(8),
      I1 => s_axi_fir_io_WSTRB(1),
      I2 => \^int_x_reg[15]_0\(8),
      O => \int_x[8]_i_1_n_1\
    );
\int_x[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(9),
      I1 => s_axi_fir_io_WSTRB(1),
      I2 => \^int_x_reg[15]_0\(9),
      O => \int_x[9]_i_1_n_1\
    );
\int_x_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[15]_i_1_n_1\,
      D => \int_x[0]_i_1_n_1\,
      Q => \^int_x_reg[15]_0\(0),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[15]_i_1_n_1\,
      D => \int_x[10]_i_1_n_1\,
      Q => \^int_x_reg[15]_0\(10),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[15]_i_1_n_1\,
      D => \int_x[11]_i_1_n_1\,
      Q => \^int_x_reg[15]_0\(11),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[15]_i_1_n_1\,
      D => \int_x[12]_i_1_n_1\,
      Q => \^int_x_reg[15]_0\(12),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[15]_i_1_n_1\,
      D => \int_x[13]_i_1_n_1\,
      Q => \^int_x_reg[15]_0\(13),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[15]_i_1_n_1\,
      D => \int_x[14]_i_1_n_1\,
      Q => \^int_x_reg[15]_0\(14),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[15]_i_1_n_1\,
      D => \int_x[15]_i_2_n_1\,
      Q => \^int_x_reg[15]_0\(15),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[15]_i_1_n_1\,
      D => \int_x[1]_i_1_n_1\,
      Q => \^int_x_reg[15]_0\(1),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[15]_i_1_n_1\,
      D => \int_x[2]_i_1_n_1\,
      Q => \^int_x_reg[15]_0\(2),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[15]_i_1_n_1\,
      D => \int_x[3]_i_1_n_1\,
      Q => \^int_x_reg[15]_0\(3),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[15]_i_1_n_1\,
      D => \int_x[4]_i_1_n_1\,
      Q => \^int_x_reg[15]_0\(4),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[15]_i_1_n_1\,
      D => \int_x[5]_i_1_n_1\,
      Q => \^int_x_reg[15]_0\(5),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[15]_i_1_n_1\,
      D => \int_x[6]_i_1_n_1\,
      Q => \^int_x_reg[15]_0\(6),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[15]_i_1_n_1\,
      D => \int_x[7]_i_1_n_1\,
      Q => \^int_x_reg[15]_0\(7),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[15]_i_1_n_1\,
      D => \int_x[8]_i_1_n_1\,
      Q => \^int_x_reg[15]_0\(8),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[15]_i_1_n_1\,
      D => \int_x[9]_i_1_n_1\,
      Q => \^int_x_reg[15]_0\(9),
      R => \^ap_rst_n_inv\
    );
int_y_ap_vld_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFAAAAAAAA"
    )
        port map (
      I0 => Q(5),
      I1 => int_y_ap_vld_i_2_n_1,
      I2 => s_axi_fir_io_ARADDR(1),
      I3 => s_axi_fir_io_ARADDR(0),
      I4 => s_axi_fir_io_ARADDR(4),
      I5 => int_y_ap_vld,
      O => int_y_ap_vld_i_1_n_1
    );
int_y_ap_vld_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => s_axi_fir_io_ARADDR(2),
      I1 => s_axi_fir_io_ARADDR(3),
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      I3 => s_axi_fir_io_ARVALID,
      O => int_y_ap_vld_i_2_n_1
    );
int_y_ap_vld_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_y_ap_vld_i_1_n_1,
      Q => int_y_ap_vld,
      R => \^ap_rst_n_inv\
    );
interrupt_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => int_gie_reg_n_1,
      I1 => \int_isr_reg_n_1_[1]\,
      I2 => \int_isr_reg_n_1_[0]\,
      O => interrupt
    );
\q0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => Q(4),
      I2 => Q(0),
      I3 => ap_start,
      O => CEA1
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B8"
    )
        port map (
      I0 => \rdata[0]_i_2_n_1\,
      I1 => s_axi_fir_io_ARADDR(4),
      I2 => \rdata[0]_i_3_n_1\,
      I3 => s_axi_fir_io_ARADDR(1),
      I4 => s_axi_fir_io_ARADDR(0),
      O => \rdata[0]_i_1_n_1\
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^int_x_reg[15]_0\(0),
      I1 => s_axi_fir_io_ARADDR(3),
      I2 => int_y_ap_vld,
      I3 => s_axi_fir_io_ARADDR(2),
      I4 => P(0),
      O => \rdata[0]_i_2_n_1\
    );
\rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \int_isr_reg_n_1_[0]\,
      I1 => \int_ier_reg_n_1_[0]\,
      I2 => s_axi_fir_io_ARADDR(3),
      I3 => int_gie_reg_n_1,
      I4 => s_axi_fir_io_ARADDR(2),
      I5 => ap_start,
      O => \rdata[0]_i_3_n_1\
    );
\rdata[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^int_x_reg[15]_0\(10),
      I1 => s_axi_fir_io_ARADDR(3),
      I2 => P(10),
      O => \rdata[10]_i_1_n_1\
    );
\rdata[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^int_x_reg[15]_0\(11),
      I1 => s_axi_fir_io_ARADDR(3),
      I2 => P(11),
      O => \rdata[11]_i_1_n_1\
    );
\rdata[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^int_x_reg[15]_0\(12),
      I1 => s_axi_fir_io_ARADDR(3),
      I2 => P(12),
      O => \rdata[12]_i_1_n_1\
    );
\rdata[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^int_x_reg[15]_0\(13),
      I1 => s_axi_fir_io_ARADDR(3),
      I2 => P(13),
      O => \rdata[13]_i_1_n_1\
    );
\rdata[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^int_x_reg[15]_0\(14),
      I1 => s_axi_fir_io_ARADDR(3),
      I2 => P(14),
      O => \rdata[14]_i_1_n_1\
    );
\rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFD000000000000"
    )
        port map (
      I0 => s_axi_fir_io_ARADDR(4),
      I1 => s_axi_fir_io_ARADDR(2),
      I2 => s_axi_fir_io_ARADDR(1),
      I3 => s_axi_fir_io_ARADDR(0),
      I4 => \^fsm_onehot_rstate_reg[1]_0\,
      I5 => s_axi_fir_io_ARVALID,
      O => \rdata[15]_i_1_n_1\
    );
\rdata[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_fir_io_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      O => ar_hs
    );
\rdata[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^int_x_reg[15]_0\(15),
      I1 => s_axi_fir_io_ARADDR(3),
      I2 => P(15),
      O => \rdata[15]_i_3_n_1\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B8"
    )
        port map (
      I0 => \rdata[1]_i_2_n_1\,
      I1 => s_axi_fir_io_ARADDR(4),
      I2 => \rdata[1]_i_3_n_1\,
      I3 => s_axi_fir_io_ARADDR(1),
      I4 => s_axi_fir_io_ARADDR(0),
      O => \rdata[1]_i_1_n_1\
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^int_x_reg[15]_0\(1),
      I1 => s_axi_fir_io_ARADDR(3),
      I2 => P(1),
      I3 => s_axi_fir_io_ARADDR(2),
      O => \rdata[1]_i_2_n_1\
    );
\rdata[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \int_isr_reg_n_1_[1]\,
      I1 => p_0_in,
      I2 => s_axi_fir_io_ARADDR(3),
      I3 => int_ap_done,
      I4 => s_axi_fir_io_ARADDR(2),
      O => \rdata[1]_i_3_n_1\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AFC0A0C"
    )
        port map (
      I0 => \^int_x_reg[15]_0\(2),
      I1 => P(2),
      I2 => \rdata[2]_i_2_n_1\,
      I3 => s_axi_fir_io_ARADDR(3),
      I4 => int_ap_idle,
      I5 => \rdata[2]_i_3_n_1\,
      O => rdata(2)
    );
\rdata[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => s_axi_fir_io_ARADDR(4),
      I1 => s_axi_fir_io_ARADDR(0),
      I2 => s_axi_fir_io_ARADDR(1),
      O => \rdata[2]_i_2_n_1\
    );
\rdata[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_axi_fir_io_ARADDR(2),
      I1 => s_axi_fir_io_ARADDR(1),
      I2 => s_axi_fir_io_ARADDR(0),
      O => \rdata[2]_i_3_n_1\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00AA0CFF0C0C"
    )
        port map (
      I0 => \^int_x_reg[15]_0\(3),
      I1 => int_ap_ready,
      I2 => \rdata[7]_i_2_n_1\,
      I3 => \rdata[7]_i_3_n_1\,
      I4 => P(3),
      I5 => s_axi_fir_io_ARADDR(3),
      O => rdata(3)
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^int_x_reg[15]_0\(4),
      I1 => s_axi_fir_io_ARADDR(3),
      I2 => P(4),
      O => \rdata[4]_i_1_n_1\
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^int_x_reg[15]_0\(5),
      I1 => s_axi_fir_io_ARADDR(3),
      I2 => P(5),
      O => \rdata[5]_i_1_n_1\
    );
\rdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^int_x_reg[15]_0\(6),
      I1 => s_axi_fir_io_ARADDR(3),
      I2 => P(6),
      O => \rdata[6]_i_1_n_1\
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00AA0CFF0C0C"
    )
        port map (
      I0 => \^int_x_reg[15]_0\(7),
      I1 => int_auto_restart,
      I2 => \rdata[7]_i_2_n_1\,
      I3 => \rdata[7]_i_3_n_1\,
      I4 => P(7),
      I5 => s_axi_fir_io_ARADDR(3),
      O => rdata(7)
    );
\rdata[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_fir_io_ARADDR(2),
      I1 => s_axi_fir_io_ARADDR(1),
      I2 => s_axi_fir_io_ARADDR(0),
      I3 => s_axi_fir_io_ARADDR(4),
      O => \rdata[7]_i_2_n_1\
    );
\rdata[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => s_axi_fir_io_ARADDR(0),
      I1 => s_axi_fir_io_ARADDR(1),
      I2 => s_axi_fir_io_ARADDR(2),
      I3 => s_axi_fir_io_ARADDR(4),
      O => \rdata[7]_i_3_n_1\
    );
\rdata[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^int_x_reg[15]_0\(8),
      I1 => s_axi_fir_io_ARADDR(3),
      I2 => P(8),
      O => \rdata[8]_i_1_n_1\
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^int_x_reg[15]_0\(9),
      I1 => s_axi_fir_io_ARADDR(3),
      I2 => P(9),
      O => \rdata[9]_i_1_n_1\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[0]_i_1_n_1\,
      Q => s_axi_fir_io_RDATA(0),
      R => '0'
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[10]_i_1_n_1\,
      Q => s_axi_fir_io_RDATA(10),
      R => \rdata[15]_i_1_n_1\
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[11]_i_1_n_1\,
      Q => s_axi_fir_io_RDATA(11),
      R => \rdata[15]_i_1_n_1\
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[12]_i_1_n_1\,
      Q => s_axi_fir_io_RDATA(12),
      R => \rdata[15]_i_1_n_1\
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[13]_i_1_n_1\,
      Q => s_axi_fir_io_RDATA(13),
      R => \rdata[15]_i_1_n_1\
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[14]_i_1_n_1\,
      Q => s_axi_fir_io_RDATA(14),
      R => \rdata[15]_i_1_n_1\
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[15]_i_3_n_1\,
      Q => s_axi_fir_io_RDATA(15),
      R => \rdata[15]_i_1_n_1\
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[1]_i_1_n_1\,
      Q => s_axi_fir_io_RDATA(1),
      R => '0'
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(2),
      Q => s_axi_fir_io_RDATA(2),
      R => '0'
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(3),
      Q => s_axi_fir_io_RDATA(3),
      R => '0'
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[4]_i_1_n_1\,
      Q => s_axi_fir_io_RDATA(4),
      R => \rdata[15]_i_1_n_1\
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[5]_i_1_n_1\,
      Q => s_axi_fir_io_RDATA(5),
      R => \rdata[15]_i_1_n_1\
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[6]_i_1_n_1\,
      Q => s_axi_fir_io_RDATA(6),
      R => \rdata[15]_i_1_n_1\
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(7),
      Q => s_axi_fir_io_RDATA(7),
      R => '0'
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[8]_i_1_n_1\,
      Q => s_axi_fir_io_RDATA(8),
      R => \rdata[15]_i_1_n_1\
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[9]_i_1_n_1\,
      Q => s_axi_fir_io_RDATA(9),
      R => \rdata[15]_i_1_n_1\
    );
\waddr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_fir_io_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      O => waddr
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_fir_io_AWADDR(0),
      Q => \waddr_reg_n_1_[0]\,
      R => '0'
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_fir_io_AWADDR(1),
      Q => \waddr_reg_n_1_[1]\,
      R => '0'
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_fir_io_AWADDR(2),
      Q => \waddr_reg_n_1_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_fir_io_AWADDR(3),
      Q => \waddr_reg_n_1_[3]\,
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_fir_io_AWADDR(4),
      Q => \waddr_reg_n_1_[4]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_0_1_fir_mac_muladd_10dEe_DSP48_2 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    p_1 : in STD_LOGIC_VECTOR ( 30 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fir_0_1_fir_mac_muladd_10dEe_DSP48_2 : entity is "fir_mac_muladd_10dEe_DSP48_2";
end system_fir_0_1_fir_mac_muladd_10dEe_DSP48_2;

architecture STRUCTURE of system_fir_0_1_fir_mac_muladd_10dEe_DSP48_2 is
  signal p_n_100 : STD_LOGIC;
  signal p_n_101 : STD_LOGIC;
  signal p_n_102 : STD_LOGIC;
  signal p_n_103 : STD_LOGIC;
  signal p_n_104 : STD_LOGIC;
  signal p_n_105 : STD_LOGIC;
  signal p_n_106 : STD_LOGIC;
  signal p_n_92 : STD_LOGIC;
  signal p_n_93 : STD_LOGIC;
  signal p_n_94 : STD_LOGIC;
  signal p_n_95 : STD_LOGIC;
  signal p_n_96 : STD_LOGIC;
  signal p_n_97 : STD_LOGIC;
  signal p_n_98 : STD_LOGIC;
  signal p_n_99 : STD_LOGIC;
  signal NLW_p_RnM_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_RnM_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_RnM_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_RnM_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 31 );
  signal NLW_p_RnM_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
p_RnM: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => p_0(15),
      A(28) => p_0(15),
      A(27) => p_0(15),
      A(26) => p_0(15),
      A(25) => p_0(15),
      A(24) => p_0(15),
      A(23) => p_0(15),
      A(22) => p_0(15),
      A(21) => p_0(15),
      A(20) => p_0(15),
      A(19) => p_0(15),
      A(18) => p_0(15),
      A(17) => p_0(15),
      A(16) => p_0(15),
      A(15 downto 0) => p_0(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_RnM_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"111111111010000110",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_RnM_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => p_1(30),
      C(46) => p_1(30),
      C(45) => p_1(30),
      C(44) => p_1(30),
      C(43) => p_1(30),
      C(42) => p_1(30),
      C(41) => p_1(30),
      C(40) => p_1(30),
      C(39) => p_1(30),
      C(38) => p_1(30),
      C(37) => p_1(30),
      C(36) => p_1(30),
      C(35) => p_1(30),
      C(34) => p_1(30),
      C(33) => p_1(30),
      C(32) => p_1(30),
      C(31) => p_1(30),
      C(30 downto 0) => p_1(30 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_RnM_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_RnM_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => Q(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => Q(1),
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_RnM_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_p_RnM_OVERFLOW_UNCONNECTED,
      P(47 downto 31) => NLW_p_RnM_P_UNCONNECTED(47 downto 31),
      P(30 downto 15) => P(15 downto 0),
      P(14) => p_n_92,
      P(13) => p_n_93,
      P(12) => p_n_94,
      P(11) => p_n_95,
      P(10) => p_n_96,
      P(9) => p_n_97,
      P(8) => p_n_98,
      P(7) => p_n_99,
      P(6) => p_n_100,
      P(5) => p_n_101,
      P(4) => p_n_102,
      P(3) => p_n_103,
      P(2) => p_n_104,
      P(1) => p_n_105,
      P(0) => p_n_106,
      PATTERNBDETECT => NLW_p_RnM_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_RnM_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_RnM_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => SR(0),
      UNDERFLOW => NLW_p_RnM_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_0_1_fir_mac_muladd_16cud_DSP48_1 is
  port (
    sel : out STD_LOGIC_VECTOR ( 5 downto 0 );
    CEA2 : out STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 30 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_0 : in STD_LOGIC;
    \zext_ln17_1_reg_251_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    p_1 : in STD_LOGIC;
    \zext_ln17_1_reg_251_reg[5]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    icmp_ln15_reg_237_pp0_iter1_reg : in STD_LOGIC;
    ap_enable_reg_pp0_iter2 : in STD_LOGIC;
    CEA1 : in STD_LOGIC;
    CEB1 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    q00 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    C : in STD_LOGIC_VECTOR ( 25 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fir_0_1_fir_mac_muladd_16cud_DSP48_1 : entity is "fir_mac_muladd_16cud_DSP48_1";
end system_fir_0_1_fir_mac_muladd_16cud_DSP48_1;

architecture STRUCTURE of system_fir_0_1_fir_mac_muladd_16cud_DSP48_1 is
  signal \^cea2\ : STD_LOGIC;
  signal acc_0_reg_1201 : STD_LOGIC;
  signal c_load_reg_2610 : STD_LOGIC;
  signal g0_b0_n_1 : STD_LOGIC;
  signal g0_b10_n_1 : STD_LOGIC;
  signal g0_b11_n_1 : STD_LOGIC;
  signal g0_b12_n_1 : STD_LOGIC;
  signal g0_b13_n_1 : STD_LOGIC;
  signal g0_b1_n_1 : STD_LOGIC;
  signal g0_b2_n_1 : STD_LOGIC;
  signal g0_b3_n_1 : STD_LOGIC;
  signal g0_b4_n_1 : STD_LOGIC;
  signal g0_b5_n_1 : STD_LOGIC;
  signal g0_b6_n_1 : STD_LOGIC;
  signal g0_b7_n_1 : STD_LOGIC;
  signal g0_b8_n_1 : STD_LOGIC;
  signal g0_b9_n_1 : STD_LOGIC;
  signal p_i_3_n_1 : STD_LOGIC;
  signal p_i_4_n_1 : STD_LOGIC;
  signal p_n_70 : STD_LOGIC;
  signal p_n_71 : STD_LOGIC;
  signal p_n_72 : STD_LOGIC;
  signal p_n_73 : STD_LOGIC;
  signal p_n_74 : STD_LOGIC;
  signal p_n_75 : STD_LOGIC;
  signal \^sel\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_p_RnM_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_RnM_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_RnM_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_RnM_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 37 );
  signal NLW_p_RnM_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  CEA2 <= \^cea2\;
  sel(5 downto 0) <= \^sel\(5 downto 0);
acc_reg_221_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAAA"
    )
        port map (
      I0 => Q(0),
      I1 => p_0,
      I2 => Q(2),
      I3 => p_1,
      O => \^cea2\
    );
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300865F27D30806"
    )
        port map (
      I0 => \^sel\(0),
      I1 => \^sel\(1),
      I2 => \^sel\(2),
      I3 => \^sel\(3),
      I4 => \^sel\(4),
      I5 => \^sel\(5),
      O => g0_b0_n_1
    );
g0_b0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \zext_ln17_1_reg_251_reg[5]\(0),
      I1 => p_1,
      I2 => Q(2),
      I3 => p_0,
      I4 => \zext_ln17_1_reg_251_reg[5]_0\(0),
      O => \^sel\(0)
    );
g0_b0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \zext_ln17_1_reg_251_reg[5]\(1),
      I1 => p_1,
      I2 => Q(2),
      I3 => p_0,
      I4 => \zext_ln17_1_reg_251_reg[5]_0\(1),
      O => \^sel\(1)
    );
g0_b0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \zext_ln17_1_reg_251_reg[5]\(2),
      I1 => p_1,
      I2 => Q(2),
      I3 => p_0,
      I4 => \zext_ln17_1_reg_251_reg[5]_0\(2),
      O => \^sel\(2)
    );
g0_b0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \zext_ln17_1_reg_251_reg[5]\(3),
      I1 => p_1,
      I2 => Q(2),
      I3 => p_0,
      I4 => \zext_ln17_1_reg_251_reg[5]_0\(3),
      O => \^sel\(3)
    );
g0_b0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \zext_ln17_1_reg_251_reg[5]\(4),
      I1 => p_1,
      I2 => Q(2),
      I3 => p_0,
      I4 => \zext_ln17_1_reg_251_reg[5]_0\(4),
      O => \^sel\(4)
    );
g0_b0_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \zext_ln17_1_reg_251_reg[5]\(5),
      I1 => p_1,
      I2 => Q(2),
      I3 => p_0,
      I4 => \zext_ln17_1_reg_251_reg[5]_0\(5),
      O => \^sel\(5)
    );
g0_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07D44194514C115F"
    )
        port map (
      I0 => \^sel\(0),
      I1 => \^sel\(1),
      I2 => \^sel\(2),
      I3 => \^sel\(3),
      I4 => \^sel\(4),
      I5 => \^sel\(5),
      O => g0_b1_n_1
    );
g0_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06030CE252398603"
    )
        port map (
      I0 => \^sel\(0),
      I1 => \^sel\(1),
      I2 => \^sel\(2),
      I3 => \^sel\(3),
      I4 => \^sel\(4),
      I5 => \^sel\(5),
      O => g0_b10_n_1
    );
g0_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06030FDC89DF8603"
    )
        port map (
      I0 => \^sel\(0),
      I1 => \^sel\(1),
      I2 => \^sel\(2),
      I3 => \^sel\(3),
      I4 => \^sel\(4),
      I5 => \^sel\(5),
      O => g0_b11_n_1
    );
g0_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06030FC0F81F8603"
    )
        port map (
      I0 => \^sel\(0),
      I1 => \^sel\(1),
      I2 => \^sel\(2),
      I3 => \^sel\(3),
      I4 => \^sel\(4),
      I5 => \^sel\(5),
      O => g0_b12_n_1
    );
g0_b13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06030FC0D81F8603"
    )
        port map (
      I0 => \^sel\(0),
      I1 => \^sel\(1),
      I2 => \^sel\(2),
      I3 => \^sel\(3),
      I4 => \^sel\(4),
      I5 => \^sel\(5),
      O => g0_b13_n_1
    );
g0_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06148EEC71BB8943"
    )
        port map (
      I0 => \^sel\(0),
      I1 => \^sel\(1),
      I2 => \^sel\(2),
      I3 => \^sel\(3),
      I4 => \^sel\(4),
      I5 => \^sel\(5),
      O => g0_b2_n_1
    );
g0_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01DC7F6974B7F1DC"
    )
        port map (
      I0 => \^sel\(0),
      I1 => \^sel\(1),
      I2 => \^sel\(2),
      I3 => \^sel\(3),
      I4 => \^sel\(4),
      I5 => \^sel\(5),
      O => g0_b3_n_1
    );
g0_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0302EE15DD43BA06"
    )
        port map (
      I0 => \^sel\(0),
      I1 => \^sel\(1),
      I2 => \^sel\(2),
      I3 => \^sel\(3),
      I4 => \^sel\(4),
      I5 => \^sel\(5),
      O => g0_b4_n_1
    );
g0_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02FAD33222665AFA"
    )
        port map (
      I0 => \^sel\(0),
      I1 => \^sel\(1),
      I2 => \^sel\(2),
      I3 => \^sel\(3),
      I4 => \^sel\(4),
      I5 => \^sel\(5),
      O => g0_b5_n_1
    );
g0_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002122E68B3A2420"
    )
        port map (
      I0 => \^sel\(0),
      I1 => \^sel\(1),
      I2 => \^sel\(2),
      I3 => \^sel\(3),
      I4 => \^sel\(4),
      I5 => \^sel\(5),
      O => g0_b6_n_1
    );
g0_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"068B6F500057B68B"
    )
        port map (
      I0 => \^sel\(0),
      I1 => \^sel\(1),
      I2 => \^sel\(2),
      I3 => \^sel\(3),
      I4 => \^sel\(4),
      I5 => \^sel\(5),
      O => g0_b7_n_1
    );
g0_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0273004888900672"
    )
        port map (
      I0 => \^sel\(0),
      I1 => \^sel\(1),
      I2 => \^sel\(2),
      I3 => \^sel\(3),
      I4 => \^sel\(4),
      I5 => \^sel\(5),
      O => g0_b8_n_1
    );
g0_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06030B4E23968603"
    )
        port map (
      I0 => \^sel\(0),
      I1 => \^sel\(1),
      I2 => \^sel\(2),
      I3 => \^sel\(3),
      I4 => \^sel\(4),
      I5 => \^sel\(5),
      O => g0_b9_n_1
    );
p_RnM: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => q00(15),
      A(28) => q00(15),
      A(27) => q00(15),
      A(26) => q00(15),
      A(25) => q00(15),
      A(24) => q00(15),
      A(23) => q00(15),
      A(22) => q00(15),
      A(21) => q00(15),
      A(20) => q00(15),
      A(19) => q00(15),
      A(18) => q00(15),
      A(17) => q00(15),
      A(16) => q00(15),
      A(15 downto 0) => q00(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_RnM_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => g0_b13_n_1,
      B(16) => g0_b13_n_1,
      B(15) => g0_b13_n_1,
      B(14) => g0_b12_n_1,
      B(13) => g0_b12_n_1,
      B(12) => g0_b12_n_1,
      B(11) => g0_b11_n_1,
      B(10) => g0_b10_n_1,
      B(9) => g0_b9_n_1,
      B(8) => g0_b8_n_1,
      B(7) => g0_b7_n_1,
      B(6) => g0_b6_n_1,
      B(5) => g0_b5_n_1,
      B(4) => g0_b4_n_1,
      B(3) => g0_b3_n_1,
      B(2) => g0_b2_n_1,
      B(1) => g0_b1_n_1,
      B(0) => g0_b0_n_1,
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_RnM_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 37) => B"00000000000",
      C(36) => C(25),
      C(35) => C(25),
      C(34) => C(25),
      C(33) => C(25),
      C(32) => C(25),
      C(31) => C(25),
      C(30) => C(25),
      C(29) => C(25),
      C(28) => C(25),
      C(27) => C(25),
      C(26) => C(25),
      C(25 downto 0) => C(25 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_RnM_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_RnM_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => CEA1,
      CEA2 => \^cea2\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => CEB1,
      CEB2 => c_load_reg_2610,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => p_i_3_n_1,
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_RnM_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => p_i_4_n_1,
      OPMODE(3) => '0',
      OPMODE(2) => acc_0_reg_1201,
      OPMODE(1) => '0',
      OPMODE(0) => acc_0_reg_1201,
      OVERFLOW => NLW_p_RnM_OVERFLOW_UNCONNECTED,
      P(47 downto 37) => NLW_p_RnM_P_UNCONNECTED(47 downto 37),
      P(36) => p_n_70,
      P(35) => p_n_71,
      P(34) => p_n_72,
      P(33) => p_n_73,
      P(32) => p_n_74,
      P(31) => p_n_75,
      P(30 downto 0) => P(30 downto 0),
      PATTERNBDETECT => NLW_p_RnM_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_RnM_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_RnM_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_RnM_UNDERFLOW_UNCONNECTED
    );
p_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(2),
      I1 => p_0,
      O => c_load_reg_2610
    );
p_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => Q(1),
      I1 => icmp_ln15_reg_237_pp0_iter1_reg,
      I2 => ap_enable_reg_pp0_iter2,
      O => p_i_3_n_1
    );
p_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => icmp_ln15_reg_237_pp0_iter1_reg,
      I1 => ap_enable_reg_pp0_iter2,
      O => p_i_4_n_1
    );
p_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2,
      I1 => icmp_ln15_reg_237_pp0_iter1_reg,
      O => acc_0_reg_1201
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_0_1_fir_shift_reg_ram is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    CEB1 : out STD_LOGIC;
    q00 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \i_0_reg_130_reg[0]\ : in STD_LOGIC;
    \i_0_reg_130_reg[0]_0\ : in STD_LOGIC;
    ram_reg_0_63_0_2_i_5_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_reg_0_63_0_2_i_5_1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c_address0 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    \q0_reg[0]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \q0_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \q0_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fir_0_1_fir_shift_reg_ram : entity is "fir_shift_reg_ram";
end system_fir_0_1_fir_shift_reg_ram;

architecture STRUCTURE of system_fir_0_1_fir_shift_reg_ram is
  signal \^ceb1\ : STD_LOGIC;
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal d1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal q0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^q00\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ram_reg_0_63_0_2_i_17_n_1 : STD_LOGIC;
  signal ram_reg_0_63_0_2_i_5_n_1 : STD_LOGIC;
  signal ram_reg_0_63_0_2_i_6_n_1 : STD_LOGIC;
  signal ram_reg_0_63_0_2_i_7_n_1 : STD_LOGIC;
  signal shift_reg_address0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal shift_reg_address1 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_ram_reg_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_63_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_63_15_15_DOB_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_63_15_15_DOC_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_63_15_15_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_63_0_2 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg_0_63_0_2 : label is 928;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg_0_63_0_2 : label is "shift_reg_U/fir_shift_reg_ram_U/ram";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg_0_63_0_2 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg_0_63_0_2 : label is 57;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg_0_63_0_2 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg_0_63_0_2 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg_0_63_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_63_12_14 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_63_12_14 : label is 928;
  attribute RTL_RAM_NAME of ram_reg_0_63_12_14 : label is "shift_reg_U/fir_shift_reg_ram_U/ram";
  attribute ram_addr_begin of ram_reg_0_63_12_14 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_12_14 : label is 57;
  attribute ram_offset of ram_reg_0_63_12_14 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_12_14 : label is 12;
  attribute ram_slice_end of ram_reg_0_63_12_14 : label is 14;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_63_15_15 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_63_15_15 : label is 928;
  attribute RTL_RAM_NAME of ram_reg_0_63_15_15 : label is "shift_reg_U/fir_shift_reg_ram_U/ram";
  attribute ram_addr_begin of ram_reg_0_63_15_15 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_15_15 : label is 57;
  attribute ram_offset of ram_reg_0_63_15_15 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_15_15 : label is 15;
  attribute ram_slice_end of ram_reg_0_63_15_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_63_3_5 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_63_3_5 : label is 928;
  attribute RTL_RAM_NAME of ram_reg_0_63_3_5 : label is "shift_reg_U/fir_shift_reg_ram_U/ram";
  attribute ram_addr_begin of ram_reg_0_63_3_5 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_3_5 : label is 57;
  attribute ram_offset of ram_reg_0_63_3_5 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_3_5 : label is 3;
  attribute ram_slice_end of ram_reg_0_63_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_63_6_8 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_63_6_8 : label is 928;
  attribute RTL_RAM_NAME of ram_reg_0_63_6_8 : label is "shift_reg_U/fir_shift_reg_ram_U/ram";
  attribute ram_addr_begin of ram_reg_0_63_6_8 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_6_8 : label is 57;
  attribute ram_offset of ram_reg_0_63_6_8 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_6_8 : label is 6;
  attribute ram_slice_end of ram_reg_0_63_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_63_9_11 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_63_9_11 : label is 928;
  attribute RTL_RAM_NAME of ram_reg_0_63_9_11 : label is "shift_reg_U/fir_shift_reg_ram_U/ram";
  attribute ram_addr_begin of ram_reg_0_63_9_11 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_9_11 : label is 57;
  attribute ram_offset of ram_reg_0_63_9_11 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_9_11 : label is 9;
  attribute ram_slice_end of ram_reg_0_63_9_11 : label is 11;
begin
  CEB1 <= \^ceb1\;
  E(0) <= \^e\(0);
  q00(15 downto 0) <= \^q00\(15 downto 0);
\i_0_reg_130[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \i_0_reg_130_reg[0]_0\,
      I1 => Q(0),
      I2 => \i_0_reg_130_reg[0]\,
      O => \^e\(0)
    );
p_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(0),
      I1 => ap_enable_reg_pp0_iter0,
      O => \^ceb1\
    );
\q0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \q0_reg[0]_1\(0),
      D => \^q00\(0),
      Q => q0(0),
      R => '0'
    );
\q0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \q0_reg[0]_1\(0),
      D => \^q00\(10),
      Q => q0(10),
      R => '0'
    );
\q0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \q0_reg[0]_1\(0),
      D => \^q00\(11),
      Q => q0(11),
      R => '0'
    );
\q0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \q0_reg[0]_1\(0),
      D => \^q00\(12),
      Q => q0(12),
      R => '0'
    );
\q0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \q0_reg[0]_1\(0),
      D => \^q00\(13),
      Q => q0(13),
      R => '0'
    );
\q0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \q0_reg[0]_1\(0),
      D => \^q00\(14),
      Q => q0(14),
      R => '0'
    );
\q0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \q0_reg[0]_1\(0),
      D => \^q00\(15),
      Q => q0(15),
      R => '0'
    );
\q0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \q0_reg[0]_1\(0),
      D => \^q00\(1),
      Q => q0(1),
      R => '0'
    );
\q0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \q0_reg[0]_1\(0),
      D => \^q00\(2),
      Q => q0(2),
      R => '0'
    );
\q0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \q0_reg[0]_1\(0),
      D => \^q00\(3),
      Q => q0(3),
      R => '0'
    );
\q0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \q0_reg[0]_1\(0),
      D => \^q00\(4),
      Q => q0(4),
      R => '0'
    );
\q0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \q0_reg[0]_1\(0),
      D => \^q00\(5),
      Q => q0(5),
      R => '0'
    );
\q0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \q0_reg[0]_1\(0),
      D => \^q00\(6),
      Q => q0(6),
      R => '0'
    );
\q0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \q0_reg[0]_1\(0),
      D => \^q00\(7),
      Q => q0(7),
      R => '0'
    );
\q0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \q0_reg[0]_1\(0),
      D => \^q00\(8),
      Q => q0(8),
      R => '0'
    );
\q0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \q0_reg[0]_1\(0),
      D => \^q00\(9),
      Q => q0(9),
      R => '0'
    );
ram_reg_0_63_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5) => ram_reg_0_63_0_2_i_5_n_1,
      ADDRA(4) => ram_reg_0_63_0_2_i_6_n_1,
      ADDRA(3) => ram_reg_0_63_0_2_i_7_n_1,
      ADDRA(2 downto 0) => shift_reg_address0(2 downto 0),
      ADDRB(5) => ram_reg_0_63_0_2_i_5_n_1,
      ADDRB(4) => ram_reg_0_63_0_2_i_6_n_1,
      ADDRB(3) => ram_reg_0_63_0_2_i_7_n_1,
      ADDRB(2 downto 0) => shift_reg_address0(2 downto 0),
      ADDRC(5) => ram_reg_0_63_0_2_i_5_n_1,
      ADDRC(4) => ram_reg_0_63_0_2_i_6_n_1,
      ADDRC(3) => ram_reg_0_63_0_2_i_7_n_1,
      ADDRC(2 downto 0) => shift_reg_address0(2 downto 0),
      ADDRD(5 downto 0) => shift_reg_address1(5 downto 0),
      DIA => d1(0),
      DIB => d1(1),
      DIC => d1(2),
      DID => '0',
      DOA => \^q00\(0),
      DOB => \^q00\(1),
      DOC => \^q00\(2),
      DOD => NLW_ram_reg_0_63_0_2_DOD_UNCONNECTED,
      WCLK => ap_clk,
      WE => p_0_in
    );
ram_reg_0_63_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q0_reg[15]_0\(0),
      I1 => Q(1),
      I2 => q0(0),
      O => d1(0)
    );
ram_reg_0_63_0_2_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4575FFFFFFFFFFFF"
    )
        port map (
      I0 => ram_reg_0_63_0_2_i_5_1(0),
      I1 => \i_0_reg_130_reg[0]\,
      I2 => \i_0_reg_130_reg[0]_0\,
      I3 => ram_reg_0_63_0_2_i_5_0(0),
      I4 => ap_enable_reg_pp0_iter0,
      I5 => Q(0),
      O => shift_reg_address0(0)
    );
ram_reg_0_63_0_2_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_0\(5),
      I1 => Q(1),
      O => shift_reg_address1(5)
    );
ram_reg_0_63_0_2_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_0\(4),
      I1 => Q(1),
      O => shift_reg_address1(4)
    );
ram_reg_0_63_0_2_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_0\(3),
      I1 => Q(1),
      O => shift_reg_address1(3)
    );
ram_reg_0_63_0_2_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_0\(2),
      I1 => Q(1),
      O => shift_reg_address1(2)
    );
ram_reg_0_63_0_2_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_0\(1),
      I1 => Q(1),
      O => shift_reg_address1(1)
    );
ram_reg_0_63_0_2_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_0\(0),
      I1 => Q(1),
      O => shift_reg_address1(0)
    );
ram_reg_0_63_0_2_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFCFAFAFFFC"
    )
        port map (
      I0 => ram_reg_0_63_0_2_i_5_0(1),
      I1 => ram_reg_0_63_0_2_i_5_1(1),
      I2 => c_address0(0),
      I3 => ram_reg_0_63_0_2_i_5_1(2),
      I4 => \^e\(0),
      I5 => ram_reg_0_63_0_2_i_5_0(2),
      O => ram_reg_0_63_0_2_i_17_n_1
    );
ram_reg_0_63_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q0_reg[15]_0\(1),
      I1 => Q(1),
      I2 => q0(1),
      O => d1(1)
    );
ram_reg_0_63_0_2_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q0_reg[15]_0\(2),
      I1 => Q(1),
      I2 => q0(2),
      O => d1(2)
    );
ram_reg_0_63_0_2_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAAA"
    )
        port map (
      I0 => Q(1),
      I1 => \i_0_reg_130_reg[0]\,
      I2 => Q(0),
      I3 => \i_0_reg_130_reg[0]_0\,
      O => p_0_in
    );
ram_reg_0_63_0_2_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE01FFFFFFFFFFFF"
    )
        port map (
      I0 => ram_reg_0_63_0_2_i_17_n_1,
      I1 => c_address0(3),
      I2 => c_address0(4),
      I3 => c_address0(5),
      I4 => ap_enable_reg_pp0_iter0,
      I5 => Q(0),
      O => ram_reg_0_63_0_2_i_5_n_1
    );
ram_reg_0_63_0_2_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0001FFFFFFFF"
    )
        port map (
      I0 => c_address0(2),
      I1 => c_address0(0),
      I2 => c_address0(1),
      I3 => c_address0(3),
      I4 => c_address0(4),
      I5 => \^ceb1\,
      O => ram_reg_0_63_0_2_i_6_n_1
    );
ram_reg_0_63_0_2_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE01FFFFFFFFFFFF"
    )
        port map (
      I0 => c_address0(2),
      I1 => c_address0(0),
      I2 => c_address0(1),
      I3 => c_address0(3),
      I4 => ap_enable_reg_pp0_iter0,
      I5 => Q(0),
      O => ram_reg_0_63_0_2_i_7_n_1
    );
ram_reg_0_63_0_2_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808008"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => Q(0),
      I2 => c_address0(2),
      I3 => c_address0(0),
      I4 => c_address0(1),
      O => shift_reg_address0(2)
    );
ram_reg_0_63_0_2_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => Q(0),
      I2 => c_address0(1),
      I3 => c_address0(0),
      O => shift_reg_address0(1)
    );
ram_reg_0_63_12_14: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5) => ram_reg_0_63_0_2_i_5_n_1,
      ADDRA(4) => ram_reg_0_63_0_2_i_6_n_1,
      ADDRA(3) => ram_reg_0_63_0_2_i_7_n_1,
      ADDRA(2 downto 0) => shift_reg_address0(2 downto 0),
      ADDRB(5) => ram_reg_0_63_0_2_i_5_n_1,
      ADDRB(4) => ram_reg_0_63_0_2_i_6_n_1,
      ADDRB(3) => ram_reg_0_63_0_2_i_7_n_1,
      ADDRB(2 downto 0) => shift_reg_address0(2 downto 0),
      ADDRC(5) => ram_reg_0_63_0_2_i_5_n_1,
      ADDRC(4) => ram_reg_0_63_0_2_i_6_n_1,
      ADDRC(3) => ram_reg_0_63_0_2_i_7_n_1,
      ADDRC(2 downto 0) => shift_reg_address0(2 downto 0),
      ADDRD(5 downto 0) => shift_reg_address1(5 downto 0),
      DIA => d1(12),
      DIB => d1(13),
      DIC => d1(14),
      DID => '0',
      DOA => \^q00\(12),
      DOB => \^q00\(13),
      DOC => \^q00\(14),
      DOD => NLW_ram_reg_0_63_12_14_DOD_UNCONNECTED,
      WCLK => ap_clk,
      WE => p_0_in
    );
ram_reg_0_63_12_14_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q0_reg[15]_0\(12),
      I1 => Q(1),
      I2 => q0(12),
      O => d1(12)
    );
ram_reg_0_63_12_14_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q0_reg[15]_0\(13),
      I1 => Q(1),
      I2 => q0(13),
      O => d1(13)
    );
ram_reg_0_63_12_14_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q0_reg[15]_0\(14),
      I1 => Q(1),
      I2 => q0(14),
      O => d1(14)
    );
ram_reg_0_63_15_15: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5) => ram_reg_0_63_0_2_i_5_n_1,
      ADDRA(4) => ram_reg_0_63_0_2_i_6_n_1,
      ADDRA(3) => ram_reg_0_63_0_2_i_7_n_1,
      ADDRA(2 downto 0) => shift_reg_address0(2 downto 0),
      ADDRB(5) => ram_reg_0_63_0_2_i_5_n_1,
      ADDRB(4) => ram_reg_0_63_0_2_i_6_n_1,
      ADDRB(3) => ram_reg_0_63_0_2_i_7_n_1,
      ADDRB(2 downto 0) => shift_reg_address0(2 downto 0),
      ADDRC(5) => ram_reg_0_63_0_2_i_5_n_1,
      ADDRC(4) => ram_reg_0_63_0_2_i_6_n_1,
      ADDRC(3) => ram_reg_0_63_0_2_i_7_n_1,
      ADDRC(2 downto 0) => shift_reg_address0(2 downto 0),
      ADDRD(5 downto 0) => shift_reg_address1(5 downto 0),
      DIA => d1(15),
      DIB => '0',
      DIC => '0',
      DID => '0',
      DOA => \^q00\(15),
      DOB => NLW_ram_reg_0_63_15_15_DOB_UNCONNECTED,
      DOC => NLW_ram_reg_0_63_15_15_DOC_UNCONNECTED,
      DOD => NLW_ram_reg_0_63_15_15_DOD_UNCONNECTED,
      WCLK => ap_clk,
      WE => p_0_in
    );
ram_reg_0_63_15_15_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q0_reg[15]_0\(15),
      I1 => Q(1),
      I2 => q0(15),
      O => d1(15)
    );
ram_reg_0_63_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5) => ram_reg_0_63_0_2_i_5_n_1,
      ADDRA(4) => ram_reg_0_63_0_2_i_6_n_1,
      ADDRA(3) => ram_reg_0_63_0_2_i_7_n_1,
      ADDRA(2 downto 0) => shift_reg_address0(2 downto 0),
      ADDRB(5) => ram_reg_0_63_0_2_i_5_n_1,
      ADDRB(4) => ram_reg_0_63_0_2_i_6_n_1,
      ADDRB(3) => ram_reg_0_63_0_2_i_7_n_1,
      ADDRB(2 downto 0) => shift_reg_address0(2 downto 0),
      ADDRC(5) => ram_reg_0_63_0_2_i_5_n_1,
      ADDRC(4) => ram_reg_0_63_0_2_i_6_n_1,
      ADDRC(3) => ram_reg_0_63_0_2_i_7_n_1,
      ADDRC(2 downto 0) => shift_reg_address0(2 downto 0),
      ADDRD(5 downto 0) => shift_reg_address1(5 downto 0),
      DIA => d1(3),
      DIB => d1(4),
      DIC => d1(5),
      DID => '0',
      DOA => \^q00\(3),
      DOB => \^q00\(4),
      DOC => \^q00\(5),
      DOD => NLW_ram_reg_0_63_3_5_DOD_UNCONNECTED,
      WCLK => ap_clk,
      WE => p_0_in
    );
ram_reg_0_63_3_5_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q0_reg[15]_0\(3),
      I1 => Q(1),
      I2 => q0(3),
      O => d1(3)
    );
ram_reg_0_63_3_5_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q0_reg[15]_0\(4),
      I1 => Q(1),
      I2 => q0(4),
      O => d1(4)
    );
ram_reg_0_63_3_5_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q0_reg[15]_0\(5),
      I1 => Q(1),
      I2 => q0(5),
      O => d1(5)
    );
ram_reg_0_63_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5) => ram_reg_0_63_0_2_i_5_n_1,
      ADDRA(4) => ram_reg_0_63_0_2_i_6_n_1,
      ADDRA(3) => ram_reg_0_63_0_2_i_7_n_1,
      ADDRA(2 downto 0) => shift_reg_address0(2 downto 0),
      ADDRB(5) => ram_reg_0_63_0_2_i_5_n_1,
      ADDRB(4) => ram_reg_0_63_0_2_i_6_n_1,
      ADDRB(3) => ram_reg_0_63_0_2_i_7_n_1,
      ADDRB(2 downto 0) => shift_reg_address0(2 downto 0),
      ADDRC(5) => ram_reg_0_63_0_2_i_5_n_1,
      ADDRC(4) => ram_reg_0_63_0_2_i_6_n_1,
      ADDRC(3) => ram_reg_0_63_0_2_i_7_n_1,
      ADDRC(2 downto 0) => shift_reg_address0(2 downto 0),
      ADDRD(5 downto 0) => shift_reg_address1(5 downto 0),
      DIA => d1(6),
      DIB => d1(7),
      DIC => d1(8),
      DID => '0',
      DOA => \^q00\(6),
      DOB => \^q00\(7),
      DOC => \^q00\(8),
      DOD => NLW_ram_reg_0_63_6_8_DOD_UNCONNECTED,
      WCLK => ap_clk,
      WE => p_0_in
    );
ram_reg_0_63_6_8_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q0_reg[15]_0\(6),
      I1 => Q(1),
      I2 => q0(6),
      O => d1(6)
    );
ram_reg_0_63_6_8_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q0_reg[15]_0\(7),
      I1 => Q(1),
      I2 => q0(7),
      O => d1(7)
    );
ram_reg_0_63_6_8_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q0_reg[15]_0\(8),
      I1 => Q(1),
      I2 => q0(8),
      O => d1(8)
    );
ram_reg_0_63_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5) => ram_reg_0_63_0_2_i_5_n_1,
      ADDRA(4) => ram_reg_0_63_0_2_i_6_n_1,
      ADDRA(3) => ram_reg_0_63_0_2_i_7_n_1,
      ADDRA(2 downto 0) => shift_reg_address0(2 downto 0),
      ADDRB(5) => ram_reg_0_63_0_2_i_5_n_1,
      ADDRB(4) => ram_reg_0_63_0_2_i_6_n_1,
      ADDRB(3) => ram_reg_0_63_0_2_i_7_n_1,
      ADDRB(2 downto 0) => shift_reg_address0(2 downto 0),
      ADDRC(5) => ram_reg_0_63_0_2_i_5_n_1,
      ADDRC(4) => ram_reg_0_63_0_2_i_6_n_1,
      ADDRC(3) => ram_reg_0_63_0_2_i_7_n_1,
      ADDRC(2 downto 0) => shift_reg_address0(2 downto 0),
      ADDRD(5 downto 0) => shift_reg_address1(5 downto 0),
      DIA => d1(9),
      DIB => d1(10),
      DIC => d1(11),
      DID => '0',
      DOA => \^q00\(9),
      DOB => \^q00\(10),
      DOC => \^q00\(11),
      DOD => NLW_ram_reg_0_63_9_11_DOD_UNCONNECTED,
      WCLK => ap_clk,
      WE => p_0_in
    );
ram_reg_0_63_9_11_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q0_reg[15]_0\(9),
      I1 => Q(1),
      I2 => q0(9),
      O => d1(9)
    );
ram_reg_0_63_9_11_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q0_reg[15]_0\(10),
      I1 => Q(1),
      I2 => q0(10),
      O => d1(10)
    );
ram_reg_0_63_9_11_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q0_reg[15]_0\(11),
      I1 => Q(1),
      I2 => q0(11),
      O => d1(11)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_0_1_fir_mac_muladd_10dEe is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \^p\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    p_0 : in STD_LOGIC_VECTOR ( 30 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fir_0_1_fir_mac_muladd_10dEe : entity is "fir_mac_muladd_10dEe";
end system_fir_0_1_fir_mac_muladd_10dEe;

architecture STRUCTURE of system_fir_0_1_fir_mac_muladd_10dEe is
begin
fir_mac_muladd_10dEe_DSP48_2_U: entity work.system_fir_0_1_fir_mac_muladd_10dEe_DSP48_2
     port map (
      P(15 downto 0) => P(15 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => SR(0),
      ap_clk => ap_clk,
      p_0(15 downto 0) => \^p\(15 downto 0),
      p_1(30 downto 0) => p_0(30 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_0_1_fir_mac_muladd_16cud is
  port (
    c_address0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    CEA2 : out STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 30 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \^p\ : in STD_LOGIC;
    \zext_ln17_1_reg_251_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    p_0 : in STD_LOGIC;
    \zext_ln17_1_reg_251_reg[5]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    icmp_ln15_reg_237_pp0_iter1_reg : in STD_LOGIC;
    ap_enable_reg_pp0_iter2 : in STD_LOGIC;
    CEA1 : in STD_LOGIC;
    CEB1 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    q00 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    C : in STD_LOGIC_VECTOR ( 25 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fir_0_1_fir_mac_muladd_16cud : entity is "fir_mac_muladd_16cud";
end system_fir_0_1_fir_mac_muladd_16cud;

architecture STRUCTURE of system_fir_0_1_fir_mac_muladd_16cud is
begin
fir_mac_muladd_16cud_DSP48_1_U: entity work.system_fir_0_1_fir_mac_muladd_16cud_DSP48_1
     port map (
      C(25 downto 0) => C(25 downto 0),
      CEA1 => CEA1,
      CEA2 => CEA2,
      CEB1 => CEB1,
      P(30 downto 0) => P(30 downto 0),
      Q(2 downto 0) => Q(2 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter2 => ap_enable_reg_pp0_iter2,
      icmp_ln15_reg_237_pp0_iter1_reg => icmp_ln15_reg_237_pp0_iter1_reg,
      p_0 => \^p\,
      p_1 => p_0,
      q00(15 downto 0) => q00(15 downto 0),
      sel(5 downto 0) => c_address0(5 downto 0),
      \zext_ln17_1_reg_251_reg[5]\(5 downto 0) => \zext_ln17_1_reg_251_reg[5]\(5 downto 0),
      \zext_ln17_1_reg_251_reg[5]_0\(5 downto 0) => \zext_ln17_1_reg_251_reg[5]_0\(5 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_0_1_fir_shift_reg is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    CEB1 : out STD_LOGIC;
    q00 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \i_0_reg_130_reg[0]\ : in STD_LOGIC;
    \i_0_reg_130_reg[0]_0\ : in STD_LOGIC;
    ram_reg_0_63_0_2_i_5 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_reg_0_63_0_2_i_5_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c_address0 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    \q0_reg[0]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \q0_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \q0_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fir_0_1_fir_shift_reg : entity is "fir_shift_reg";
end system_fir_0_1_fir_shift_reg;

architecture STRUCTURE of system_fir_0_1_fir_shift_reg is
begin
fir_shift_reg_ram_U: entity work.system_fir_0_1_fir_shift_reg_ram
     port map (
      CEB1 => CEB1,
      E(0) => E(0),
      Q(1 downto 0) => Q(1 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      c_address0(5 downto 0) => c_address0(5 downto 0),
      \i_0_reg_130_reg[0]\ => \i_0_reg_130_reg[0]\,
      \i_0_reg_130_reg[0]_0\ => \i_0_reg_130_reg[0]_0\,
      q00(15 downto 0) => q00(15 downto 0),
      \q0_reg[0]_0\(5 downto 0) => \q0_reg[0]\(5 downto 0),
      \q0_reg[0]_1\(0) => \q0_reg[0]_0\(0),
      \q0_reg[15]_0\(15 downto 0) => \q0_reg[15]\(15 downto 0),
      ram_reg_0_63_0_2_i_5_0(2 downto 0) => ram_reg_0_63_0_2_i_5(2 downto 0),
      ram_reg_0_63_0_2_i_5_1(2 downto 0) => ram_reg_0_63_0_2_i_5_0(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_0_1_fir is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axi_fir_io_AWVALID : in STD_LOGIC;
    s_axi_fir_io_AWREADY : out STD_LOGIC;
    s_axi_fir_io_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_fir_io_WVALID : in STD_LOGIC;
    s_axi_fir_io_WREADY : out STD_LOGIC;
    s_axi_fir_io_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_fir_io_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_fir_io_ARVALID : in STD_LOGIC;
    s_axi_fir_io_ARREADY : out STD_LOGIC;
    s_axi_fir_io_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_fir_io_RVALID : out STD_LOGIC;
    s_axi_fir_io_RREADY : in STD_LOGIC;
    s_axi_fir_io_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_fir_io_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_fir_io_BVALID : out STD_LOGIC;
    s_axi_fir_io_BREADY : in STD_LOGIC;
    s_axi_fir_io_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt : out STD_LOGIC
  );
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of system_fir_0_1_fir : entity is 32;
  attribute C_S_AXI_FIR_IO_ADDR_WIDTH : integer;
  attribute C_S_AXI_FIR_IO_ADDR_WIDTH of system_fir_0_1_fir : entity is 5;
  attribute C_S_AXI_FIR_IO_DATA_WIDTH : integer;
  attribute C_S_AXI_FIR_IO_DATA_WIDTH of system_fir_0_1_fir : entity is 32;
  attribute C_S_AXI_FIR_IO_WSTRB_WIDTH : integer;
  attribute C_S_AXI_FIR_IO_WSTRB_WIDTH of system_fir_0_1_fir : entity is 4;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of system_fir_0_1_fir : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fir_0_1_fir : entity is "fir";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of system_fir_0_1_fir : entity is "6'b010000";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of system_fir_0_1_fir : entity is "6'b000001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of system_fir_0_1_fir : entity is "6'b000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of system_fir_0_1_fir : entity is "6'b000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of system_fir_0_1_fir : entity is "6'b001000";
  attribute ap_ST_fsm_state8 : string;
  attribute ap_ST_fsm_state8 of system_fir_0_1_fir : entity is "6'b100000";
  attribute hls_module : string;
  attribute hls_module of system_fir_0_1_fir : entity is "yes";
end system_fir_0_1_fir;

architecture STRUCTURE of system_fir_0_1_fir is
  signal \<const0>\ : STD_LOGIC;
  signal acc_reg_221_reg_n_100 : STD_LOGIC;
  signal acc_reg_221_reg_n_101 : STD_LOGIC;
  signal acc_reg_221_reg_n_102 : STD_LOGIC;
  signal acc_reg_221_reg_n_103 : STD_LOGIC;
  signal acc_reg_221_reg_n_104 : STD_LOGIC;
  signal acc_reg_221_reg_n_105 : STD_LOGIC;
  signal acc_reg_221_reg_n_106 : STD_LOGIC;
  signal acc_reg_221_reg_n_81 : STD_LOGIC;
  signal acc_reg_221_reg_n_82 : STD_LOGIC;
  signal acc_reg_221_reg_n_83 : STD_LOGIC;
  signal acc_reg_221_reg_n_84 : STD_LOGIC;
  signal acc_reg_221_reg_n_85 : STD_LOGIC;
  signal acc_reg_221_reg_n_86 : STD_LOGIC;
  signal acc_reg_221_reg_n_87 : STD_LOGIC;
  signal acc_reg_221_reg_n_88 : STD_LOGIC;
  signal acc_reg_221_reg_n_89 : STD_LOGIC;
  signal acc_reg_221_reg_n_90 : STD_LOGIC;
  signal acc_reg_221_reg_n_91 : STD_LOGIC;
  signal acc_reg_221_reg_n_92 : STD_LOGIC;
  signal acc_reg_221_reg_n_93 : STD_LOGIC;
  signal acc_reg_221_reg_n_94 : STD_LOGIC;
  signal acc_reg_221_reg_n_95 : STD_LOGIC;
  signal acc_reg_221_reg_n_96 : STD_LOGIC;
  signal acc_reg_221_reg_n_97 : STD_LOGIC;
  signal acc_reg_221_reg_n_98 : STD_LOGIC;
  signal acc_reg_221_reg_n_99 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_1_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state8 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal ap_condition_pp0_exit_iter0_state5 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_i_1_n_1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_reg_n_1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2 : STD_LOGIC;
  signal ap_phi_mux_i_0_phi_fu_134_p41 : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal c_address0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal c_ce0 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_10 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_11 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_12 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_13 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_14 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_15 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_16 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_17 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_18 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_19 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_20 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_21 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_22 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_23 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_24 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_25 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_26 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_27 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_28 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_29 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_30 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_31 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_32 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_33 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_34 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_35 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_36 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_37 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_38 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_8 : STD_LOGIC;
  signal fir_mac_muladd_16cud_U2_n_9 : STD_LOGIC;
  signal i_0_reg_130 : STD_LOGIC;
  signal \i_0_reg_130_reg_n_1_[0]\ : STD_LOGIC;
  signal \i_0_reg_130_reg_n_1_[1]\ : STD_LOGIC;
  signal \i_0_reg_130_reg_n_1_[2]\ : STD_LOGIC;
  signal \i_0_reg_130_reg_n_1_[3]\ : STD_LOGIC;
  signal \i_0_reg_130_reg_n_1_[4]\ : STD_LOGIC;
  signal \i_0_reg_130_reg_n_1_[5]\ : STD_LOGIC;
  signal i_fu_158_p2 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \i_reg_241[5]_i_1_n_1\ : STD_LOGIC;
  signal i_reg_241_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \icmp_ln15_reg_237[0]_i_1_n_1\ : STD_LOGIC;
  signal icmp_ln15_reg_237_pp0_iter1_reg : STD_LOGIC;
  signal \icmp_ln15_reg_237_pp0_iter1_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \icmp_ln15_reg_237_reg_n_1_[0]\ : STD_LOGIC;
  signal int_y : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal q00 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg_1410 : STD_LOGIC;
  signal \^s_axi_fir_io_rdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal shift_reg_ce0 : STD_LOGIC;
  signal x : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal x_read_reg_226 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zext_ln17_1_reg_251_reg0 : STD_LOGIC;
  signal \zext_ln17_1_reg_251_reg_n_1_[0]\ : STD_LOGIC;
  signal \zext_ln17_1_reg_251_reg_n_1_[1]\ : STD_LOGIC;
  signal \zext_ln17_1_reg_251_reg_n_1_[2]\ : STD_LOGIC;
  signal \zext_ln17_1_reg_251_reg_n_1_[3]\ : STD_LOGIC;
  signal \zext_ln17_1_reg_251_reg_n_1_[4]\ : STD_LOGIC;
  signal \zext_ln17_1_reg_251_reg_n_1_[5]\ : STD_LOGIC;
  signal NLW_acc_reg_221_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_acc_reg_221_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_acc_reg_221_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_acc_reg_221_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_acc_reg_221_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_acc_reg_221_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_acc_reg_221_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_acc_reg_221_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_acc_reg_221_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_acc_reg_221_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 26 );
  signal NLW_acc_reg_221_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter0_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter1_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \i_reg_241[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i_reg_241[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \icmp_ln15_reg_237[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \icmp_ln15_reg_237_pp0_iter1_reg[0]_i_1\ : label is "soft_lutpair23";
begin
  s_axi_fir_io_BRESP(1) <= \<const0>\;
  s_axi_fir_io_BRESP(0) <= \<const0>\;
  s_axi_fir_io_RDATA(31) <= \<const0>\;
  s_axi_fir_io_RDATA(30) <= \<const0>\;
  s_axi_fir_io_RDATA(29) <= \<const0>\;
  s_axi_fir_io_RDATA(28) <= \<const0>\;
  s_axi_fir_io_RDATA(27) <= \<const0>\;
  s_axi_fir_io_RDATA(26) <= \<const0>\;
  s_axi_fir_io_RDATA(25) <= \<const0>\;
  s_axi_fir_io_RDATA(24) <= \<const0>\;
  s_axi_fir_io_RDATA(23) <= \<const0>\;
  s_axi_fir_io_RDATA(22) <= \<const0>\;
  s_axi_fir_io_RDATA(21) <= \<const0>\;
  s_axi_fir_io_RDATA(20) <= \<const0>\;
  s_axi_fir_io_RDATA(19) <= \<const0>\;
  s_axi_fir_io_RDATA(18) <= \<const0>\;
  s_axi_fir_io_RDATA(17) <= \<const0>\;
  s_axi_fir_io_RDATA(16) <= \<const0>\;
  s_axi_fir_io_RDATA(15 downto 0) <= \^s_axi_fir_io_rdata\(15 downto 0);
  s_axi_fir_io_RRESP(1) <= \<const0>\;
  s_axi_fir_io_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
acc_reg_221_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => q00(15),
      A(28) => q00(15),
      A(27) => q00(15),
      A(26) => q00(15),
      A(25) => q00(15),
      A(24) => q00(15),
      A(23) => q00(15),
      A(22) => q00(15),
      A(21) => q00(15),
      A(20) => q00(15),
      A(19) => q00(15),
      A(18) => q00(15),
      A(17) => q00(15),
      A(16) => q00(15),
      A(15 downto 0) => q00(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_acc_reg_221_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"111111111010000110",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_acc_reg_221_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_acc_reg_221_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_acc_reg_221_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => shift_reg_ce0,
      CEA2 => reg_1410,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => ap_CS_fsm_state3,
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_acc_reg_221_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_acc_reg_221_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 26) => NLW_acc_reg_221_reg_P_UNCONNECTED(47 downto 26),
      P(25) => acc_reg_221_reg_n_81,
      P(24) => acc_reg_221_reg_n_82,
      P(23) => acc_reg_221_reg_n_83,
      P(22) => acc_reg_221_reg_n_84,
      P(21) => acc_reg_221_reg_n_85,
      P(20) => acc_reg_221_reg_n_86,
      P(19) => acc_reg_221_reg_n_87,
      P(18) => acc_reg_221_reg_n_88,
      P(17) => acc_reg_221_reg_n_89,
      P(16) => acc_reg_221_reg_n_90,
      P(15) => acc_reg_221_reg_n_91,
      P(14) => acc_reg_221_reg_n_92,
      P(13) => acc_reg_221_reg_n_93,
      P(12) => acc_reg_221_reg_n_94,
      P(11) => acc_reg_221_reg_n_95,
      P(10) => acc_reg_221_reg_n_96,
      P(9) => acc_reg_221_reg_n_97,
      P(8) => acc_reg_221_reg_n_98,
      P(7) => acc_reg_221_reg_n_99,
      P(6) => acc_reg_221_reg_n_100,
      P(5) => acc_reg_221_reg_n_101,
      P(4) => acc_reg_221_reg_n_102,
      P(3) => acc_reg_221_reg_n_103,
      P(2) => acc_reg_221_reg_n_104,
      P(1) => acc_reg_221_reg_n_105,
      P(0) => acc_reg_221_reg_n_106,
      PATTERNBDETECT => NLW_acc_reg_221_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_acc_reg_221_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_acc_reg_221_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_acc_reg_221_reg_UNDERFLOW_UNCONNECTED
    );
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEFEFAAAAAAAA"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => ap_enable_reg_pp0_iter1_reg_n_1,
      I2 => ap_enable_reg_pp0_iter2,
      I3 => ap_enable_reg_pp0_iter0,
      I4 => ap_condition_pp0_exit_iter0_state5,
      I5 => ap_CS_fsm_pp0_stage0,
      O => ap_NS_fsm(4)
    );
\ap_CS_fsm[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AA80"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage0,
      I1 => ap_condition_pp0_exit_iter0_state5,
      I2 => ap_enable_reg_pp0_iter0,
      I3 => ap_enable_reg_pp0_iter2,
      I4 => ap_enable_reg_pp0_iter1_reg_n_1,
      O => ap_NS_fsm(5)
    );
\ap_CS_fsm[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => c_address0(2),
      I1 => c_address0(0),
      I2 => c_address0(1),
      I3 => c_address0(4),
      I4 => c_address0(3),
      I5 => c_address0(5),
      O => ap_condition_pp0_exit_iter0_state5
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_1_[0]\,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state2,
      Q => ap_CS_fsm_state3,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state3,
      Q => ap_CS_fsm_state4,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => ap_CS_fsm_pp0_stage0,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(5),
      Q => ap_CS_fsm_state8,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77700000"
    )
        port map (
      I0 => ap_condition_pp0_exit_iter0_state5,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_CS_fsm_state4,
      I3 => ap_enable_reg_pp0_iter0,
      I4 => ap_rst_n,
      O => ap_enable_reg_pp0_iter0_i_1_n_1
    );
ap_enable_reg_pp0_iter0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter0_i_1_n_1,
      Q => ap_enable_reg_pp0_iter0,
      R => '0'
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => ap_condition_pp0_exit_iter0_state5,
      I1 => ap_rst_n,
      I2 => ap_enable_reg_pp0_iter0,
      O => ap_enable_reg_pp0_iter1_i_1_n_1
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1_i_1_n_1,
      Q => ap_enable_reg_pp0_iter1_reg_n_1,
      R => '0'
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1_reg_n_1,
      Q => ap_enable_reg_pp0_iter2,
      R => ap_rst_n_inv
    );
fir_fir_io_s_axi_U: entity work.system_fir_0_1_fir_fir_io_s_axi
     port map (
      CEA1 => shift_reg_ce0,
      D(1 downto 0) => ap_NS_fsm(1 downto 0),
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_fir_io_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_fir_io_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_fir_io_WREADY,
      P(15 downto 0) => int_y(15 downto 0),
      Q(5) => ap_CS_fsm_state8,
      Q(4) => ap_CS_fsm_pp0_stage0,
      Q(3) => ap_CS_fsm_state4,
      Q(2) => ap_CS_fsm_state3,
      Q(1) => ap_CS_fsm_state2,
      Q(0) => \ap_CS_fsm_reg_n_1_[0]\,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      \int_x_reg[15]_0\(15 downto 0) => x(15 downto 0),
      interrupt => interrupt,
      s_axi_fir_io_ARADDR(4 downto 0) => s_axi_fir_io_ARADDR(4 downto 0),
      s_axi_fir_io_ARVALID => s_axi_fir_io_ARVALID,
      s_axi_fir_io_AWADDR(4 downto 0) => s_axi_fir_io_AWADDR(4 downto 0),
      s_axi_fir_io_AWVALID => s_axi_fir_io_AWVALID,
      s_axi_fir_io_BREADY => s_axi_fir_io_BREADY,
      s_axi_fir_io_BVALID => s_axi_fir_io_BVALID,
      s_axi_fir_io_RDATA(15 downto 0) => \^s_axi_fir_io_rdata\(15 downto 0),
      s_axi_fir_io_RREADY => s_axi_fir_io_RREADY,
      s_axi_fir_io_RVALID => s_axi_fir_io_RVALID,
      s_axi_fir_io_WDATA(15 downto 0) => s_axi_fir_io_WDATA(15 downto 0),
      s_axi_fir_io_WSTRB(1 downto 0) => s_axi_fir_io_WSTRB(1 downto 0),
      s_axi_fir_io_WVALID => s_axi_fir_io_WVALID
    );
fir_mac_muladd_10dEe_U3: entity work.system_fir_0_1_fir_mac_muladd_10dEe
     port map (
      P(15 downto 0) => int_y(15 downto 0),
      Q(1) => ap_CS_fsm_state8,
      Q(0) => ap_CS_fsm_state4,
      SR(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      \^p\(15 downto 0) => x(15 downto 0),
      p_0(30) => fir_mac_muladd_16cud_U2_n_8,
      p_0(29) => fir_mac_muladd_16cud_U2_n_9,
      p_0(28) => fir_mac_muladd_16cud_U2_n_10,
      p_0(27) => fir_mac_muladd_16cud_U2_n_11,
      p_0(26) => fir_mac_muladd_16cud_U2_n_12,
      p_0(25) => fir_mac_muladd_16cud_U2_n_13,
      p_0(24) => fir_mac_muladd_16cud_U2_n_14,
      p_0(23) => fir_mac_muladd_16cud_U2_n_15,
      p_0(22) => fir_mac_muladd_16cud_U2_n_16,
      p_0(21) => fir_mac_muladd_16cud_U2_n_17,
      p_0(20) => fir_mac_muladd_16cud_U2_n_18,
      p_0(19) => fir_mac_muladd_16cud_U2_n_19,
      p_0(18) => fir_mac_muladd_16cud_U2_n_20,
      p_0(17) => fir_mac_muladd_16cud_U2_n_21,
      p_0(16) => fir_mac_muladd_16cud_U2_n_22,
      p_0(15) => fir_mac_muladd_16cud_U2_n_23,
      p_0(14) => fir_mac_muladd_16cud_U2_n_24,
      p_0(13) => fir_mac_muladd_16cud_U2_n_25,
      p_0(12) => fir_mac_muladd_16cud_U2_n_26,
      p_0(11) => fir_mac_muladd_16cud_U2_n_27,
      p_0(10) => fir_mac_muladd_16cud_U2_n_28,
      p_0(9) => fir_mac_muladd_16cud_U2_n_29,
      p_0(8) => fir_mac_muladd_16cud_U2_n_30,
      p_0(7) => fir_mac_muladd_16cud_U2_n_31,
      p_0(6) => fir_mac_muladd_16cud_U2_n_32,
      p_0(5) => fir_mac_muladd_16cud_U2_n_33,
      p_0(4) => fir_mac_muladd_16cud_U2_n_34,
      p_0(3) => fir_mac_muladd_16cud_U2_n_35,
      p_0(2) => fir_mac_muladd_16cud_U2_n_36,
      p_0(1) => fir_mac_muladd_16cud_U2_n_37,
      p_0(0) => fir_mac_muladd_16cud_U2_n_38
    );
fir_mac_muladd_16cud_U2: entity work.system_fir_0_1_fir_mac_muladd_16cud
     port map (
      C(25) => acc_reg_221_reg_n_81,
      C(24) => acc_reg_221_reg_n_82,
      C(23) => acc_reg_221_reg_n_83,
      C(22) => acc_reg_221_reg_n_84,
      C(21) => acc_reg_221_reg_n_85,
      C(20) => acc_reg_221_reg_n_86,
      C(19) => acc_reg_221_reg_n_87,
      C(18) => acc_reg_221_reg_n_88,
      C(17) => acc_reg_221_reg_n_89,
      C(16) => acc_reg_221_reg_n_90,
      C(15) => acc_reg_221_reg_n_91,
      C(14) => acc_reg_221_reg_n_92,
      C(13) => acc_reg_221_reg_n_93,
      C(12) => acc_reg_221_reg_n_94,
      C(11) => acc_reg_221_reg_n_95,
      C(10) => acc_reg_221_reg_n_96,
      C(9) => acc_reg_221_reg_n_97,
      C(8) => acc_reg_221_reg_n_98,
      C(7) => acc_reg_221_reg_n_99,
      C(6) => acc_reg_221_reg_n_100,
      C(5) => acc_reg_221_reg_n_101,
      C(4) => acc_reg_221_reg_n_102,
      C(3) => acc_reg_221_reg_n_103,
      C(2) => acc_reg_221_reg_n_104,
      C(1) => acc_reg_221_reg_n_105,
      C(0) => acc_reg_221_reg_n_106,
      CEA1 => shift_reg_ce0,
      CEA2 => reg_1410,
      CEB1 => c_ce0,
      P(30) => fir_mac_muladd_16cud_U2_n_8,
      P(29) => fir_mac_muladd_16cud_U2_n_9,
      P(28) => fir_mac_muladd_16cud_U2_n_10,
      P(27) => fir_mac_muladd_16cud_U2_n_11,
      P(26) => fir_mac_muladd_16cud_U2_n_12,
      P(25) => fir_mac_muladd_16cud_U2_n_13,
      P(24) => fir_mac_muladd_16cud_U2_n_14,
      P(23) => fir_mac_muladd_16cud_U2_n_15,
      P(22) => fir_mac_muladd_16cud_U2_n_16,
      P(21) => fir_mac_muladd_16cud_U2_n_17,
      P(20) => fir_mac_muladd_16cud_U2_n_18,
      P(19) => fir_mac_muladd_16cud_U2_n_19,
      P(18) => fir_mac_muladd_16cud_U2_n_20,
      P(17) => fir_mac_muladd_16cud_U2_n_21,
      P(16) => fir_mac_muladd_16cud_U2_n_22,
      P(15) => fir_mac_muladd_16cud_U2_n_23,
      P(14) => fir_mac_muladd_16cud_U2_n_24,
      P(13) => fir_mac_muladd_16cud_U2_n_25,
      P(12) => fir_mac_muladd_16cud_U2_n_26,
      P(11) => fir_mac_muladd_16cud_U2_n_27,
      P(10) => fir_mac_muladd_16cud_U2_n_28,
      P(9) => fir_mac_muladd_16cud_U2_n_29,
      P(8) => fir_mac_muladd_16cud_U2_n_30,
      P(7) => fir_mac_muladd_16cud_U2_n_31,
      P(6) => fir_mac_muladd_16cud_U2_n_32,
      P(5) => fir_mac_muladd_16cud_U2_n_33,
      P(4) => fir_mac_muladd_16cud_U2_n_34,
      P(3) => fir_mac_muladd_16cud_U2_n_35,
      P(2) => fir_mac_muladd_16cud_U2_n_36,
      P(1) => fir_mac_muladd_16cud_U2_n_37,
      P(0) => fir_mac_muladd_16cud_U2_n_38,
      Q(2) => ap_CS_fsm_pp0_stage0,
      Q(1) => ap_CS_fsm_state4,
      Q(0) => ap_CS_fsm_state2,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter2 => ap_enable_reg_pp0_iter2,
      c_address0(5 downto 0) => c_address0(5 downto 0),
      icmp_ln15_reg_237_pp0_iter1_reg => icmp_ln15_reg_237_pp0_iter1_reg,
      \^p\ => \icmp_ln15_reg_237_reg_n_1_[0]\,
      p_0 => ap_enable_reg_pp0_iter1_reg_n_1,
      q00(15 downto 0) => q00(15 downto 0),
      \zext_ln17_1_reg_251_reg[5]\(5 downto 0) => i_reg_241_reg(5 downto 0),
      \zext_ln17_1_reg_251_reg[5]_0\(5) => \i_0_reg_130_reg_n_1_[5]\,
      \zext_ln17_1_reg_251_reg[5]_0\(4) => \i_0_reg_130_reg_n_1_[4]\,
      \zext_ln17_1_reg_251_reg[5]_0\(3) => \i_0_reg_130_reg_n_1_[3]\,
      \zext_ln17_1_reg_251_reg[5]_0\(2) => \i_0_reg_130_reg_n_1_[2]\,
      \zext_ln17_1_reg_251_reg[5]_0\(1) => \i_0_reg_130_reg_n_1_[1]\,
      \zext_ln17_1_reg_251_reg[5]_0\(0) => \i_0_reg_130_reg_n_1_[0]\
    );
\i_0_reg_130[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AAA"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => \icmp_ln15_reg_237_reg_n_1_[0]\,
      I2 => ap_CS_fsm_pp0_stage0,
      I3 => ap_enable_reg_pp0_iter1_reg_n_1,
      O => i_0_reg_130
    );
\i_0_reg_130_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_phi_mux_i_0_phi_fu_134_p41,
      D => i_reg_241_reg(0),
      Q => \i_0_reg_130_reg_n_1_[0]\,
      S => i_0_reg_130
    );
\i_0_reg_130_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_mux_i_0_phi_fu_134_p41,
      D => i_reg_241_reg(1),
      Q => \i_0_reg_130_reg_n_1_[1]\,
      R => i_0_reg_130
    );
\i_0_reg_130_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_mux_i_0_phi_fu_134_p41,
      D => i_reg_241_reg(2),
      Q => \i_0_reg_130_reg_n_1_[2]\,
      R => i_0_reg_130
    );
\i_0_reg_130_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_phi_mux_i_0_phi_fu_134_p41,
      D => i_reg_241_reg(3),
      Q => \i_0_reg_130_reg_n_1_[3]\,
      S => i_0_reg_130
    );
\i_0_reg_130_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_phi_mux_i_0_phi_fu_134_p41,
      D => i_reg_241_reg(4),
      Q => \i_0_reg_130_reg_n_1_[4]\,
      S => i_0_reg_130
    );
\i_0_reg_130_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_phi_mux_i_0_phi_fu_134_p41,
      D => i_reg_241_reg(5),
      Q => \i_0_reg_130_reg_n_1_[5]\,
      S => i_0_reg_130
    );
\i_reg_241[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => \i_0_reg_130_reg_n_1_[0]\,
      I1 => \icmp_ln15_reg_237_reg_n_1_[0]\,
      I2 => ap_enable_reg_pp0_iter1_reg_n_1,
      I3 => i_reg_241_reg(0),
      O => i_fu_158_p2(0)
    );
\i_reg_241[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0804F7"
    )
        port map (
      I0 => i_reg_241_reg(1),
      I1 => ap_enable_reg_pp0_iter1_reg_n_1,
      I2 => \icmp_ln15_reg_237_reg_n_1_[0]\,
      I3 => \i_0_reg_130_reg_n_1_[1]\,
      I4 => c_address0(0),
      O => i_fu_158_p2(1)
    );
\i_reg_241[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B88BB874B847"
    )
        port map (
      I0 => i_reg_241_reg(2),
      I1 => ap_phi_mux_i_0_phi_fu_134_p41,
      I2 => \i_0_reg_130_reg_n_1_[2]\,
      I3 => c_address0(0),
      I4 => \i_0_reg_130_reg_n_1_[1]\,
      I5 => i_reg_241_reg(1),
      O => i_fu_158_p2(2)
    );
\i_reg_241[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => c_address0(3),
      I1 => c_address0(1),
      I2 => c_address0(0),
      I3 => c_address0(2),
      O => i_fu_158_p2(3)
    );
\i_reg_241[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => c_address0(4),
      I1 => c_address0(3),
      I2 => c_address0(1),
      I3 => c_address0(0),
      I4 => c_address0(2),
      O => i_fu_158_p2(4)
    );
\i_reg_241[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_condition_pp0_exit_iter0_state5,
      O => \i_reg_241[5]_i_1_n_1\
    );
\i_reg_241[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => c_address0(5),
      I1 => c_address0(4),
      I2 => c_address0(3),
      I3 => c_address0(1),
      I4 => c_address0(0),
      I5 => c_address0(2),
      O => i_fu_158_p2(5)
    );
\i_reg_241_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_reg_241[5]_i_1_n_1\,
      D => i_fu_158_p2(0),
      Q => i_reg_241_reg(0),
      R => '0'
    );
\i_reg_241_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_reg_241[5]_i_1_n_1\,
      D => i_fu_158_p2(1),
      Q => i_reg_241_reg(1),
      R => '0'
    );
\i_reg_241_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_reg_241[5]_i_1_n_1\,
      D => i_fu_158_p2(2),
      Q => i_reg_241_reg(2),
      R => '0'
    );
\i_reg_241_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_reg_241[5]_i_1_n_1\,
      D => i_fu_158_p2(3),
      Q => i_reg_241_reg(3),
      R => '0'
    );
\i_reg_241_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_reg_241[5]_i_1_n_1\,
      D => i_fu_158_p2(4),
      Q => i_reg_241_reg(4),
      R => '0'
    );
\i_reg_241_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_reg_241[5]_i_1_n_1\,
      D => i_fu_158_p2(5),
      Q => i_reg_241_reg(5),
      R => '0'
    );
\icmp_ln15_reg_237[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ap_condition_pp0_exit_iter0_state5,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => \icmp_ln15_reg_237_reg_n_1_[0]\,
      O => \icmp_ln15_reg_237[0]_i_1_n_1\
    );
\icmp_ln15_reg_237_pp0_iter1_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \icmp_ln15_reg_237_reg_n_1_[0]\,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => icmp_ln15_reg_237_pp0_iter1_reg,
      O => \icmp_ln15_reg_237_pp0_iter1_reg[0]_i_1_n_1\
    );
\icmp_ln15_reg_237_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \icmp_ln15_reg_237_pp0_iter1_reg[0]_i_1_n_1\,
      Q => icmp_ln15_reg_237_pp0_iter1_reg,
      R => '0'
    );
\icmp_ln15_reg_237_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \icmp_ln15_reg_237[0]_i_1_n_1\,
      Q => \icmp_ln15_reg_237_reg_n_1_[0]\,
      R => '0'
    );
shift_reg_U: entity work.system_fir_0_1_fir_shift_reg
     port map (
      CEB1 => c_ce0,
      E(0) => ap_phi_mux_i_0_phi_fu_134_p41,
      Q(1) => ap_CS_fsm_state8,
      Q(0) => ap_CS_fsm_pp0_stage0,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      c_address0(5 downto 0) => c_address0(5 downto 0),
      \i_0_reg_130_reg[0]\ => \icmp_ln15_reg_237_reg_n_1_[0]\,
      \i_0_reg_130_reg[0]_0\ => ap_enable_reg_pp0_iter1_reg_n_1,
      q00(15 downto 0) => q00(15 downto 0),
      \q0_reg[0]\(5) => \zext_ln17_1_reg_251_reg_n_1_[5]\,
      \q0_reg[0]\(4) => \zext_ln17_1_reg_251_reg_n_1_[4]\,
      \q0_reg[0]\(3) => \zext_ln17_1_reg_251_reg_n_1_[3]\,
      \q0_reg[0]\(2) => \zext_ln17_1_reg_251_reg_n_1_[2]\,
      \q0_reg[0]\(1) => \zext_ln17_1_reg_251_reg_n_1_[1]\,
      \q0_reg[0]\(0) => \zext_ln17_1_reg_251_reg_n_1_[0]\,
      \q0_reg[0]_0\(0) => shift_reg_ce0,
      \q0_reg[15]\(15 downto 0) => x_read_reg_226(15 downto 0),
      ram_reg_0_63_0_2_i_5(2 downto 0) => i_reg_241_reg(2 downto 0),
      ram_reg_0_63_0_2_i_5_0(2) => \i_0_reg_130_reg_n_1_[2]\,
      ram_reg_0_63_0_2_i_5_0(1) => \i_0_reg_130_reg_n_1_[1]\,
      ram_reg_0_63_0_2_i_5_0(0) => \i_0_reg_130_reg_n_1_[0]\
    );
\x_read_reg_226_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => x(0),
      Q => x_read_reg_226(0),
      R => '0'
    );
\x_read_reg_226_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => x(10),
      Q => x_read_reg_226(10),
      R => '0'
    );
\x_read_reg_226_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => x(11),
      Q => x_read_reg_226(11),
      R => '0'
    );
\x_read_reg_226_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => x(12),
      Q => x_read_reg_226(12),
      R => '0'
    );
\x_read_reg_226_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => x(13),
      Q => x_read_reg_226(13),
      R => '0'
    );
\x_read_reg_226_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => x(14),
      Q => x_read_reg_226(14),
      R => '0'
    );
\x_read_reg_226_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => x(15),
      Q => x_read_reg_226(15),
      R => '0'
    );
\x_read_reg_226_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => x(1),
      Q => x_read_reg_226(1),
      R => '0'
    );
\x_read_reg_226_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => x(2),
      Q => x_read_reg_226(2),
      R => '0'
    );
\x_read_reg_226_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => x(3),
      Q => x_read_reg_226(3),
      R => '0'
    );
\x_read_reg_226_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => x(4),
      Q => x_read_reg_226(4),
      R => '0'
    );
\x_read_reg_226_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => x(5),
      Q => x_read_reg_226(5),
      R => '0'
    );
\x_read_reg_226_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => x(6),
      Q => x_read_reg_226(6),
      R => '0'
    );
\x_read_reg_226_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => x(7),
      Q => x_read_reg_226(7),
      R => '0'
    );
\x_read_reg_226_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => x(8),
      Q => x_read_reg_226(8),
      R => '0'
    );
\x_read_reg_226_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => x(9),
      Q => x_read_reg_226(9),
      R => '0'
    );
\zext_ln17_1_reg_251[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage0,
      I1 => ap_condition_pp0_exit_iter0_state5,
      O => zext_ln17_1_reg_251_reg0
    );
\zext_ln17_1_reg_251_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => zext_ln17_1_reg_251_reg0,
      D => c_address0(0),
      Q => \zext_ln17_1_reg_251_reg_n_1_[0]\,
      R => '0'
    );
\zext_ln17_1_reg_251_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => zext_ln17_1_reg_251_reg0,
      D => c_address0(1),
      Q => \zext_ln17_1_reg_251_reg_n_1_[1]\,
      R => '0'
    );
\zext_ln17_1_reg_251_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => zext_ln17_1_reg_251_reg0,
      D => c_address0(2),
      Q => \zext_ln17_1_reg_251_reg_n_1_[2]\,
      R => '0'
    );
\zext_ln17_1_reg_251_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => zext_ln17_1_reg_251_reg0,
      D => c_address0(3),
      Q => \zext_ln17_1_reg_251_reg_n_1_[3]\,
      R => '0'
    );
\zext_ln17_1_reg_251_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => zext_ln17_1_reg_251_reg0,
      D => c_address0(4),
      Q => \zext_ln17_1_reg_251_reg_n_1_[4]\,
      R => '0'
    );
\zext_ln17_1_reg_251_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => zext_ln17_1_reg_251_reg0,
      D => c_address0(5),
      Q => \zext_ln17_1_reg_251_reg_n_1_[5]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_0_1 is
  port (
    s_axi_fir_io_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_fir_io_AWVALID : in STD_LOGIC;
    s_axi_fir_io_AWREADY : out STD_LOGIC;
    s_axi_fir_io_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_fir_io_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_fir_io_WVALID : in STD_LOGIC;
    s_axi_fir_io_WREADY : out STD_LOGIC;
    s_axi_fir_io_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_fir_io_BVALID : out STD_LOGIC;
    s_axi_fir_io_BREADY : in STD_LOGIC;
    s_axi_fir_io_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_fir_io_ARVALID : in STD_LOGIC;
    s_axi_fir_io_ARREADY : out STD_LOGIC;
    s_axi_fir_io_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_fir_io_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_fir_io_RVALID : out STD_LOGIC;
    s_axi_fir_io_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_fir_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_fir_0_1 : entity is "system_fir_0_1,fir,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_fir_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_fir_0_1 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_fir_0_1 : entity is "fir,Vivado 2019.1";
  attribute hls_module : string;
  attribute hls_module of system_fir_0_1 : entity is "yes";
end system_fir_0_1;

architecture STRUCTURE of system_fir_0_1 is
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_FIR_IO_ADDR_WIDTH : integer;
  attribute C_S_AXI_FIR_IO_ADDR_WIDTH of inst : label is 5;
  attribute C_S_AXI_FIR_IO_DATA_WIDTH : integer;
  attribute C_S_AXI_FIR_IO_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_FIR_IO_WSTRB_WIDTH : integer;
  attribute C_S_AXI_FIR_IO_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of inst : label is "6'b010000";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "6'b000001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "6'b000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "6'b000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "6'b001000";
  attribute ap_ST_fsm_state8 : string;
  attribute ap_ST_fsm_state8 of inst : label is "6'b100000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_fir_io, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s_axi_fir_io_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io ARREADY";
  attribute X_INTERFACE_INFO of s_axi_fir_io_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io ARVALID";
  attribute X_INTERFACE_INFO of s_axi_fir_io_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io AWREADY";
  attribute X_INTERFACE_INFO of s_axi_fir_io_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io AWVALID";
  attribute X_INTERFACE_INFO of s_axi_fir_io_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io BREADY";
  attribute X_INTERFACE_INFO of s_axi_fir_io_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io BVALID";
  attribute X_INTERFACE_INFO of s_axi_fir_io_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_fir_io_RREADY : signal is "XIL_INTERFACENAME s_axi_fir_io, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 50000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_fir_io_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io RVALID";
  attribute X_INTERFACE_INFO of s_axi_fir_io_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io WREADY";
  attribute X_INTERFACE_INFO of s_axi_fir_io_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io WVALID";
  attribute X_INTERFACE_INFO of s_axi_fir_io_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io ARADDR";
  attribute X_INTERFACE_INFO of s_axi_fir_io_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io AWADDR";
  attribute X_INTERFACE_INFO of s_axi_fir_io_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io BRESP";
  attribute X_INTERFACE_INFO of s_axi_fir_io_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io RDATA";
  attribute X_INTERFACE_INFO of s_axi_fir_io_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io RRESP";
  attribute X_INTERFACE_INFO of s_axi_fir_io_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io WDATA";
  attribute X_INTERFACE_INFO of s_axi_fir_io_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io WSTRB";
begin
inst: entity work.system_fir_0_1_fir
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      s_axi_fir_io_ARADDR(4 downto 0) => s_axi_fir_io_ARADDR(4 downto 0),
      s_axi_fir_io_ARREADY => s_axi_fir_io_ARREADY,
      s_axi_fir_io_ARVALID => s_axi_fir_io_ARVALID,
      s_axi_fir_io_AWADDR(4 downto 0) => s_axi_fir_io_AWADDR(4 downto 0),
      s_axi_fir_io_AWREADY => s_axi_fir_io_AWREADY,
      s_axi_fir_io_AWVALID => s_axi_fir_io_AWVALID,
      s_axi_fir_io_BREADY => s_axi_fir_io_BREADY,
      s_axi_fir_io_BRESP(1 downto 0) => s_axi_fir_io_BRESP(1 downto 0),
      s_axi_fir_io_BVALID => s_axi_fir_io_BVALID,
      s_axi_fir_io_RDATA(31 downto 0) => s_axi_fir_io_RDATA(31 downto 0),
      s_axi_fir_io_RREADY => s_axi_fir_io_RREADY,
      s_axi_fir_io_RRESP(1 downto 0) => s_axi_fir_io_RRESP(1 downto 0),
      s_axi_fir_io_RVALID => s_axi_fir_io_RVALID,
      s_axi_fir_io_WDATA(31 downto 0) => s_axi_fir_io_WDATA(31 downto 0),
      s_axi_fir_io_WREADY => s_axi_fir_io_WREADY,
      s_axi_fir_io_WSTRB(3 downto 0) => s_axi_fir_io_WSTRB(3 downto 0),
      s_axi_fir_io_WVALID => s_axi_fir_io_WVALID
    );
end STRUCTURE;
