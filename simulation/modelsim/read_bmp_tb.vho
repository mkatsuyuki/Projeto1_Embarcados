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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/21/2021 21:15:20"

-- 
-- Device: Altera EP4CE6E22A7 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	grayscale IS
    PORT (
	r_in : IN std_logic_vector(7 DOWNTO 0);
	g_in : IN std_logic_vector(7 DOWNTO 0);
	b_in : IN std_logic_vector(7 DOWNTO 0);
	r_out : BUFFER std_logic_vector(7 DOWNTO 0);
	g_out : BUFFER std_logic_vector(7 DOWNTO 0);
	b_out : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END grayscale;

-- Design Ports Information
-- r_in[0]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in[1]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_in[0]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_in[0]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_in[1]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_in[2]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_in[3]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[0]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[1]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[2]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[3]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[4]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[5]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[6]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[7]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[0]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[1]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[2]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[3]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[4]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[5]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[6]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[7]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[0]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[1]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[3]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[4]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[5]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[6]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[7]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_in[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_in[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_in[5]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_in[2]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in[3]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_in[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_in[3]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in[4]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_in[7]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_in[4]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_in[5]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in[6]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_in[6]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in[7]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_in[7]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF grayscale IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_r_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_g_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_g_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \r_in[0]~input_o\ : std_logic;
SIGNAL \r_in[1]~input_o\ : std_logic;
SIGNAL \g_in[0]~input_o\ : std_logic;
SIGNAL \b_in[0]~input_o\ : std_logic;
SIGNAL \b_in[1]~input_o\ : std_logic;
SIGNAL \b_in[2]~input_o\ : std_logic;
SIGNAL \b_in[3]~input_o\ : std_logic;
SIGNAL \r_out[0]~output_o\ : std_logic;
SIGNAL \r_out[1]~output_o\ : std_logic;
SIGNAL \r_out[2]~output_o\ : std_logic;
SIGNAL \r_out[3]~output_o\ : std_logic;
SIGNAL \r_out[4]~output_o\ : std_logic;
SIGNAL \r_out[5]~output_o\ : std_logic;
SIGNAL \r_out[6]~output_o\ : std_logic;
SIGNAL \r_out[7]~output_o\ : std_logic;
SIGNAL \g_out[0]~output_o\ : std_logic;
SIGNAL \g_out[1]~output_o\ : std_logic;
SIGNAL \g_out[2]~output_o\ : std_logic;
SIGNAL \g_out[3]~output_o\ : std_logic;
SIGNAL \g_out[4]~output_o\ : std_logic;
SIGNAL \g_out[5]~output_o\ : std_logic;
SIGNAL \g_out[6]~output_o\ : std_logic;
SIGNAL \g_out[7]~output_o\ : std_logic;
SIGNAL \b_out[0]~output_o\ : std_logic;
SIGNAL \b_out[1]~output_o\ : std_logic;
SIGNAL \b_out[2]~output_o\ : std_logic;
SIGNAL \b_out[3]~output_o\ : std_logic;
SIGNAL \b_out[4]~output_o\ : std_logic;
SIGNAL \b_out[5]~output_o\ : std_logic;
SIGNAL \b_out[6]~output_o\ : std_logic;
SIGNAL \b_out[7]~output_o\ : std_logic;
SIGNAL \b_in[4]~input_o\ : std_logic;
SIGNAL \r_in[2]~input_o\ : std_logic;
SIGNAL \g_in[1]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \b_in[5]~input_o\ : std_logic;
SIGNAL \g_in[2]~input_o\ : std_logic;
SIGNAL \r_in[3]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \b_in[6]~input_o\ : std_logic;
SIGNAL \g_in[3]~input_o\ : std_logic;
SIGNAL \r_in[4]~input_o\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \r_in[5]~input_o\ : std_logic;
SIGNAL \g_in[4]~input_o\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \b_in[7]~input_o\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \r_in[6]~input_o\ : std_logic;
SIGNAL \g_in[5]~input_o\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \r_in[7]~input_o\ : std_logic;
SIGNAL \g_in[6]~input_o\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \g_in[7]~input_o\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_r_in <= r_in;
ww_g_in <= g_in;
ww_b_in <= b_in;
r_out <= ww_r_out;
g_out <= ww_g_out;
b_out <= ww_b_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y0_N9
\r_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~0_combout\,
	devoe => ww_devoe,
	o => \r_out[0]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\r_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~2_combout\,
	devoe => ww_devoe,
	o => \r_out[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\r_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~4_combout\,
	devoe => ww_devoe,
	o => \r_out[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\r_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~6_combout\,
	devoe => ww_devoe,
	o => \r_out[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\r_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~8_combout\,
	devoe => ww_devoe,
	o => \r_out[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\r_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~10_combout\,
	devoe => ww_devoe,
	o => \r_out[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\r_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~12_combout\,
	devoe => ww_devoe,
	o => \r_out[6]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\r_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~14_combout\,
	devoe => ww_devoe,
	o => \r_out[7]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\g_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~0_combout\,
	devoe => ww_devoe,
	o => \g_out[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\g_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~2_combout\,
	devoe => ww_devoe,
	o => \g_out[1]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\g_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~4_combout\,
	devoe => ww_devoe,
	o => \g_out[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\g_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~6_combout\,
	devoe => ww_devoe,
	o => \g_out[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\g_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~8_combout\,
	devoe => ww_devoe,
	o => \g_out[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\g_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~10_combout\,
	devoe => ww_devoe,
	o => \g_out[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\g_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~12_combout\,
	devoe => ww_devoe,
	o => \g_out[6]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\g_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~14_combout\,
	devoe => ww_devoe,
	o => \g_out[7]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\b_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~0_combout\,
	devoe => ww_devoe,
	o => \b_out[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\b_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~2_combout\,
	devoe => ww_devoe,
	o => \b_out[1]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\b_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~4_combout\,
	devoe => ww_devoe,
	o => \b_out[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\b_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~6_combout\,
	devoe => ww_devoe,
	o => \b_out[3]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\b_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~8_combout\,
	devoe => ww_devoe,
	o => \b_out[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\b_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~10_combout\,
	devoe => ww_devoe,
	o => \b_out[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\b_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~12_combout\,
	devoe => ww_devoe,
	o => \b_out[6]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\b_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~14_combout\,
	devoe => ww_devoe,
	o => \b_out[7]~output_o\);

-- Location: IOIBUF_X13_Y24_N15
\b_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_in(4),
	o => \b_in[4]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\r_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in(2),
	o => \r_in[2]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\g_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_in(1),
	o => \g_in[1]~input_o\);

-- Location: LCCOMB_X17_Y20_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\r_in[2]~input_o\ & (\g_in[1]~input_o\ $ (VCC))) # (!\r_in[2]~input_o\ & (\g_in[1]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\r_in[2]~input_o\ & \g_in[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in[2]~input_o\,
	datab => \g_in[1]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X17_Y20_N16
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\b_in[4]~input_o\ & (\Add0~0_combout\ $ (VCC))) # (!\b_in[4]~input_o\ & (\Add0~0_combout\ & VCC))
-- \Add1~1\ = CARRY((\b_in[4]~input_o\ & \Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_in[4]~input_o\,
	datab => \Add0~0_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X16_Y0_N8
\b_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_in(5),
	o => \b_in[5]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\g_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_in(2),
	o => \g_in[2]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\r_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in(3),
	o => \r_in[3]~input_o\);

-- Location: LCCOMB_X17_Y20_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\g_in[2]~input_o\ & ((\r_in[3]~input_o\ & (\Add0~1\ & VCC)) # (!\r_in[3]~input_o\ & (!\Add0~1\)))) # (!\g_in[2]~input_o\ & ((\r_in[3]~input_o\ & (!\Add0~1\)) # (!\r_in[3]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\g_in[2]~input_o\ & (!\r_in[3]~input_o\ & !\Add0~1\)) # (!\g_in[2]~input_o\ & ((!\Add0~1\) # (!\r_in[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_in[2]~input_o\,
	datab => \r_in[3]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X17_Y20_N18
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\b_in[5]~input_o\ & ((\Add0~2_combout\ & (\Add1~1\ & VCC)) # (!\Add0~2_combout\ & (!\Add1~1\)))) # (!\b_in[5]~input_o\ & ((\Add0~2_combout\ & (!\Add1~1\)) # (!\Add0~2_combout\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\b_in[5]~input_o\ & (!\Add0~2_combout\ & !\Add1~1\)) # (!\b_in[5]~input_o\ & ((!\Add1~1\) # (!\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_in[5]~input_o\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: IOIBUF_X18_Y24_N15
\b_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_in(6),
	o => \b_in[6]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\g_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_in(3),
	o => \g_in[3]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\r_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in(4),
	o => \r_in[4]~input_o\);

-- Location: LCCOMB_X17_Y20_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\g_in[3]~input_o\ $ (\r_in[4]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\g_in[3]~input_o\ & ((\r_in[4]~input_o\) # (!\Add0~3\))) # (!\g_in[3]~input_o\ & (\r_in[4]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_in[3]~input_o\,
	datab => \r_in[4]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X17_Y20_N20
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\b_in[6]~input_o\ $ (\Add0~4_combout\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\b_in[6]~input_o\ & ((\Add0~4_combout\) # (!\Add1~3\))) # (!\b_in[6]~input_o\ & (\Add0~4_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_in[6]~input_o\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: IOIBUF_X16_Y24_N1
\r_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in(5),
	o => \r_in[5]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\g_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_in(4),
	o => \g_in[4]~input_o\);

-- Location: LCCOMB_X17_Y20_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\r_in[5]~input_o\ & ((\g_in[4]~input_o\ & (\Add0~5\ & VCC)) # (!\g_in[4]~input_o\ & (!\Add0~5\)))) # (!\r_in[5]~input_o\ & ((\g_in[4]~input_o\ & (!\Add0~5\)) # (!\g_in[4]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\r_in[5]~input_o\ & (!\g_in[4]~input_o\ & !\Add0~5\)) # (!\r_in[5]~input_o\ & ((!\Add0~5\) # (!\g_in[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in[5]~input_o\,
	datab => \g_in[4]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: IOIBUF_X23_Y24_N1
\b_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_in(7),
	o => \b_in[7]~input_o\);

-- Location: LCCOMB_X17_Y20_N22
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add0~6_combout\ & ((\b_in[7]~input_o\ & (\Add1~5\ & VCC)) # (!\b_in[7]~input_o\ & (!\Add1~5\)))) # (!\Add0~6_combout\ & ((\b_in[7]~input_o\ & (!\Add1~5\)) # (!\b_in[7]~input_o\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\Add0~6_combout\ & (!\b_in[7]~input_o\ & !\Add1~5\)) # (!\Add0~6_combout\ & ((!\Add1~5\) # (!\b_in[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \b_in[7]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: IOIBUF_X0_Y11_N15
\r_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in(6),
	o => \r_in[6]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\g_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_in(5),
	o => \g_in[5]~input_o\);

-- Location: LCCOMB_X17_Y20_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\r_in[6]~input_o\ $ (\g_in[5]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\r_in[6]~input_o\ & ((\g_in[5]~input_o\) # (!\Add0~7\))) # (!\r_in[6]~input_o\ & (\g_in[5]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in[6]~input_o\,
	datab => \g_in[5]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X17_Y20_N24
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Add0~8_combout\ & (\Add1~7\ $ (GND))) # (!\Add0~8_combout\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\Add0~8_combout\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: IOIBUF_X13_Y24_N22
\r_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in(7),
	o => \r_in[7]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\g_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_in(6),
	o => \g_in[6]~input_o\);

-- Location: LCCOMB_X17_Y20_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\r_in[7]~input_o\ & ((\g_in[6]~input_o\ & (\Add0~9\ & VCC)) # (!\g_in[6]~input_o\ & (!\Add0~9\)))) # (!\r_in[7]~input_o\ & ((\g_in[6]~input_o\ & (!\Add0~9\)) # (!\g_in[6]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\r_in[7]~input_o\ & (!\g_in[6]~input_o\ & !\Add0~9\)) # (!\r_in[7]~input_o\ & ((!\Add0~9\) # (!\g_in[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in[7]~input_o\,
	datab => \g_in[6]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X17_Y20_N26
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Add0~10_combout\ & (!\Add1~9\)) # (!\Add0~10_combout\ & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!\Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: IOIBUF_X16_Y24_N15
\g_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_in(7),
	o => \g_in[7]~input_o\);

-- Location: LCCOMB_X17_Y20_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\g_in[7]~input_o\ & (\Add0~11\ $ (GND))) # (!\g_in[7]~input_o\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\g_in[7]~input_o\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_in[7]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X17_Y20_N28
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\Add0~12_combout\ & (\Add1~11\ $ (GND))) # (!\Add0~12_combout\ & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((\Add0~12_combout\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X17_Y20_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X17_Y20_N30
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Add0~14_combout\ $ (\Add1~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: IOIBUF_X34_Y9_N15
\r_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in(0),
	o => \r_in[0]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\r_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in(1),
	o => \r_in[1]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\g_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_in(0),
	o => \g_in[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\b_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_in(0),
	o => \b_in[0]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\b_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_in(1),
	o => \b_in[1]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\b_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_in(2),
	o => \b_in[2]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\b_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_in(3),
	o => \b_in[3]~input_o\);

ww_r_out(0) <= \r_out[0]~output_o\;

ww_r_out(1) <= \r_out[1]~output_o\;

ww_r_out(2) <= \r_out[2]~output_o\;

ww_r_out(3) <= \r_out[3]~output_o\;

ww_r_out(4) <= \r_out[4]~output_o\;

ww_r_out(5) <= \r_out[5]~output_o\;

ww_r_out(6) <= \r_out[6]~output_o\;

ww_r_out(7) <= \r_out[7]~output_o\;

ww_g_out(0) <= \g_out[0]~output_o\;

ww_g_out(1) <= \g_out[1]~output_o\;

ww_g_out(2) <= \g_out[2]~output_o\;

ww_g_out(3) <= \g_out[3]~output_o\;

ww_g_out(4) <= \g_out[4]~output_o\;

ww_g_out(5) <= \g_out[5]~output_o\;

ww_g_out(6) <= \g_out[6]~output_o\;

ww_g_out(7) <= \g_out[7]~output_o\;

ww_b_out(0) <= \b_out[0]~output_o\;

ww_b_out(1) <= \b_out[1]~output_o\;

ww_b_out(2) <= \b_out[2]~output_o\;

ww_b_out(3) <= \b_out[3]~output_o\;

ww_b_out(4) <= \b_out[4]~output_o\;

ww_b_out(5) <= \b_out[5]~output_o\;

ww_b_out(6) <= \b_out[6]~output_o\;

ww_b_out(7) <= \b_out[7]~output_o\;
END structure;


