-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "10/03/2016 17:12:17"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	clockmodule IS
    PORT (
	CLOCK_50 : IN std_logic;
	VGA_R : OUT std_logic_vector(7 DOWNTO 0);
	VGA_G : OUT std_logic_vector(7 DOWNTO 0);
	VGA_B : OUT std_logic_vector(7 DOWNTO 0);
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_CLK : OUT std_logic;
	VGA_BLANK_N : OUT std_logic;
	VGA_SYNC_N : OUT std_logic;
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END clockmodule;

-- Design Ports Information
-- VGA_R[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_CLK	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLANK_N	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_SYNC_N	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clockmodule IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_BLANK_N : std_logic;
SIGNAL ww_VGA_SYNC_N : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \clk25~0_combout\ : std_logic;
SIGNAL \clk25~q\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \horizontal_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \horizontal_counter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \horizontal_counter[8]~feeder_combout\ : std_logic;
SIGNAL \horizontal_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \horizontal_counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \horizontal_counter[1]~feeder_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \horizontal_counter[3]~feeder_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \horizontal_counter[6]~feeder_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \vertical_counter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \vertical_counter[9]~0_combout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \vertical_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \VGA_R[0]~reg0_q\ : std_logic;
SIGNAL \VGA_R[1]~reg0_q\ : std_logic;
SIGNAL \VGA_R[2]~reg0_q\ : std_logic;
SIGNAL \VGA_R[3]~reg0_q\ : std_logic;
SIGNAL \VGA_R[4]~reg0_q\ : std_logic;
SIGNAL \VGA_R[5]~reg0_q\ : std_logic;
SIGNAL \VGA_R[6]~reg0_q\ : std_logic;
SIGNAL \VGA_R[7]~reg0_q\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;
SIGNAL \VGA_HS~reg0_q\ : std_logic;
SIGNAL \vertical_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \process_1~4_combout\ : std_logic;
SIGNAL \VGA_VS~reg0_q\ : std_logic;
SIGNAL horizontal_counter : std_logic_vector(9 DOWNTO 0);
SIGNAL vertical_counter : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_horizontal_counter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_horizontal_counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_horizontal_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vertical_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vertical_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vertical_counter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_horizontal_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_clk25~q\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL ALT_INV_horizontal_counter : std_logic_vector(9 DOWNTO 0);
SIGNAL ALT_INV_vertical_counter : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_CLK <= ww_VGA_CLK;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_SYNC_N <= ww_VGA_SYNC_N;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_horizontal_counter[8]~DUPLICATE_q\ <= NOT \horizontal_counter[8]~DUPLICATE_q\;
\ALT_INV_horizontal_counter[9]~DUPLICATE_q\ <= NOT \horizontal_counter[9]~DUPLICATE_q\;
\ALT_INV_horizontal_counter[5]~DUPLICATE_q\ <= NOT \horizontal_counter[5]~DUPLICATE_q\;
\ALT_INV_vertical_counter[3]~DUPLICATE_q\ <= NOT \vertical_counter[3]~DUPLICATE_q\;
\ALT_INV_vertical_counter[7]~DUPLICATE_q\ <= NOT \vertical_counter[7]~DUPLICATE_q\;
\ALT_INV_vertical_counter[8]~DUPLICATE_q\ <= NOT \vertical_counter[8]~DUPLICATE_q\;
\ALT_INV_horizontal_counter[0]~DUPLICATE_q\ <= NOT \horizontal_counter[0]~DUPLICATE_q\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_process_1~2_combout\ <= NOT \process_1~2_combout\;
\ALT_INV_process_1~0_combout\ <= NOT \process_1~0_combout\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_clk25~q\ <= NOT \clk25~q\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
ALT_INV_horizontal_counter(1) <= NOT horizontal_counter(1);
ALT_INV_horizontal_counter(2) <= NOT horizontal_counter(2);
ALT_INV_horizontal_counter(3) <= NOT horizontal_counter(3);
ALT_INV_horizontal_counter(8) <= NOT horizontal_counter(8);
ALT_INV_horizontal_counter(9) <= NOT horizontal_counter(9);
ALT_INV_horizontal_counter(5) <= NOT horizontal_counter(5);
ALT_INV_horizontal_counter(6) <= NOT horizontal_counter(6);
ALT_INV_horizontal_counter(4) <= NOT horizontal_counter(4);
ALT_INV_horizontal_counter(7) <= NOT horizontal_counter(7);
ALT_INV_vertical_counter(9) <= NOT vertical_counter(9);
ALT_INV_vertical_counter(0) <= NOT vertical_counter(0);
ALT_INV_vertical_counter(1) <= NOT vertical_counter(1);
ALT_INV_vertical_counter(2) <= NOT vertical_counter(2);
ALT_INV_vertical_counter(3) <= NOT vertical_counter(3);
ALT_INV_vertical_counter(4) <= NOT vertical_counter(4);
ALT_INV_vertical_counter(6) <= NOT vertical_counter(6);
ALT_INV_vertical_counter(7) <= NOT vertical_counter(7);
ALT_INV_vertical_counter(8) <= NOT vertical_counter(8);
ALT_INV_vertical_counter(5) <= NOT vertical_counter(5);
ALT_INV_horizontal_counter(0) <= NOT horizontal_counter(0);

-- Location: IOOBUF_X40_Y81_N53
\VGA_R[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X38_Y81_N2
\VGA_R[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X26_Y81_N59
\VGA_R[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X38_Y81_N19
\VGA_R[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X36_Y81_N36
\VGA_R[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(4));

-- Location: IOOBUF_X22_Y81_N19
\VGA_R[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(5));

-- Location: IOOBUF_X22_Y81_N2
\VGA_R[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(6));

-- Location: IOOBUF_X26_Y81_N42
\VGA_R[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(7));

-- Location: IOOBUF_X4_Y81_N19
\VGA_G[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X4_Y81_N2
\VGA_G[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X20_Y81_N19
\VGA_G[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X6_Y81_N2
\VGA_G[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X10_Y81_N59
\VGA_G[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(4));

-- Location: IOOBUF_X10_Y81_N42
\VGA_G[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(5));

-- Location: IOOBUF_X18_Y81_N42
\VGA_G[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(6));

-- Location: IOOBUF_X18_Y81_N59
\VGA_G[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(7));

-- Location: IOOBUF_X40_Y81_N36
\VGA_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X28_Y81_N19
\VGA_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X20_Y81_N2
\VGA_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X36_Y81_N19
\VGA_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X28_Y81_N2
\VGA_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(4));

-- Location: IOOBUF_X36_Y81_N2
\VGA_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(5));

-- Location: IOOBUF_X40_Y81_N19
\VGA_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(6));

-- Location: IOOBUF_X32_Y81_N19
\VGA_B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(7));

-- Location: IOOBUF_X36_Y81_N53
\VGA_HS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_HS~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X34_Y81_N42
\VGA_VS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_VS~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X38_Y81_N36
\VGA_CLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk25~q\,
	devoe => ww_devoe,
	o => ww_VGA_CLK);

-- Location: IOOBUF_X6_Y81_N19
\VGA_BLANK_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \horizontal_counter[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_VGA_BLANK_N);

-- Location: IOOBUF_X28_Y81_N36
\VGA_SYNC_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \horizontal_counter[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_VGA_SYNC_N);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: LABCELL_X31_Y80_N21
\clk25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk25~0_combout\ = ( !\clk25~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_clk25~q\,
	combout => \clk25~0_combout\);

-- Location: FF_X31_Y80_N32
clk25 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \clk25~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk25~q\);

-- Location: LABCELL_X30_Y80_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( horizontal_counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( horizontal_counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_horizontal_counter(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X30_Y80_N46
\horizontal_counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Add0~1_sumout\,
	sclr => \Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontal_counter[0]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y80_N45
\process_1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = ( !horizontal_counter(2) & ( !\horizontal_counter[0]~DUPLICATE_q\ & ( (!horizontal_counter(3) & (!horizontal_counter(4) & !horizontal_counter(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_horizontal_counter(3),
	datac => ALT_INV_horizontal_counter(4),
	datad => ALT_INV_horizontal_counter(1),
	datae => ALT_INV_horizontal_counter(2),
	dataf => \ALT_INV_horizontal_counter[0]~DUPLICATE_q\,
	combout => \process_1~2_combout\);

-- Location: FF_X31_Y80_N49
\horizontal_counter[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \horizontal_counter[8]~feeder_combout\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontal_counter[8]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y80_N21
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( horizontal_counter(7) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~6\ = CARRY(( horizontal_counter(7) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_horizontal_counter(7),
	cin => \Add0~14\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X30_Y80_N24
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \horizontal_counter[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~26\ = CARRY(( \horizontal_counter[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_horizontal_counter[8]~DUPLICATE_q\,
	cin => \Add0~6\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LABCELL_X31_Y80_N48
\horizontal_counter[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \horizontal_counter[8]~feeder_combout\ = ( \Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~25_sumout\,
	combout => \horizontal_counter[8]~feeder_combout\);

-- Location: FF_X31_Y80_N50
\horizontal_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \horizontal_counter[8]~feeder_combout\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => horizontal_counter(8));

-- Location: FF_X31_Y80_N52
\horizontal_counter[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Add0~17_sumout\,
	sclr => \Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontal_counter[5]~DUPLICATE_q\);

-- Location: FF_X31_Y80_N43
\horizontal_counter[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Add0~21_sumout\,
	sclr => \Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontal_counter[9]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y80_N27
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \horizontal_counter[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_horizontal_counter[9]~DUPLICATE_q\,
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\);

-- Location: FF_X31_Y80_N44
\horizontal_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Add0~21_sumout\,
	sclr => \Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => horizontal_counter(9));

-- Location: LABCELL_X31_Y80_N15
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \horizontal_counter[5]~DUPLICATE_q\ & ( horizontal_counter(9) & ( (horizontal_counter(8) & (!horizontal_counter(6) & !horizontal_counter(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_horizontal_counter(8),
	datac => ALT_INV_horizontal_counter(6),
	datad => ALT_INV_horizontal_counter(7),
	datae => \ALT_INV_horizontal_counter[5]~DUPLICATE_q\,
	dataf => ALT_INV_horizontal_counter(9),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X31_Y80_N24
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \process_1~2_combout\ & ( \Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_process_1~2_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: FF_X30_Y80_N47
\horizontal_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Add0~1_sumout\,
	sclr => \Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => horizontal_counter(0));

-- Location: LABCELL_X30_Y80_N3
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( horizontal_counter(1) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~38\ = CARRY(( horizontal_counter(1) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_horizontal_counter(1),
	cin => \Add0~2\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: LABCELL_X31_Y80_N36
\horizontal_counter[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \horizontal_counter[1]~feeder_combout\ = ( \Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~37_sumout\,
	combout => \horizontal_counter[1]~feeder_combout\);

-- Location: FF_X31_Y80_N38
\horizontal_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \horizontal_counter[1]~feeder_combout\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => horizontal_counter(1));

-- Location: LABCELL_X30_Y80_N6
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( horizontal_counter(2) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( horizontal_counter(2) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_horizontal_counter(2),
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X31_Y80_N29
\horizontal_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Add0~33_sumout\,
	sclr => \Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => horizontal_counter(2));

-- Location: LABCELL_X30_Y80_N9
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( horizontal_counter(3) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( horizontal_counter(3) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_horizontal_counter(3),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: LABCELL_X31_Y80_N0
\horizontal_counter[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \horizontal_counter[3]~feeder_combout\ = ( \Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~29_sumout\,
	combout => \horizontal_counter[3]~feeder_combout\);

-- Location: FF_X31_Y80_N2
\horizontal_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \horizontal_counter[3]~feeder_combout\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => horizontal_counter(3));

-- Location: LABCELL_X30_Y80_N12
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( horizontal_counter(4) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~10\ = CARRY(( horizontal_counter(4) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_horizontal_counter(4),
	cin => \Add0~30\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X31_Y80_N14
\horizontal_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Add0~9_sumout\,
	sclr => \Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => horizontal_counter(4));

-- Location: LABCELL_X30_Y80_N15
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( horizontal_counter(5) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~18\ = CARRY(( horizontal_counter(5) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_horizontal_counter(5),
	cin => \Add0~10\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X31_Y80_N53
\horizontal_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Add0~17_sumout\,
	sclr => \Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => horizontal_counter(5));

-- Location: LABCELL_X30_Y80_N18
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( horizontal_counter(6) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( horizontal_counter(6) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_horizontal_counter(6),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X31_Y80_N6
\horizontal_counter[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \horizontal_counter[6]~feeder_combout\ = ( \Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~13_sumout\,
	combout => \horizontal_counter[6]~feeder_combout\);

-- Location: FF_X31_Y80_N8
\horizontal_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \horizontal_counter[6]~feeder_combout\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => horizontal_counter(6));

-- Location: FF_X31_Y80_N20
\horizontal_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Add0~5_sumout\,
	sclr => \Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => horizontal_counter(7));

-- Location: LABCELL_X31_Y80_N33
\process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = ( \horizontal_counter[5]~DUPLICATE_q\ & ( \horizontal_counter[9]~DUPLICATE_q\ & ( horizontal_counter(8) ) ) ) # ( !\horizontal_counter[5]~DUPLICATE_q\ & ( \horizontal_counter[9]~DUPLICATE_q\ & ( (horizontal_counter(8) & 
-- (((horizontal_counter(6)) # (horizontal_counter(4))) # (horizontal_counter(7)))) ) ) ) # ( \horizontal_counter[5]~DUPLICATE_q\ & ( !\horizontal_counter[9]~DUPLICATE_q\ & ( (!horizontal_counter(7) & !horizontal_counter(8)) ) ) ) # ( 
-- !\horizontal_counter[5]~DUPLICATE_q\ & ( !\horizontal_counter[9]~DUPLICATE_q\ & ( (!horizontal_counter(8) & ((!horizontal_counter(7)) # ((!horizontal_counter(4) & !horizontal_counter(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101000000000101010100000000000000000011111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_horizontal_counter(7),
	datab => ALT_INV_horizontal_counter(4),
	datac => ALT_INV_horizontal_counter(6),
	datad => ALT_INV_horizontal_counter(8),
	datae => \ALT_INV_horizontal_counter[5]~DUPLICATE_q\,
	dataf => \ALT_INV_horizontal_counter[9]~DUPLICATE_q\,
	combout => \process_1~0_combout\);

-- Location: LABCELL_X31_Y79_N0
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( vertical_counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~34\ = CARRY(( vertical_counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vertical_counter(0),
	cin => GND,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: LABCELL_X31_Y79_N15
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( vertical_counter(5) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~2\ = CARRY(( vertical_counter(5) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vertical_counter(5),
	cin => \Add1~18\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: LABCELL_X31_Y79_N18
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( vertical_counter(6) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~14\ = CARRY(( vertical_counter(6) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vertical_counter(6),
	cin => \Add1~2\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: LABCELL_X31_Y79_N21
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( vertical_counter(7) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~10\ = CARRY(( vertical_counter(7) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vertical_counter(7),
	cin => \Add1~14\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: LABCELL_X31_Y79_N24
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \vertical_counter[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~6\ = CARRY(( \vertical_counter[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_vertical_counter[8]~DUPLICATE_q\,
	cin => \Add1~10\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X31_Y79_N59
\vertical_counter[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Add1~5_sumout\,
	sclr => \Equal1~2_combout\,
	sload => VCC,
	ena => \vertical_counter[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertical_counter[8]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y79_N27
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( vertical_counter(9) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vertical_counter(9),
	cin => \Add1~6\,
	sumout => \Add1~37_sumout\);

-- Location: FF_X31_Y79_N47
\vertical_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Add1~37_sumout\,
	sclr => \Equal1~2_combout\,
	sload => VCC,
	ena => \vertical_counter[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vertical_counter(9));

-- Location: LABCELL_X31_Y79_N42
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( vertical_counter(3) & ( (vertical_counter(9) & (vertical_counter(0) & !vertical_counter(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_vertical_counter(9),
	datac => ALT_INV_vertical_counter(0),
	datad => ALT_INV_vertical_counter(1),
	dataf => ALT_INV_vertical_counter(3),
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X31_Y79_N54
\vertical_counter[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vertical_counter[9]~0_combout\ = ( \process_1~2_combout\ & ( \Equal0~0_combout\ ) ) # ( !\process_1~2_combout\ & ( \Equal0~0_combout\ & ( (\Equal1~0_combout\ & \Equal1~1_combout\) ) ) ) # ( \process_1~2_combout\ & ( !\Equal0~0_combout\ & ( 
-- (\Equal1~0_combout\ & \Equal1~1_combout\) ) ) ) # ( !\process_1~2_combout\ & ( !\Equal0~0_combout\ & ( (\Equal1~0_combout\ & \Equal1~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_Equal1~1_combout\,
	datae => \ALT_INV_process_1~2_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \vertical_counter[9]~0_combout\);

-- Location: FF_X31_Y79_N5
\vertical_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Add1~13_sumout\,
	sclr => \Equal1~2_combout\,
	sload => VCC,
	ena => \vertical_counter[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vertical_counter(6));

-- Location: FF_X31_Y79_N32
\vertical_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Add1~9_sumout\,
	sclr => \Equal1~2_combout\,
	sload => VCC,
	ena => \vertical_counter[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vertical_counter(7));

-- Location: FF_X31_Y79_N58
\vertical_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Add1~5_sumout\,
	sclr => \Equal1~2_combout\,
	sload => VCC,
	ena => \vertical_counter[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vertical_counter(8));

-- Location: LABCELL_X31_Y79_N33
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !vertical_counter(5) & ( !vertical_counter(8) & ( (!vertical_counter(4) & (!vertical_counter(7) & (!vertical_counter(2) & !vertical_counter(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vertical_counter(4),
	datab => ALT_INV_vertical_counter(7),
	datac => ALT_INV_vertical_counter(2),
	datad => ALT_INV_vertical_counter(6),
	datae => ALT_INV_vertical_counter(5),
	dataf => ALT_INV_vertical_counter(8),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X31_Y79_N45
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Equal1~0_combout\ & \Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal1~1_combout\,
	combout => \Equal1~2_combout\);

-- Location: FF_X31_Y79_N35
\vertical_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Add1~33_sumout\,
	sclr => \Equal1~2_combout\,
	sload => VCC,
	ena => \vertical_counter[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vertical_counter(0));

-- Location: LABCELL_X31_Y79_N3
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( vertical_counter(1) ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~30\ = CARRY(( vertical_counter(1) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vertical_counter(1),
	cin => \Add1~34\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X31_Y79_N56
\vertical_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Add1~29_sumout\,
	sclr => \Equal1~2_combout\,
	sload => VCC,
	ena => \vertical_counter[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vertical_counter(1));

-- Location: LABCELL_X31_Y79_N6
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( vertical_counter(2) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~26\ = CARRY(( vertical_counter(2) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_vertical_counter(2),
	cin => \Add1~30\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X31_Y79_N44
\vertical_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Add1~25_sumout\,
	sclr => \Equal1~2_combout\,
	sload => VCC,
	ena => \vertical_counter[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vertical_counter(2));

-- Location: LABCELL_X31_Y79_N9
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( vertical_counter(3) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~22\ = CARRY(( vertical_counter(3) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vertical_counter(3),
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X31_Y79_N41
\vertical_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Add1~21_sumout\,
	sclr => \Equal1~2_combout\,
	sload => VCC,
	ena => \vertical_counter[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vertical_counter(3));

-- Location: LABCELL_X31_Y79_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( vertical_counter(4) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~18\ = CARRY(( vertical_counter(4) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vertical_counter(4),
	cin => \Add1~22\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X31_Y79_N2
\vertical_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Add1~17_sumout\,
	sclr => \Equal1~2_combout\,
	sload => VCC,
	ena => \vertical_counter[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vertical_counter(4));

-- Location: FF_X31_Y79_N38
\vertical_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Add1~1_sumout\,
	sclr => \Equal1~2_combout\,
	sload => VCC,
	ena => \vertical_counter[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vertical_counter(5));

-- Location: FF_X31_Y79_N31
\vertical_counter[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Add1~9_sumout\,
	sclr => \Equal1~2_combout\,
	sload => VCC,
	ena => \vertical_counter[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertical_counter[7]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y79_N48
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( !\vertical_counter[7]~DUPLICATE_q\ & ( (!vertical_counter(8) & !vertical_counter(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vertical_counter(8),
	datad => ALT_INV_vertical_counter(6),
	dataf => \ALT_INV_vertical_counter[7]~DUPLICATE_q\,
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X31_Y79_N36
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( vertical_counter(1) & ( vertical_counter(2) & ( (!vertical_counter(4) & (!vertical_counter(0) & !vertical_counter(3))) ) ) ) # ( !vertical_counter(1) & ( vertical_counter(2) & ( (!vertical_counter(4) & !vertical_counter(3)) ) ) ) 
-- # ( vertical_counter(1) & ( !vertical_counter(2) & ( (!vertical_counter(4) & !vertical_counter(3)) ) ) ) # ( !vertical_counter(1) & ( !vertical_counter(2) & ( (!vertical_counter(4) & !vertical_counter(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vertical_counter(4),
	datac => ALT_INV_vertical_counter(0),
	datad => ALT_INV_vertical_counter(3),
	datae => ALT_INV_vertical_counter(1),
	dataf => ALT_INV_vertical_counter(2),
	combout => \LessThan2~1_combout\);

-- Location: LABCELL_X31_Y80_N54
\process_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = ( \LessThan2~0_combout\ & ( \LessThan2~1_combout\ & ( (!\process_1~0_combout\ & (!vertical_counter(5) & vertical_counter(9))) ) ) ) # ( !\LessThan2~0_combout\ & ( \LessThan2~1_combout\ & ( (!\process_1~0_combout\ & 
-- !vertical_counter(9)) ) ) ) # ( \LessThan2~0_combout\ & ( !\LessThan2~1_combout\ & ( (!\process_1~0_combout\ & (vertical_counter(5) & !vertical_counter(9))) ) ) ) # ( !\LessThan2~0_combout\ & ( !\LessThan2~1_combout\ & ( (!\process_1~0_combout\ & 
-- !vertical_counter(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000001000100000000010101010000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~0_combout\,
	datab => ALT_INV_vertical_counter(5),
	datad => ALT_INV_vertical_counter(9),
	datae => \ALT_INV_LessThan2~0_combout\,
	dataf => \ALT_INV_LessThan2~1_combout\,
	combout => \process_1~1_combout\);

-- Location: FF_X31_Y80_N40
\VGA_R[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[0]~reg0_q\);

-- Location: FF_X31_Y80_N10
\VGA_R[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[1]~reg0_q\);

-- Location: FF_X31_Y80_N4
\VGA_R[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[2]~reg0_q\);

-- Location: FF_X31_Y80_N17
\VGA_R[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[3]~reg0_q\);

-- Location: FF_X31_Y80_N23
\VGA_R[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[4]~reg0_q\);

-- Location: FF_X31_Y80_N47
\VGA_R[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[5]~reg0_q\);

-- Location: FF_X31_Y80_N58
\VGA_R[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[6]~reg0_q\);

-- Location: FF_X31_Y80_N55
\VGA_R[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[7]~reg0_q\);

-- Location: LABCELL_X30_Y80_N57
\process_1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = ( \horizontal_counter[5]~DUPLICATE_q\ & ( \process_1~2_combout\ & ( ((\horizontal_counter[8]~DUPLICATE_q\) # (\horizontal_counter[9]~DUPLICATE_q\)) # (horizontal_counter(7)) ) ) ) # ( !\horizontal_counter[5]~DUPLICATE_q\ & ( 
-- \process_1~2_combout\ & ( (!horizontal_counter(6)) # (((\horizontal_counter[8]~DUPLICATE_q\) # (\horizontal_counter[9]~DUPLICATE_q\)) # (horizontal_counter(7))) ) ) ) # ( \horizontal_counter[5]~DUPLICATE_q\ & ( !\process_1~2_combout\ & ( 
-- (((\horizontal_counter[8]~DUPLICATE_q\) # (\horizontal_counter[9]~DUPLICATE_q\)) # (horizontal_counter(7))) # (horizontal_counter(6)) ) ) ) # ( !\horizontal_counter[5]~DUPLICATE_q\ & ( !\process_1~2_combout\ & ( ((\horizontal_counter[8]~DUPLICATE_q\) # 
-- (\horizontal_counter[9]~DUPLICATE_q\)) # (horizontal_counter(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111011111111111111110111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_horizontal_counter(6),
	datab => ALT_INV_horizontal_counter(7),
	datac => \ALT_INV_horizontal_counter[9]~DUPLICATE_q\,
	datad => \ALT_INV_horizontal_counter[8]~DUPLICATE_q\,
	datae => \ALT_INV_horizontal_counter[5]~DUPLICATE_q\,
	dataf => \ALT_INV_process_1~2_combout\,
	combout => \process_1~3_combout\);

-- Location: FF_X30_Y80_N58
\VGA_HS~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_HS~reg0_q\);

-- Location: FF_X31_Y79_N40
\vertical_counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Add1~21_sumout\,
	sclr => \Equal1~2_combout\,
	sload => VCC,
	ena => \vertical_counter[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertical_counter[3]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y79_N51
\process_1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~4_combout\ = ( vertical_counter(1) & ( (((!\Equal1~0_combout\) # (\vertical_counter[3]~DUPLICATE_q\)) # (vertical_counter(0))) # (vertical_counter(9)) ) ) # ( !vertical_counter(1) & ( ((!vertical_counter(0)) # ((!\Equal1~0_combout\) # 
-- (\vertical_counter[3]~DUPLICATE_q\))) # (vertical_counter(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011111111111111101111111111111011111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vertical_counter(9),
	datab => ALT_INV_vertical_counter(0),
	datac => \ALT_INV_vertical_counter[3]~DUPLICATE_q\,
	datad => \ALT_INV_Equal1~0_combout\,
	dataf => ALT_INV_vertical_counter(1),
	combout => \process_1~4_combout\);

-- Location: FF_X31_Y79_N52
\VGA_VS~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_VS~reg0_q\);

-- Location: LABCELL_X27_Y28_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


