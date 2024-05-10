-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "12/30/2023 07:24:19"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SuperRegister IS
    PORT (
	data_in : IN std_logic_vector(7 DOWNTO 0);
	control : IN std_logic_vector(2 DOWNTO 0);
	clk : IN std_logic;
	data_sh_r : IN std_logic;
	data_sh_l : IN std_logic;
	data_out : OUT std_logic_vector(7 DOWNTO 0);
	Z : OUT std_logic
	);
END SuperRegister;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_sh_l	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[0]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_sh_r	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SuperRegister IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_control : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_data_sh_r : std_logic;
SIGNAL ww_data_sh_l : std_logic;
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Z : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \control[1]~input_o\ : std_logic;
SIGNAL \control[0]~input_o\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \data_sh_l~input_o\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \reg_data[0]~2_combout\ : std_logic;
SIGNAL \control[2]~input_o\ : std_logic;
SIGNAL \reg_data[0]~7_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \reg_data[1]~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \reg_data[2]~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \reg_data[3]~3_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \reg_data[4]~4_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \reg_data[5]~5_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \reg_data[6]~6_combout\ : std_logic;
SIGNAL \data_sh_r~input_o\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \count[0]~8_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \store[0]~0_combout\ : std_logic;
SIGNAL \store[0]~8_combout\ : std_logic;
SIGNAL \count[0]~9\ : std_logic;
SIGNAL \count[1]~10_combout\ : std_logic;
SIGNAL \store[1]~1_combout\ : std_logic;
SIGNAL \count[1]~11\ : std_logic;
SIGNAL \count[2]~12_combout\ : std_logic;
SIGNAL \store[2]~2_combout\ : std_logic;
SIGNAL \count[2]~13\ : std_logic;
SIGNAL \count[3]~14_combout\ : std_logic;
SIGNAL \store[3]~3_combout\ : std_logic;
SIGNAL \count[3]~15\ : std_logic;
SIGNAL \count[4]~16_combout\ : std_logic;
SIGNAL \store[4]~4_combout\ : std_logic;
SIGNAL \count[4]~17\ : std_logic;
SIGNAL \count[5]~18_combout\ : std_logic;
SIGNAL \store[5]~5_combout\ : std_logic;
SIGNAL \count[5]~19\ : std_logic;
SIGNAL \count[6]~20_combout\ : std_logic;
SIGNAL \store[6]~6_combout\ : std_logic;
SIGNAL \count[6]~21\ : std_logic;
SIGNAL \count[7]~22_combout\ : std_logic;
SIGNAL \store[7]~7_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL store : std_logic_vector(7 DOWNTO 0);
SIGNAL reg_data : std_logic_vector(7 DOWNTO 0);
SIGNAL count : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_control[2]~input_o\ : std_logic;

BEGIN

ww_data_in <= data_in;
ww_control <= control;
ww_clk <= clk;
ww_data_sh_r <= data_sh_r;
ww_data_sh_l <= data_sh_l;
data_out <= ww_data_out;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_control[2]~input_o\ <= NOT \control[2]~input_o\;

-- Location: IOOBUF_X12_Y0_N2
\data_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => store(0),
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\data_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => store(1),
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\data_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => store(2),
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\data_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => store(3),
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\data_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => store(4),
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\data_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => store(5),
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\data_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => store(6),
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\data_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => store(7),
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\Z~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~2_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X16_Y0_N8
\control[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(1),
	o => \control[1]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\control[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(0),
	o => \control[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\data_in[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\data_in[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\data_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: IOIBUF_X33_Y10_N1
\data_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\data_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\data_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\data_sh_l~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_sh_l,
	o => \data_sh_l~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\data_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: LCCOMB_X16_Y2_N20
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\control[1]~input_o\ & (\data_sh_l~input_o\)) # (!\control[1]~input_o\ & ((\data_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_sh_l~input_o\,
	datac => \control[1]~input_o\,
	datad => \data_in[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X25_Y2_N18
\reg_data[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data[0]~2_combout\ = (\control[0]~input_o\ & ((reg_data(1)))) # (!\control[0]~input_o\ & (\Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \control[0]~input_o\,
	datad => reg_data(1),
	combout => \reg_data[0]~2_combout\);

-- Location: IOIBUF_X24_Y0_N8
\control[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(2),
	o => \control[2]~input_o\);

-- Location: LCCOMB_X24_Y2_N12
\reg_data[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data[0]~7_combout\ = ((!\control[1]~input_o\ & !\control[0]~input_o\)) # (!\control[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datac => \control[0]~input_o\,
	datad => \control[2]~input_o\,
	combout => \reg_data[0]~7_combout\);

-- Location: FF_X25_Y2_N19
\reg_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data[0]~2_combout\,
	asdata => reg_data(7),
	sload => \control[2]~input_o\,
	ena => \reg_data[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(0));

-- Location: LCCOMB_X25_Y2_N16
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\control[1]~input_o\ & ((reg_data(0)))) # (!\control[1]~input_o\ & (\data_in[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[1]~input_o\,
	datac => \control[1]~input_o\,
	datad => reg_data(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X25_Y2_N20
\reg_data[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data[1]~0_combout\ = (\control[0]~input_o\ & (reg_data(2))) # (!\control[0]~input_o\ & ((\Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_data(2),
	datab => \control[0]~input_o\,
	datad => \Mux6~0_combout\,
	combout => \reg_data[1]~0_combout\);

-- Location: FF_X25_Y2_N21
\reg_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data[1]~0_combout\,
	asdata => reg_data(0),
	sload => \control[2]~input_o\,
	ena => \reg_data[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(1));

-- Location: LCCOMB_X25_Y2_N6
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\control[1]~input_o\ & ((reg_data(1)))) # (!\control[1]~input_o\ & (\data_in[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[2]~input_o\,
	datac => \control[1]~input_o\,
	datad => reg_data(1),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X25_Y2_N10
\reg_data[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data[2]~1_combout\ = (\control[0]~input_o\ & (reg_data(3))) # (!\control[0]~input_o\ & ((\Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_data(3),
	datab => \control[0]~input_o\,
	datad => \Mux5~0_combout\,
	combout => \reg_data[2]~1_combout\);

-- Location: FF_X25_Y2_N11
\reg_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data[2]~1_combout\,
	asdata => reg_data(1),
	sload => \control[2]~input_o\,
	ena => \reg_data[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(2));

-- Location: LCCOMB_X25_Y2_N28
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\control[1]~input_o\ & ((reg_data(2)))) # (!\control[1]~input_o\ & (\data_in[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[3]~input_o\,
	datac => \control[1]~input_o\,
	datad => reg_data(2),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X25_Y2_N8
\reg_data[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data[3]~3_combout\ = (\control[0]~input_o\ & (reg_data(4))) # (!\control[0]~input_o\ & ((\Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_data(4),
	datab => \control[0]~input_o\,
	datad => \Mux4~0_combout\,
	combout => \reg_data[3]~3_combout\);

-- Location: FF_X25_Y2_N9
\reg_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data[3]~3_combout\,
	asdata => reg_data(2),
	sload => \control[2]~input_o\,
	ena => \reg_data[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(3));

-- Location: LCCOMB_X25_Y2_N24
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\control[1]~input_o\ & ((reg_data(3)))) # (!\control[1]~input_o\ & (\data_in[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datab => \data_in[4]~input_o\,
	datac => reg_data(3),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X25_Y2_N30
\reg_data[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data[4]~4_combout\ = (\control[0]~input_o\ & (reg_data(5))) # (!\control[0]~input_o\ & ((\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[0]~input_o\,
	datab => reg_data(5),
	datad => \Mux3~0_combout\,
	combout => \reg_data[4]~4_combout\);

-- Location: FF_X25_Y2_N31
\reg_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data[4]~4_combout\,
	asdata => reg_data(3),
	sload => \control[2]~input_o\,
	ena => \reg_data[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(4));

-- Location: LCCOMB_X25_Y2_N0
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\control[1]~input_o\ & ((reg_data(4)))) # (!\control[1]~input_o\ & (\data_in[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datab => \data_in[5]~input_o\,
	datac => reg_data(4),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X25_Y2_N4
\reg_data[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data[5]~5_combout\ = (\control[0]~input_o\ & (reg_data(6))) # (!\control[0]~input_o\ & ((\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[0]~input_o\,
	datab => reg_data(6),
	datad => \Mux2~0_combout\,
	combout => \reg_data[5]~5_combout\);

-- Location: FF_X25_Y2_N5
\reg_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data[5]~5_combout\,
	asdata => reg_data(4),
	sload => \control[2]~input_o\,
	ena => \reg_data[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(5));

-- Location: LCCOMB_X25_Y2_N2
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\control[1]~input_o\ & ((reg_data(5)))) # (!\control[1]~input_o\ & (\data_in[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datab => \data_in[6]~input_o\,
	datac => reg_data(5),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X25_Y2_N14
\reg_data[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data[6]~6_combout\ = (\control[0]~input_o\ & (reg_data(7))) # (!\control[0]~input_o\ & ((\Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_data(7),
	datab => \control[0]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \reg_data[6]~6_combout\);

-- Location: FF_X25_Y2_N15
\reg_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data[6]~6_combout\,
	asdata => reg_data(5),
	sload => \control[2]~input_o\,
	ena => \reg_data[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(6));

-- Location: IOIBUF_X29_Y0_N8
\data_sh_r~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_sh_r,
	o => \data_sh_r~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\data_in[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: LCCOMB_X25_Y2_N26
\Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\control[1]~input_o\ & ((\control[0]~input_o\) # ((reg_data(6))))) # (!\control[1]~input_o\ & (!\control[0]~input_o\ & ((\data_in[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datab => \control[0]~input_o\,
	datac => reg_data(6),
	datad => \data_in[7]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X25_Y2_N12
\Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\control[0]~input_o\ & ((\Mux8~0_combout\ & ((reg_data(0)))) # (!\Mux8~0_combout\ & (\data_sh_r~input_o\)))) # (!\control[0]~input_o\ & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_sh_r~input_o\,
	datab => \control[0]~input_o\,
	datac => \Mux8~0_combout\,
	datad => reg_data(0),
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X25_Y2_N22
\Mux8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\control[2]~input_o\ & (reg_data(6))) # (!\control[2]~input_o\ & ((\Mux8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_data(6),
	datac => \control[2]~input_o\,
	datad => \Mux8~1_combout\,
	combout => \Mux8~2_combout\);

-- Location: FF_X25_Y2_N23
\reg_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux8~2_combout\,
	ena => \reg_data[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(7));

-- Location: LCCOMB_X23_Y2_N12
\count[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[0]~8_combout\ = count(0) $ (VCC)
-- \count[0]~9\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \count[0]~8_combout\,
	cout => \count[0]~9\);

-- Location: LCCOMB_X24_Y2_N2
\Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\control[1]~input_o\ & \control[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datad => \control[2]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: FF_X23_Y2_N13
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[0]~8_combout\,
	ena => \Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X24_Y2_N20
\store[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \store[0]~0_combout\ = (\control[1]~input_o\ & ((count(0)))) # (!\control[1]~input_o\ & (reg_data(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datab => reg_data(7),
	datad => count(0),
	combout => \store[0]~0_combout\);

-- Location: LCCOMB_X24_Y2_N22
\store[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \store[0]~8_combout\ = (\control[1]~input_o\) # ((!\control[2]~input_o\) # (!\control[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datac => \control[0]~input_o\,
	datad => \control[2]~input_o\,
	combout => \store[0]~8_combout\);

-- Location: FF_X24_Y2_N21
\store[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \store[0]~0_combout\,
	asdata => \reg_data[0]~2_combout\,
	sload => \ALT_INV_control[2]~input_o\,
	ena => \store[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => store(0));

-- Location: LCCOMB_X23_Y2_N14
\count[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[1]~10_combout\ = (\control[0]~input_o\ & ((count(1) & (\count[0]~9\ & VCC)) # (!count(1) & (!\count[0]~9\)))) # (!\control[0]~input_o\ & ((count(1) & (!\count[0]~9\)) # (!count(1) & ((\count[0]~9\) # (GND)))))
-- \count[1]~11\ = CARRY((\control[0]~input_o\ & (!count(1) & !\count[0]~9\)) # (!\control[0]~input_o\ & ((!\count[0]~9\) # (!count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control[0]~input_o\,
	datab => count(1),
	datad => VCC,
	cin => \count[0]~9\,
	combout => \count[1]~10_combout\,
	cout => \count[1]~11\);

-- Location: FF_X23_Y2_N15
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1]~10_combout\,
	ena => \Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X24_Y2_N10
\store[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \store[1]~1_combout\ = (\control[1]~input_o\ & ((count(1)))) # (!\control[1]~input_o\ & (reg_data(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datab => reg_data(0),
	datad => count(1),
	combout => \store[1]~1_combout\);

-- Location: FF_X24_Y2_N11
\store[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \store[1]~1_combout\,
	asdata => \reg_data[1]~0_combout\,
	sload => \ALT_INV_control[2]~input_o\,
	ena => \store[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => store(1));

-- Location: LCCOMB_X23_Y2_N16
\count[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[2]~12_combout\ = ((\control[0]~input_o\ $ (count(2) $ (!\count[1]~11\)))) # (GND)
-- \count[2]~13\ = CARRY((\control[0]~input_o\ & ((count(2)) # (!\count[1]~11\))) # (!\control[0]~input_o\ & (count(2) & !\count[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control[0]~input_o\,
	datab => count(2),
	datad => VCC,
	cin => \count[1]~11\,
	combout => \count[2]~12_combout\,
	cout => \count[2]~13\);

-- Location: FF_X23_Y2_N17
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2]~12_combout\,
	ena => \Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X24_Y2_N0
\store[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \store[2]~2_combout\ = (\control[1]~input_o\ & (count(2))) # (!\control[1]~input_o\ & ((reg_data(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datab => count(2),
	datad => reg_data(1),
	combout => \store[2]~2_combout\);

-- Location: FF_X24_Y2_N1
\store[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \store[2]~2_combout\,
	asdata => \reg_data[2]~1_combout\,
	sload => \ALT_INV_control[2]~input_o\,
	ena => \store[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => store(2));

-- Location: LCCOMB_X23_Y2_N18
\count[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[3]~14_combout\ = (\control[0]~input_o\ & ((count(3) & (\count[2]~13\ & VCC)) # (!count(3) & (!\count[2]~13\)))) # (!\control[0]~input_o\ & ((count(3) & (!\count[2]~13\)) # (!count(3) & ((\count[2]~13\) # (GND)))))
-- \count[3]~15\ = CARRY((\control[0]~input_o\ & (!count(3) & !\count[2]~13\)) # (!\control[0]~input_o\ & ((!\count[2]~13\) # (!count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control[0]~input_o\,
	datab => count(3),
	datad => VCC,
	cin => \count[2]~13\,
	combout => \count[3]~14_combout\,
	cout => \count[3]~15\);

-- Location: FF_X23_Y2_N19
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[3]~14_combout\,
	ena => \Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X24_Y2_N30
\store[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \store[3]~3_combout\ = (\control[1]~input_o\ & ((count(3)))) # (!\control[1]~input_o\ & (reg_data(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datab => reg_data(2),
	datad => count(3),
	combout => \store[3]~3_combout\);

-- Location: FF_X24_Y2_N31
\store[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \store[3]~3_combout\,
	asdata => \reg_data[3]~3_combout\,
	sload => \ALT_INV_control[2]~input_o\,
	ena => \store[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => store(3));

-- Location: LCCOMB_X23_Y2_N20
\count[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[4]~16_combout\ = ((\control[0]~input_o\ $ (count(4) $ (!\count[3]~15\)))) # (GND)
-- \count[4]~17\ = CARRY((\control[0]~input_o\ & ((count(4)) # (!\count[3]~15\))) # (!\control[0]~input_o\ & (count(4) & !\count[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control[0]~input_o\,
	datab => count(4),
	datad => VCC,
	cin => \count[3]~15\,
	combout => \count[4]~16_combout\,
	cout => \count[4]~17\);

-- Location: FF_X23_Y2_N21
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[4]~16_combout\,
	ena => \Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X24_Y2_N28
\store[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \store[4]~4_combout\ = (\control[1]~input_o\ & (count(4))) # (!\control[1]~input_o\ & ((reg_data(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datab => count(4),
	datad => reg_data(3),
	combout => \store[4]~4_combout\);

-- Location: FF_X24_Y2_N29
\store[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \store[4]~4_combout\,
	asdata => \reg_data[4]~4_combout\,
	sload => \ALT_INV_control[2]~input_o\,
	ena => \store[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => store(4));

-- Location: LCCOMB_X23_Y2_N22
\count[5]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[5]~18_combout\ = (count(5) & ((\control[0]~input_o\ & (\count[4]~17\ & VCC)) # (!\control[0]~input_o\ & (!\count[4]~17\)))) # (!count(5) & ((\control[0]~input_o\ & (!\count[4]~17\)) # (!\control[0]~input_o\ & ((\count[4]~17\) # (GND)))))
-- \count[5]~19\ = CARRY((count(5) & (!\control[0]~input_o\ & !\count[4]~17\)) # (!count(5) & ((!\count[4]~17\) # (!\control[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => \control[0]~input_o\,
	datad => VCC,
	cin => \count[4]~17\,
	combout => \count[5]~18_combout\,
	cout => \count[5]~19\);

-- Location: FF_X23_Y2_N23
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[5]~18_combout\,
	ena => \Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X24_Y2_N26
\store[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \store[5]~5_combout\ = (\control[1]~input_o\ & (count(5))) # (!\control[1]~input_o\ & ((reg_data(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datab => count(5),
	datad => reg_data(4),
	combout => \store[5]~5_combout\);

-- Location: FF_X24_Y2_N27
\store[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \store[5]~5_combout\,
	asdata => \reg_data[5]~5_combout\,
	sload => \ALT_INV_control[2]~input_o\,
	ena => \store[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => store(5));

-- Location: LCCOMB_X23_Y2_N24
\count[6]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[6]~20_combout\ = ((\control[0]~input_o\ $ (count(6) $ (!\count[5]~19\)))) # (GND)
-- \count[6]~21\ = CARRY((\control[0]~input_o\ & ((count(6)) # (!\count[5]~19\))) # (!\control[0]~input_o\ & (count(6) & !\count[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control[0]~input_o\,
	datab => count(6),
	datad => VCC,
	cin => \count[5]~19\,
	combout => \count[6]~20_combout\,
	cout => \count[6]~21\);

-- Location: FF_X23_Y2_N25
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[6]~20_combout\,
	ena => \Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X24_Y2_N24
\store[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \store[6]~6_combout\ = (\control[1]~input_o\ & (count(6))) # (!\control[1]~input_o\ & ((reg_data(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datab => count(6),
	datad => reg_data(5),
	combout => \store[6]~6_combout\);

-- Location: FF_X24_Y2_N25
\store[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \store[6]~6_combout\,
	asdata => \reg_data[6]~6_combout\,
	sload => \ALT_INV_control[2]~input_o\,
	ena => \store[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => store(6));

-- Location: LCCOMB_X23_Y2_N26
\count[7]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[7]~22_combout\ = \control[0]~input_o\ $ (\count[6]~21\ $ (count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control[0]~input_o\,
	datad => count(7),
	cin => \count[6]~21\,
	combout => \count[7]~22_combout\);

-- Location: FF_X23_Y2_N27
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[7]~22_combout\,
	ena => \Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X24_Y2_N14
\store[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \store[7]~7_combout\ = (\control[1]~input_o\ & (count(7))) # (!\control[1]~input_o\ & ((reg_data(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => \control[1]~input_o\,
	datad => reg_data(6),
	combout => \store[7]~7_combout\);

-- Location: FF_X24_Y2_N15
\store[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \store[7]~7_combout\,
	asdata => \Mux8~1_combout\,
	sload => \ALT_INV_control[2]~input_o\,
	ena => \store[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => store(7));

-- Location: LCCOMB_X24_Y2_N18
\Mux24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (store(1) & (((store(5) & store(6))) # (!store(2)))) # (!store(1) & (!store(2) & ((store(5)) # (store(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => store(1),
	datab => store(2),
	datac => store(5),
	datad => store(6),
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X24_Y2_N8
\Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (store(1) & (store(7) & (store(3) & store(4)))) # (!store(1) & ((store(7)) # ((store(3)) # (store(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => store(1),
	datab => store(7),
	datac => store(3),
	datad => store(4),
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X24_Y2_N4
\Mux24~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (store(2) & (\Mux24~1_combout\ & (\Mux24~0_combout\ & store(0)))) # (!store(2) & (!\Mux24~1_combout\ & (!\Mux24~0_combout\ & !store(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => store(2),
	datab => \Mux24~1_combout\,
	datac => \Mux24~0_combout\,
	datad => store(0),
	combout => \Mux24~2_combout\);

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;

ww_Z <= \Z~output_o\;
END structure;


