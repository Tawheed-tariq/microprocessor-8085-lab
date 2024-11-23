-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "11/17/2024 20:41:10"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	sel : IN std_logic_vector(2 DOWNTO 0);
	Result : BUFFER std_logic_vector(7 DOWNTO 0);
	Zero : BUFFER std_logic
	);
END ALU;

-- Design Ports Information
-- Result[0]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[1]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[2]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[4]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[6]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[7]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Result : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Zero : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Borrow~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Carry~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Borrow~1_combout\ : std_logic;
SIGNAL \Carry~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Borrow~2_combout\ : std_logic;
SIGNAL \Carry~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Borrow~3_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Carry~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Borrow~4_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Carry~4_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Borrow~5_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Carry~5_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Carry~5_combout\ : std_logic;
SIGNAL \ALT_INV_Borrow~5_combout\ : std_logic;
SIGNAL \ALT_INV_Carry~4_combout\ : std_logic;
SIGNAL \ALT_INV_Borrow~4_combout\ : std_logic;
SIGNAL \ALT_INV_Carry~3_combout\ : std_logic;
SIGNAL \ALT_INV_Borrow~3_combout\ : std_logic;
SIGNAL \ALT_INV_Carry~2_combout\ : std_logic;
SIGNAL \ALT_INV_Borrow~2_combout\ : std_logic;
SIGNAL \ALT_INV_Carry~1_combout\ : std_logic;
SIGNAL \ALT_INV_Borrow~1_combout\ : std_logic;
SIGNAL \ALT_INV_Carry~0_combout\ : std_logic;
SIGNAL \ALT_INV_Borrow~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_sel <= sel;
Result <= ww_Result;
Zero <= ww_Zero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_sel[0]~input_o\ <= NOT \sel[0]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_sel[2]~input_o\ <= NOT \sel[2]~input_o\;
\ALT_INV_sel[1]~input_o\ <= NOT \sel[1]~input_o\;
\ALT_INV_Mux6~2_combout\ <= NOT \Mux6~2_combout\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Carry~5_combout\ <= NOT \Carry~5_combout\;
\ALT_INV_Borrow~5_combout\ <= NOT \Borrow~5_combout\;
\ALT_INV_Carry~4_combout\ <= NOT \Carry~4_combout\;
\ALT_INV_Borrow~4_combout\ <= NOT \Borrow~4_combout\;
\ALT_INV_Carry~3_combout\ <= NOT \Carry~3_combout\;
\ALT_INV_Borrow~3_combout\ <= NOT \Borrow~3_combout\;
\ALT_INV_Carry~2_combout\ <= NOT \Carry~2_combout\;
\ALT_INV_Borrow~2_combout\ <= NOT \Borrow~2_combout\;
\ALT_INV_Carry~1_combout\ <= NOT \Carry~1_combout\;
\ALT_INV_Borrow~1_combout\ <= NOT \Borrow~1_combout\;
\ALT_INV_Carry~0_combout\ <= NOT \Carry~0_combout\;
\ALT_INV_Borrow~0_combout\ <= NOT \Borrow~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X89_Y4_N45
\Result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_Result(0));

-- Location: IOOBUF_X89_Y4_N96
\Result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~2_combout\,
	devoe => ww_devoe,
	o => ww_Result(1));

-- Location: IOOBUF_X89_Y4_N62
\Result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_Result(2));

-- Location: IOOBUF_X68_Y0_N19
\Result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_Result(3));

-- Location: IOOBUF_X70_Y0_N53
\Result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_Result(4));

-- Location: IOOBUF_X62_Y0_N2
\Result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_Result(5));

-- Location: IOOBUF_X60_Y0_N36
\Result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_Result(6));

-- Location: IOOBUF_X62_Y0_N53
\Result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_Result(7));

-- Location: IOOBUF_X62_Y0_N19
\Zero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~1_combout\,
	devoe => ww_devoe,
	o => ww_Zero);

-- Location: IOIBUF_X68_Y0_N52
\sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\sel[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LABCELL_X68_Y1_N6
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \B[0]~input_o\ & ( (!\A[0]~input_o\ & ((!\sel[0]~input_o\ & (!\sel[1]~input_o\)) # (\sel[0]~input_o\ & ((!\sel[2]~input_o\))))) # (\A[0]~input_o\ & (((\sel[1]~input_o\ & !\sel[2]~input_o\)))) ) ) # ( !\B[0]~input_o\ & ( 
-- (!\sel[0]~input_o\ & (\A[0]~input_o\ & (!\sel[1]~input_o\))) # (\sel[0]~input_o\ & ((!\A[0]~input_o\ & (!\sel[1]~input_o\ & \sel[2]~input_o\)) # (\A[0]~input_o\ & ((!\sel[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000101100000110001111000000000110001011000001100011110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_sel[1]~input_o\,
	datad => \ALT_INV_sel[2]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X72_Y0_N18
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X68_Y1_N36
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \B[1]~input_o\ & ( \sel[1]~input_o\ & ( (\sel[0]~input_o\ & !\sel[2]~input_o\) ) ) ) # ( \B[1]~input_o\ & ( !\sel[1]~input_o\ & ( (!\sel[2]~input_o\ & ((!\B[0]~input_o\) # (!\sel[0]~input_o\ $ (\A[0]~input_o\)))) # (\sel[2]~input_o\ & 
-- (!\sel[0]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\sel[1]~input_o\ & ( (!\sel[2]~input_o\ & (\B[0]~input_o\ & (!\sel[0]~input_o\ $ (!\A[0]~input_o\)))) # (\sel[2]~input_o\ & (\sel[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001010101111110011010101000000000000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_sel[2]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_sel[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X68_Y1_N12
\Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \B[1]~input_o\ & ( \sel[1]~input_o\ & ( !\sel[2]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \sel[1]~input_o\ & ( (\sel[0]~input_o\ & !\sel[2]~input_o\) ) ) ) # ( \B[1]~input_o\ & ( !\sel[1]~input_o\ & ( (\B[0]~input_o\ & 
-- (!\sel[2]~input_o\ & (!\sel[0]~input_o\ $ (!\A[0]~input_o\)))) ) ) ) # ( !\B[1]~input_o\ & ( !\sel[1]~input_o\ & ( (!\sel[2]~input_o\ & ((!\B[0]~input_o\) # (!\sel[0]~input_o\ $ (\A[0]~input_o\)))) # (\sel[2]~input_o\ & (!\sel[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100110101010000001100000000001010101000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_sel[2]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_sel[1]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: IOIBUF_X72_Y0_N52
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X68_Y1_N33
\Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = ( \A[1]~input_o\ & ( \Mux6~1_combout\ ) ) # ( !\A[1]~input_o\ & ( \Mux6~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_Mux6~1_combout\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LABCELL_X68_Y1_N42
\Borrow~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Borrow~0_combout\ = ( \A[1]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\) # (\A[0]~input_o\)) ) ) # ( !\A[1]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # (\A[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000010110000101100001011000011111011111110111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Borrow~0_combout\);

-- Location: IOIBUF_X70_Y0_N1
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X68_Y1_N45
\Carry~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Carry~0_combout\ = ( \A[1]~input_o\ & ( ((\B[0]~input_o\ & \A[0]~input_o\)) # (\B[1]~input_o\) ) ) # ( !\A[1]~input_o\ & ( (\B[0]~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Carry~0_combout\);

-- Location: LABCELL_X68_Y1_N0
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( !\sel[0]~input_o\ & ( (!\sel[1]~input_o\ & (!\A[2]~input_o\ $ (!\B[2]~input_o\ $ (((!\sel[2]~input_o\ & \Carry~0_combout\)))))) # (\sel[1]~input_o\ & (!\sel[2]~input_o\ & (((\A[2]~input_o\ & \B[2]~input_o\))))) ) ) # ( 
-- \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & ((!\sel[2]~input_o\ & (!\Borrow~0_combout\ $ (!\A[2]~input_o\ $ (!\B[2]~input_o\)))) # (\sel[2]~input_o\ & (((!\A[2]~input_o\ & !\B[2]~input_o\)))))) # (\sel[1]~input_o\ & (!\sel[2]~input_o\ & (((\B[2]~input_o\) # 
-- (\A[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000100010100010101000100100110010100010010011000100110011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[1]~input_o\,
	datab => \ALT_INV_sel[2]~input_o\,
	datac => \ALT_INV_Borrow~0_combout\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	datag => \ALT_INV_Carry~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: IOIBUF_X66_Y0_N41
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X68_Y1_N18
\Borrow~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Borrow~1_combout\ = ( \B[1]~input_o\ & ( \A[1]~input_o\ & ( (!\A[2]~input_o\ & (!\B[2]~input_o\ & ((!\B[0]~input_o\) # (\A[0]~input_o\)))) # (\A[2]~input_o\ & ((!\B[0]~input_o\) # ((!\B[2]~input_o\) # (\A[0]~input_o\)))) ) ) ) # ( !\B[1]~input_o\ & ( 
-- \A[1]~input_o\ & ( (!\B[2]~input_o\) # (\A[2]~input_o\) ) ) ) # ( \B[1]~input_o\ & ( !\A[1]~input_o\ & ( (\A[2]~input_o\ & !\B[2]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[1]~input_o\ & ( (!\A[2]~input_o\ & (!\B[2]~input_o\ & ((!\B[0]~input_o\) # 
-- (\A[0]~input_o\)))) # (\A[2]~input_o\ & ((!\B[0]~input_o\) # ((!\B[2]~input_o\) # (\A[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001011110011001100000011000011110011111100111011001011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Borrow~1_combout\);

-- Location: LABCELL_X68_Y1_N54
\Carry~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Carry~1_combout\ = ( \B[1]~input_o\ & ( \A[1]~input_o\ & ( (\B[2]~input_o\) # (\A[2]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[1]~input_o\ & ( (!\A[2]~input_o\ & (\B[0]~input_o\ & (\B[2]~input_o\ & \A[0]~input_o\))) # (\A[2]~input_o\ & (((\B[0]~input_o\ 
-- & \A[0]~input_o\)) # (\B[2]~input_o\))) ) ) ) # ( \B[1]~input_o\ & ( !\A[1]~input_o\ & ( (!\A[2]~input_o\ & (\B[0]~input_o\ & (\B[2]~input_o\ & \A[0]~input_o\))) # (\A[2]~input_o\ & (((\B[0]~input_o\ & \A[0]~input_o\)) # (\B[2]~input_o\))) ) ) ) # ( 
-- !\B[1]~input_o\ & ( !\A[1]~input_o\ & ( (\A[2]~input_o\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110001011100000011000101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Carry~1_combout\);

-- Location: LABCELL_X67_Y1_N54
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( !\sel[0]~input_o\ & ( (!\sel[1]~input_o\ & (!\A[3]~input_o\ $ (!\B[3]~input_o\ $ (((\Carry~1_combout\ & !\sel[2]~input_o\)))))) # (\sel[1]~input_o\ & (\A[3]~input_o\ & (\B[3]~input_o\ & ((!\sel[2]~input_o\))))) ) ) # ( 
-- \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & ((!\sel[2]~input_o\ & (!\A[3]~input_o\ $ (!\B[3]~input_o\ $ (!\Borrow~1_combout\)))) # (\sel[2]~input_o\ & (!\A[3]~input_o\ & (!\B[3]~input_o\))))) # (\sel[1]~input_o\ & (((!\sel[2]~input_o\ & ((\B[3]~input_o\) # 
-- (\A[3]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0110100100010001100101100111011101100110000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_Borrow~1_combout\,
	datad => \ALT_INV_sel[1]~input_o\,
	datae => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_sel[2]~input_o\,
	datag => \ALT_INV_Carry~1_combout\,
	combout => \Mux4~0_combout\);

-- Location: IOIBUF_X64_Y0_N18
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LABCELL_X67_Y1_N3
\Borrow~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Borrow~2_combout\ = ( \Borrow~1_combout\ & ( (!\B[3]~input_o\) # (\A[3]~input_o\) ) ) # ( !\Borrow~1_combout\ & ( (\A[3]~input_o\ & !\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_Borrow~1_combout\,
	combout => \Borrow~2_combout\);

-- Location: LABCELL_X67_Y1_N0
\Carry~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Carry~2_combout\ = (!\A[3]~input_o\ & (\B[3]~input_o\ & \Carry~1_combout\)) # (\A[3]~input_o\ & ((\Carry~1_combout\) # (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_Carry~1_combout\,
	combout => \Carry~2_combout\);

-- Location: LABCELL_X67_Y1_N48
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( !\sel[0]~input_o\ & ( (!\sel[1]~input_o\ & (!\B[4]~input_o\ $ (!\A[4]~input_o\ $ (((\Carry~2_combout\ & !\sel[2]~input_o\)))))) # (\sel[1]~input_o\ & (\B[4]~input_o\ & (\A[4]~input_o\ & ((!\sel[2]~input_o\))))) ) ) # ( 
-- \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & ((!\sel[2]~input_o\ & (!\B[4]~input_o\ $ (!\A[4]~input_o\ $ (!\Borrow~2_combout\)))) # (\sel[2]~input_o\ & (!\B[4]~input_o\ & (!\A[4]~input_o\))))) # (\sel[1]~input_o\ & (((!\sel[2]~input_o\ & ((\A[4]~input_o\) # 
-- (\B[4]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0110100100010001100101100111011101100110000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_Borrow~2_combout\,
	datad => \ALT_INV_sel[1]~input_o\,
	datae => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_sel[2]~input_o\,
	datag => \ALT_INV_Carry~2_combout\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X70_Y0_N35
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X67_Y1_N36
\Borrow~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Borrow~3_combout\ = ( \Borrow~1_combout\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\) # ((\A[4]~input_o\) # (\A[3]~input_o\)))) # (\B[4]~input_o\ & (\A[4]~input_o\ & ((!\B[3]~input_o\) # (\A[3]~input_o\)))) ) ) # ( !\Borrow~1_combout\ & ( (!\B[4]~input_o\ & 
-- (((!\B[3]~input_o\ & \A[3]~input_o\)) # (\A[4]~input_o\))) # (\B[4]~input_o\ & (!\B[3]~input_o\ & (\A[3]~input_o\ & \A[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010101110000010001010111010001010111011111000101011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_Borrow~1_combout\,
	combout => \Borrow~3_combout\);

-- Location: IOIBUF_X66_Y0_N58
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X67_Y1_N39
\Carry~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Carry~3_combout\ = ( \A[3]~input_o\ & ( (!\B[4]~input_o\ & (\A[4]~input_o\ & ((\Carry~1_combout\) # (\B[3]~input_o\)))) # (\B[4]~input_o\ & (((\A[4]~input_o\) # (\Carry~1_combout\)) # (\B[3]~input_o\))) ) ) # ( !\A[3]~input_o\ & ( (!\B[4]~input_o\ & 
-- (\B[3]~input_o\ & (\Carry~1_combout\ & \A[4]~input_o\))) # (\B[4]~input_o\ & (((\B[3]~input_o\ & \Carry~1_combout\)) # (\A[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111000000010101011100010101011111110001010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_Carry~1_combout\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Carry~3_combout\);

-- Location: LABCELL_X67_Y1_N42
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( !\sel[0]~input_o\ & ( (!\sel[1]~input_o\ & (!\A[5]~input_o\ $ (!\B[5]~input_o\ $ (((!\sel[2]~input_o\ & \Carry~3_combout\)))))) # (\sel[1]~input_o\ & (\A[5]~input_o\ & (!\sel[2]~input_o\ & ((\B[5]~input_o\))))) ) ) # ( 
-- \sel[0]~input_o\ & ( (!\sel[2]~input_o\ & ((!\sel[1]~input_o\ & (!\A[5]~input_o\ $ (!\Borrow~3_combout\ $ (!\B[5]~input_o\)))) # (\sel[1]~input_o\ & (((\B[5]~input_o\)) # (\A[5]~input_o\))))) # (\sel[2]~input_o\ & (!\A[5]~input_o\ & (((!\sel[1]~input_o\ & 
-- !\B[5]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101100100000000101001100100010010100110010001000100100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_sel[2]~input_o\,
	datac => \ALT_INV_Borrow~3_combout\,
	datad => \ALT_INV_sel[1]~input_o\,
	datae => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	datag => \ALT_INV_Carry~3_combout\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X62_Y0_N35
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X67_Y1_N15
\Borrow~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Borrow~4_combout\ = ( \A[5]~input_o\ & ( (!\B[5]~input_o\) # (\Borrow~3_combout\) ) ) # ( !\A[5]~input_o\ & ( (!\B[5]~input_o\ & \Borrow~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_Borrow~3_combout\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Borrow~4_combout\);

-- Location: IOIBUF_X66_Y0_N75
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X67_Y1_N12
\Carry~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Carry~4_combout\ = ( \A[5]~input_o\ & ( (\Carry~3_combout\) # (\B[5]~input_o\) ) ) # ( !\A[5]~input_o\ & ( (\B[5]~input_o\ & \Carry~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_Carry~3_combout\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Carry~4_combout\);

-- Location: LABCELL_X67_Y1_N6
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( !\sel[0]~input_o\ & ( (!\sel[1]~input_o\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\ $ (((\Carry~4_combout\ & !\sel[2]~input_o\)))))) # (\sel[1]~input_o\ & (\A[6]~input_o\ & (((!\sel[2]~input_o\ & \B[6]~input_o\))))) ) ) # ( 
-- \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & ((!\sel[2]~input_o\ & (!\A[6]~input_o\ $ (!\Borrow~4_combout\ $ (!\B[6]~input_o\)))) # (\sel[2]~input_o\ & (!\A[6]~input_o\ & ((!\B[6]~input_o\)))))) # (\sel[1]~input_o\ & (((!\sel[2]~input_o\ & ((\B[6]~input_o\) 
-- # (\A[6]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100100001000100100101011000100010010101100010000111101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_Borrow~4_combout\,
	datad => \ALT_INV_sel[2]~input_o\,
	datae => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	datag => \ALT_INV_Carry~4_combout\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X64_Y0_N52
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LABCELL_X67_Y1_N18
\Borrow~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Borrow~5_combout\ = ( \A[5]~input_o\ & ( (!\B[6]~input_o\ & ((!\B[5]~input_o\) # ((\A[6]~input_o\) # (\Borrow~3_combout\)))) # (\B[6]~input_o\ & (\A[6]~input_o\ & ((!\B[5]~input_o\) # (\Borrow~3_combout\)))) ) ) # ( !\A[5]~input_o\ & ( (!\B[6]~input_o\ & 
-- (((!\B[5]~input_o\ & \Borrow~3_combout\)) # (\A[6]~input_o\))) # (\B[6]~input_o\ & (!\B[5]~input_o\ & (\Borrow~3_combout\ & \A[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010101110000010001010111010001010111011111000101011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_Borrow~3_combout\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Borrow~5_combout\);

-- Location: IOIBUF_X64_Y0_N35
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X67_Y1_N21
\Carry~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Carry~5_combout\ = ( \A[5]~input_o\ & ( (!\B[6]~input_o\ & (\A[6]~input_o\ & ((\Carry~3_combout\) # (\B[5]~input_o\)))) # (\B[6]~input_o\ & (((\A[6]~input_o\) # (\Carry~3_combout\)) # (\B[5]~input_o\))) ) ) # ( !\A[5]~input_o\ & ( (!\B[6]~input_o\ & 
-- (\B[5]~input_o\ & (\Carry~3_combout\ & \A[6]~input_o\))) # (\B[6]~input_o\ & (((\B[5]~input_o\ & \Carry~3_combout\)) # (\A[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111000000010101011100010101011111110001010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_Carry~3_combout\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Carry~5_combout\);

-- Location: LABCELL_X67_Y1_N30
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !\sel[0]~input_o\ & ( (!\sel[1]~input_o\ & (!\A[7]~input_o\ $ (!\B[7]~input_o\ $ (((!\sel[2]~input_o\ & \Carry~5_combout\)))))) # (\sel[1]~input_o\ & (\A[7]~input_o\ & (!\sel[2]~input_o\ & ((\B[7]~input_o\))))) ) ) # ( 
-- \sel[0]~input_o\ & ( (!\sel[2]~input_o\ & ((!\sel[1]~input_o\ & (!\A[7]~input_o\ $ (!\Borrow~5_combout\ $ (!\B[7]~input_o\)))) # (\sel[1]~input_o\ & (((\B[7]~input_o\)) # (\A[7]~input_o\))))) # (\sel[2]~input_o\ & (!\A[7]~input_o\ & (((!\sel[1]~input_o\ & 
-- !\B[7]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101100100000000101001100100010010100110010001000100100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_sel[2]~input_o\,
	datac => \ALT_INV_Borrow~5_combout\,
	datad => \ALT_INV_sel[1]~input_o\,
	datae => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	datag => \ALT_INV_Carry~5_combout\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X68_Y1_N30
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\Mux4~0_combout\ & ( (!\Mux7~0_combout\ & (!\Mux6~2_combout\ & !\Mux5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux7~0_combout\,
	datac => \ALT_INV_Mux6~2_combout\,
	datad => \ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_Mux4~0_combout\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X67_Y1_N24
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\Mux2~0_combout\ & ( \Equal0~0_combout\ & ( (!\Mux1~0_combout\ & (!\Mux3~0_combout\ & !\Mux0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux1~0_combout\,
	datac => \ALT_INV_Mux3~0_combout\,
	datad => \ALT_INV_Mux0~0_combout\,
	datae => \ALT_INV_Mux2~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X24_Y14_N3
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


