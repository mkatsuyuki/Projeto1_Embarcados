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

-- DATE "10/25/2021 21:11:10"

-- 
-- Device: Altera EP4CE6U14I7 Package UFBGA256
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	filter IS
    PORT (
	r_in_filter1 : IN std_logic_vector(7 DOWNTO 0);
	r_in_filter2 : IN std_logic_vector(7 DOWNTO 0);
	r_in_filter3 : IN std_logic_vector(7 DOWNTO 0);
	r_in_filter4 : IN std_logic_vector(7 DOWNTO 0);
	r_in_filter5 : IN std_logic_vector(7 DOWNTO 0);
	r_in_filter6 : IN std_logic_vector(7 DOWNTO 0);
	r_in_filter7 : IN std_logic_vector(7 DOWNTO 0);
	r_in_filter8 : IN std_logic_vector(7 DOWNTO 0);
	r_in_filter9 : IN std_logic_vector(7 DOWNTO 0);
	r_out_filter : OUT std_logic_vector(7 DOWNTO 0);
	g_out_filter : OUT std_logic_vector(7 DOWNTO 0);
	b_out_filter : OUT std_logic_vector(7 DOWNTO 0)
	);
END filter;

-- Design Ports Information
-- r_out_filter[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out_filter[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out_filter[2]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out_filter[3]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out_filter[4]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out_filter[5]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out_filter[6]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out_filter[7]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out_filter[0]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out_filter[1]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out_filter[2]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out_filter[3]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out_filter[4]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out_filter[5]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out_filter[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out_filter[7]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out_filter[0]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out_filter[1]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out_filter[2]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out_filter[3]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out_filter[4]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out_filter[5]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out_filter[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out_filter[7]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter5[7]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter5[6]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter5[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter5[4]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter5[3]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter5[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter5[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter5[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter1[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter1[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter1[5]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter1[4]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter1[3]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter1[2]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter1[1]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter1[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter2[7]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter2[6]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter2[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter2[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter2[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter2[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter2[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter2[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter3[7]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter3[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter3[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter3[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter3[3]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter3[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter3[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter3[0]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter4[7]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter4[6]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter4[5]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter4[4]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter4[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter4[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter4[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter4[0]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter6[7]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter6[6]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter6[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter6[4]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter6[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter6[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter6[1]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter6[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter7[7]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter7[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter7[5]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter7[4]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter7[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter7[2]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter7[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter7[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter8[7]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter8[6]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter8[5]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter8[4]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter8[3]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter8[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter8[1]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter8[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter9[7]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter9[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter9[5]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter9[4]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter9[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter9[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter9[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter9[0]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF filter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_r_in_filter1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r_in_filter2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r_in_filter3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r_in_filter4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r_in_filter5 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r_in_filter6 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r_in_filter7 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r_in_filter8 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r_in_filter9 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r_out_filter : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_g_out_filter : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b_out_filter : std_logic_vector(7 DOWNTO 0);
SIGNAL \r_out_filter[0]~output_o\ : std_logic;
SIGNAL \r_out_filter[1]~output_o\ : std_logic;
SIGNAL \r_out_filter[2]~output_o\ : std_logic;
SIGNAL \r_out_filter[3]~output_o\ : std_logic;
SIGNAL \r_out_filter[4]~output_o\ : std_logic;
SIGNAL \r_out_filter[5]~output_o\ : std_logic;
SIGNAL \r_out_filter[6]~output_o\ : std_logic;
SIGNAL \r_out_filter[7]~output_o\ : std_logic;
SIGNAL \g_out_filter[0]~output_o\ : std_logic;
SIGNAL \g_out_filter[1]~output_o\ : std_logic;
SIGNAL \g_out_filter[2]~output_o\ : std_logic;
SIGNAL \g_out_filter[3]~output_o\ : std_logic;
SIGNAL \g_out_filter[4]~output_o\ : std_logic;
SIGNAL \g_out_filter[5]~output_o\ : std_logic;
SIGNAL \g_out_filter[6]~output_o\ : std_logic;
SIGNAL \g_out_filter[7]~output_o\ : std_logic;
SIGNAL \b_out_filter[0]~output_o\ : std_logic;
SIGNAL \b_out_filter[1]~output_o\ : std_logic;
SIGNAL \b_out_filter[2]~output_o\ : std_logic;
SIGNAL \b_out_filter[3]~output_o\ : std_logic;
SIGNAL \b_out_filter[4]~output_o\ : std_logic;
SIGNAL \b_out_filter[5]~output_o\ : std_logic;
SIGNAL \b_out_filter[6]~output_o\ : std_logic;
SIGNAL \b_out_filter[7]~output_o\ : std_logic;
SIGNAL \r_in_filter9[4]~input_o\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \r_in_filter9[7]~input_o\ : std_logic;
SIGNAL \r_in_filter9[6]~input_o\ : std_logic;
SIGNAL \r_in_filter9[5]~input_o\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[15]~55_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[15]~54_combout\ : std_logic;
SIGNAL \r_in_filter9[3]~input_o\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[18]~48_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[18]~49_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[17]~51_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[17]~50_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[16]~52_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[16]~53_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_3~9_cout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[21]~58_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[21]~77_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[20]~59_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[20]~60_combout\ : std_logic;
SIGNAL \r_in_filter9[2]~input_o\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[22]~76_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[23]~75_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[23]~56_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[22]~57_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_4~9_cout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[28]~71_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[28]~61_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[27]~72_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[27]~62_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[26]~63_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[26]~78_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[25]~64_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[25]~65_combout\ : std_logic;
SIGNAL \r_in_filter9[1]~input_o\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_5~9_cout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[33]~73_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[32]~74_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[31]~68_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[30]~69_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|StageOut[30]~70_combout\ : std_logic;
SIGNAL \r_in_filter9[0]~input_o\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_6~1_cout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_6~3_cout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_6~5_cout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_6~7_cout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_6~9_cout\ : std_logic;
SIGNAL \Div8|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \r_in_filter8[7]~input_o\ : std_logic;
SIGNAL \r_in_filter8[6]~input_o\ : std_logic;
SIGNAL \r_in_filter8[5]~input_o\ : std_logic;
SIGNAL \r_in_filter8[4]~input_o\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[17]~50_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[17]~51_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[16]~53_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[16]~52_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[15]~55_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[15]~54_combout\ : std_logic;
SIGNAL \r_in_filter8[3]~input_o\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[18]~49_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[18]~48_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_3~9_cout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[23]~56_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[23]~75_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[22]~76_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[22]~57_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[21]~77_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[21]~58_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[20]~59_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[20]~60_combout\ : std_logic;
SIGNAL \r_in_filter8[2]~input_o\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_4~9_cout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[28]~71_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[28]~61_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[27]~62_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[27]~72_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[26]~78_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[26]~63_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[25]~64_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[25]~65_combout\ : std_logic;
SIGNAL \r_in_filter8[1]~input_o\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_5~9_cout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[33]~73_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[32]~74_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[31]~68_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[30]~69_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|StageOut[30]~70_combout\ : std_logic;
SIGNAL \r_in_filter8[0]~input_o\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_6~1_cout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_6~3_cout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_6~5_cout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_6~7_cout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_6~9_cout\ : std_logic;
SIGNAL \Div7|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \r_in_filter7[4]~input_o\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \r_in_filter7[7]~input_o\ : std_logic;
SIGNAL \r_in_filter7[6]~input_o\ : std_logic;
SIGNAL \r_in_filter7[5]~input_o\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[18]~48_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[18]~49_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[17]~50_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[17]~51_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[16]~53_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[16]~52_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[15]~55_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[15]~54_combout\ : std_logic;
SIGNAL \r_in_filter7[3]~input_o\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_3~9_cout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[21]~77_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[23]~56_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[23]~75_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[22]~76_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[22]~57_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[21]~58_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[20]~59_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[20]~60_combout\ : std_logic;
SIGNAL \r_in_filter7[2]~input_o\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_4~9_cout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[27]~72_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[28]~61_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[28]~71_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[27]~62_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[26]~78_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[26]~63_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[25]~64_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[25]~65_combout\ : std_logic;
SIGNAL \r_in_filter7[1]~input_o\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_5~9_cout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[33]~73_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[32]~74_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[31]~68_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[30]~69_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|StageOut[30]~70_combout\ : std_logic;
SIGNAL \r_in_filter7[0]~input_o\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_6~1_cout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_6~3_cout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_6~5_cout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_6~7_cout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_6~9_cout\ : std_logic;
SIGNAL \Div6|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \r_in_filter6[7]~input_o\ : std_logic;
SIGNAL \r_in_filter6[6]~input_o\ : std_logic;
SIGNAL \r_in_filter6[5]~input_o\ : std_logic;
SIGNAL \r_in_filter6[4]~input_o\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[18]~49_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[18]~48_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[17]~50_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[17]~51_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[16]~52_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[16]~53_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[15]~54_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[15]~55_combout\ : std_logic;
SIGNAL \r_in_filter6[3]~input_o\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_3~9_cout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[21]~77_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[21]~58_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[20]~60_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[20]~59_combout\ : std_logic;
SIGNAL \r_in_filter6[2]~input_o\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[23]~75_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[23]~56_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[22]~76_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[22]~57_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_4~9_cout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[27]~62_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[27]~72_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[26]~63_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[26]~78_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[25]~65_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[25]~64_combout\ : std_logic;
SIGNAL \r_in_filter6[1]~input_o\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[28]~71_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[28]~61_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_5~9_cout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[33]~73_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[32]~74_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[31]~68_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[30]~70_combout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|StageOut[30]~69_combout\ : std_logic;
SIGNAL \r_in_filter6[0]~input_o\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_6~1_cout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_6~3_cout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_6~5_cout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_6~7_cout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_6~9_cout\ : std_logic;
SIGNAL \Div5|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \r_in_filter4[4]~input_o\ : std_logic;
SIGNAL \r_in_filter4[7]~input_o\ : std_logic;
SIGNAL \r_in_filter4[6]~input_o\ : std_logic;
SIGNAL \r_in_filter4[5]~input_o\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[18]~49_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[18]~48_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[17]~50_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[17]~51_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[16]~53_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[16]~52_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[15]~54_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[15]~55_combout\ : std_logic;
SIGNAL \r_in_filter4[3]~input_o\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_3~9_cout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[21]~77_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[23]~56_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[23]~75_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[22]~57_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[22]~76_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[21]~58_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[20]~60_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[20]~59_combout\ : std_logic;
SIGNAL \r_in_filter4[2]~input_o\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_4~9_cout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[27]~72_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[27]~62_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[26]~78_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[26]~63_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[25]~65_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[25]~64_combout\ : std_logic;
SIGNAL \r_in_filter4[1]~input_o\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[28]~61_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[28]~71_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~9_cout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[33]~73_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[32]~74_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[31]~68_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[30]~69_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[30]~70_combout\ : std_logic;
SIGNAL \r_in_filter4[0]~input_o\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_6~1_cout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_6~3_cout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_6~5_cout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_6~7_cout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_6~9_cout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \r_in_filter3[6]~input_o\ : std_logic;
SIGNAL \r_in_filter3[5]~input_o\ : std_logic;
SIGNAL \r_in_filter3[4]~input_o\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \r_in_filter3[7]~input_o\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[18]~49_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[18]~48_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[17]~51_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[17]~50_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[16]~52_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[16]~53_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[15]~55_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[15]~54_combout\ : std_logic;
SIGNAL \r_in_filter3[3]~input_o\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_3~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[23]~75_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[23]~56_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[22]~76_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[22]~57_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[21]~58_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[21]~77_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[20]~59_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[20]~60_combout\ : std_logic;
SIGNAL \r_in_filter3[2]~input_o\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_4~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[27]~62_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[27]~72_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[26]~63_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[26]~78_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[25]~65_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[25]~64_combout\ : std_logic;
SIGNAL \r_in_filter3[1]~input_o\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[28]~71_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[28]~61_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[33]~73_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[32]~74_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[31]~68_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[30]~69_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[30]~70_combout\ : std_logic;
SIGNAL \r_in_filter3[0]~input_o\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_6~1_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_6~3_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_6~5_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_6~7_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_6~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \r_in_filter2[7]~input_o\ : std_logic;
SIGNAL \r_in_filter2[6]~input_o\ : std_logic;
SIGNAL \r_in_filter2[5]~input_o\ : std_logic;
SIGNAL \r_in_filter2[4]~input_o\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~48_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~49_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~51_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~50_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~52_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~53_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~55_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~54_combout\ : std_logic;
SIGNAL \r_in_filter2[3]~input_o\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~75_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~56_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~57_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~76_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~58_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~77_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~60_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~59_combout\ : std_logic;
SIGNAL \r_in_filter2[2]~input_o\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~72_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~62_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~78_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~63_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~64_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~65_combout\ : std_logic;
SIGNAL \r_in_filter2[1]~input_o\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~71_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~61_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~73_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~74_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~68_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~69_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~70_combout\ : std_logic;
SIGNAL \r_in_filter2[0]~input_o\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_6~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_6~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_6~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_6~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_6~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \r_in_filter5[1]~input_o\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \r_in_filter5[7]~input_o\ : std_logic;
SIGNAL \r_in_filter5[6]~input_o\ : std_logic;
SIGNAL \r_in_filter5[5]~input_o\ : std_logic;
SIGNAL \r_in_filter5[4]~input_o\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_3~8_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[18]~76_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[18]~77_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[17]~78_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[17]~79_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[16]~80_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[16]~81_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[15]~82_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[15]~83_combout\ : std_logic;
SIGNAL \r_in_filter5[3]~input_o\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_4~9_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[22]~122_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[22]~85_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[21]~86_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[21]~123_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[20]~88_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[20]~87_combout\ : std_logic;
SIGNAL \r_in_filter5[2]~input_o\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[23]~84_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[23]~121_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~9_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[28]~89_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[28]~111_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[27]~112_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[27]~90_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[26]~124_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[26]~91_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[25]~92_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[25]~93_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_6~1\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_6~9_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[33]~94_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[33]~113_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[32]~114_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[32]~95_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[31]~96_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[31]~125_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[30]~98_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[30]~97_combout\ : std_logic;
SIGNAL \r_in_filter5[0]~input_o\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_7~1\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_7~5\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_7~7\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_7~9_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_7~10_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[36]~126_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[36]~101_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[35]~102_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_7~0_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[35]~103_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_8~1\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_8~2_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[38]~99_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[38]~115_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[37]~100_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[37]~116_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_8~3\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_8~5\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_8~7_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_8~8_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[42]~118_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[43]~117_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_8~4_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[43]~104_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[42]~105_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_8~0_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[41]~106_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[41]~127_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_9~1_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_9~3\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_9~5\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_9~7_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_9~8_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[48]~119_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_9~4_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[48]~107_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[47]~120_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_9~2_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[47]~108_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[46]~109_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[46]~110_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_1~1_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_1~3_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_1~5_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_1~7_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_1~8_combout\ : std_logic;
SIGNAL \r_in_filter1[5]~input_o\ : std_logic;
SIGNAL \r_in_filter1[4]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \r_in_filter1[7]~input_o\ : std_logic;
SIGNAL \r_in_filter1[6]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~49_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~48_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~51_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~50_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~53_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~52_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~54_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~55_combout\ : std_logic;
SIGNAL \r_in_filter1[3]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~76_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~57_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~77_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~58_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~59_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~60_combout\ : std_logic;
SIGNAL \r_in_filter1[2]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~75_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~56_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~61_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~71_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~62_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~72_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~63_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~78_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~65_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~64_combout\ : std_logic;
SIGNAL \r_in_filter1[1]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~73_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~74_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~68_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~70_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~69_combout\ : std_logic;
SIGNAL \r_in_filter1[0]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_r_in_filter1 <= r_in_filter1;
ww_r_in_filter2 <= r_in_filter2;
ww_r_in_filter3 <= r_in_filter3;
ww_r_in_filter4 <= r_in_filter4;
ww_r_in_filter5 <= r_in_filter5;
ww_r_in_filter6 <= r_in_filter6;
ww_r_in_filter7 <= r_in_filter7;
ww_r_in_filter8 <= r_in_filter8;
ww_r_in_filter9 <= r_in_filter9;
r_out_filter <= ww_r_out_filter;
g_out_filter <= ww_g_out_filter;
b_out_filter <= ww_b_out_filter;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y0_N23
\r_out_filter[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~0_combout\,
	devoe => ww_devoe,
	o => \r_out_filter[0]~output_o\);

-- Location: IOOBUF_X34_Y5_N16
\r_out_filter[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~2_combout\,
	devoe => ww_devoe,
	o => \r_out_filter[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\r_out_filter[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~4_combout\,
	devoe => ww_devoe,
	o => \r_out_filter[2]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\r_out_filter[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~6_combout\,
	devoe => ww_devoe,
	o => \r_out_filter[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\r_out_filter[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~8_combout\,
	devoe => ww_devoe,
	o => \r_out_filter[4]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\r_out_filter[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~10_combout\,
	devoe => ww_devoe,
	o => \r_out_filter[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\r_out_filter[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~12_combout\,
	devoe => ww_devoe,
	o => \r_out_filter[6]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\r_out_filter[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~14_combout\,
	devoe => ww_devoe,
	o => \r_out_filter[7]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\g_out_filter[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~0_combout\,
	devoe => ww_devoe,
	o => \g_out_filter[0]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\g_out_filter[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~2_combout\,
	devoe => ww_devoe,
	o => \g_out_filter[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\g_out_filter[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~4_combout\,
	devoe => ww_devoe,
	o => \g_out_filter[2]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\g_out_filter[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~6_combout\,
	devoe => ww_devoe,
	o => \g_out_filter[3]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\g_out_filter[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~8_combout\,
	devoe => ww_devoe,
	o => \g_out_filter[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\g_out_filter[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~10_combout\,
	devoe => ww_devoe,
	o => \g_out_filter[5]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\g_out_filter[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~12_combout\,
	devoe => ww_devoe,
	o => \g_out_filter[6]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\g_out_filter[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~14_combout\,
	devoe => ww_devoe,
	o => \g_out_filter[7]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\b_out_filter[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~0_combout\,
	devoe => ww_devoe,
	o => \b_out_filter[0]~output_o\);

-- Location: IOOBUF_X34_Y3_N16
\b_out_filter[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~2_combout\,
	devoe => ww_devoe,
	o => \b_out_filter[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\b_out_filter[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~4_combout\,
	devoe => ww_devoe,
	o => \b_out_filter[2]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\b_out_filter[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~6_combout\,
	devoe => ww_devoe,
	o => \b_out_filter[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\b_out_filter[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~8_combout\,
	devoe => ww_devoe,
	o => \b_out_filter[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\b_out_filter[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~10_combout\,
	devoe => ww_devoe,
	o => \b_out_filter[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\b_out_filter[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~12_combout\,
	devoe => ww_devoe,
	o => \b_out_filter[6]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\b_out_filter[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~14_combout\,
	devoe => ww_devoe,
	o => \b_out_filter[7]~output_o\);

-- Location: IOIBUF_X34_Y11_N8
\r_in_filter9[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter9(4),
	o => \r_in_filter9[4]~input_o\);

-- Location: LCCOMB_X24_Y14_N14
\Div8|auto_generated|divider|divider|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_2~0_combout\ = \r_in_filter9[4]~input_o\ $ (VCC)
-- \Div8|auto_generated|divider|divider|op_2~1\ = CARRY(\r_in_filter9[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter9[4]~input_o\,
	datad => VCC,
	combout => \Div8|auto_generated|divider|divider|op_2~0_combout\,
	cout => \Div8|auto_generated|divider|divider|op_2~1\);

-- Location: IOIBUF_X34_Y10_N8
\r_in_filter9[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter9(7),
	o => \r_in_filter9[7]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\r_in_filter9[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter9(6),
	o => \r_in_filter9[6]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\r_in_filter9[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter9(5),
	o => \r_in_filter9[5]~input_o\);

-- Location: LCCOMB_X24_Y14_N16
\Div8|auto_generated|divider|divider|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_2~2_combout\ = (\r_in_filter9[5]~input_o\ & (\Div8|auto_generated|divider|divider|op_2~1\ & VCC)) # (!\r_in_filter9[5]~input_o\ & (!\Div8|auto_generated|divider|divider|op_2~1\))
-- \Div8|auto_generated|divider|divider|op_2~3\ = CARRY((!\r_in_filter9[5]~input_o\ & !\Div8|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter9[5]~input_o\,
	datad => VCC,
	cin => \Div8|auto_generated|divider|divider|op_2~1\,
	combout => \Div8|auto_generated|divider|divider|op_2~2_combout\,
	cout => \Div8|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X24_Y14_N18
\Div8|auto_generated|divider|divider|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_2~4_combout\ = (\r_in_filter9[6]~input_o\ & ((GND) # (!\Div8|auto_generated|divider|divider|op_2~3\))) # (!\r_in_filter9[6]~input_o\ & (\Div8|auto_generated|divider|divider|op_2~3\ $ (GND)))
-- \Div8|auto_generated|divider|divider|op_2~5\ = CARRY((\r_in_filter9[6]~input_o\) # (!\Div8|auto_generated|divider|divider|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter9[6]~input_o\,
	datad => VCC,
	cin => \Div8|auto_generated|divider|divider|op_2~3\,
	combout => \Div8|auto_generated|divider|divider|op_2~4_combout\,
	cout => \Div8|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X24_Y14_N20
\Div8|auto_generated|divider|divider|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_2~6_combout\ = (\r_in_filter9[7]~input_o\ & (!\Div8|auto_generated|divider|divider|op_2~5\)) # (!\r_in_filter9[7]~input_o\ & ((\Div8|auto_generated|divider|divider|op_2~5\) # (GND)))
-- \Div8|auto_generated|divider|divider|op_2~7\ = CARRY((!\Div8|auto_generated|divider|divider|op_2~5\) # (!\r_in_filter9[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter9[7]~input_o\,
	datad => VCC,
	cin => \Div8|auto_generated|divider|divider|op_2~5\,
	combout => \Div8|auto_generated|divider|divider|op_2~6_combout\,
	cout => \Div8|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X24_Y14_N22
\Div8|auto_generated|divider|divider|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_2~8_combout\ = \Div8|auto_generated|divider|divider|op_2~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div8|auto_generated|divider|divider|op_2~7\,
	combout => \Div8|auto_generated|divider|divider|op_2~8_combout\);

-- Location: LCCOMB_X24_Y14_N0
\Div8|auto_generated|divider|divider|StageOut[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[15]~55_combout\ = (\Div8|auto_generated|divider|divider|op_2~0_combout\ & !\Div8|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div8|auto_generated|divider|divider|op_2~0_combout\,
	datac => \Div8|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div8|auto_generated|divider|divider|StageOut[15]~55_combout\);

-- Location: LCCOMB_X24_Y14_N4
\Div8|auto_generated|divider|divider|StageOut[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[15]~54_combout\ = (\Div8|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter9[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div8|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter9[4]~input_o\,
	combout => \Div8|auto_generated|divider|divider|StageOut[15]~54_combout\);

-- Location: IOIBUF_X34_Y18_N15
\r_in_filter9[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter9(3),
	o => \r_in_filter9[3]~input_o\);

-- Location: LCCOMB_X24_Y13_N12
\Div8|auto_generated|divider|divider|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_3~0_combout\ = \r_in_filter9[3]~input_o\ $ (VCC)
-- \Div8|auto_generated|divider|divider|op_3~1\ = CARRY(\r_in_filter9[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter9[3]~input_o\,
	datad => VCC,
	combout => \Div8|auto_generated|divider|divider|op_3~0_combout\,
	cout => \Div8|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X24_Y13_N14
\Div8|auto_generated|divider|divider|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_3~2_combout\ = (\Div8|auto_generated|divider|divider|op_3~1\ & (((\Div8|auto_generated|divider|divider|StageOut[15]~55_combout\) # (\Div8|auto_generated|divider|divider|StageOut[15]~54_combout\)))) # 
-- (!\Div8|auto_generated|divider|divider|op_3~1\ & (!\Div8|auto_generated|divider|divider|StageOut[15]~55_combout\ & (!\Div8|auto_generated|divider|divider|StageOut[15]~54_combout\)))
-- \Div8|auto_generated|divider|divider|op_3~3\ = CARRY((!\Div8|auto_generated|divider|divider|StageOut[15]~55_combout\ & (!\Div8|auto_generated|divider|divider|StageOut[15]~54_combout\ & !\Div8|auto_generated|divider|divider|op_3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|StageOut[15]~55_combout\,
	datab => \Div8|auto_generated|divider|divider|StageOut[15]~54_combout\,
	datad => VCC,
	cin => \Div8|auto_generated|divider|divider|op_3~1\,
	combout => \Div8|auto_generated|divider|divider|op_3~2_combout\,
	cout => \Div8|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X24_Y14_N24
\Div8|auto_generated|divider|divider|StageOut[18]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[18]~48_combout\ = (\Div8|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter9[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|op_2~8_combout\,
	datac => \r_in_filter9[7]~input_o\,
	combout => \Div8|auto_generated|divider|divider|StageOut[18]~48_combout\);

-- Location: LCCOMB_X24_Y14_N10
\Div8|auto_generated|divider|divider|StageOut[18]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[18]~49_combout\ = (!\Div8|auto_generated|divider|divider|op_2~8_combout\ & \Div8|auto_generated|divider|divider|op_2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div8|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div8|auto_generated|divider|divider|op_2~6_combout\,
	combout => \Div8|auto_generated|divider|divider|StageOut[18]~49_combout\);

-- Location: LCCOMB_X24_Y14_N30
\Div8|auto_generated|divider|divider|StageOut[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[17]~51_combout\ = (!\Div8|auto_generated|divider|divider|op_2~8_combout\ & \Div8|auto_generated|divider|divider|op_2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div8|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div8|auto_generated|divider|divider|op_2~4_combout\,
	combout => \Div8|auto_generated|divider|divider|StageOut[17]~51_combout\);

-- Location: LCCOMB_X24_Y14_N28
\Div8|auto_generated|divider|divider|StageOut[17]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[17]~50_combout\ = (\Div8|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter9[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div8|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter9[6]~input_o\,
	combout => \Div8|auto_generated|divider|divider|StageOut[17]~50_combout\);

-- Location: LCCOMB_X24_Y14_N8
\Div8|auto_generated|divider|divider|StageOut[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[16]~52_combout\ = (\Div8|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter9[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div8|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter9[5]~input_o\,
	combout => \Div8|auto_generated|divider|divider|StageOut[16]~52_combout\);

-- Location: LCCOMB_X24_Y14_N26
\Div8|auto_generated|divider|divider|StageOut[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[16]~53_combout\ = (!\Div8|auto_generated|divider|divider|op_2~8_combout\ & \Div8|auto_generated|divider|divider|op_2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div8|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div8|auto_generated|divider|divider|op_2~2_combout\,
	combout => \Div8|auto_generated|divider|divider|StageOut[16]~53_combout\);

-- Location: LCCOMB_X24_Y13_N16
\Div8|auto_generated|divider|divider|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_3~4_combout\ = (\Div8|auto_generated|divider|divider|op_3~3\ & ((((\Div8|auto_generated|divider|divider|StageOut[16]~52_combout\) # (\Div8|auto_generated|divider|divider|StageOut[16]~53_combout\))))) # 
-- (!\Div8|auto_generated|divider|divider|op_3~3\ & ((\Div8|auto_generated|divider|divider|StageOut[16]~52_combout\) # ((\Div8|auto_generated|divider|divider|StageOut[16]~53_combout\) # (GND))))
-- \Div8|auto_generated|divider|divider|op_3~5\ = CARRY((\Div8|auto_generated|divider|divider|StageOut[16]~52_combout\) # ((\Div8|auto_generated|divider|divider|StageOut[16]~53_combout\) # (!\Div8|auto_generated|divider|divider|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|StageOut[16]~52_combout\,
	datab => \Div8|auto_generated|divider|divider|StageOut[16]~53_combout\,
	datad => VCC,
	cin => \Div8|auto_generated|divider|divider|op_3~3\,
	combout => \Div8|auto_generated|divider|divider|op_3~4_combout\,
	cout => \Div8|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X24_Y13_N18
\Div8|auto_generated|divider|divider|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_3~6_combout\ = (\Div8|auto_generated|divider|divider|StageOut[17]~51_combout\ & (((!\Div8|auto_generated|divider|divider|op_3~5\)))) # (!\Div8|auto_generated|divider|divider|StageOut[17]~51_combout\ & 
-- ((\Div8|auto_generated|divider|divider|StageOut[17]~50_combout\ & (!\Div8|auto_generated|divider|divider|op_3~5\)) # (!\Div8|auto_generated|divider|divider|StageOut[17]~50_combout\ & ((\Div8|auto_generated|divider|divider|op_3~5\) # (GND)))))
-- \Div8|auto_generated|divider|divider|op_3~7\ = CARRY(((!\Div8|auto_generated|divider|divider|StageOut[17]~51_combout\ & !\Div8|auto_generated|divider|divider|StageOut[17]~50_combout\)) # (!\Div8|auto_generated|divider|divider|op_3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|StageOut[17]~51_combout\,
	datab => \Div8|auto_generated|divider|divider|StageOut[17]~50_combout\,
	datad => VCC,
	cin => \Div8|auto_generated|divider|divider|op_3~5\,
	combout => \Div8|auto_generated|divider|divider|op_3~6_combout\,
	cout => \Div8|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X24_Y13_N20
\Div8|auto_generated|divider|divider|op_3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_3~9_cout\ = CARRY((\Div8|auto_generated|divider|divider|StageOut[18]~48_combout\) # ((\Div8|auto_generated|divider|divider|StageOut[18]~49_combout\) # (!\Div8|auto_generated|divider|divider|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|StageOut[18]~48_combout\,
	datab => \Div8|auto_generated|divider|divider|StageOut[18]~49_combout\,
	datad => VCC,
	cin => \Div8|auto_generated|divider|divider|op_3~7\,
	cout => \Div8|auto_generated|divider|divider|op_3~9_cout\);

-- Location: LCCOMB_X24_Y13_N22
\Div8|auto_generated|divider|divider|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_3~10_combout\ = !\Div8|auto_generated|divider|divider|op_3~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div8|auto_generated|divider|divider|op_3~9_cout\,
	combout => \Div8|auto_generated|divider|divider|op_3~10_combout\);

-- Location: LCCOMB_X24_Y12_N30
\Div8|auto_generated|divider|divider|StageOut[21]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[21]~58_combout\ = (\Div8|auto_generated|divider|divider|op_3~2_combout\ & !\Div8|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div8|auto_generated|divider|divider|op_3~2_combout\,
	datad => \Div8|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div8|auto_generated|divider|divider|StageOut[21]~58_combout\);

-- Location: LCCOMB_X24_Y14_N6
\Div8|auto_generated|divider|divider|StageOut[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[21]~77_combout\ = (\Div8|auto_generated|divider|divider|op_3~10_combout\ & ((\Div8|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter9[4]~input_o\))) # 
-- (!\Div8|auto_generated|divider|divider|op_2~8_combout\ & (\Div8|auto_generated|divider|divider|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|op_3~10_combout\,
	datab => \Div8|auto_generated|divider|divider|op_2~0_combout\,
	datac => \Div8|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter9[4]~input_o\,
	combout => \Div8|auto_generated|divider|divider|StageOut[21]~77_combout\);

-- Location: LCCOMB_X24_Y13_N2
\Div8|auto_generated|divider|divider|StageOut[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[20]~59_combout\ = (\Div8|auto_generated|divider|divider|op_3~10_combout\ & \r_in_filter9[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div8|auto_generated|divider|divider|op_3~10_combout\,
	datad => \r_in_filter9[3]~input_o\,
	combout => \Div8|auto_generated|divider|divider|StageOut[20]~59_combout\);

-- Location: LCCOMB_X24_Y13_N28
\Div8|auto_generated|divider|divider|StageOut[20]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[20]~60_combout\ = (!\Div8|auto_generated|divider|divider|op_3~10_combout\ & \Div8|auto_generated|divider|divider|op_3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div8|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div8|auto_generated|divider|divider|op_3~0_combout\,
	combout => \Div8|auto_generated|divider|divider|StageOut[20]~60_combout\);

-- Location: IOIBUF_X34_Y11_N1
\r_in_filter9[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter9(2),
	o => \r_in_filter9[2]~input_o\);

-- Location: LCCOMB_X24_Y12_N2
\Div8|auto_generated|divider|divider|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_4~0_combout\ = \r_in_filter9[2]~input_o\ $ (VCC)
-- \Div8|auto_generated|divider|divider|op_4~1\ = CARRY(\r_in_filter9[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter9[2]~input_o\,
	datad => VCC,
	combout => \Div8|auto_generated|divider|divider|op_4~0_combout\,
	cout => \Div8|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X24_Y12_N4
\Div8|auto_generated|divider|divider|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_4~2_combout\ = (\Div8|auto_generated|divider|divider|op_4~1\ & (((\Div8|auto_generated|divider|divider|StageOut[20]~59_combout\) # (\Div8|auto_generated|divider|divider|StageOut[20]~60_combout\)))) # 
-- (!\Div8|auto_generated|divider|divider|op_4~1\ & (!\Div8|auto_generated|divider|divider|StageOut[20]~59_combout\ & (!\Div8|auto_generated|divider|divider|StageOut[20]~60_combout\)))
-- \Div8|auto_generated|divider|divider|op_4~3\ = CARRY((!\Div8|auto_generated|divider|divider|StageOut[20]~59_combout\ & (!\Div8|auto_generated|divider|divider|StageOut[20]~60_combout\ & !\Div8|auto_generated|divider|divider|op_4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|StageOut[20]~59_combout\,
	datab => \Div8|auto_generated|divider|divider|StageOut[20]~60_combout\,
	datad => VCC,
	cin => \Div8|auto_generated|divider|divider|op_4~1\,
	combout => \Div8|auto_generated|divider|divider|op_4~2_combout\,
	cout => \Div8|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X24_Y12_N6
\Div8|auto_generated|divider|divider|op_4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_4~4_combout\ = (\Div8|auto_generated|divider|divider|op_4~3\ & ((((\Div8|auto_generated|divider|divider|StageOut[21]~58_combout\) # (\Div8|auto_generated|divider|divider|StageOut[21]~77_combout\))))) # 
-- (!\Div8|auto_generated|divider|divider|op_4~3\ & ((\Div8|auto_generated|divider|divider|StageOut[21]~58_combout\) # ((\Div8|auto_generated|divider|divider|StageOut[21]~77_combout\) # (GND))))
-- \Div8|auto_generated|divider|divider|op_4~5\ = CARRY((\Div8|auto_generated|divider|divider|StageOut[21]~58_combout\) # ((\Div8|auto_generated|divider|divider|StageOut[21]~77_combout\) # (!\Div8|auto_generated|divider|divider|op_4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|StageOut[21]~58_combout\,
	datab => \Div8|auto_generated|divider|divider|StageOut[21]~77_combout\,
	datad => VCC,
	cin => \Div8|auto_generated|divider|divider|op_4~3\,
	combout => \Div8|auto_generated|divider|divider|op_4~4_combout\,
	cout => \Div8|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X24_Y14_N12
\Div8|auto_generated|divider|divider|StageOut[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[22]~76_combout\ = (\Div8|auto_generated|divider|divider|op_3~10_combout\ & ((\Div8|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter9[5]~input_o\))) # 
-- (!\Div8|auto_generated|divider|divider|op_2~8_combout\ & (\Div8|auto_generated|divider|divider|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|op_3~10_combout\,
	datab => \Div8|auto_generated|divider|divider|op_2~2_combout\,
	datac => \Div8|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter9[5]~input_o\,
	combout => \Div8|auto_generated|divider|divider|StageOut[22]~76_combout\);

-- Location: LCCOMB_X24_Y14_N2
\Div8|auto_generated|divider|divider|StageOut[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[23]~75_combout\ = (\Div8|auto_generated|divider|divider|op_3~10_combout\ & ((\Div8|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter9[6]~input_o\))) # 
-- (!\Div8|auto_generated|divider|divider|op_2~8_combout\ & (\Div8|auto_generated|divider|divider|op_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|op_3~10_combout\,
	datab => \Div8|auto_generated|divider|divider|op_2~4_combout\,
	datac => \Div8|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter9[6]~input_o\,
	combout => \Div8|auto_generated|divider|divider|StageOut[23]~75_combout\);

-- Location: LCCOMB_X24_Y13_N8
\Div8|auto_generated|divider|divider|StageOut[23]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[23]~56_combout\ = (!\Div8|auto_generated|divider|divider|op_3~10_combout\ & \Div8|auto_generated|divider|divider|op_3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div8|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div8|auto_generated|divider|divider|op_3~6_combout\,
	combout => \Div8|auto_generated|divider|divider|StageOut[23]~56_combout\);

-- Location: LCCOMB_X24_Y12_N24
\Div8|auto_generated|divider|divider|StageOut[22]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[22]~57_combout\ = (\Div8|auto_generated|divider|divider|op_3~4_combout\ & !\Div8|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|op_3~4_combout\,
	datad => \Div8|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div8|auto_generated|divider|divider|StageOut[22]~57_combout\);

-- Location: LCCOMB_X24_Y12_N8
\Div8|auto_generated|divider|divider|op_4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_4~6_combout\ = (\Div8|auto_generated|divider|divider|StageOut[22]~57_combout\ & (((!\Div8|auto_generated|divider|divider|op_4~5\)))) # (!\Div8|auto_generated|divider|divider|StageOut[22]~57_combout\ & 
-- ((\Div8|auto_generated|divider|divider|StageOut[22]~76_combout\ & (!\Div8|auto_generated|divider|divider|op_4~5\)) # (!\Div8|auto_generated|divider|divider|StageOut[22]~76_combout\ & ((\Div8|auto_generated|divider|divider|op_4~5\) # (GND)))))
-- \Div8|auto_generated|divider|divider|op_4~7\ = CARRY(((!\Div8|auto_generated|divider|divider|StageOut[22]~57_combout\ & !\Div8|auto_generated|divider|divider|StageOut[22]~76_combout\)) # (!\Div8|auto_generated|divider|divider|op_4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|StageOut[22]~57_combout\,
	datab => \Div8|auto_generated|divider|divider|StageOut[22]~76_combout\,
	datad => VCC,
	cin => \Div8|auto_generated|divider|divider|op_4~5\,
	combout => \Div8|auto_generated|divider|divider|op_4~6_combout\,
	cout => \Div8|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X24_Y12_N10
\Div8|auto_generated|divider|divider|op_4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_4~9_cout\ = CARRY((\Div8|auto_generated|divider|divider|StageOut[23]~75_combout\) # ((\Div8|auto_generated|divider|divider|StageOut[23]~56_combout\) # (!\Div8|auto_generated|divider|divider|op_4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|StageOut[23]~75_combout\,
	datab => \Div8|auto_generated|divider|divider|StageOut[23]~56_combout\,
	datad => VCC,
	cin => \Div8|auto_generated|divider|divider|op_4~7\,
	cout => \Div8|auto_generated|divider|divider|op_4~9_cout\);

-- Location: LCCOMB_X24_Y12_N12
\Div8|auto_generated|divider|divider|op_4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_4~10_combout\ = !\Div8|auto_generated|divider|divider|op_4~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div8|auto_generated|divider|divider|op_4~9_cout\,
	combout => \Div8|auto_generated|divider|divider|op_4~10_combout\);

-- Location: LCCOMB_X24_Y12_N16
\Div8|auto_generated|divider|divider|StageOut[28]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[28]~71_combout\ = (\Div8|auto_generated|divider|divider|op_4~10_combout\ & ((\Div8|auto_generated|divider|divider|StageOut[22]~76_combout\) # ((\Div8|auto_generated|divider|divider|op_3~4_combout\ & 
-- !\Div8|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|op_3~4_combout\,
	datab => \Div8|auto_generated|divider|divider|StageOut[22]~76_combout\,
	datac => \Div8|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div8|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div8|auto_generated|divider|divider|StageOut[28]~71_combout\);

-- Location: LCCOMB_X24_Y12_N0
\Div8|auto_generated|divider|divider|StageOut[28]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[28]~61_combout\ = (\Div8|auto_generated|divider|divider|op_4~6_combout\ & !\Div8|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div8|auto_generated|divider|divider|op_4~6_combout\,
	datad => \Div8|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div8|auto_generated|divider|divider|StageOut[28]~61_combout\);

-- Location: LCCOMB_X24_Y12_N26
\Div8|auto_generated|divider|divider|StageOut[27]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[27]~72_combout\ = (\Div8|auto_generated|divider|divider|op_4~10_combout\ & ((\Div8|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((\Div8|auto_generated|divider|divider|op_3~2_combout\ & 
-- !\Div8|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Div8|auto_generated|divider|divider|StageOut[21]~77_combout\,
	datac => \Div8|auto_generated|divider|divider|op_3~2_combout\,
	datad => \Div8|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div8|auto_generated|divider|divider|StageOut[27]~72_combout\);

-- Location: LCCOMB_X24_Y12_N18
\Div8|auto_generated|divider|divider|StageOut[27]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[27]~62_combout\ = (\Div8|auto_generated|divider|divider|op_4~4_combout\ & !\Div8|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|op_4~4_combout\,
	datad => \Div8|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div8|auto_generated|divider|divider|StageOut[27]~62_combout\);

-- Location: LCCOMB_X24_Y13_N30
\Div8|auto_generated|divider|divider|StageOut[26]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[26]~63_combout\ = (\Div8|auto_generated|divider|divider|op_4~2_combout\ & !\Div8|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div8|auto_generated|divider|divider|op_4~2_combout\,
	datad => \Div8|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div8|auto_generated|divider|divider|StageOut[26]~63_combout\);

-- Location: LCCOMB_X24_Y13_N26
\Div8|auto_generated|divider|divider|StageOut[26]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[26]~78_combout\ = (\Div8|auto_generated|divider|divider|op_4~10_combout\ & ((\Div8|auto_generated|divider|divider|op_3~10_combout\ & (\r_in_filter9[3]~input_o\)) # 
-- (!\Div8|auto_generated|divider|divider|op_3~10_combout\ & ((\Div8|auto_generated|divider|divider|op_3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|op_4~10_combout\,
	datab => \r_in_filter9[3]~input_o\,
	datac => \Div8|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div8|auto_generated|divider|divider|op_3~0_combout\,
	combout => \Div8|auto_generated|divider|divider|StageOut[26]~78_combout\);

-- Location: LCCOMB_X24_Y12_N20
\Div8|auto_generated|divider|divider|StageOut[25]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[25]~64_combout\ = (\Div8|auto_generated|divider|divider|op_4~10_combout\ & \r_in_filter9[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|op_4~10_combout\,
	datad => \r_in_filter9[2]~input_o\,
	combout => \Div8|auto_generated|divider|divider|StageOut[25]~64_combout\);

-- Location: LCCOMB_X24_Y12_N22
\Div8|auto_generated|divider|divider|StageOut[25]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[25]~65_combout\ = (\Div8|auto_generated|divider|divider|op_4~0_combout\ & !\Div8|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div8|auto_generated|divider|divider|op_4~0_combout\,
	datad => \Div8|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div8|auto_generated|divider|divider|StageOut[25]~65_combout\);

-- Location: IOIBUF_X23_Y0_N15
\r_in_filter9[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter9(1),
	o => \r_in_filter9[1]~input_o\);

-- Location: LCCOMB_X23_Y12_N14
\Div8|auto_generated|divider|divider|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_5~0_combout\ = \r_in_filter9[1]~input_o\ $ (VCC)
-- \Div8|auto_generated|divider|divider|op_5~1\ = CARRY(\r_in_filter9[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter9[1]~input_o\,
	datad => VCC,
	combout => \Div8|auto_generated|divider|divider|op_5~0_combout\,
	cout => \Div8|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X23_Y12_N16
\Div8|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_5~2_combout\ = (\Div8|auto_generated|divider|divider|op_5~1\ & (((\Div8|auto_generated|divider|divider|StageOut[25]~64_combout\) # (\Div8|auto_generated|divider|divider|StageOut[25]~65_combout\)))) # 
-- (!\Div8|auto_generated|divider|divider|op_5~1\ & (!\Div8|auto_generated|divider|divider|StageOut[25]~64_combout\ & (!\Div8|auto_generated|divider|divider|StageOut[25]~65_combout\)))
-- \Div8|auto_generated|divider|divider|op_5~3\ = CARRY((!\Div8|auto_generated|divider|divider|StageOut[25]~64_combout\ & (!\Div8|auto_generated|divider|divider|StageOut[25]~65_combout\ & !\Div8|auto_generated|divider|divider|op_5~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|StageOut[25]~64_combout\,
	datab => \Div8|auto_generated|divider|divider|StageOut[25]~65_combout\,
	datad => VCC,
	cin => \Div8|auto_generated|divider|divider|op_5~1\,
	combout => \Div8|auto_generated|divider|divider|op_5~2_combout\,
	cout => \Div8|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X23_Y12_N18
\Div8|auto_generated|divider|divider|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_5~4_combout\ = (\Div8|auto_generated|divider|divider|op_5~3\ & ((((\Div8|auto_generated|divider|divider|StageOut[26]~63_combout\) # (\Div8|auto_generated|divider|divider|StageOut[26]~78_combout\))))) # 
-- (!\Div8|auto_generated|divider|divider|op_5~3\ & ((\Div8|auto_generated|divider|divider|StageOut[26]~63_combout\) # ((\Div8|auto_generated|divider|divider|StageOut[26]~78_combout\) # (GND))))
-- \Div8|auto_generated|divider|divider|op_5~5\ = CARRY((\Div8|auto_generated|divider|divider|StageOut[26]~63_combout\) # ((\Div8|auto_generated|divider|divider|StageOut[26]~78_combout\) # (!\Div8|auto_generated|divider|divider|op_5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|StageOut[26]~63_combout\,
	datab => \Div8|auto_generated|divider|divider|StageOut[26]~78_combout\,
	datad => VCC,
	cin => \Div8|auto_generated|divider|divider|op_5~3\,
	combout => \Div8|auto_generated|divider|divider|op_5~4_combout\,
	cout => \Div8|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X23_Y12_N20
\Div8|auto_generated|divider|divider|op_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_5~6_combout\ = (\Div8|auto_generated|divider|divider|StageOut[27]~72_combout\ & (((!\Div8|auto_generated|divider|divider|op_5~5\)))) # (!\Div8|auto_generated|divider|divider|StageOut[27]~72_combout\ & 
-- ((\Div8|auto_generated|divider|divider|StageOut[27]~62_combout\ & (!\Div8|auto_generated|divider|divider|op_5~5\)) # (!\Div8|auto_generated|divider|divider|StageOut[27]~62_combout\ & ((\Div8|auto_generated|divider|divider|op_5~5\) # (GND)))))
-- \Div8|auto_generated|divider|divider|op_5~7\ = CARRY(((!\Div8|auto_generated|divider|divider|StageOut[27]~72_combout\ & !\Div8|auto_generated|divider|divider|StageOut[27]~62_combout\)) # (!\Div8|auto_generated|divider|divider|op_5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|StageOut[27]~72_combout\,
	datab => \Div8|auto_generated|divider|divider|StageOut[27]~62_combout\,
	datad => VCC,
	cin => \Div8|auto_generated|divider|divider|op_5~5\,
	combout => \Div8|auto_generated|divider|divider|op_5~6_combout\,
	cout => \Div8|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X23_Y12_N22
\Div8|auto_generated|divider|divider|op_5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_5~9_cout\ = CARRY((\Div8|auto_generated|divider|divider|StageOut[28]~71_combout\) # ((\Div8|auto_generated|divider|divider|StageOut[28]~61_combout\) # (!\Div8|auto_generated|divider|divider|op_5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|StageOut[28]~71_combout\,
	datab => \Div8|auto_generated|divider|divider|StageOut[28]~61_combout\,
	datad => VCC,
	cin => \Div8|auto_generated|divider|divider|op_5~7\,
	cout => \Div8|auto_generated|divider|divider|op_5~9_cout\);

-- Location: LCCOMB_X23_Y12_N24
\Div8|auto_generated|divider|divider|op_5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_5~10_combout\ = !\Div8|auto_generated|divider|divider|op_5~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div8|auto_generated|divider|divider|op_5~9_cout\,
	combout => \Div8|auto_generated|divider|divider|op_5~10_combout\);

-- Location: LCCOMB_X24_Y12_N28
\Div8|auto_generated|divider|divider|StageOut[33]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[33]~73_combout\ = (\Div8|auto_generated|divider|divider|op_5~10_combout\ & ((\Div8|auto_generated|divider|divider|StageOut[27]~72_combout\) # ((\Div8|auto_generated|divider|divider|op_4~4_combout\ & 
-- !\Div8|auto_generated|divider|divider|op_4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|op_4~4_combout\,
	datab => \Div8|auto_generated|divider|divider|op_5~10_combout\,
	datac => \Div8|auto_generated|divider|divider|StageOut[27]~72_combout\,
	datad => \Div8|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div8|auto_generated|divider|divider|StageOut[33]~73_combout\);

-- Location: LCCOMB_X23_Y12_N28
\Div8|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\Div8|auto_generated|divider|divider|op_5~6_combout\ & !\Div8|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div8|auto_generated|divider|divider|op_5~6_combout\,
	datad => \Div8|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div8|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X24_Y13_N24
\Div8|auto_generated|divider|divider|StageOut[32]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[32]~74_combout\ = (\Div8|auto_generated|divider|divider|op_5~10_combout\ & ((\Div8|auto_generated|divider|divider|StageOut[26]~78_combout\) # ((\Div8|auto_generated|divider|divider|op_4~2_combout\ & 
-- !\Div8|auto_generated|divider|divider|op_4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|op_5~10_combout\,
	datab => \Div8|auto_generated|divider|divider|op_4~2_combout\,
	datac => \Div8|auto_generated|divider|divider|StageOut[26]~78_combout\,
	datad => \Div8|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div8|auto_generated|divider|divider|StageOut[32]~74_combout\);

-- Location: LCCOMB_X23_Y12_N26
\Div8|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\Div8|auto_generated|divider|divider|op_5~4_combout\ & !\Div8|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div8|auto_generated|divider|divider|op_5~4_combout\,
	datad => \Div8|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div8|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X23_Y12_N12
\Div8|auto_generated|divider|divider|StageOut[31]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[31]~68_combout\ = (\Div8|auto_generated|divider|divider|op_5~2_combout\ & !\Div8|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div8|auto_generated|divider|divider|op_5~2_combout\,
	datad => \Div8|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div8|auto_generated|divider|divider|StageOut[31]~68_combout\);

-- Location: LCCOMB_X24_Y12_N14
\Div8|auto_generated|divider|divider|StageOut[31]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[31]~79_combout\ = (\Div8|auto_generated|divider|divider|op_5~10_combout\ & ((\Div8|auto_generated|divider|divider|op_4~10_combout\ & ((\r_in_filter9[2]~input_o\))) # 
-- (!\Div8|auto_generated|divider|divider|op_4~10_combout\ & (\Div8|auto_generated|divider|divider|op_4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Div8|auto_generated|divider|divider|op_4~0_combout\,
	datac => \Div8|auto_generated|divider|divider|op_5~10_combout\,
	datad => \r_in_filter9[2]~input_o\,
	combout => \Div8|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X23_Y12_N30
\Div8|auto_generated|divider|divider|StageOut[30]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[30]~69_combout\ = (\r_in_filter9[1]~input_o\ & \Div8|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_in_filter9[1]~input_o\,
	datad => \Div8|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div8|auto_generated|divider|divider|StageOut[30]~69_combout\);

-- Location: LCCOMB_X25_Y12_N8
\Div8|auto_generated|divider|divider|StageOut[30]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|StageOut[30]~70_combout\ = (\Div8|auto_generated|divider|divider|op_5~0_combout\ & !\Div8|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|op_5~0_combout\,
	datac => \Div8|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div8|auto_generated|divider|divider|StageOut[30]~70_combout\);

-- Location: IOIBUF_X34_Y9_N8
\r_in_filter9[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter9(0),
	o => \r_in_filter9[0]~input_o\);

-- Location: LCCOMB_X23_Y12_N0
\Div8|auto_generated|divider|divider|op_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_6~1_cout\ = CARRY(\r_in_filter9[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter9[0]~input_o\,
	datad => VCC,
	cout => \Div8|auto_generated|divider|divider|op_6~1_cout\);

-- Location: LCCOMB_X23_Y12_N2
\Div8|auto_generated|divider|divider|op_6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_6~3_cout\ = CARRY((!\Div8|auto_generated|divider|divider|StageOut[30]~69_combout\ & (!\Div8|auto_generated|divider|divider|StageOut[30]~70_combout\ & !\Div8|auto_generated|divider|divider|op_6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datab => \Div8|auto_generated|divider|divider|StageOut[30]~70_combout\,
	datad => VCC,
	cin => \Div8|auto_generated|divider|divider|op_6~1_cout\,
	cout => \Div8|auto_generated|divider|divider|op_6~3_cout\);

-- Location: LCCOMB_X23_Y12_N4
\Div8|auto_generated|divider|divider|op_6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_6~5_cout\ = CARRY((\Div8|auto_generated|divider|divider|StageOut[31]~68_combout\) # ((\Div8|auto_generated|divider|divider|StageOut[31]~79_combout\) # (!\Div8|auto_generated|divider|divider|op_6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datab => \Div8|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datad => VCC,
	cin => \Div8|auto_generated|divider|divider|op_6~3_cout\,
	cout => \Div8|auto_generated|divider|divider|op_6~5_cout\);

-- Location: LCCOMB_X23_Y12_N6
\Div8|auto_generated|divider|divider|op_6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_6~7_cout\ = CARRY(((!\Div8|auto_generated|divider|divider|StageOut[32]~74_combout\ & !\Div8|auto_generated|divider|divider|StageOut[32]~67_combout\)) # (!\Div8|auto_generated|divider|divider|op_6~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|StageOut[32]~74_combout\,
	datab => \Div8|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \Div8|auto_generated|divider|divider|op_6~5_cout\,
	cout => \Div8|auto_generated|divider|divider|op_6~7_cout\);

-- Location: LCCOMB_X23_Y12_N8
\Div8|auto_generated|divider|divider|op_6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_6~9_cout\ = CARRY((\Div8|auto_generated|divider|divider|StageOut[33]~73_combout\) # ((\Div8|auto_generated|divider|divider|StageOut[33]~66_combout\) # (!\Div8|auto_generated|divider|divider|op_6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|StageOut[33]~73_combout\,
	datab => \Div8|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datad => VCC,
	cin => \Div8|auto_generated|divider|divider|op_6~7_cout\,
	cout => \Div8|auto_generated|divider|divider|op_6~9_cout\);

-- Location: LCCOMB_X23_Y12_N10
\Div8|auto_generated|divider|divider|op_6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div8|auto_generated|divider|divider|op_6~10_combout\ = !\Div8|auto_generated|divider|divider|op_6~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div8|auto_generated|divider|divider|op_6~9_cout\,
	combout => \Div8|auto_generated|divider|divider|op_6~10_combout\);

-- Location: IOIBUF_X34_Y7_N8
\r_in_filter8[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter8(7),
	o => \r_in_filter8[7]~input_o\);

-- Location: IOIBUF_X34_Y8_N22
\r_in_filter8[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter8(6),
	o => \r_in_filter8[6]~input_o\);

-- Location: IOIBUF_X34_Y8_N15
\r_in_filter8[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter8(5),
	o => \r_in_filter8[5]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\r_in_filter8[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter8(4),
	o => \r_in_filter8[4]~input_o\);

-- Location: LCCOMB_X29_Y8_N18
\Div7|auto_generated|divider|divider|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_2~0_combout\ = \r_in_filter8[4]~input_o\ $ (VCC)
-- \Div7|auto_generated|divider|divider|op_2~1\ = CARRY(\r_in_filter8[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter8[4]~input_o\,
	datad => VCC,
	combout => \Div7|auto_generated|divider|divider|op_2~0_combout\,
	cout => \Div7|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X29_Y8_N20
\Div7|auto_generated|divider|divider|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_2~2_combout\ = (\r_in_filter8[5]~input_o\ & (\Div7|auto_generated|divider|divider|op_2~1\ & VCC)) # (!\r_in_filter8[5]~input_o\ & (!\Div7|auto_generated|divider|divider|op_2~1\))
-- \Div7|auto_generated|divider|divider|op_2~3\ = CARRY((!\r_in_filter8[5]~input_o\ & !\Div7|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter8[5]~input_o\,
	datad => VCC,
	cin => \Div7|auto_generated|divider|divider|op_2~1\,
	combout => \Div7|auto_generated|divider|divider|op_2~2_combout\,
	cout => \Div7|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X29_Y8_N22
\Div7|auto_generated|divider|divider|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_2~4_combout\ = (\r_in_filter8[6]~input_o\ & ((GND) # (!\Div7|auto_generated|divider|divider|op_2~3\))) # (!\r_in_filter8[6]~input_o\ & (\Div7|auto_generated|divider|divider|op_2~3\ $ (GND)))
-- \Div7|auto_generated|divider|divider|op_2~5\ = CARRY((\r_in_filter8[6]~input_o\) # (!\Div7|auto_generated|divider|divider|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter8[6]~input_o\,
	datad => VCC,
	cin => \Div7|auto_generated|divider|divider|op_2~3\,
	combout => \Div7|auto_generated|divider|divider|op_2~4_combout\,
	cout => \Div7|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X29_Y8_N24
\Div7|auto_generated|divider|divider|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_2~6_combout\ = (\r_in_filter8[7]~input_o\ & (!\Div7|auto_generated|divider|divider|op_2~5\)) # (!\r_in_filter8[7]~input_o\ & ((\Div7|auto_generated|divider|divider|op_2~5\) # (GND)))
-- \Div7|auto_generated|divider|divider|op_2~7\ = CARRY((!\Div7|auto_generated|divider|divider|op_2~5\) # (!\r_in_filter8[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter8[7]~input_o\,
	datad => VCC,
	cin => \Div7|auto_generated|divider|divider|op_2~5\,
	combout => \Div7|auto_generated|divider|divider|op_2~6_combout\,
	cout => \Div7|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X29_Y8_N26
\Div7|auto_generated|divider|divider|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_2~8_combout\ = \Div7|auto_generated|divider|divider|op_2~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div7|auto_generated|divider|divider|op_2~7\,
	combout => \Div7|auto_generated|divider|divider|op_2~8_combout\);

-- Location: LCCOMB_X29_Y8_N4
\Div7|auto_generated|divider|divider|StageOut[17]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[17]~50_combout\ = (\Div7|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter8[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|op_2~8_combout\,
	datac => \r_in_filter8[6]~input_o\,
	combout => \Div7|auto_generated|divider|divider|StageOut[17]~50_combout\);

-- Location: LCCOMB_X29_Y8_N14
\Div7|auto_generated|divider|divider|StageOut[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[17]~51_combout\ = (!\Div7|auto_generated|divider|divider|op_2~8_combout\ & \Div7|auto_generated|divider|divider|op_2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div7|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div7|auto_generated|divider|divider|op_2~4_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[17]~51_combout\);

-- Location: LCCOMB_X29_Y8_N10
\Div7|auto_generated|divider|divider|StageOut[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[16]~53_combout\ = (!\Div7|auto_generated|divider|divider|op_2~8_combout\ & \Div7|auto_generated|divider|divider|op_2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div7|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div7|auto_generated|divider|divider|op_2~2_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[16]~53_combout\);

-- Location: LCCOMB_X29_Y8_N16
\Div7|auto_generated|divider|divider|StageOut[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[16]~52_combout\ = (\Div7|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter8[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div7|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter8[5]~input_o\,
	combout => \Div7|auto_generated|divider|divider|StageOut[16]~52_combout\);

-- Location: LCCOMB_X29_Y8_N30
\Div7|auto_generated|divider|divider|StageOut[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[15]~55_combout\ = (!\Div7|auto_generated|divider|divider|op_2~8_combout\ & \Div7|auto_generated|divider|divider|op_2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div7|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div7|auto_generated|divider|divider|op_2~0_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[15]~55_combout\);

-- Location: LCCOMB_X29_Y8_N28
\Div7|auto_generated|divider|divider|StageOut[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[15]~54_combout\ = (\Div7|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter8[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div7|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter8[4]~input_o\,
	combout => \Div7|auto_generated|divider|divider|StageOut[15]~54_combout\);

-- Location: IOIBUF_X34_Y8_N8
\r_in_filter8[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter8(3),
	o => \r_in_filter8[3]~input_o\);

-- Location: LCCOMB_X28_Y8_N20
\Div7|auto_generated|divider|divider|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_3~0_combout\ = \r_in_filter8[3]~input_o\ $ (VCC)
-- \Div7|auto_generated|divider|divider|op_3~1\ = CARRY(\r_in_filter8[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter8[3]~input_o\,
	datad => VCC,
	combout => \Div7|auto_generated|divider|divider|op_3~0_combout\,
	cout => \Div7|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X28_Y8_N22
\Div7|auto_generated|divider|divider|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_3~2_combout\ = (\Div7|auto_generated|divider|divider|op_3~1\ & (((\Div7|auto_generated|divider|divider|StageOut[15]~55_combout\) # (\Div7|auto_generated|divider|divider|StageOut[15]~54_combout\)))) # 
-- (!\Div7|auto_generated|divider|divider|op_3~1\ & (!\Div7|auto_generated|divider|divider|StageOut[15]~55_combout\ & (!\Div7|auto_generated|divider|divider|StageOut[15]~54_combout\)))
-- \Div7|auto_generated|divider|divider|op_3~3\ = CARRY((!\Div7|auto_generated|divider|divider|StageOut[15]~55_combout\ & (!\Div7|auto_generated|divider|divider|StageOut[15]~54_combout\ & !\Div7|auto_generated|divider|divider|op_3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|StageOut[15]~55_combout\,
	datab => \Div7|auto_generated|divider|divider|StageOut[15]~54_combout\,
	datad => VCC,
	cin => \Div7|auto_generated|divider|divider|op_3~1\,
	combout => \Div7|auto_generated|divider|divider|op_3~2_combout\,
	cout => \Div7|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X28_Y8_N24
\Div7|auto_generated|divider|divider|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_3~4_combout\ = (\Div7|auto_generated|divider|divider|op_3~3\ & ((((\Div7|auto_generated|divider|divider|StageOut[16]~53_combout\) # (\Div7|auto_generated|divider|divider|StageOut[16]~52_combout\))))) # 
-- (!\Div7|auto_generated|divider|divider|op_3~3\ & ((\Div7|auto_generated|divider|divider|StageOut[16]~53_combout\) # ((\Div7|auto_generated|divider|divider|StageOut[16]~52_combout\) # (GND))))
-- \Div7|auto_generated|divider|divider|op_3~5\ = CARRY((\Div7|auto_generated|divider|divider|StageOut[16]~53_combout\) # ((\Div7|auto_generated|divider|divider|StageOut[16]~52_combout\) # (!\Div7|auto_generated|divider|divider|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|StageOut[16]~53_combout\,
	datab => \Div7|auto_generated|divider|divider|StageOut[16]~52_combout\,
	datad => VCC,
	cin => \Div7|auto_generated|divider|divider|op_3~3\,
	combout => \Div7|auto_generated|divider|divider|op_3~4_combout\,
	cout => \Div7|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X28_Y8_N26
\Div7|auto_generated|divider|divider|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_3~6_combout\ = (\Div7|auto_generated|divider|divider|StageOut[17]~50_combout\ & (((!\Div7|auto_generated|divider|divider|op_3~5\)))) # (!\Div7|auto_generated|divider|divider|StageOut[17]~50_combout\ & 
-- ((\Div7|auto_generated|divider|divider|StageOut[17]~51_combout\ & (!\Div7|auto_generated|divider|divider|op_3~5\)) # (!\Div7|auto_generated|divider|divider|StageOut[17]~51_combout\ & ((\Div7|auto_generated|divider|divider|op_3~5\) # (GND)))))
-- \Div7|auto_generated|divider|divider|op_3~7\ = CARRY(((!\Div7|auto_generated|divider|divider|StageOut[17]~50_combout\ & !\Div7|auto_generated|divider|divider|StageOut[17]~51_combout\)) # (!\Div7|auto_generated|divider|divider|op_3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|StageOut[17]~50_combout\,
	datab => \Div7|auto_generated|divider|divider|StageOut[17]~51_combout\,
	datad => VCC,
	cin => \Div7|auto_generated|divider|divider|op_3~5\,
	combout => \Div7|auto_generated|divider|divider|op_3~6_combout\,
	cout => \Div7|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X29_Y8_N2
\Div7|auto_generated|divider|divider|StageOut[18]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[18]~49_combout\ = (!\Div7|auto_generated|divider|divider|op_2~8_combout\ & \Div7|auto_generated|divider|divider|op_2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div7|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div7|auto_generated|divider|divider|op_2~6_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[18]~49_combout\);

-- Location: LCCOMB_X29_Y8_N0
\Div7|auto_generated|divider|divider|StageOut[18]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[18]~48_combout\ = (\r_in_filter8[7]~input_o\ & \Div7|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter8[7]~input_o\,
	datac => \Div7|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[18]~48_combout\);

-- Location: LCCOMB_X28_Y8_N28
\Div7|auto_generated|divider|divider|op_3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_3~9_cout\ = CARRY((\Div7|auto_generated|divider|divider|StageOut[18]~49_combout\) # ((\Div7|auto_generated|divider|divider|StageOut[18]~48_combout\) # (!\Div7|auto_generated|divider|divider|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|StageOut[18]~49_combout\,
	datab => \Div7|auto_generated|divider|divider|StageOut[18]~48_combout\,
	datad => VCC,
	cin => \Div7|auto_generated|divider|divider|op_3~7\,
	cout => \Div7|auto_generated|divider|divider|op_3~9_cout\);

-- Location: LCCOMB_X28_Y8_N30
\Div7|auto_generated|divider|divider|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_3~10_combout\ = !\Div7|auto_generated|divider|divider|op_3~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div7|auto_generated|divider|divider|op_3~9_cout\,
	combout => \Div7|auto_generated|divider|divider|op_3~10_combout\);

-- Location: LCCOMB_X28_Y8_N0
\Div7|auto_generated|divider|divider|StageOut[23]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[23]~56_combout\ = (\Div7|auto_generated|divider|divider|op_3~6_combout\ & !\Div7|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|op_3~6_combout\,
	datac => \Div7|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[23]~56_combout\);

-- Location: LCCOMB_X29_Y8_N8
\Div7|auto_generated|divider|divider|StageOut[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[23]~75_combout\ = (\Div7|auto_generated|divider|divider|op_3~10_combout\ & ((\Div7|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter8[6]~input_o\))) # 
-- (!\Div7|auto_generated|divider|divider|op_2~8_combout\ & (\Div7|auto_generated|divider|divider|op_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|op_2~8_combout\,
	datab => \Div7|auto_generated|divider|divider|op_2~4_combout\,
	datac => \r_in_filter8[6]~input_o\,
	datad => \Div7|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[23]~75_combout\);

-- Location: LCCOMB_X29_Y8_N12
\Div7|auto_generated|divider|divider|StageOut[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[22]~76_combout\ = (\Div7|auto_generated|divider|divider|op_3~10_combout\ & ((\Div7|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter8[5]~input_o\))) # 
-- (!\Div7|auto_generated|divider|divider|op_2~8_combout\ & (\Div7|auto_generated|divider|divider|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|op_3~10_combout\,
	datab => \Div7|auto_generated|divider|divider|op_2~2_combout\,
	datac => \Div7|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter8[5]~input_o\,
	combout => \Div7|auto_generated|divider|divider|StageOut[22]~76_combout\);

-- Location: LCCOMB_X28_Y8_N2
\Div7|auto_generated|divider|divider|StageOut[22]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[22]~57_combout\ = (!\Div7|auto_generated|divider|divider|op_3~10_combout\ & \Div7|auto_generated|divider|divider|op_3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div7|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div7|auto_generated|divider|divider|op_3~4_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[22]~57_combout\);

-- Location: LCCOMB_X29_Y8_N6
\Div7|auto_generated|divider|divider|StageOut[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[21]~77_combout\ = (\Div7|auto_generated|divider|divider|op_3~10_combout\ & ((\Div7|auto_generated|divider|divider|op_2~8_combout\ & (\r_in_filter8[4]~input_o\)) # 
-- (!\Div7|auto_generated|divider|divider|op_2~8_combout\ & ((\Div7|auto_generated|divider|divider|op_2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter8[4]~input_o\,
	datab => \Div7|auto_generated|divider|divider|op_3~10_combout\,
	datac => \Div7|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div7|auto_generated|divider|divider|op_2~0_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[21]~77_combout\);

-- Location: LCCOMB_X28_Y8_N4
\Div7|auto_generated|divider|divider|StageOut[21]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[21]~58_combout\ = (\Div7|auto_generated|divider|divider|op_3~2_combout\ & !\Div7|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|op_3~2_combout\,
	datac => \Div7|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[21]~58_combout\);

-- Location: LCCOMB_X26_Y8_N16
\Div7|auto_generated|divider|divider|StageOut[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[20]~59_combout\ = (\Div7|auto_generated|divider|divider|op_3~10_combout\ & \r_in_filter8[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div7|auto_generated|divider|divider|op_3~10_combout\,
	datac => \r_in_filter8[3]~input_o\,
	combout => \Div7|auto_generated|divider|divider|StageOut[20]~59_combout\);

-- Location: LCCOMB_X28_Y8_N18
\Div7|auto_generated|divider|divider|StageOut[20]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[20]~60_combout\ = (!\Div7|auto_generated|divider|divider|op_3~10_combout\ & \Div7|auto_generated|divider|divider|op_3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div7|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div7|auto_generated|divider|divider|op_3~0_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[20]~60_combout\);

-- Location: IOIBUF_X34_Y9_N1
\r_in_filter8[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter8(2),
	o => \r_in_filter8[2]~input_o\);

-- Location: LCCOMB_X28_Y8_N6
\Div7|auto_generated|divider|divider|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_4~0_combout\ = \r_in_filter8[2]~input_o\ $ (VCC)
-- \Div7|auto_generated|divider|divider|op_4~1\ = CARRY(\r_in_filter8[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter8[2]~input_o\,
	datad => VCC,
	combout => \Div7|auto_generated|divider|divider|op_4~0_combout\,
	cout => \Div7|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X28_Y8_N8
\Div7|auto_generated|divider|divider|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_4~2_combout\ = (\Div7|auto_generated|divider|divider|op_4~1\ & (((\Div7|auto_generated|divider|divider|StageOut[20]~59_combout\) # (\Div7|auto_generated|divider|divider|StageOut[20]~60_combout\)))) # 
-- (!\Div7|auto_generated|divider|divider|op_4~1\ & (!\Div7|auto_generated|divider|divider|StageOut[20]~59_combout\ & (!\Div7|auto_generated|divider|divider|StageOut[20]~60_combout\)))
-- \Div7|auto_generated|divider|divider|op_4~3\ = CARRY((!\Div7|auto_generated|divider|divider|StageOut[20]~59_combout\ & (!\Div7|auto_generated|divider|divider|StageOut[20]~60_combout\ & !\Div7|auto_generated|divider|divider|op_4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|StageOut[20]~59_combout\,
	datab => \Div7|auto_generated|divider|divider|StageOut[20]~60_combout\,
	datad => VCC,
	cin => \Div7|auto_generated|divider|divider|op_4~1\,
	combout => \Div7|auto_generated|divider|divider|op_4~2_combout\,
	cout => \Div7|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X28_Y8_N10
\Div7|auto_generated|divider|divider|op_4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_4~4_combout\ = (\Div7|auto_generated|divider|divider|op_4~3\ & ((((\Div7|auto_generated|divider|divider|StageOut[21]~77_combout\) # (\Div7|auto_generated|divider|divider|StageOut[21]~58_combout\))))) # 
-- (!\Div7|auto_generated|divider|divider|op_4~3\ & ((\Div7|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((\Div7|auto_generated|divider|divider|StageOut[21]~58_combout\) # (GND))))
-- \Div7|auto_generated|divider|divider|op_4~5\ = CARRY((\Div7|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((\Div7|auto_generated|divider|divider|StageOut[21]~58_combout\) # (!\Div7|auto_generated|divider|divider|op_4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|StageOut[21]~77_combout\,
	datab => \Div7|auto_generated|divider|divider|StageOut[21]~58_combout\,
	datad => VCC,
	cin => \Div7|auto_generated|divider|divider|op_4~3\,
	combout => \Div7|auto_generated|divider|divider|op_4~4_combout\,
	cout => \Div7|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X28_Y8_N12
\Div7|auto_generated|divider|divider|op_4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_4~6_combout\ = (\Div7|auto_generated|divider|divider|StageOut[22]~76_combout\ & (((!\Div7|auto_generated|divider|divider|op_4~5\)))) # (!\Div7|auto_generated|divider|divider|StageOut[22]~76_combout\ & 
-- ((\Div7|auto_generated|divider|divider|StageOut[22]~57_combout\ & (!\Div7|auto_generated|divider|divider|op_4~5\)) # (!\Div7|auto_generated|divider|divider|StageOut[22]~57_combout\ & ((\Div7|auto_generated|divider|divider|op_4~5\) # (GND)))))
-- \Div7|auto_generated|divider|divider|op_4~7\ = CARRY(((!\Div7|auto_generated|divider|divider|StageOut[22]~76_combout\ & !\Div7|auto_generated|divider|divider|StageOut[22]~57_combout\)) # (!\Div7|auto_generated|divider|divider|op_4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|StageOut[22]~76_combout\,
	datab => \Div7|auto_generated|divider|divider|StageOut[22]~57_combout\,
	datad => VCC,
	cin => \Div7|auto_generated|divider|divider|op_4~5\,
	combout => \Div7|auto_generated|divider|divider|op_4~6_combout\,
	cout => \Div7|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X28_Y8_N14
\Div7|auto_generated|divider|divider|op_4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_4~9_cout\ = CARRY((\Div7|auto_generated|divider|divider|StageOut[23]~56_combout\) # ((\Div7|auto_generated|divider|divider|StageOut[23]~75_combout\) # (!\Div7|auto_generated|divider|divider|op_4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|StageOut[23]~56_combout\,
	datab => \Div7|auto_generated|divider|divider|StageOut[23]~75_combout\,
	datad => VCC,
	cin => \Div7|auto_generated|divider|divider|op_4~7\,
	cout => \Div7|auto_generated|divider|divider|op_4~9_cout\);

-- Location: LCCOMB_X28_Y8_N16
\Div7|auto_generated|divider|divider|op_4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_4~10_combout\ = !\Div7|auto_generated|divider|divider|op_4~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div7|auto_generated|divider|divider|op_4~9_cout\,
	combout => \Div7|auto_generated|divider|divider|op_4~10_combout\);

-- Location: LCCOMB_X28_Y9_N30
\Div7|auto_generated|divider|divider|StageOut[28]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[28]~71_combout\ = (\Div7|auto_generated|divider|divider|op_4~10_combout\ & ((\Div7|auto_generated|divider|divider|StageOut[22]~76_combout\) # ((!\Div7|auto_generated|divider|divider|op_3~10_combout\ & 
-- \Div7|auto_generated|divider|divider|op_3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|op_3~10_combout\,
	datab => \Div7|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div7|auto_generated|divider|divider|op_3~4_combout\,
	datad => \Div7|auto_generated|divider|divider|StageOut[22]~76_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[28]~71_combout\);

-- Location: LCCOMB_X28_Y9_N16
\Div7|auto_generated|divider|divider|StageOut[28]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[28]~61_combout\ = (!\Div7|auto_generated|divider|divider|op_4~10_combout\ & \Div7|auto_generated|divider|divider|op_4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div7|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div7|auto_generated|divider|divider|op_4~6_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[28]~61_combout\);

-- Location: LCCOMB_X28_Y9_N26
\Div7|auto_generated|divider|divider|StageOut[27]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[27]~62_combout\ = (!\Div7|auto_generated|divider|divider|op_4~10_combout\ & \Div7|auto_generated|divider|divider|op_4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div7|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div7|auto_generated|divider|divider|op_4~4_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[27]~62_combout\);

-- Location: LCCOMB_X28_Y9_N24
\Div7|auto_generated|divider|divider|StageOut[27]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[27]~72_combout\ = (\Div7|auto_generated|divider|divider|op_4~10_combout\ & ((\Div7|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((!\Div7|auto_generated|divider|divider|op_3~10_combout\ & 
-- \Div7|auto_generated|divider|divider|op_3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|op_3~10_combout\,
	datab => \Div7|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div7|auto_generated|divider|divider|op_3~2_combout\,
	datad => \Div7|auto_generated|divider|divider|StageOut[21]~77_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[27]~72_combout\);

-- Location: LCCOMB_X26_Y8_N2
\Div7|auto_generated|divider|divider|StageOut[26]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[26]~78_combout\ = (\Div7|auto_generated|divider|divider|op_4~10_combout\ & ((\Div7|auto_generated|divider|divider|op_3~10_combout\ & (\r_in_filter8[3]~input_o\)) # 
-- (!\Div7|auto_generated|divider|divider|op_3~10_combout\ & ((\Div7|auto_generated|divider|divider|op_3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter8[3]~input_o\,
	datab => \Div7|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div7|auto_generated|divider|divider|op_3~0_combout\,
	datad => \Div7|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[26]~78_combout\);

-- Location: LCCOMB_X28_Y9_N0
\Div7|auto_generated|divider|divider|StageOut[26]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[26]~63_combout\ = (!\Div7|auto_generated|divider|divider|op_4~10_combout\ & \Div7|auto_generated|divider|divider|op_4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div7|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div7|auto_generated|divider|divider|op_4~2_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[26]~63_combout\);

-- Location: LCCOMB_X28_Y9_N18
\Div7|auto_generated|divider|divider|StageOut[25]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[25]~64_combout\ = (\Div7|auto_generated|divider|divider|op_4~10_combout\ & \r_in_filter8[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div7|auto_generated|divider|divider|op_4~10_combout\,
	datad => \r_in_filter8[2]~input_o\,
	combout => \Div7|auto_generated|divider|divider|StageOut[25]~64_combout\);

-- Location: LCCOMB_X28_Y9_N28
\Div7|auto_generated|divider|divider|StageOut[25]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[25]~65_combout\ = (!\Div7|auto_generated|divider|divider|op_4~10_combout\ & \Div7|auto_generated|divider|divider|op_4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div7|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div7|auto_generated|divider|divider|op_4~0_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[25]~65_combout\);

-- Location: IOIBUF_X28_Y0_N8
\r_in_filter8[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter8(1),
	o => \r_in_filter8[1]~input_o\);

-- Location: LCCOMB_X28_Y9_N4
\Div7|auto_generated|divider|divider|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_5~0_combout\ = \r_in_filter8[1]~input_o\ $ (VCC)
-- \Div7|auto_generated|divider|divider|op_5~1\ = CARRY(\r_in_filter8[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter8[1]~input_o\,
	datad => VCC,
	combout => \Div7|auto_generated|divider|divider|op_5~0_combout\,
	cout => \Div7|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X28_Y9_N6
\Div7|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_5~2_combout\ = (\Div7|auto_generated|divider|divider|op_5~1\ & (((\Div7|auto_generated|divider|divider|StageOut[25]~64_combout\) # (\Div7|auto_generated|divider|divider|StageOut[25]~65_combout\)))) # 
-- (!\Div7|auto_generated|divider|divider|op_5~1\ & (!\Div7|auto_generated|divider|divider|StageOut[25]~64_combout\ & (!\Div7|auto_generated|divider|divider|StageOut[25]~65_combout\)))
-- \Div7|auto_generated|divider|divider|op_5~3\ = CARRY((!\Div7|auto_generated|divider|divider|StageOut[25]~64_combout\ & (!\Div7|auto_generated|divider|divider|StageOut[25]~65_combout\ & !\Div7|auto_generated|divider|divider|op_5~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|StageOut[25]~64_combout\,
	datab => \Div7|auto_generated|divider|divider|StageOut[25]~65_combout\,
	datad => VCC,
	cin => \Div7|auto_generated|divider|divider|op_5~1\,
	combout => \Div7|auto_generated|divider|divider|op_5~2_combout\,
	cout => \Div7|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X28_Y9_N8
\Div7|auto_generated|divider|divider|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_5~4_combout\ = (\Div7|auto_generated|divider|divider|op_5~3\ & ((((\Div7|auto_generated|divider|divider|StageOut[26]~78_combout\) # (\Div7|auto_generated|divider|divider|StageOut[26]~63_combout\))))) # 
-- (!\Div7|auto_generated|divider|divider|op_5~3\ & ((\Div7|auto_generated|divider|divider|StageOut[26]~78_combout\) # ((\Div7|auto_generated|divider|divider|StageOut[26]~63_combout\) # (GND))))
-- \Div7|auto_generated|divider|divider|op_5~5\ = CARRY((\Div7|auto_generated|divider|divider|StageOut[26]~78_combout\) # ((\Div7|auto_generated|divider|divider|StageOut[26]~63_combout\) # (!\Div7|auto_generated|divider|divider|op_5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|StageOut[26]~78_combout\,
	datab => \Div7|auto_generated|divider|divider|StageOut[26]~63_combout\,
	datad => VCC,
	cin => \Div7|auto_generated|divider|divider|op_5~3\,
	combout => \Div7|auto_generated|divider|divider|op_5~4_combout\,
	cout => \Div7|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X28_Y9_N10
\Div7|auto_generated|divider|divider|op_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_5~6_combout\ = (\Div7|auto_generated|divider|divider|StageOut[27]~62_combout\ & (((!\Div7|auto_generated|divider|divider|op_5~5\)))) # (!\Div7|auto_generated|divider|divider|StageOut[27]~62_combout\ & 
-- ((\Div7|auto_generated|divider|divider|StageOut[27]~72_combout\ & (!\Div7|auto_generated|divider|divider|op_5~5\)) # (!\Div7|auto_generated|divider|divider|StageOut[27]~72_combout\ & ((\Div7|auto_generated|divider|divider|op_5~5\) # (GND)))))
-- \Div7|auto_generated|divider|divider|op_5~7\ = CARRY(((!\Div7|auto_generated|divider|divider|StageOut[27]~62_combout\ & !\Div7|auto_generated|divider|divider|StageOut[27]~72_combout\)) # (!\Div7|auto_generated|divider|divider|op_5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|StageOut[27]~62_combout\,
	datab => \Div7|auto_generated|divider|divider|StageOut[27]~72_combout\,
	datad => VCC,
	cin => \Div7|auto_generated|divider|divider|op_5~5\,
	combout => \Div7|auto_generated|divider|divider|op_5~6_combout\,
	cout => \Div7|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X28_Y9_N12
\Div7|auto_generated|divider|divider|op_5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_5~9_cout\ = CARRY((\Div7|auto_generated|divider|divider|StageOut[28]~71_combout\) # ((\Div7|auto_generated|divider|divider|StageOut[28]~61_combout\) # (!\Div7|auto_generated|divider|divider|op_5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|StageOut[28]~71_combout\,
	datab => \Div7|auto_generated|divider|divider|StageOut[28]~61_combout\,
	datad => VCC,
	cin => \Div7|auto_generated|divider|divider|op_5~7\,
	cout => \Div7|auto_generated|divider|divider|op_5~9_cout\);

-- Location: LCCOMB_X28_Y9_N14
\Div7|auto_generated|divider|divider|op_5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_5~10_combout\ = !\Div7|auto_generated|divider|divider|op_5~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div7|auto_generated|divider|divider|op_5~9_cout\,
	combout => \Div7|auto_generated|divider|divider|op_5~10_combout\);

-- Location: LCCOMB_X28_Y9_N2
\Div7|auto_generated|divider|divider|StageOut[33]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[33]~73_combout\ = (\Div7|auto_generated|divider|divider|op_5~10_combout\ & ((\Div7|auto_generated|divider|divider|StageOut[27]~72_combout\) # ((!\Div7|auto_generated|divider|divider|op_4~10_combout\ & 
-- \Div7|auto_generated|divider|divider|op_4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Div7|auto_generated|divider|divider|op_4~4_combout\,
	datac => \Div7|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div7|auto_generated|divider|divider|StageOut[27]~72_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[33]~73_combout\);

-- Location: LCCOMB_X28_Y10_N24
\Div7|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[33]~66_combout\ = (!\Div7|auto_generated|divider|divider|op_5~10_combout\ & \Div7|auto_generated|divider|divider|op_5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|op_5~10_combout\,
	datac => \Div7|auto_generated|divider|divider|op_5~6_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X28_Y9_N20
\Div7|auto_generated|divider|divider|StageOut[32]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[32]~74_combout\ = (\Div7|auto_generated|divider|divider|op_5~10_combout\ & ((\Div7|auto_generated|divider|divider|StageOut[26]~78_combout\) # ((!\Div7|auto_generated|divider|divider|op_4~10_combout\ & 
-- \Div7|auto_generated|divider|divider|op_4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|StageOut[26]~78_combout\,
	datab => \Div7|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div7|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div7|auto_generated|divider|divider|op_4~2_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[32]~74_combout\);

-- Location: LCCOMB_X28_Y10_N18
\Div7|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[32]~67_combout\ = (!\Div7|auto_generated|divider|divider|op_5~10_combout\ & \Div7|auto_generated|divider|divider|op_5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div7|auto_generated|divider|divider|op_5~4_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X28_Y9_N22
\Div7|auto_generated|divider|divider|StageOut[31]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[31]~79_combout\ = (\Div7|auto_generated|divider|divider|op_5~10_combout\ & ((\Div7|auto_generated|divider|divider|op_4~10_combout\ & ((\r_in_filter8[2]~input_o\))) # 
-- (!\Div7|auto_generated|divider|divider|op_4~10_combout\ & (\Div7|auto_generated|divider|divider|op_4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|op_4~0_combout\,
	datab => \Div7|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div7|auto_generated|divider|divider|op_5~10_combout\,
	datad => \r_in_filter8[2]~input_o\,
	combout => \Div7|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X28_Y10_N28
\Div7|auto_generated|divider|divider|StageOut[31]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[31]~68_combout\ = (!\Div7|auto_generated|divider|divider|op_5~10_combout\ & \Div7|auto_generated|divider|divider|op_5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div7|auto_generated|divider|divider|op_5~2_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[31]~68_combout\);

-- Location: LCCOMB_X28_Y10_N26
\Div7|auto_generated|divider|divider|StageOut[30]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[30]~69_combout\ = (\r_in_filter8[1]~input_o\ & \Div7|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_in_filter8[1]~input_o\,
	datad => \Div7|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[30]~69_combout\);

-- Location: LCCOMB_X28_Y10_N4
\Div7|auto_generated|divider|divider|StageOut[30]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|StageOut[30]~70_combout\ = (!\Div7|auto_generated|divider|divider|op_5~10_combout\ & \Div7|auto_generated|divider|divider|op_5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div7|auto_generated|divider|divider|op_5~0_combout\,
	combout => \Div7|auto_generated|divider|divider|StageOut[30]~70_combout\);

-- Location: IOIBUF_X34_Y10_N1
\r_in_filter8[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter8(0),
	o => \r_in_filter8[0]~input_o\);

-- Location: LCCOMB_X28_Y10_N6
\Div7|auto_generated|divider|divider|op_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_6~1_cout\ = CARRY(\r_in_filter8[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter8[0]~input_o\,
	datad => VCC,
	cout => \Div7|auto_generated|divider|divider|op_6~1_cout\);

-- Location: LCCOMB_X28_Y10_N8
\Div7|auto_generated|divider|divider|op_6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_6~3_cout\ = CARRY((!\Div7|auto_generated|divider|divider|StageOut[30]~69_combout\ & (!\Div7|auto_generated|divider|divider|StageOut[30]~70_combout\ & !\Div7|auto_generated|divider|divider|op_6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datab => \Div7|auto_generated|divider|divider|StageOut[30]~70_combout\,
	datad => VCC,
	cin => \Div7|auto_generated|divider|divider|op_6~1_cout\,
	cout => \Div7|auto_generated|divider|divider|op_6~3_cout\);

-- Location: LCCOMB_X28_Y10_N10
\Div7|auto_generated|divider|divider|op_6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_6~5_cout\ = CARRY((\Div7|auto_generated|divider|divider|StageOut[31]~79_combout\) # ((\Div7|auto_generated|divider|divider|StageOut[31]~68_combout\) # (!\Div7|auto_generated|divider|divider|op_6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datab => \Div7|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datad => VCC,
	cin => \Div7|auto_generated|divider|divider|op_6~3_cout\,
	cout => \Div7|auto_generated|divider|divider|op_6~5_cout\);

-- Location: LCCOMB_X28_Y10_N12
\Div7|auto_generated|divider|divider|op_6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_6~7_cout\ = CARRY(((!\Div7|auto_generated|divider|divider|StageOut[32]~74_combout\ & !\Div7|auto_generated|divider|divider|StageOut[32]~67_combout\)) # (!\Div7|auto_generated|divider|divider|op_6~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|StageOut[32]~74_combout\,
	datab => \Div7|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \Div7|auto_generated|divider|divider|op_6~5_cout\,
	cout => \Div7|auto_generated|divider|divider|op_6~7_cout\);

-- Location: LCCOMB_X28_Y10_N14
\Div7|auto_generated|divider|divider|op_6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_6~9_cout\ = CARRY((\Div7|auto_generated|divider|divider|StageOut[33]~73_combout\) # ((\Div7|auto_generated|divider|divider|StageOut[33]~66_combout\) # (!\Div7|auto_generated|divider|divider|op_6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|StageOut[33]~73_combout\,
	datab => \Div7|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datad => VCC,
	cin => \Div7|auto_generated|divider|divider|op_6~7_cout\,
	cout => \Div7|auto_generated|divider|divider|op_6~9_cout\);

-- Location: LCCOMB_X28_Y10_N16
\Div7|auto_generated|divider|divider|op_6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div7|auto_generated|divider|divider|op_6~10_combout\ = !\Div7|auto_generated|divider|divider|op_6~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div7|auto_generated|divider|divider|op_6~9_cout\,
	combout => \Div7|auto_generated|divider|divider|op_6~10_combout\);

-- Location: IOIBUF_X13_Y24_N22
\r_in_filter7[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter7(4),
	o => \r_in_filter7[4]~input_o\);

-- Location: LCCOMB_X13_Y20_N20
\Div6|auto_generated|divider|divider|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_2~0_combout\ = \r_in_filter7[4]~input_o\ $ (VCC)
-- \Div6|auto_generated|divider|divider|op_2~1\ = CARRY(\r_in_filter7[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter7[4]~input_o\,
	datad => VCC,
	combout => \Div6|auto_generated|divider|divider|op_2~0_combout\,
	cout => \Div6|auto_generated|divider|divider|op_2~1\);

-- Location: IOIBUF_X9_Y24_N22
\r_in_filter7[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter7(7),
	o => \r_in_filter7[7]~input_o\);

-- Location: IOIBUF_X13_Y24_N1
\r_in_filter7[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter7(6),
	o => \r_in_filter7[6]~input_o\);

-- Location: IOIBUF_X13_Y24_N8
\r_in_filter7[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter7(5),
	o => \r_in_filter7[5]~input_o\);

-- Location: LCCOMB_X13_Y20_N22
\Div6|auto_generated|divider|divider|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_2~2_combout\ = (\r_in_filter7[5]~input_o\ & (\Div6|auto_generated|divider|divider|op_2~1\ & VCC)) # (!\r_in_filter7[5]~input_o\ & (!\Div6|auto_generated|divider|divider|op_2~1\))
-- \Div6|auto_generated|divider|divider|op_2~3\ = CARRY((!\r_in_filter7[5]~input_o\ & !\Div6|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter7[5]~input_o\,
	datad => VCC,
	cin => \Div6|auto_generated|divider|divider|op_2~1\,
	combout => \Div6|auto_generated|divider|divider|op_2~2_combout\,
	cout => \Div6|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X13_Y20_N24
\Div6|auto_generated|divider|divider|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_2~4_combout\ = (\r_in_filter7[6]~input_o\ & ((GND) # (!\Div6|auto_generated|divider|divider|op_2~3\))) # (!\r_in_filter7[6]~input_o\ & (\Div6|auto_generated|divider|divider|op_2~3\ $ (GND)))
-- \Div6|auto_generated|divider|divider|op_2~5\ = CARRY((\r_in_filter7[6]~input_o\) # (!\Div6|auto_generated|divider|divider|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter7[6]~input_o\,
	datad => VCC,
	cin => \Div6|auto_generated|divider|divider|op_2~3\,
	combout => \Div6|auto_generated|divider|divider|op_2~4_combout\,
	cout => \Div6|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X13_Y20_N26
\Div6|auto_generated|divider|divider|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_2~6_combout\ = (\r_in_filter7[7]~input_o\ & (!\Div6|auto_generated|divider|divider|op_2~5\)) # (!\r_in_filter7[7]~input_o\ & ((\Div6|auto_generated|divider|divider|op_2~5\) # (GND)))
-- \Div6|auto_generated|divider|divider|op_2~7\ = CARRY((!\Div6|auto_generated|divider|divider|op_2~5\) # (!\r_in_filter7[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter7[7]~input_o\,
	datad => VCC,
	cin => \Div6|auto_generated|divider|divider|op_2~5\,
	combout => \Div6|auto_generated|divider|divider|op_2~6_combout\,
	cout => \Div6|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X13_Y20_N28
\Div6|auto_generated|divider|divider|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_2~8_combout\ = \Div6|auto_generated|divider|divider|op_2~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div6|auto_generated|divider|divider|op_2~7\,
	combout => \Div6|auto_generated|divider|divider|op_2~8_combout\);

-- Location: LCCOMB_X13_Y20_N16
\Div6|auto_generated|divider|divider|StageOut[18]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[18]~48_combout\ = (\r_in_filter7[7]~input_o\ & \Div6|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_in_filter7[7]~input_o\,
	datad => \Div6|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[18]~48_combout\);

-- Location: LCCOMB_X13_Y20_N10
\Div6|auto_generated|divider|divider|StageOut[18]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[18]~49_combout\ = (\Div6|auto_generated|divider|divider|op_2~6_combout\ & !\Div6|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div6|auto_generated|divider|divider|op_2~6_combout\,
	datad => \Div6|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[18]~49_combout\);

-- Location: LCCOMB_X13_Y20_N12
\Div6|auto_generated|divider|divider|StageOut[17]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[17]~50_combout\ = (\Div6|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter7[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div6|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter7[6]~input_o\,
	combout => \Div6|auto_generated|divider|divider|StageOut[17]~50_combout\);

-- Location: LCCOMB_X13_Y20_N6
\Div6|auto_generated|divider|divider|StageOut[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[17]~51_combout\ = (\Div6|auto_generated|divider|divider|op_2~4_combout\ & !\Div6|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div6|auto_generated|divider|divider|op_2~4_combout\,
	datad => \Div6|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[17]~51_combout\);

-- Location: LCCOMB_X13_Y20_N2
\Div6|auto_generated|divider|divider|StageOut[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[16]~53_combout\ = (\Div6|auto_generated|divider|divider|op_2~2_combout\ & !\Div6|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div6|auto_generated|divider|divider|op_2~2_combout\,
	datad => \Div6|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[16]~53_combout\);

-- Location: LCCOMB_X13_Y20_N0
\Div6|auto_generated|divider|divider|StageOut[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[16]~52_combout\ = (\Div6|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter7[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div6|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter7[5]~input_o\,
	combout => \Div6|auto_generated|divider|divider|StageOut[16]~52_combout\);

-- Location: LCCOMB_X13_Y20_N14
\Div6|auto_generated|divider|divider|StageOut[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[15]~55_combout\ = (\Div6|auto_generated|divider|divider|op_2~0_combout\ & !\Div6|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div6|auto_generated|divider|divider|op_2~0_combout\,
	datad => \Div6|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[15]~55_combout\);

-- Location: LCCOMB_X13_Y20_N4
\Div6|auto_generated|divider|divider|StageOut[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[15]~54_combout\ = (\Div6|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter7[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div6|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter7[4]~input_o\,
	combout => \Div6|auto_generated|divider|divider|StageOut[15]~54_combout\);

-- Location: IOIBUF_X11_Y24_N8
\r_in_filter7[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter7(3),
	o => \r_in_filter7[3]~input_o\);

-- Location: LCCOMB_X14_Y20_N20
\Div6|auto_generated|divider|divider|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_3~0_combout\ = \r_in_filter7[3]~input_o\ $ (VCC)
-- \Div6|auto_generated|divider|divider|op_3~1\ = CARRY(\r_in_filter7[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter7[3]~input_o\,
	datad => VCC,
	combout => \Div6|auto_generated|divider|divider|op_3~0_combout\,
	cout => \Div6|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X14_Y20_N22
\Div6|auto_generated|divider|divider|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_3~2_combout\ = (\Div6|auto_generated|divider|divider|op_3~1\ & (((\Div6|auto_generated|divider|divider|StageOut[15]~55_combout\) # (\Div6|auto_generated|divider|divider|StageOut[15]~54_combout\)))) # 
-- (!\Div6|auto_generated|divider|divider|op_3~1\ & (!\Div6|auto_generated|divider|divider|StageOut[15]~55_combout\ & (!\Div6|auto_generated|divider|divider|StageOut[15]~54_combout\)))
-- \Div6|auto_generated|divider|divider|op_3~3\ = CARRY((!\Div6|auto_generated|divider|divider|StageOut[15]~55_combout\ & (!\Div6|auto_generated|divider|divider|StageOut[15]~54_combout\ & !\Div6|auto_generated|divider|divider|op_3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|StageOut[15]~55_combout\,
	datab => \Div6|auto_generated|divider|divider|StageOut[15]~54_combout\,
	datad => VCC,
	cin => \Div6|auto_generated|divider|divider|op_3~1\,
	combout => \Div6|auto_generated|divider|divider|op_3~2_combout\,
	cout => \Div6|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X14_Y20_N24
\Div6|auto_generated|divider|divider|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_3~4_combout\ = (\Div6|auto_generated|divider|divider|op_3~3\ & ((((\Div6|auto_generated|divider|divider|StageOut[16]~53_combout\) # (\Div6|auto_generated|divider|divider|StageOut[16]~52_combout\))))) # 
-- (!\Div6|auto_generated|divider|divider|op_3~3\ & ((\Div6|auto_generated|divider|divider|StageOut[16]~53_combout\) # ((\Div6|auto_generated|divider|divider|StageOut[16]~52_combout\) # (GND))))
-- \Div6|auto_generated|divider|divider|op_3~5\ = CARRY((\Div6|auto_generated|divider|divider|StageOut[16]~53_combout\) # ((\Div6|auto_generated|divider|divider|StageOut[16]~52_combout\) # (!\Div6|auto_generated|divider|divider|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|StageOut[16]~53_combout\,
	datab => \Div6|auto_generated|divider|divider|StageOut[16]~52_combout\,
	datad => VCC,
	cin => \Div6|auto_generated|divider|divider|op_3~3\,
	combout => \Div6|auto_generated|divider|divider|op_3~4_combout\,
	cout => \Div6|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X14_Y20_N26
\Div6|auto_generated|divider|divider|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_3~6_combout\ = (\Div6|auto_generated|divider|divider|StageOut[17]~50_combout\ & (((!\Div6|auto_generated|divider|divider|op_3~5\)))) # (!\Div6|auto_generated|divider|divider|StageOut[17]~50_combout\ & 
-- ((\Div6|auto_generated|divider|divider|StageOut[17]~51_combout\ & (!\Div6|auto_generated|divider|divider|op_3~5\)) # (!\Div6|auto_generated|divider|divider|StageOut[17]~51_combout\ & ((\Div6|auto_generated|divider|divider|op_3~5\) # (GND)))))
-- \Div6|auto_generated|divider|divider|op_3~7\ = CARRY(((!\Div6|auto_generated|divider|divider|StageOut[17]~50_combout\ & !\Div6|auto_generated|divider|divider|StageOut[17]~51_combout\)) # (!\Div6|auto_generated|divider|divider|op_3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|StageOut[17]~50_combout\,
	datab => \Div6|auto_generated|divider|divider|StageOut[17]~51_combout\,
	datad => VCC,
	cin => \Div6|auto_generated|divider|divider|op_3~5\,
	combout => \Div6|auto_generated|divider|divider|op_3~6_combout\,
	cout => \Div6|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X14_Y20_N28
\Div6|auto_generated|divider|divider|op_3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_3~9_cout\ = CARRY((\Div6|auto_generated|divider|divider|StageOut[18]~48_combout\) # ((\Div6|auto_generated|divider|divider|StageOut[18]~49_combout\) # (!\Div6|auto_generated|divider|divider|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|StageOut[18]~48_combout\,
	datab => \Div6|auto_generated|divider|divider|StageOut[18]~49_combout\,
	datad => VCC,
	cin => \Div6|auto_generated|divider|divider|op_3~7\,
	cout => \Div6|auto_generated|divider|divider|op_3~9_cout\);

-- Location: LCCOMB_X14_Y20_N30
\Div6|auto_generated|divider|divider|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_3~10_combout\ = !\Div6|auto_generated|divider|divider|op_3~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div6|auto_generated|divider|divider|op_3~9_cout\,
	combout => \Div6|auto_generated|divider|divider|op_3~10_combout\);

-- Location: LCCOMB_X13_Y20_N30
\Div6|auto_generated|divider|divider|StageOut[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[21]~77_combout\ = (\Div6|auto_generated|divider|divider|op_3~10_combout\ & ((\Div6|auto_generated|divider|divider|op_2~8_combout\ & (\r_in_filter7[4]~input_o\)) # 
-- (!\Div6|auto_generated|divider|divider|op_2~8_combout\ & ((\Div6|auto_generated|divider|divider|op_2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter7[4]~input_o\,
	datab => \Div6|auto_generated|divider|divider|op_2~0_combout\,
	datac => \Div6|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div6|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[21]~77_combout\);

-- Location: LCCOMB_X14_Y20_N8
\Div6|auto_generated|divider|divider|StageOut[23]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[23]~56_combout\ = (\Div6|auto_generated|divider|divider|op_3~6_combout\ & !\Div6|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|op_3~6_combout\,
	datac => \Div6|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[23]~56_combout\);

-- Location: LCCOMB_X13_Y20_N8
\Div6|auto_generated|divider|divider|StageOut[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[23]~75_combout\ = (\Div6|auto_generated|divider|divider|op_3~10_combout\ & ((\Div6|auto_generated|divider|divider|op_2~8_combout\ & (\r_in_filter7[6]~input_o\)) # 
-- (!\Div6|auto_generated|divider|divider|op_2~8_combout\ & ((\Div6|auto_generated|divider|divider|op_2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter7[6]~input_o\,
	datab => \Div6|auto_generated|divider|divider|op_2~4_combout\,
	datac => \Div6|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div6|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[23]~75_combout\);

-- Location: LCCOMB_X13_Y20_N18
\Div6|auto_generated|divider|divider|StageOut[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[22]~76_combout\ = (\Div6|auto_generated|divider|divider|op_3~10_combout\ & ((\Div6|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter7[5]~input_o\))) # 
-- (!\Div6|auto_generated|divider|divider|op_2~8_combout\ & (\Div6|auto_generated|divider|divider|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|op_2~2_combout\,
	datab => \Div6|auto_generated|divider|divider|op_2~8_combout\,
	datac => \Div6|auto_generated|divider|divider|op_3~10_combout\,
	datad => \r_in_filter7[5]~input_o\,
	combout => \Div6|auto_generated|divider|divider|StageOut[22]~76_combout\);

-- Location: LCCOMB_X16_Y20_N8
\Div6|auto_generated|divider|divider|StageOut[22]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[22]~57_combout\ = (\Div6|auto_generated|divider|divider|op_3~4_combout\ & !\Div6|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div6|auto_generated|divider|divider|op_3~4_combout\,
	datac => \Div6|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[22]~57_combout\);

-- Location: LCCOMB_X16_Y20_N26
\Div6|auto_generated|divider|divider|StageOut[21]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[21]~58_combout\ = (\Div6|auto_generated|divider|divider|op_3~2_combout\ & !\Div6|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div6|auto_generated|divider|divider|op_3~2_combout\,
	datac => \Div6|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[21]~58_combout\);

-- Location: LCCOMB_X14_Y20_N18
\Div6|auto_generated|divider|divider|StageOut[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[20]~59_combout\ = (\Div6|auto_generated|divider|divider|op_3~10_combout\ & \r_in_filter7[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div6|auto_generated|divider|divider|op_3~10_combout\,
	datad => \r_in_filter7[3]~input_o\,
	combout => \Div6|auto_generated|divider|divider|StageOut[20]~59_combout\);

-- Location: LCCOMB_X14_Y20_N4
\Div6|auto_generated|divider|divider|StageOut[20]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[20]~60_combout\ = (!\Div6|auto_generated|divider|divider|op_3~10_combout\ & \Div6|auto_generated|divider|divider|op_3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div6|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div6|auto_generated|divider|divider|op_3~0_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[20]~60_combout\);

-- Location: IOIBUF_X16_Y24_N22
\r_in_filter7[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter7(2),
	o => \r_in_filter7[2]~input_o\);

-- Location: LCCOMB_X16_Y20_N14
\Div6|auto_generated|divider|divider|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_4~0_combout\ = \r_in_filter7[2]~input_o\ $ (VCC)
-- \Div6|auto_generated|divider|divider|op_4~1\ = CARRY(\r_in_filter7[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter7[2]~input_o\,
	datad => VCC,
	combout => \Div6|auto_generated|divider|divider|op_4~0_combout\,
	cout => \Div6|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X16_Y20_N16
\Div6|auto_generated|divider|divider|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_4~2_combout\ = (\Div6|auto_generated|divider|divider|op_4~1\ & (((\Div6|auto_generated|divider|divider|StageOut[20]~59_combout\) # (\Div6|auto_generated|divider|divider|StageOut[20]~60_combout\)))) # 
-- (!\Div6|auto_generated|divider|divider|op_4~1\ & (!\Div6|auto_generated|divider|divider|StageOut[20]~59_combout\ & (!\Div6|auto_generated|divider|divider|StageOut[20]~60_combout\)))
-- \Div6|auto_generated|divider|divider|op_4~3\ = CARRY((!\Div6|auto_generated|divider|divider|StageOut[20]~59_combout\ & (!\Div6|auto_generated|divider|divider|StageOut[20]~60_combout\ & !\Div6|auto_generated|divider|divider|op_4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|StageOut[20]~59_combout\,
	datab => \Div6|auto_generated|divider|divider|StageOut[20]~60_combout\,
	datad => VCC,
	cin => \Div6|auto_generated|divider|divider|op_4~1\,
	combout => \Div6|auto_generated|divider|divider|op_4~2_combout\,
	cout => \Div6|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X16_Y20_N18
\Div6|auto_generated|divider|divider|op_4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_4~4_combout\ = (\Div6|auto_generated|divider|divider|op_4~3\ & ((((\Div6|auto_generated|divider|divider|StageOut[21]~58_combout\) # (\Div6|auto_generated|divider|divider|StageOut[21]~77_combout\))))) # 
-- (!\Div6|auto_generated|divider|divider|op_4~3\ & ((\Div6|auto_generated|divider|divider|StageOut[21]~58_combout\) # ((\Div6|auto_generated|divider|divider|StageOut[21]~77_combout\) # (GND))))
-- \Div6|auto_generated|divider|divider|op_4~5\ = CARRY((\Div6|auto_generated|divider|divider|StageOut[21]~58_combout\) # ((\Div6|auto_generated|divider|divider|StageOut[21]~77_combout\) # (!\Div6|auto_generated|divider|divider|op_4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|StageOut[21]~58_combout\,
	datab => \Div6|auto_generated|divider|divider|StageOut[21]~77_combout\,
	datad => VCC,
	cin => \Div6|auto_generated|divider|divider|op_4~3\,
	combout => \Div6|auto_generated|divider|divider|op_4~4_combout\,
	cout => \Div6|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X16_Y20_N20
\Div6|auto_generated|divider|divider|op_4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_4~6_combout\ = (\Div6|auto_generated|divider|divider|StageOut[22]~76_combout\ & (((!\Div6|auto_generated|divider|divider|op_4~5\)))) # (!\Div6|auto_generated|divider|divider|StageOut[22]~76_combout\ & 
-- ((\Div6|auto_generated|divider|divider|StageOut[22]~57_combout\ & (!\Div6|auto_generated|divider|divider|op_4~5\)) # (!\Div6|auto_generated|divider|divider|StageOut[22]~57_combout\ & ((\Div6|auto_generated|divider|divider|op_4~5\) # (GND)))))
-- \Div6|auto_generated|divider|divider|op_4~7\ = CARRY(((!\Div6|auto_generated|divider|divider|StageOut[22]~76_combout\ & !\Div6|auto_generated|divider|divider|StageOut[22]~57_combout\)) # (!\Div6|auto_generated|divider|divider|op_4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|StageOut[22]~76_combout\,
	datab => \Div6|auto_generated|divider|divider|StageOut[22]~57_combout\,
	datad => VCC,
	cin => \Div6|auto_generated|divider|divider|op_4~5\,
	combout => \Div6|auto_generated|divider|divider|op_4~6_combout\,
	cout => \Div6|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X16_Y20_N22
\Div6|auto_generated|divider|divider|op_4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_4~9_cout\ = CARRY((\Div6|auto_generated|divider|divider|StageOut[23]~56_combout\) # ((\Div6|auto_generated|divider|divider|StageOut[23]~75_combout\) # (!\Div6|auto_generated|divider|divider|op_4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|StageOut[23]~56_combout\,
	datab => \Div6|auto_generated|divider|divider|StageOut[23]~75_combout\,
	datad => VCC,
	cin => \Div6|auto_generated|divider|divider|op_4~7\,
	cout => \Div6|auto_generated|divider|divider|op_4~9_cout\);

-- Location: LCCOMB_X16_Y20_N24
\Div6|auto_generated|divider|divider|op_4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_4~10_combout\ = !\Div6|auto_generated|divider|divider|op_4~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div6|auto_generated|divider|divider|op_4~9_cout\,
	combout => \Div6|auto_generated|divider|divider|op_4~10_combout\);

-- Location: LCCOMB_X16_Y20_N2
\Div6|auto_generated|divider|divider|StageOut[27]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[27]~72_combout\ = (\Div6|auto_generated|divider|divider|op_4~10_combout\ & ((\Div6|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((\Div6|auto_generated|divider|divider|op_3~2_combout\ & 
-- !\Div6|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|StageOut[21]~77_combout\,
	datab => \Div6|auto_generated|divider|divider|op_3~2_combout\,
	datac => \Div6|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div6|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[27]~72_combout\);

-- Location: LCCOMB_X16_Y20_N12
\Div6|auto_generated|divider|divider|StageOut[28]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[28]~61_combout\ = (\Div6|auto_generated|divider|divider|op_4~6_combout\ & !\Div6|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div6|auto_generated|divider|divider|op_4~6_combout\,
	datad => \Div6|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[28]~61_combout\);

-- Location: LCCOMB_X16_Y20_N4
\Div6|auto_generated|divider|divider|StageOut[28]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[28]~71_combout\ = (\Div6|auto_generated|divider|divider|op_4~10_combout\ & ((\Div6|auto_generated|divider|divider|StageOut[22]~76_combout\) # ((\Div6|auto_generated|divider|divider|op_3~4_combout\ & 
-- !\Div6|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|StageOut[22]~76_combout\,
	datab => \Div6|auto_generated|divider|divider|op_3~4_combout\,
	datac => \Div6|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div6|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[28]~71_combout\);

-- Location: LCCOMB_X16_Y20_N6
\Div6|auto_generated|divider|divider|StageOut[27]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[27]~62_combout\ = (\Div6|auto_generated|divider|divider|op_4~4_combout\ & !\Div6|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div6|auto_generated|divider|divider|op_4~4_combout\,
	datad => \Div6|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[27]~62_combout\);

-- Location: LCCOMB_X14_Y20_N12
\Div6|auto_generated|divider|divider|StageOut[26]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[26]~78_combout\ = (\Div6|auto_generated|divider|divider|op_4~10_combout\ & ((\Div6|auto_generated|divider|divider|op_3~10_combout\ & (\r_in_filter7[3]~input_o\)) # 
-- (!\Div6|auto_generated|divider|divider|op_3~10_combout\ & ((\Div6|auto_generated|divider|divider|op_3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter7[3]~input_o\,
	datab => \Div6|auto_generated|divider|divider|op_3~0_combout\,
	datac => \Div6|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div6|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[26]~78_combout\);

-- Location: LCCOMB_X14_Y20_N14
\Div6|auto_generated|divider|divider|StageOut[26]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[26]~63_combout\ = (!\Div6|auto_generated|divider|divider|op_4~10_combout\ & \Div6|auto_generated|divider|divider|op_4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div6|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div6|auto_generated|divider|divider|op_4~2_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[26]~63_combout\);

-- Location: LCCOMB_X16_Y20_N0
\Div6|auto_generated|divider|divider|StageOut[25]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[25]~64_combout\ = (\Div6|auto_generated|divider|divider|op_4~10_combout\ & \r_in_filter7[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div6|auto_generated|divider|divider|op_4~10_combout\,
	datad => \r_in_filter7[2]~input_o\,
	combout => \Div6|auto_generated|divider|divider|StageOut[25]~64_combout\);

-- Location: LCCOMB_X16_Y20_N10
\Div6|auto_generated|divider|divider|StageOut[25]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[25]~65_combout\ = (\Div6|auto_generated|divider|divider|op_4~0_combout\ & !\Div6|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div6|auto_generated|divider|divider|op_4~0_combout\,
	datad => \Div6|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[25]~65_combout\);

-- Location: IOIBUF_X18_Y24_N15
\r_in_filter7[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter7(1),
	o => \r_in_filter7[1]~input_o\);

-- Location: LCCOMB_X17_Y20_N6
\Div6|auto_generated|divider|divider|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_5~0_combout\ = \r_in_filter7[1]~input_o\ $ (VCC)
-- \Div6|auto_generated|divider|divider|op_5~1\ = CARRY(\r_in_filter7[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter7[1]~input_o\,
	datad => VCC,
	combout => \Div6|auto_generated|divider|divider|op_5~0_combout\,
	cout => \Div6|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X17_Y20_N8
\Div6|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_5~2_combout\ = (\Div6|auto_generated|divider|divider|op_5~1\ & (((\Div6|auto_generated|divider|divider|StageOut[25]~64_combout\) # (\Div6|auto_generated|divider|divider|StageOut[25]~65_combout\)))) # 
-- (!\Div6|auto_generated|divider|divider|op_5~1\ & (!\Div6|auto_generated|divider|divider|StageOut[25]~64_combout\ & (!\Div6|auto_generated|divider|divider|StageOut[25]~65_combout\)))
-- \Div6|auto_generated|divider|divider|op_5~3\ = CARRY((!\Div6|auto_generated|divider|divider|StageOut[25]~64_combout\ & (!\Div6|auto_generated|divider|divider|StageOut[25]~65_combout\ & !\Div6|auto_generated|divider|divider|op_5~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|StageOut[25]~64_combout\,
	datab => \Div6|auto_generated|divider|divider|StageOut[25]~65_combout\,
	datad => VCC,
	cin => \Div6|auto_generated|divider|divider|op_5~1\,
	combout => \Div6|auto_generated|divider|divider|op_5~2_combout\,
	cout => \Div6|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X17_Y20_N10
\Div6|auto_generated|divider|divider|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_5~4_combout\ = (\Div6|auto_generated|divider|divider|op_5~3\ & ((((\Div6|auto_generated|divider|divider|StageOut[26]~78_combout\) # (\Div6|auto_generated|divider|divider|StageOut[26]~63_combout\))))) # 
-- (!\Div6|auto_generated|divider|divider|op_5~3\ & ((\Div6|auto_generated|divider|divider|StageOut[26]~78_combout\) # ((\Div6|auto_generated|divider|divider|StageOut[26]~63_combout\) # (GND))))
-- \Div6|auto_generated|divider|divider|op_5~5\ = CARRY((\Div6|auto_generated|divider|divider|StageOut[26]~78_combout\) # ((\Div6|auto_generated|divider|divider|StageOut[26]~63_combout\) # (!\Div6|auto_generated|divider|divider|op_5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|StageOut[26]~78_combout\,
	datab => \Div6|auto_generated|divider|divider|StageOut[26]~63_combout\,
	datad => VCC,
	cin => \Div6|auto_generated|divider|divider|op_5~3\,
	combout => \Div6|auto_generated|divider|divider|op_5~4_combout\,
	cout => \Div6|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X17_Y20_N12
\Div6|auto_generated|divider|divider|op_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_5~6_combout\ = (\Div6|auto_generated|divider|divider|StageOut[27]~72_combout\ & (((!\Div6|auto_generated|divider|divider|op_5~5\)))) # (!\Div6|auto_generated|divider|divider|StageOut[27]~72_combout\ & 
-- ((\Div6|auto_generated|divider|divider|StageOut[27]~62_combout\ & (!\Div6|auto_generated|divider|divider|op_5~5\)) # (!\Div6|auto_generated|divider|divider|StageOut[27]~62_combout\ & ((\Div6|auto_generated|divider|divider|op_5~5\) # (GND)))))
-- \Div6|auto_generated|divider|divider|op_5~7\ = CARRY(((!\Div6|auto_generated|divider|divider|StageOut[27]~72_combout\ & !\Div6|auto_generated|divider|divider|StageOut[27]~62_combout\)) # (!\Div6|auto_generated|divider|divider|op_5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|StageOut[27]~72_combout\,
	datab => \Div6|auto_generated|divider|divider|StageOut[27]~62_combout\,
	datad => VCC,
	cin => \Div6|auto_generated|divider|divider|op_5~5\,
	combout => \Div6|auto_generated|divider|divider|op_5~6_combout\,
	cout => \Div6|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X17_Y20_N14
\Div6|auto_generated|divider|divider|op_5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_5~9_cout\ = CARRY((\Div6|auto_generated|divider|divider|StageOut[28]~61_combout\) # ((\Div6|auto_generated|divider|divider|StageOut[28]~71_combout\) # (!\Div6|auto_generated|divider|divider|op_5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|StageOut[28]~61_combout\,
	datab => \Div6|auto_generated|divider|divider|StageOut[28]~71_combout\,
	datad => VCC,
	cin => \Div6|auto_generated|divider|divider|op_5~7\,
	cout => \Div6|auto_generated|divider|divider|op_5~9_cout\);

-- Location: LCCOMB_X17_Y20_N16
\Div6|auto_generated|divider|divider|op_5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_5~10_combout\ = !\Div6|auto_generated|divider|divider|op_5~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div6|auto_generated|divider|divider|op_5~9_cout\,
	combout => \Div6|auto_generated|divider|divider|op_5~10_combout\);

-- Location: LCCOMB_X16_Y20_N28
\Div6|auto_generated|divider|divider|StageOut[33]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[33]~73_combout\ = (\Div6|auto_generated|divider|divider|op_5~10_combout\ & ((\Div6|auto_generated|divider|divider|StageOut[27]~72_combout\) # ((!\Div6|auto_generated|divider|divider|op_4~10_combout\ & 
-- \Div6|auto_generated|divider|divider|op_4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|StageOut[27]~72_combout\,
	datab => \Div6|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div6|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div6|auto_generated|divider|divider|op_4~4_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[33]~73_combout\);

-- Location: LCCOMB_X17_Y20_N0
\Div6|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\Div6|auto_generated|divider|divider|op_5~6_combout\ & !\Div6|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|op_5~6_combout\,
	datad => \Div6|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X14_Y20_N10
\Div6|auto_generated|divider|divider|StageOut[32]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[32]~74_combout\ = (\Div6|auto_generated|divider|divider|op_5~10_combout\ & ((\Div6|auto_generated|divider|divider|StageOut[26]~78_combout\) # ((!\Div6|auto_generated|divider|divider|op_4~10_combout\ & 
-- \Div6|auto_generated|divider|divider|op_4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|StageOut[26]~78_combout\,
	datab => \Div6|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div6|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div6|auto_generated|divider|divider|op_4~2_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[32]~74_combout\);

-- Location: LCCOMB_X17_Y20_N18
\Div6|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\Div6|auto_generated|divider|divider|op_5~4_combout\ & !\Div6|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|op_5~4_combout\,
	datad => \Div6|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X16_Y20_N30
\Div6|auto_generated|divider|divider|StageOut[31]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[31]~79_combout\ = (\Div6|auto_generated|divider|divider|op_5~10_combout\ & ((\Div6|auto_generated|divider|divider|op_4~10_combout\ & (\r_in_filter7[2]~input_o\)) # 
-- (!\Div6|auto_generated|divider|divider|op_4~10_combout\ & ((\Div6|auto_generated|divider|divider|op_4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter7[2]~input_o\,
	datab => \Div6|auto_generated|divider|divider|op_4~0_combout\,
	datac => \Div6|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div6|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X17_Y20_N4
\Div6|auto_generated|divider|divider|StageOut[31]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[31]~68_combout\ = (\Div6|auto_generated|divider|divider|op_5~2_combout\ & !\Div6|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div6|auto_generated|divider|divider|op_5~2_combout\,
	datad => \Div6|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[31]~68_combout\);

-- Location: LCCOMB_X14_Y20_N16
\Div6|auto_generated|divider|divider|StageOut[30]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[30]~69_combout\ = (\Div6|auto_generated|divider|divider|op_5~10_combout\ & \r_in_filter7[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div6|auto_generated|divider|divider|op_5~10_combout\,
	datad => \r_in_filter7[1]~input_o\,
	combout => \Div6|auto_generated|divider|divider|StageOut[30]~69_combout\);

-- Location: LCCOMB_X17_Y20_N2
\Div6|auto_generated|divider|divider|StageOut[30]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|StageOut[30]~70_combout\ = (\Div6|auto_generated|divider|divider|op_5~0_combout\ & !\Div6|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|op_5~0_combout\,
	datad => \Div6|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div6|auto_generated|divider|divider|StageOut[30]~70_combout\);

-- Location: IOIBUF_X16_Y24_N15
\r_in_filter7[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter7(0),
	o => \r_in_filter7[0]~input_o\);

-- Location: LCCOMB_X17_Y20_N20
\Div6|auto_generated|divider|divider|op_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_6~1_cout\ = CARRY(\r_in_filter7[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter7[0]~input_o\,
	datad => VCC,
	cout => \Div6|auto_generated|divider|divider|op_6~1_cout\);

-- Location: LCCOMB_X17_Y20_N22
\Div6|auto_generated|divider|divider|op_6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_6~3_cout\ = CARRY((!\Div6|auto_generated|divider|divider|StageOut[30]~69_combout\ & (!\Div6|auto_generated|divider|divider|StageOut[30]~70_combout\ & !\Div6|auto_generated|divider|divider|op_6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datab => \Div6|auto_generated|divider|divider|StageOut[30]~70_combout\,
	datad => VCC,
	cin => \Div6|auto_generated|divider|divider|op_6~1_cout\,
	cout => \Div6|auto_generated|divider|divider|op_6~3_cout\);

-- Location: LCCOMB_X17_Y20_N24
\Div6|auto_generated|divider|divider|op_6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_6~5_cout\ = CARRY((\Div6|auto_generated|divider|divider|StageOut[31]~79_combout\) # ((\Div6|auto_generated|divider|divider|StageOut[31]~68_combout\) # (!\Div6|auto_generated|divider|divider|op_6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datab => \Div6|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datad => VCC,
	cin => \Div6|auto_generated|divider|divider|op_6~3_cout\,
	cout => \Div6|auto_generated|divider|divider|op_6~5_cout\);

-- Location: LCCOMB_X17_Y20_N26
\Div6|auto_generated|divider|divider|op_6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_6~7_cout\ = CARRY(((!\Div6|auto_generated|divider|divider|StageOut[32]~74_combout\ & !\Div6|auto_generated|divider|divider|StageOut[32]~67_combout\)) # (!\Div6|auto_generated|divider|divider|op_6~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|StageOut[32]~74_combout\,
	datab => \Div6|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \Div6|auto_generated|divider|divider|op_6~5_cout\,
	cout => \Div6|auto_generated|divider|divider|op_6~7_cout\);

-- Location: LCCOMB_X17_Y20_N28
\Div6|auto_generated|divider|divider|op_6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_6~9_cout\ = CARRY((\Div6|auto_generated|divider|divider|StageOut[33]~73_combout\) # ((\Div6|auto_generated|divider|divider|StageOut[33]~66_combout\) # (!\Div6|auto_generated|divider|divider|op_6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|StageOut[33]~73_combout\,
	datab => \Div6|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datad => VCC,
	cin => \Div6|auto_generated|divider|divider|op_6~7_cout\,
	cout => \Div6|auto_generated|divider|divider|op_6~9_cout\);

-- Location: LCCOMB_X17_Y20_N30
\Div6|auto_generated|divider|divider|op_6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div6|auto_generated|divider|divider|op_6~10_combout\ = !\Div6|auto_generated|divider|divider|op_6~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div6|auto_generated|divider|divider|op_6~9_cout\,
	combout => \Div6|auto_generated|divider|divider|op_6~10_combout\);

-- Location: IOIBUF_X0_Y10_N1
\r_in_filter6[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter6(7),
	o => \r_in_filter6[7]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\r_in_filter6[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter6(6),
	o => \r_in_filter6[6]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\r_in_filter6[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter6(5),
	o => \r_in_filter6[5]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\r_in_filter6[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter6(4),
	o => \r_in_filter6[4]~input_o\);

-- Location: LCCOMB_X11_Y12_N20
\Div5|auto_generated|divider|divider|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_2~0_combout\ = \r_in_filter6[4]~input_o\ $ (VCC)
-- \Div5|auto_generated|divider|divider|op_2~1\ = CARRY(\r_in_filter6[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter6[4]~input_o\,
	datad => VCC,
	combout => \Div5|auto_generated|divider|divider|op_2~0_combout\,
	cout => \Div5|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X11_Y12_N22
\Div5|auto_generated|divider|divider|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_2~2_combout\ = (\r_in_filter6[5]~input_o\ & (\Div5|auto_generated|divider|divider|op_2~1\ & VCC)) # (!\r_in_filter6[5]~input_o\ & (!\Div5|auto_generated|divider|divider|op_2~1\))
-- \Div5|auto_generated|divider|divider|op_2~3\ = CARRY((!\r_in_filter6[5]~input_o\ & !\Div5|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter6[5]~input_o\,
	datad => VCC,
	cin => \Div5|auto_generated|divider|divider|op_2~1\,
	combout => \Div5|auto_generated|divider|divider|op_2~2_combout\,
	cout => \Div5|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X11_Y12_N24
\Div5|auto_generated|divider|divider|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_2~4_combout\ = (\r_in_filter6[6]~input_o\ & ((GND) # (!\Div5|auto_generated|divider|divider|op_2~3\))) # (!\r_in_filter6[6]~input_o\ & (\Div5|auto_generated|divider|divider|op_2~3\ $ (GND)))
-- \Div5|auto_generated|divider|divider|op_2~5\ = CARRY((\r_in_filter6[6]~input_o\) # (!\Div5|auto_generated|divider|divider|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter6[6]~input_o\,
	datad => VCC,
	cin => \Div5|auto_generated|divider|divider|op_2~3\,
	combout => \Div5|auto_generated|divider|divider|op_2~4_combout\,
	cout => \Div5|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X11_Y12_N26
\Div5|auto_generated|divider|divider|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_2~6_combout\ = (\r_in_filter6[7]~input_o\ & (!\Div5|auto_generated|divider|divider|op_2~5\)) # (!\r_in_filter6[7]~input_o\ & ((\Div5|auto_generated|divider|divider|op_2~5\) # (GND)))
-- \Div5|auto_generated|divider|divider|op_2~7\ = CARRY((!\Div5|auto_generated|divider|divider|op_2~5\) # (!\r_in_filter6[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter6[7]~input_o\,
	datad => VCC,
	cin => \Div5|auto_generated|divider|divider|op_2~5\,
	combout => \Div5|auto_generated|divider|divider|op_2~6_combout\,
	cout => \Div5|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X11_Y12_N28
\Div5|auto_generated|divider|divider|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_2~8_combout\ = \Div5|auto_generated|divider|divider|op_2~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div5|auto_generated|divider|divider|op_2~7\,
	combout => \Div5|auto_generated|divider|divider|op_2~8_combout\);

-- Location: LCCOMB_X11_Y12_N2
\Div5|auto_generated|divider|divider|StageOut[18]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[18]~49_combout\ = (\Div5|auto_generated|divider|divider|op_2~6_combout\ & !\Div5|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div5|auto_generated|divider|divider|op_2~6_combout\,
	datad => \Div5|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[18]~49_combout\);

-- Location: LCCOMB_X11_Y12_N0
\Div5|auto_generated|divider|divider|StageOut[18]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[18]~48_combout\ = (\r_in_filter6[7]~input_o\ & \Div5|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_in_filter6[7]~input_o\,
	datad => \Div5|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[18]~48_combout\);

-- Location: LCCOMB_X11_Y12_N4
\Div5|auto_generated|divider|divider|StageOut[17]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[17]~50_combout\ = (\r_in_filter6[6]~input_o\ & \Div5|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_in_filter6[6]~input_o\,
	datad => \Div5|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[17]~50_combout\);

-- Location: LCCOMB_X11_Y12_N6
\Div5|auto_generated|divider|divider|StageOut[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[17]~51_combout\ = (\Div5|auto_generated|divider|divider|op_2~4_combout\ & !\Div5|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div5|auto_generated|divider|divider|op_2~4_combout\,
	datad => \Div5|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[17]~51_combout\);

-- Location: LCCOMB_X11_Y12_N16
\Div5|auto_generated|divider|divider|StageOut[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[16]~52_combout\ = (\r_in_filter6[5]~input_o\ & \Div5|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter6[5]~input_o\,
	datad => \Div5|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[16]~52_combout\);

-- Location: LCCOMB_X11_Y12_N18
\Div5|auto_generated|divider|divider|StageOut[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[16]~53_combout\ = (\Div5|auto_generated|divider|divider|op_2~2_combout\ & !\Div5|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div5|auto_generated|divider|divider|op_2~2_combout\,
	datad => \Div5|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[16]~53_combout\);

-- Location: LCCOMB_X11_Y12_N12
\Div5|auto_generated|divider|divider|StageOut[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[15]~54_combout\ = (\r_in_filter6[4]~input_o\ & \Div5|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_in_filter6[4]~input_o\,
	datad => \Div5|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[15]~54_combout\);

-- Location: LCCOMB_X11_Y12_N30
\Div5|auto_generated|divider|divider|StageOut[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[15]~55_combout\ = (\Div5|auto_generated|divider|divider|op_2~0_combout\ & !\Div5|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div5|auto_generated|divider|divider|op_2~0_combout\,
	datad => \Div5|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[15]~55_combout\);

-- Location: IOIBUF_X11_Y0_N22
\r_in_filter6[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter6(3),
	o => \r_in_filter6[3]~input_o\);

-- Location: LCCOMB_X12_Y12_N20
\Div5|auto_generated|divider|divider|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_3~0_combout\ = \r_in_filter6[3]~input_o\ $ (VCC)
-- \Div5|auto_generated|divider|divider|op_3~1\ = CARRY(\r_in_filter6[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter6[3]~input_o\,
	datad => VCC,
	combout => \Div5|auto_generated|divider|divider|op_3~0_combout\,
	cout => \Div5|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X12_Y12_N22
\Div5|auto_generated|divider|divider|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_3~2_combout\ = (\Div5|auto_generated|divider|divider|op_3~1\ & (((\Div5|auto_generated|divider|divider|StageOut[15]~54_combout\) # (\Div5|auto_generated|divider|divider|StageOut[15]~55_combout\)))) # 
-- (!\Div5|auto_generated|divider|divider|op_3~1\ & (!\Div5|auto_generated|divider|divider|StageOut[15]~54_combout\ & (!\Div5|auto_generated|divider|divider|StageOut[15]~55_combout\)))
-- \Div5|auto_generated|divider|divider|op_3~3\ = CARRY((!\Div5|auto_generated|divider|divider|StageOut[15]~54_combout\ & (!\Div5|auto_generated|divider|divider|StageOut[15]~55_combout\ & !\Div5|auto_generated|divider|divider|op_3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|StageOut[15]~54_combout\,
	datab => \Div5|auto_generated|divider|divider|StageOut[15]~55_combout\,
	datad => VCC,
	cin => \Div5|auto_generated|divider|divider|op_3~1\,
	combout => \Div5|auto_generated|divider|divider|op_3~2_combout\,
	cout => \Div5|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X12_Y12_N24
\Div5|auto_generated|divider|divider|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_3~4_combout\ = (\Div5|auto_generated|divider|divider|op_3~3\ & ((((\Div5|auto_generated|divider|divider|StageOut[16]~52_combout\) # (\Div5|auto_generated|divider|divider|StageOut[16]~53_combout\))))) # 
-- (!\Div5|auto_generated|divider|divider|op_3~3\ & ((\Div5|auto_generated|divider|divider|StageOut[16]~52_combout\) # ((\Div5|auto_generated|divider|divider|StageOut[16]~53_combout\) # (GND))))
-- \Div5|auto_generated|divider|divider|op_3~5\ = CARRY((\Div5|auto_generated|divider|divider|StageOut[16]~52_combout\) # ((\Div5|auto_generated|divider|divider|StageOut[16]~53_combout\) # (!\Div5|auto_generated|divider|divider|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|StageOut[16]~52_combout\,
	datab => \Div5|auto_generated|divider|divider|StageOut[16]~53_combout\,
	datad => VCC,
	cin => \Div5|auto_generated|divider|divider|op_3~3\,
	combout => \Div5|auto_generated|divider|divider|op_3~4_combout\,
	cout => \Div5|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X12_Y12_N26
\Div5|auto_generated|divider|divider|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_3~6_combout\ = (\Div5|auto_generated|divider|divider|StageOut[17]~50_combout\ & (((!\Div5|auto_generated|divider|divider|op_3~5\)))) # (!\Div5|auto_generated|divider|divider|StageOut[17]~50_combout\ & 
-- ((\Div5|auto_generated|divider|divider|StageOut[17]~51_combout\ & (!\Div5|auto_generated|divider|divider|op_3~5\)) # (!\Div5|auto_generated|divider|divider|StageOut[17]~51_combout\ & ((\Div5|auto_generated|divider|divider|op_3~5\) # (GND)))))
-- \Div5|auto_generated|divider|divider|op_3~7\ = CARRY(((!\Div5|auto_generated|divider|divider|StageOut[17]~50_combout\ & !\Div5|auto_generated|divider|divider|StageOut[17]~51_combout\)) # (!\Div5|auto_generated|divider|divider|op_3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|StageOut[17]~50_combout\,
	datab => \Div5|auto_generated|divider|divider|StageOut[17]~51_combout\,
	datad => VCC,
	cin => \Div5|auto_generated|divider|divider|op_3~5\,
	combout => \Div5|auto_generated|divider|divider|op_3~6_combout\,
	cout => \Div5|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X12_Y12_N28
\Div5|auto_generated|divider|divider|op_3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_3~9_cout\ = CARRY((\Div5|auto_generated|divider|divider|StageOut[18]~49_combout\) # ((\Div5|auto_generated|divider|divider|StageOut[18]~48_combout\) # (!\Div5|auto_generated|divider|divider|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|StageOut[18]~49_combout\,
	datab => \Div5|auto_generated|divider|divider|StageOut[18]~48_combout\,
	datad => VCC,
	cin => \Div5|auto_generated|divider|divider|op_3~7\,
	cout => \Div5|auto_generated|divider|divider|op_3~9_cout\);

-- Location: LCCOMB_X12_Y12_N30
\Div5|auto_generated|divider|divider|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_3~10_combout\ = !\Div5|auto_generated|divider|divider|op_3~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div5|auto_generated|divider|divider|op_3~9_cout\,
	combout => \Div5|auto_generated|divider|divider|op_3~10_combout\);

-- Location: LCCOMB_X11_Y12_N14
\Div5|auto_generated|divider|divider|StageOut[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[21]~77_combout\ = (\Div5|auto_generated|divider|divider|op_3~10_combout\ & ((\Div5|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter6[4]~input_o\))) # 
-- (!\Div5|auto_generated|divider|divider|op_2~8_combout\ & (\Div5|auto_generated|divider|divider|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|op_3~10_combout\,
	datab => \Div5|auto_generated|divider|divider|op_2~0_combout\,
	datac => \r_in_filter6[4]~input_o\,
	datad => \Div5|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[21]~77_combout\);

-- Location: LCCOMB_X12_Y13_N24
\Div5|auto_generated|divider|divider|StageOut[21]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[21]~58_combout\ = (!\Div5|auto_generated|divider|divider|op_3~10_combout\ & \Div5|auto_generated|divider|divider|op_3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div5|auto_generated|divider|divider|op_3~2_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[21]~58_combout\);

-- Location: LCCOMB_X12_Y12_N6
\Div5|auto_generated|divider|divider|StageOut[20]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[20]~60_combout\ = (!\Div5|auto_generated|divider|divider|op_3~10_combout\ & \Div5|auto_generated|divider|divider|op_3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div5|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div5|auto_generated|divider|divider|op_3~0_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[20]~60_combout\);

-- Location: LCCOMB_X12_Y12_N4
\Div5|auto_generated|divider|divider|StageOut[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[20]~59_combout\ = (\r_in_filter6[3]~input_o\ & \Div5|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter6[3]~input_o\,
	datac => \Div5|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[20]~59_combout\);

-- Location: IOIBUF_X11_Y24_N22
\r_in_filter6[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter6(2),
	o => \r_in_filter6[2]~input_o\);

-- Location: LCCOMB_X12_Y13_N6
\Div5|auto_generated|divider|divider|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_4~0_combout\ = \r_in_filter6[2]~input_o\ $ (VCC)
-- \Div5|auto_generated|divider|divider|op_4~1\ = CARRY(\r_in_filter6[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter6[2]~input_o\,
	datad => VCC,
	combout => \Div5|auto_generated|divider|divider|op_4~0_combout\,
	cout => \Div5|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X12_Y13_N8
\Div5|auto_generated|divider|divider|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_4~2_combout\ = (\Div5|auto_generated|divider|divider|op_4~1\ & (((\Div5|auto_generated|divider|divider|StageOut[20]~60_combout\) # (\Div5|auto_generated|divider|divider|StageOut[20]~59_combout\)))) # 
-- (!\Div5|auto_generated|divider|divider|op_4~1\ & (!\Div5|auto_generated|divider|divider|StageOut[20]~60_combout\ & (!\Div5|auto_generated|divider|divider|StageOut[20]~59_combout\)))
-- \Div5|auto_generated|divider|divider|op_4~3\ = CARRY((!\Div5|auto_generated|divider|divider|StageOut[20]~60_combout\ & (!\Div5|auto_generated|divider|divider|StageOut[20]~59_combout\ & !\Div5|auto_generated|divider|divider|op_4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|StageOut[20]~60_combout\,
	datab => \Div5|auto_generated|divider|divider|StageOut[20]~59_combout\,
	datad => VCC,
	cin => \Div5|auto_generated|divider|divider|op_4~1\,
	combout => \Div5|auto_generated|divider|divider|op_4~2_combout\,
	cout => \Div5|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X12_Y13_N10
\Div5|auto_generated|divider|divider|op_4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_4~4_combout\ = (\Div5|auto_generated|divider|divider|op_4~3\ & ((((\Div5|auto_generated|divider|divider|StageOut[21]~77_combout\) # (\Div5|auto_generated|divider|divider|StageOut[21]~58_combout\))))) # 
-- (!\Div5|auto_generated|divider|divider|op_4~3\ & ((\Div5|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((\Div5|auto_generated|divider|divider|StageOut[21]~58_combout\) # (GND))))
-- \Div5|auto_generated|divider|divider|op_4~5\ = CARRY((\Div5|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((\Div5|auto_generated|divider|divider|StageOut[21]~58_combout\) # (!\Div5|auto_generated|divider|divider|op_4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|StageOut[21]~77_combout\,
	datab => \Div5|auto_generated|divider|divider|StageOut[21]~58_combout\,
	datad => VCC,
	cin => \Div5|auto_generated|divider|divider|op_4~3\,
	combout => \Div5|auto_generated|divider|divider|op_4~4_combout\,
	cout => \Div5|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X11_Y12_N8
\Div5|auto_generated|divider|divider|StageOut[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[23]~75_combout\ = (\Div5|auto_generated|divider|divider|op_3~10_combout\ & ((\Div5|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter6[6]~input_o\))) # 
-- (!\Div5|auto_generated|divider|divider|op_2~8_combout\ & (\Div5|auto_generated|divider|divider|op_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|op_3~10_combout\,
	datab => \Div5|auto_generated|divider|divider|op_2~4_combout\,
	datac => \r_in_filter6[6]~input_o\,
	datad => \Div5|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[23]~75_combout\);

-- Location: LCCOMB_X12_Y12_N0
\Div5|auto_generated|divider|divider|StageOut[23]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[23]~56_combout\ = (\Div5|auto_generated|divider|divider|op_3~6_combout\ & !\Div5|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|op_3~6_combout\,
	datac => \Div5|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[23]~56_combout\);

-- Location: LCCOMB_X11_Y12_N10
\Div5|auto_generated|divider|divider|StageOut[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[22]~76_combout\ = (\Div5|auto_generated|divider|divider|op_3~10_combout\ & ((\Div5|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter6[5]~input_o\))) # 
-- (!\Div5|auto_generated|divider|divider|op_2~8_combout\ & (\Div5|auto_generated|divider|divider|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|op_2~2_combout\,
	datab => \r_in_filter6[5]~input_o\,
	datac => \Div5|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div5|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[22]~76_combout\);

-- Location: LCCOMB_X12_Y12_N10
\Div5|auto_generated|divider|divider|StageOut[22]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[22]~57_combout\ = (!\Div5|auto_generated|divider|divider|op_3~10_combout\ & \Div5|auto_generated|divider|divider|op_3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div5|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div5|auto_generated|divider|divider|op_3~4_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[22]~57_combout\);

-- Location: LCCOMB_X12_Y13_N12
\Div5|auto_generated|divider|divider|op_4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_4~6_combout\ = (\Div5|auto_generated|divider|divider|StageOut[22]~76_combout\ & (((!\Div5|auto_generated|divider|divider|op_4~5\)))) # (!\Div5|auto_generated|divider|divider|StageOut[22]~76_combout\ & 
-- ((\Div5|auto_generated|divider|divider|StageOut[22]~57_combout\ & (!\Div5|auto_generated|divider|divider|op_4~5\)) # (!\Div5|auto_generated|divider|divider|StageOut[22]~57_combout\ & ((\Div5|auto_generated|divider|divider|op_4~5\) # (GND)))))
-- \Div5|auto_generated|divider|divider|op_4~7\ = CARRY(((!\Div5|auto_generated|divider|divider|StageOut[22]~76_combout\ & !\Div5|auto_generated|divider|divider|StageOut[22]~57_combout\)) # (!\Div5|auto_generated|divider|divider|op_4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|StageOut[22]~76_combout\,
	datab => \Div5|auto_generated|divider|divider|StageOut[22]~57_combout\,
	datad => VCC,
	cin => \Div5|auto_generated|divider|divider|op_4~5\,
	combout => \Div5|auto_generated|divider|divider|op_4~6_combout\,
	cout => \Div5|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X12_Y13_N14
\Div5|auto_generated|divider|divider|op_4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_4~9_cout\ = CARRY((\Div5|auto_generated|divider|divider|StageOut[23]~75_combout\) # ((\Div5|auto_generated|divider|divider|StageOut[23]~56_combout\) # (!\Div5|auto_generated|divider|divider|op_4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|StageOut[23]~75_combout\,
	datab => \Div5|auto_generated|divider|divider|StageOut[23]~56_combout\,
	datad => VCC,
	cin => \Div5|auto_generated|divider|divider|op_4~7\,
	cout => \Div5|auto_generated|divider|divider|op_4~9_cout\);

-- Location: LCCOMB_X12_Y13_N16
\Div5|auto_generated|divider|divider|op_4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_4~10_combout\ = !\Div5|auto_generated|divider|divider|op_4~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div5|auto_generated|divider|divider|op_4~9_cout\,
	combout => \Div5|auto_generated|divider|divider|op_4~10_combout\);

-- Location: LCCOMB_X12_Y13_N20
\Div5|auto_generated|divider|divider|StageOut[27]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[27]~62_combout\ = (\Div5|auto_generated|divider|divider|op_4~4_combout\ & !\Div5|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|op_4~4_combout\,
	datad => \Div5|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[27]~62_combout\);

-- Location: LCCOMB_X12_Y13_N0
\Div5|auto_generated|divider|divider|StageOut[27]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[27]~72_combout\ = (\Div5|auto_generated|divider|divider|op_4~10_combout\ & ((\Div5|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((!\Div5|auto_generated|divider|divider|op_3~10_combout\ & 
-- \Div5|auto_generated|divider|divider|op_3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|op_3~10_combout\,
	datab => \Div5|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div5|auto_generated|divider|divider|op_3~2_combout\,
	datad => \Div5|auto_generated|divider|divider|StageOut[21]~77_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[27]~72_combout\);

-- Location: LCCOMB_X12_Y13_N2
\Div5|auto_generated|divider|divider|StageOut[26]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[26]~63_combout\ = (\Div5|auto_generated|divider|divider|op_4~2_combout\ & !\Div5|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div5|auto_generated|divider|divider|op_4~2_combout\,
	datad => \Div5|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[26]~63_combout\);

-- Location: LCCOMB_X12_Y12_N2
\Div5|auto_generated|divider|divider|StageOut[26]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[26]~78_combout\ = (\Div5|auto_generated|divider|divider|op_4~10_combout\ & ((\Div5|auto_generated|divider|divider|op_3~10_combout\ & (\r_in_filter6[3]~input_o\)) # 
-- (!\Div5|auto_generated|divider|divider|op_3~10_combout\ & ((\Div5|auto_generated|divider|divider|op_3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|op_4~10_combout\,
	datab => \r_in_filter6[3]~input_o\,
	datac => \Div5|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div5|auto_generated|divider|divider|op_3~0_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[26]~78_combout\);

-- Location: LCCOMB_X12_Y13_N22
\Div5|auto_generated|divider|divider|StageOut[25]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[25]~65_combout\ = (\Div5|auto_generated|divider|divider|op_4~0_combout\ & !\Div5|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|op_4~0_combout\,
	datad => \Div5|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[25]~65_combout\);

-- Location: LCCOMB_X12_Y13_N28
\Div5|auto_generated|divider|divider|StageOut[25]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[25]~64_combout\ = (\r_in_filter6[2]~input_o\ & \Div5|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter6[2]~input_o\,
	datad => \Div5|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[25]~64_combout\);

-- Location: IOIBUF_X0_Y18_N15
\r_in_filter6[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter6(1),
	o => \r_in_filter6[1]~input_o\);

-- Location: LCCOMB_X11_Y13_N4
\Div5|auto_generated|divider|divider|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_5~0_combout\ = \r_in_filter6[1]~input_o\ $ (VCC)
-- \Div5|auto_generated|divider|divider|op_5~1\ = CARRY(\r_in_filter6[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter6[1]~input_o\,
	datad => VCC,
	combout => \Div5|auto_generated|divider|divider|op_5~0_combout\,
	cout => \Div5|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X11_Y13_N6
\Div5|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_5~2_combout\ = (\Div5|auto_generated|divider|divider|op_5~1\ & (((\Div5|auto_generated|divider|divider|StageOut[25]~65_combout\) # (\Div5|auto_generated|divider|divider|StageOut[25]~64_combout\)))) # 
-- (!\Div5|auto_generated|divider|divider|op_5~1\ & (!\Div5|auto_generated|divider|divider|StageOut[25]~65_combout\ & (!\Div5|auto_generated|divider|divider|StageOut[25]~64_combout\)))
-- \Div5|auto_generated|divider|divider|op_5~3\ = CARRY((!\Div5|auto_generated|divider|divider|StageOut[25]~65_combout\ & (!\Div5|auto_generated|divider|divider|StageOut[25]~64_combout\ & !\Div5|auto_generated|divider|divider|op_5~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|StageOut[25]~65_combout\,
	datab => \Div5|auto_generated|divider|divider|StageOut[25]~64_combout\,
	datad => VCC,
	cin => \Div5|auto_generated|divider|divider|op_5~1\,
	combout => \Div5|auto_generated|divider|divider|op_5~2_combout\,
	cout => \Div5|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X11_Y13_N8
\Div5|auto_generated|divider|divider|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_5~4_combout\ = (\Div5|auto_generated|divider|divider|op_5~3\ & ((((\Div5|auto_generated|divider|divider|StageOut[26]~63_combout\) # (\Div5|auto_generated|divider|divider|StageOut[26]~78_combout\))))) # 
-- (!\Div5|auto_generated|divider|divider|op_5~3\ & ((\Div5|auto_generated|divider|divider|StageOut[26]~63_combout\) # ((\Div5|auto_generated|divider|divider|StageOut[26]~78_combout\) # (GND))))
-- \Div5|auto_generated|divider|divider|op_5~5\ = CARRY((\Div5|auto_generated|divider|divider|StageOut[26]~63_combout\) # ((\Div5|auto_generated|divider|divider|StageOut[26]~78_combout\) # (!\Div5|auto_generated|divider|divider|op_5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|StageOut[26]~63_combout\,
	datab => \Div5|auto_generated|divider|divider|StageOut[26]~78_combout\,
	datad => VCC,
	cin => \Div5|auto_generated|divider|divider|op_5~3\,
	combout => \Div5|auto_generated|divider|divider|op_5~4_combout\,
	cout => \Div5|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X11_Y13_N10
\Div5|auto_generated|divider|divider|op_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_5~6_combout\ = (\Div5|auto_generated|divider|divider|StageOut[27]~62_combout\ & (((!\Div5|auto_generated|divider|divider|op_5~5\)))) # (!\Div5|auto_generated|divider|divider|StageOut[27]~62_combout\ & 
-- ((\Div5|auto_generated|divider|divider|StageOut[27]~72_combout\ & (!\Div5|auto_generated|divider|divider|op_5~5\)) # (!\Div5|auto_generated|divider|divider|StageOut[27]~72_combout\ & ((\Div5|auto_generated|divider|divider|op_5~5\) # (GND)))))
-- \Div5|auto_generated|divider|divider|op_5~7\ = CARRY(((!\Div5|auto_generated|divider|divider|StageOut[27]~62_combout\ & !\Div5|auto_generated|divider|divider|StageOut[27]~72_combout\)) # (!\Div5|auto_generated|divider|divider|op_5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|StageOut[27]~62_combout\,
	datab => \Div5|auto_generated|divider|divider|StageOut[27]~72_combout\,
	datad => VCC,
	cin => \Div5|auto_generated|divider|divider|op_5~5\,
	combout => \Div5|auto_generated|divider|divider|op_5~6_combout\,
	cout => \Div5|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X12_Y12_N16
\Div5|auto_generated|divider|divider|StageOut[28]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[28]~71_combout\ = (\Div5|auto_generated|divider|divider|op_4~10_combout\ & ((\Div5|auto_generated|divider|divider|StageOut[22]~76_combout\) # ((\Div5|auto_generated|divider|divider|op_3~4_combout\ & 
-- !\Div5|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|StageOut[22]~76_combout\,
	datab => \Div5|auto_generated|divider|divider|op_3~4_combout\,
	datac => \Div5|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div5|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[28]~71_combout\);

-- Location: LCCOMB_X12_Y13_N26
\Div5|auto_generated|divider|divider|StageOut[28]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[28]~61_combout\ = (\Div5|auto_generated|divider|divider|op_4~6_combout\ & !\Div5|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|op_4~6_combout\,
	datad => \Div5|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[28]~61_combout\);

-- Location: LCCOMB_X11_Y13_N12
\Div5|auto_generated|divider|divider|op_5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_5~9_cout\ = CARRY((\Div5|auto_generated|divider|divider|StageOut[28]~71_combout\) # ((\Div5|auto_generated|divider|divider|StageOut[28]~61_combout\) # (!\Div5|auto_generated|divider|divider|op_5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|StageOut[28]~71_combout\,
	datab => \Div5|auto_generated|divider|divider|StageOut[28]~61_combout\,
	datad => VCC,
	cin => \Div5|auto_generated|divider|divider|op_5~7\,
	cout => \Div5|auto_generated|divider|divider|op_5~9_cout\);

-- Location: LCCOMB_X11_Y13_N14
\Div5|auto_generated|divider|divider|op_5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_5~10_combout\ = !\Div5|auto_generated|divider|divider|op_5~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div5|auto_generated|divider|divider|op_5~9_cout\,
	combout => \Div5|auto_generated|divider|divider|op_5~10_combout\);

-- Location: LCCOMB_X13_Y13_N0
\Div5|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\Div5|auto_generated|divider|divider|op_5~6_combout\ & !\Div5|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|op_5~6_combout\,
	datad => \Div5|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X12_Y13_N18
\Div5|auto_generated|divider|divider|StageOut[33]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[33]~73_combout\ = (\Div5|auto_generated|divider|divider|op_5~10_combout\ & ((\Div5|auto_generated|divider|divider|StageOut[27]~72_combout\) # ((\Div5|auto_generated|divider|divider|op_4~4_combout\ & 
-- !\Div5|auto_generated|divider|divider|op_4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|op_4~4_combout\,
	datab => \Div5|auto_generated|divider|divider|StageOut[27]~72_combout\,
	datac => \Div5|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div5|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[33]~73_combout\);

-- Location: LCCOMB_X12_Y13_N4
\Div5|auto_generated|divider|divider|StageOut[32]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[32]~74_combout\ = (\Div5|auto_generated|divider|divider|op_5~10_combout\ & ((\Div5|auto_generated|divider|divider|StageOut[26]~78_combout\) # ((!\Div5|auto_generated|divider|divider|op_4~10_combout\ & 
-- \Div5|auto_generated|divider|divider|op_4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|op_5~10_combout\,
	datab => \Div5|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div5|auto_generated|divider|divider|op_4~2_combout\,
	datad => \Div5|auto_generated|divider|divider|StageOut[26]~78_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[32]~74_combout\);

-- Location: LCCOMB_X11_Y13_N0
\Div5|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\Div5|auto_generated|divider|divider|op_5~4_combout\ & !\Div5|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div5|auto_generated|divider|divider|op_5~4_combout\,
	datac => \Div5|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X12_Y13_N30
\Div5|auto_generated|divider|divider|StageOut[31]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[31]~79_combout\ = (\Div5|auto_generated|divider|divider|op_5~10_combout\ & ((\Div5|auto_generated|divider|divider|op_4~10_combout\ & ((\r_in_filter6[2]~input_o\))) # 
-- (!\Div5|auto_generated|divider|divider|op_4~10_combout\ & (\Div5|auto_generated|divider|divider|op_4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|op_4~0_combout\,
	datab => \r_in_filter6[2]~input_o\,
	datac => \Div5|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div5|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X11_Y13_N2
\Div5|auto_generated|divider|divider|StageOut[31]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[31]~68_combout\ = (!\Div5|auto_generated|divider|divider|op_5~10_combout\ & \Div5|auto_generated|divider|divider|op_5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div5|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div5|auto_generated|divider|divider|op_5~2_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[31]~68_combout\);

-- Location: LCCOMB_X11_Y13_N30
\Div5|auto_generated|divider|divider|StageOut[30]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[30]~70_combout\ = (\Div5|auto_generated|divider|divider|op_5~0_combout\ & !\Div5|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div5|auto_generated|divider|divider|op_5~0_combout\,
	datac => \Div5|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div5|auto_generated|divider|divider|StageOut[30]~70_combout\);

-- Location: LCCOMB_X11_Y13_N16
\Div5|auto_generated|divider|divider|StageOut[30]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|StageOut[30]~69_combout\ = (\Div5|auto_generated|divider|divider|op_5~10_combout\ & \r_in_filter6[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div5|auto_generated|divider|divider|op_5~10_combout\,
	datad => \r_in_filter6[1]~input_o\,
	combout => \Div5|auto_generated|divider|divider|StageOut[30]~69_combout\);

-- Location: IOIBUF_X0_Y10_N15
\r_in_filter6[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter6(0),
	o => \r_in_filter6[0]~input_o\);

-- Location: LCCOMB_X11_Y13_N18
\Div5|auto_generated|divider|divider|op_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_6~1_cout\ = CARRY(\r_in_filter6[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter6[0]~input_o\,
	datad => VCC,
	cout => \Div5|auto_generated|divider|divider|op_6~1_cout\);

-- Location: LCCOMB_X11_Y13_N20
\Div5|auto_generated|divider|divider|op_6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_6~3_cout\ = CARRY((!\Div5|auto_generated|divider|divider|StageOut[30]~70_combout\ & (!\Div5|auto_generated|divider|divider|StageOut[30]~69_combout\ & !\Div5|auto_generated|divider|divider|op_6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|StageOut[30]~70_combout\,
	datab => \Div5|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datad => VCC,
	cin => \Div5|auto_generated|divider|divider|op_6~1_cout\,
	cout => \Div5|auto_generated|divider|divider|op_6~3_cout\);

-- Location: LCCOMB_X11_Y13_N22
\Div5|auto_generated|divider|divider|op_6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_6~5_cout\ = CARRY((\Div5|auto_generated|divider|divider|StageOut[31]~79_combout\) # ((\Div5|auto_generated|divider|divider|StageOut[31]~68_combout\) # (!\Div5|auto_generated|divider|divider|op_6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datab => \Div5|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datad => VCC,
	cin => \Div5|auto_generated|divider|divider|op_6~3_cout\,
	cout => \Div5|auto_generated|divider|divider|op_6~5_cout\);

-- Location: LCCOMB_X11_Y13_N24
\Div5|auto_generated|divider|divider|op_6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_6~7_cout\ = CARRY(((!\Div5|auto_generated|divider|divider|StageOut[32]~74_combout\ & !\Div5|auto_generated|divider|divider|StageOut[32]~67_combout\)) # (!\Div5|auto_generated|divider|divider|op_6~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|StageOut[32]~74_combout\,
	datab => \Div5|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \Div5|auto_generated|divider|divider|op_6~5_cout\,
	cout => \Div5|auto_generated|divider|divider|op_6~7_cout\);

-- Location: LCCOMB_X11_Y13_N26
\Div5|auto_generated|divider|divider|op_6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_6~9_cout\ = CARRY((\Div5|auto_generated|divider|divider|StageOut[33]~66_combout\) # ((\Div5|auto_generated|divider|divider|StageOut[33]~73_combout\) # (!\Div5|auto_generated|divider|divider|op_6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datab => \Div5|auto_generated|divider|divider|StageOut[33]~73_combout\,
	datad => VCC,
	cin => \Div5|auto_generated|divider|divider|op_6~7_cout\,
	cout => \Div5|auto_generated|divider|divider|op_6~9_cout\);

-- Location: LCCOMB_X11_Y13_N28
\Div5|auto_generated|divider|divider|op_6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div5|auto_generated|divider|divider|op_6~10_combout\ = !\Div5|auto_generated|divider|divider|op_6~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div5|auto_generated|divider|divider|op_6~9_cout\,
	combout => \Div5|auto_generated|divider|divider|op_6~10_combout\);

-- Location: IOIBUF_X7_Y24_N1
\r_in_filter4[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter4(4),
	o => \r_in_filter4[4]~input_o\);

-- Location: IOIBUF_X7_Y24_N15
\r_in_filter4[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter4(7),
	o => \r_in_filter4[7]~input_o\);

-- Location: IOIBUF_X5_Y24_N8
\r_in_filter4[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter4(6),
	o => \r_in_filter4[6]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\r_in_filter4[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter4(5),
	o => \r_in_filter4[5]~input_o\);

-- Location: LCCOMB_X7_Y23_N16
\Div3|auto_generated|divider|divider|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_2~0_combout\ = \r_in_filter4[4]~input_o\ $ (VCC)
-- \Div3|auto_generated|divider|divider|op_2~1\ = CARRY(\r_in_filter4[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter4[4]~input_o\,
	datad => VCC,
	combout => \Div3|auto_generated|divider|divider|op_2~0_combout\,
	cout => \Div3|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X7_Y23_N18
\Div3|auto_generated|divider|divider|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_2~2_combout\ = (\r_in_filter4[5]~input_o\ & (\Div3|auto_generated|divider|divider|op_2~1\ & VCC)) # (!\r_in_filter4[5]~input_o\ & (!\Div3|auto_generated|divider|divider|op_2~1\))
-- \Div3|auto_generated|divider|divider|op_2~3\ = CARRY((!\r_in_filter4[5]~input_o\ & !\Div3|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter4[5]~input_o\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_2~1\,
	combout => \Div3|auto_generated|divider|divider|op_2~2_combout\,
	cout => \Div3|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X7_Y23_N20
\Div3|auto_generated|divider|divider|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_2~4_combout\ = (\r_in_filter4[6]~input_o\ & ((GND) # (!\Div3|auto_generated|divider|divider|op_2~3\))) # (!\r_in_filter4[6]~input_o\ & (\Div3|auto_generated|divider|divider|op_2~3\ $ (GND)))
-- \Div3|auto_generated|divider|divider|op_2~5\ = CARRY((\r_in_filter4[6]~input_o\) # (!\Div3|auto_generated|divider|divider|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter4[6]~input_o\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_2~3\,
	combout => \Div3|auto_generated|divider|divider|op_2~4_combout\,
	cout => \Div3|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X7_Y23_N22
\Div3|auto_generated|divider|divider|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_2~6_combout\ = (\r_in_filter4[7]~input_o\ & (!\Div3|auto_generated|divider|divider|op_2~5\)) # (!\r_in_filter4[7]~input_o\ & ((\Div3|auto_generated|divider|divider|op_2~5\) # (GND)))
-- \Div3|auto_generated|divider|divider|op_2~7\ = CARRY((!\Div3|auto_generated|divider|divider|op_2~5\) # (!\r_in_filter4[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter4[7]~input_o\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_2~5\,
	combout => \Div3|auto_generated|divider|divider|op_2~6_combout\,
	cout => \Div3|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X7_Y23_N24
\Div3|auto_generated|divider|divider|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_2~8_combout\ = \Div3|auto_generated|divider|divider|op_2~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div3|auto_generated|divider|divider|op_2~7\,
	combout => \Div3|auto_generated|divider|divider|op_2~8_combout\);

-- Location: LCCOMB_X7_Y23_N0
\Div3|auto_generated|divider|divider|StageOut[18]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[18]~49_combout\ = (\Div3|auto_generated|divider|divider|op_2~6_combout\ & !\Div3|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div3|auto_generated|divider|divider|op_2~6_combout\,
	datad => \Div3|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[18]~49_combout\);

-- Location: LCCOMB_X8_Y23_N24
\Div3|auto_generated|divider|divider|StageOut[18]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[18]~48_combout\ = (\Div3|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter4[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_2~8_combout\,
	datac => \r_in_filter4[7]~input_o\,
	combout => \Div3|auto_generated|divider|divider|StageOut[18]~48_combout\);

-- Location: LCCOMB_X7_Y23_N26
\Div3|auto_generated|divider|divider|StageOut[17]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[17]~50_combout\ = (\r_in_filter4[6]~input_o\ & \Div3|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_in_filter4[6]~input_o\,
	datad => \Div3|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[17]~50_combout\);

-- Location: LCCOMB_X7_Y23_N28
\Div3|auto_generated|divider|divider|StageOut[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[17]~51_combout\ = (\Div3|auto_generated|divider|divider|op_2~4_combout\ & !\Div3|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_2~4_combout\,
	datad => \Div3|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[17]~51_combout\);

-- Location: LCCOMB_X7_Y23_N8
\Div3|auto_generated|divider|divider|StageOut[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[16]~53_combout\ = (\Div3|auto_generated|divider|divider|op_2~2_combout\ & !\Div3|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_2~2_combout\,
	datad => \Div3|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[16]~53_combout\);

-- Location: LCCOMB_X7_Y23_N6
\Div3|auto_generated|divider|divider|StageOut[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[16]~52_combout\ = (\Div3|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter4[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_2~8_combout\,
	datac => \r_in_filter4[5]~input_o\,
	combout => \Div3|auto_generated|divider|divider|StageOut[16]~52_combout\);

-- Location: LCCOMB_X8_Y23_N22
\Div3|auto_generated|divider|divider|StageOut[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[15]~54_combout\ = (\Div3|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter4[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter4[4]~input_o\,
	combout => \Div3|auto_generated|divider|divider|StageOut[15]~54_combout\);

-- Location: LCCOMB_X8_Y23_N0
\Div3|auto_generated|divider|divider|StageOut[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[15]~55_combout\ = (\Div3|auto_generated|divider|divider|op_2~0_combout\ & !\Div3|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div3|auto_generated|divider|divider|op_2~0_combout\,
	datad => \Div3|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[15]~55_combout\);

-- Location: IOIBUF_X5_Y24_N22
\r_in_filter4[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter4(3),
	o => \r_in_filter4[3]~input_o\);

-- Location: LCCOMB_X8_Y23_N2
\Div3|auto_generated|divider|divider|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_3~0_combout\ = \r_in_filter4[3]~input_o\ $ (VCC)
-- \Div3|auto_generated|divider|divider|op_3~1\ = CARRY(\r_in_filter4[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter4[3]~input_o\,
	datad => VCC,
	combout => \Div3|auto_generated|divider|divider|op_3~0_combout\,
	cout => \Div3|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X8_Y23_N4
\Div3|auto_generated|divider|divider|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_3~2_combout\ = (\Div3|auto_generated|divider|divider|op_3~1\ & (((\Div3|auto_generated|divider|divider|StageOut[15]~54_combout\) # (\Div3|auto_generated|divider|divider|StageOut[15]~55_combout\)))) # 
-- (!\Div3|auto_generated|divider|divider|op_3~1\ & (!\Div3|auto_generated|divider|divider|StageOut[15]~54_combout\ & (!\Div3|auto_generated|divider|divider|StageOut[15]~55_combout\)))
-- \Div3|auto_generated|divider|divider|op_3~3\ = CARRY((!\Div3|auto_generated|divider|divider|StageOut[15]~54_combout\ & (!\Div3|auto_generated|divider|divider|StageOut[15]~55_combout\ & !\Div3|auto_generated|divider|divider|op_3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[15]~54_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[15]~55_combout\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_3~1\,
	combout => \Div3|auto_generated|divider|divider|op_3~2_combout\,
	cout => \Div3|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X8_Y23_N6
\Div3|auto_generated|divider|divider|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_3~4_combout\ = (\Div3|auto_generated|divider|divider|op_3~3\ & ((((\Div3|auto_generated|divider|divider|StageOut[16]~53_combout\) # (\Div3|auto_generated|divider|divider|StageOut[16]~52_combout\))))) # 
-- (!\Div3|auto_generated|divider|divider|op_3~3\ & ((\Div3|auto_generated|divider|divider|StageOut[16]~53_combout\) # ((\Div3|auto_generated|divider|divider|StageOut[16]~52_combout\) # (GND))))
-- \Div3|auto_generated|divider|divider|op_3~5\ = CARRY((\Div3|auto_generated|divider|divider|StageOut[16]~53_combout\) # ((\Div3|auto_generated|divider|divider|StageOut[16]~52_combout\) # (!\Div3|auto_generated|divider|divider|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[16]~53_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[16]~52_combout\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_3~3\,
	combout => \Div3|auto_generated|divider|divider|op_3~4_combout\,
	cout => \Div3|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X8_Y23_N8
\Div3|auto_generated|divider|divider|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_3~6_combout\ = (\Div3|auto_generated|divider|divider|StageOut[17]~50_combout\ & (((!\Div3|auto_generated|divider|divider|op_3~5\)))) # (!\Div3|auto_generated|divider|divider|StageOut[17]~50_combout\ & 
-- ((\Div3|auto_generated|divider|divider|StageOut[17]~51_combout\ & (!\Div3|auto_generated|divider|divider|op_3~5\)) # (!\Div3|auto_generated|divider|divider|StageOut[17]~51_combout\ & ((\Div3|auto_generated|divider|divider|op_3~5\) # (GND)))))
-- \Div3|auto_generated|divider|divider|op_3~7\ = CARRY(((!\Div3|auto_generated|divider|divider|StageOut[17]~50_combout\ & !\Div3|auto_generated|divider|divider|StageOut[17]~51_combout\)) # (!\Div3|auto_generated|divider|divider|op_3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[17]~50_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[17]~51_combout\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_3~5\,
	combout => \Div3|auto_generated|divider|divider|op_3~6_combout\,
	cout => \Div3|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X8_Y23_N10
\Div3|auto_generated|divider|divider|op_3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_3~9_cout\ = CARRY((\Div3|auto_generated|divider|divider|StageOut[18]~49_combout\) # ((\Div3|auto_generated|divider|divider|StageOut[18]~48_combout\) # (!\Div3|auto_generated|divider|divider|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[18]~49_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[18]~48_combout\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_3~7\,
	cout => \Div3|auto_generated|divider|divider|op_3~9_cout\);

-- Location: LCCOMB_X8_Y23_N12
\Div3|auto_generated|divider|divider|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_3~10_combout\ = !\Div3|auto_generated|divider|divider|op_3~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div3|auto_generated|divider|divider|op_3~9_cout\,
	combout => \Div3|auto_generated|divider|divider|op_3~10_combout\);

-- Location: LCCOMB_X8_Y23_N20
\Div3|auto_generated|divider|divider|StageOut[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[21]~77_combout\ = (\Div3|auto_generated|divider|divider|op_3~10_combout\ & ((\Div3|auto_generated|divider|divider|op_2~8_combout\ & (\r_in_filter4[4]~input_o\)) # 
-- (!\Div3|auto_generated|divider|divider|op_2~8_combout\ & ((\Div3|auto_generated|divider|divider|op_2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter4[4]~input_o\,
	datab => \Div3|auto_generated|divider|divider|op_2~8_combout\,
	datac => \Div3|auto_generated|divider|divider|op_2~0_combout\,
	datad => \Div3|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[21]~77_combout\);

-- Location: LCCOMB_X8_Y23_N18
\Div3|auto_generated|divider|divider|StageOut[23]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[23]~56_combout\ = (\Div3|auto_generated|divider|divider|op_3~6_combout\ & !\Div3|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|op_3~6_combout\,
	datad => \Div3|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[23]~56_combout\);

-- Location: LCCOMB_X7_Y23_N10
\Div3|auto_generated|divider|divider|StageOut[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[23]~75_combout\ = (\Div3|auto_generated|divider|divider|op_3~10_combout\ & ((\Div3|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter4[6]~input_o\))) # 
-- (!\Div3|auto_generated|divider|divider|op_2~8_combout\ & (\Div3|auto_generated|divider|divider|op_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|op_3~10_combout\,
	datab => \Div3|auto_generated|divider|divider|op_2~4_combout\,
	datac => \r_in_filter4[6]~input_o\,
	datad => \Div3|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[23]~75_combout\);

-- Location: LCCOMB_X8_Y23_N28
\Div3|auto_generated|divider|divider|StageOut[22]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[22]~57_combout\ = (\Div3|auto_generated|divider|divider|op_3~4_combout\ & !\Div3|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|op_3~4_combout\,
	datad => \Div3|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[22]~57_combout\);

-- Location: LCCOMB_X7_Y23_N4
\Div3|auto_generated|divider|divider|StageOut[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[22]~76_combout\ = (\Div3|auto_generated|divider|divider|op_3~10_combout\ & ((\Div3|auto_generated|divider|divider|op_2~8_combout\ & (\r_in_filter4[5]~input_o\)) # 
-- (!\Div3|auto_generated|divider|divider|op_2~8_combout\ & ((\Div3|auto_generated|divider|divider|op_2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter4[5]~input_o\,
	datab => \Div3|auto_generated|divider|divider|op_2~2_combout\,
	datac => \Div3|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div3|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[22]~76_combout\);

-- Location: LCCOMB_X8_Y23_N30
\Div3|auto_generated|divider|divider|StageOut[21]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[21]~58_combout\ = (\Div3|auto_generated|divider|divider|op_3~2_combout\ & !\Div3|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div3|auto_generated|divider|divider|op_3~2_combout\,
	datad => \Div3|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[21]~58_combout\);

-- Location: LCCOMB_X8_Y22_N30
\Div3|auto_generated|divider|divider|StageOut[20]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[20]~60_combout\ = (\Div3|auto_generated|divider|divider|op_3~0_combout\ & !\Div3|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|op_3~0_combout\,
	datac => \Div3|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[20]~60_combout\);

-- Location: LCCOMB_X8_Y22_N28
\Div3|auto_generated|divider|divider|StageOut[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[20]~59_combout\ = (\r_in_filter4[3]~input_o\ & \Div3|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter4[3]~input_o\,
	datac => \Div3|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[20]~59_combout\);

-- Location: IOIBUF_X9_Y24_N8
\r_in_filter4[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter4(2),
	o => \r_in_filter4[2]~input_o\);

-- Location: LCCOMB_X8_Y22_N0
\Div3|auto_generated|divider|divider|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_4~0_combout\ = \r_in_filter4[2]~input_o\ $ (VCC)
-- \Div3|auto_generated|divider|divider|op_4~1\ = CARRY(\r_in_filter4[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter4[2]~input_o\,
	datad => VCC,
	combout => \Div3|auto_generated|divider|divider|op_4~0_combout\,
	cout => \Div3|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X8_Y22_N2
\Div3|auto_generated|divider|divider|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_4~2_combout\ = (\Div3|auto_generated|divider|divider|op_4~1\ & (((\Div3|auto_generated|divider|divider|StageOut[20]~60_combout\) # (\Div3|auto_generated|divider|divider|StageOut[20]~59_combout\)))) # 
-- (!\Div3|auto_generated|divider|divider|op_4~1\ & (!\Div3|auto_generated|divider|divider|StageOut[20]~60_combout\ & (!\Div3|auto_generated|divider|divider|StageOut[20]~59_combout\)))
-- \Div3|auto_generated|divider|divider|op_4~3\ = CARRY((!\Div3|auto_generated|divider|divider|StageOut[20]~60_combout\ & (!\Div3|auto_generated|divider|divider|StageOut[20]~59_combout\ & !\Div3|auto_generated|divider|divider|op_4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[20]~60_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[20]~59_combout\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_4~1\,
	combout => \Div3|auto_generated|divider|divider|op_4~2_combout\,
	cout => \Div3|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X8_Y22_N4
\Div3|auto_generated|divider|divider|op_4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_4~4_combout\ = (\Div3|auto_generated|divider|divider|op_4~3\ & ((((\Div3|auto_generated|divider|divider|StageOut[21]~58_combout\) # (\Div3|auto_generated|divider|divider|StageOut[21]~77_combout\))))) # 
-- (!\Div3|auto_generated|divider|divider|op_4~3\ & ((\Div3|auto_generated|divider|divider|StageOut[21]~58_combout\) # ((\Div3|auto_generated|divider|divider|StageOut[21]~77_combout\) # (GND))))
-- \Div3|auto_generated|divider|divider|op_4~5\ = CARRY((\Div3|auto_generated|divider|divider|StageOut[21]~58_combout\) # ((\Div3|auto_generated|divider|divider|StageOut[21]~77_combout\) # (!\Div3|auto_generated|divider|divider|op_4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[21]~58_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[21]~77_combout\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_4~3\,
	combout => \Div3|auto_generated|divider|divider|op_4~4_combout\,
	cout => \Div3|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X8_Y22_N6
\Div3|auto_generated|divider|divider|op_4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_4~6_combout\ = (\Div3|auto_generated|divider|divider|StageOut[22]~57_combout\ & (((!\Div3|auto_generated|divider|divider|op_4~5\)))) # (!\Div3|auto_generated|divider|divider|StageOut[22]~57_combout\ & 
-- ((\Div3|auto_generated|divider|divider|StageOut[22]~76_combout\ & (!\Div3|auto_generated|divider|divider|op_4~5\)) # (!\Div3|auto_generated|divider|divider|StageOut[22]~76_combout\ & ((\Div3|auto_generated|divider|divider|op_4~5\) # (GND)))))
-- \Div3|auto_generated|divider|divider|op_4~7\ = CARRY(((!\Div3|auto_generated|divider|divider|StageOut[22]~57_combout\ & !\Div3|auto_generated|divider|divider|StageOut[22]~76_combout\)) # (!\Div3|auto_generated|divider|divider|op_4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[22]~57_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[22]~76_combout\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_4~5\,
	combout => \Div3|auto_generated|divider|divider|op_4~6_combout\,
	cout => \Div3|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X8_Y22_N8
\Div3|auto_generated|divider|divider|op_4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_4~9_cout\ = CARRY((\Div3|auto_generated|divider|divider|StageOut[23]~56_combout\) # ((\Div3|auto_generated|divider|divider|StageOut[23]~75_combout\) # (!\Div3|auto_generated|divider|divider|op_4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[23]~56_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[23]~75_combout\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_4~7\,
	cout => \Div3|auto_generated|divider|divider|op_4~9_cout\);

-- Location: LCCOMB_X8_Y22_N10
\Div3|auto_generated|divider|divider|op_4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_4~10_combout\ = !\Div3|auto_generated|divider|divider|op_4~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div3|auto_generated|divider|divider|op_4~9_cout\,
	combout => \Div3|auto_generated|divider|divider|op_4~10_combout\);

-- Location: LCCOMB_X8_Y23_N26
\Div3|auto_generated|divider|divider|StageOut[27]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[27]~72_combout\ = (\Div3|auto_generated|divider|divider|op_4~10_combout\ & ((\Div3|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((\Div3|auto_generated|divider|divider|op_3~2_combout\ & 
-- !\Div3|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[21]~77_combout\,
	datab => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div3|auto_generated|divider|divider|op_3~2_combout\,
	datad => \Div3|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[27]~72_combout\);

-- Location: LCCOMB_X8_Y22_N18
\Div3|auto_generated|divider|divider|StageOut[27]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[27]~62_combout\ = (\Div3|auto_generated|divider|divider|op_4~4_combout\ & !\Div3|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div3|auto_generated|divider|divider|op_4~4_combout\,
	datad => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[27]~62_combout\);

-- Location: LCCOMB_X8_Y22_N12
\Div3|auto_generated|divider|divider|StageOut[26]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[26]~78_combout\ = (\Div3|auto_generated|divider|divider|op_4~10_combout\ & ((\Div3|auto_generated|divider|divider|op_3~10_combout\ & ((\r_in_filter4[3]~input_o\))) # 
-- (!\Div3|auto_generated|divider|divider|op_3~10_combout\ & (\Div3|auto_generated|divider|divider|op_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Div3|auto_generated|divider|divider|op_3~10_combout\,
	datac => \Div3|auto_generated|divider|divider|op_3~0_combout\,
	datad => \r_in_filter4[3]~input_o\,
	combout => \Div3|auto_generated|divider|divider|StageOut[26]~78_combout\);

-- Location: LCCOMB_X8_Y22_N20
\Div3|auto_generated|divider|divider|StageOut[26]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[26]~63_combout\ = (\Div3|auto_generated|divider|divider|op_4~2_combout\ & !\Div3|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_4~2_combout\,
	datad => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[26]~63_combout\);

-- Location: LCCOMB_X8_Y22_N22
\Div3|auto_generated|divider|divider|StageOut[25]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[25]~65_combout\ = (\Div3|auto_generated|divider|divider|op_4~0_combout\ & !\Div3|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_4~0_combout\,
	datad => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[25]~65_combout\);

-- Location: LCCOMB_X9_Y21_N0
\Div3|auto_generated|divider|divider|StageOut[25]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[25]~64_combout\ = (\Div3|auto_generated|divider|divider|op_4~10_combout\ & \r_in_filter4[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	datac => \r_in_filter4[2]~input_o\,
	combout => \Div3|auto_generated|divider|divider|StageOut[25]~64_combout\);

-- Location: IOIBUF_X5_Y24_N1
\r_in_filter4[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter4(1),
	o => \r_in_filter4[1]~input_o\);

-- Location: LCCOMB_X9_Y22_N0
\Div3|auto_generated|divider|divider|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_5~0_combout\ = \r_in_filter4[1]~input_o\ $ (VCC)
-- \Div3|auto_generated|divider|divider|op_5~1\ = CARRY(\r_in_filter4[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter4[1]~input_o\,
	datad => VCC,
	combout => \Div3|auto_generated|divider|divider|op_5~0_combout\,
	cout => \Div3|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X9_Y22_N2
\Div3|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_5~2_combout\ = (\Div3|auto_generated|divider|divider|op_5~1\ & (((\Div3|auto_generated|divider|divider|StageOut[25]~65_combout\) # (\Div3|auto_generated|divider|divider|StageOut[25]~64_combout\)))) # 
-- (!\Div3|auto_generated|divider|divider|op_5~1\ & (!\Div3|auto_generated|divider|divider|StageOut[25]~65_combout\ & (!\Div3|auto_generated|divider|divider|StageOut[25]~64_combout\)))
-- \Div3|auto_generated|divider|divider|op_5~3\ = CARRY((!\Div3|auto_generated|divider|divider|StageOut[25]~65_combout\ & (!\Div3|auto_generated|divider|divider|StageOut[25]~64_combout\ & !\Div3|auto_generated|divider|divider|op_5~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[25]~65_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[25]~64_combout\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_5~1\,
	combout => \Div3|auto_generated|divider|divider|op_5~2_combout\,
	cout => \Div3|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X9_Y22_N4
\Div3|auto_generated|divider|divider|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_5~4_combout\ = (\Div3|auto_generated|divider|divider|op_5~3\ & ((((\Div3|auto_generated|divider|divider|StageOut[26]~78_combout\) # (\Div3|auto_generated|divider|divider|StageOut[26]~63_combout\))))) # 
-- (!\Div3|auto_generated|divider|divider|op_5~3\ & ((\Div3|auto_generated|divider|divider|StageOut[26]~78_combout\) # ((\Div3|auto_generated|divider|divider|StageOut[26]~63_combout\) # (GND))))
-- \Div3|auto_generated|divider|divider|op_5~5\ = CARRY((\Div3|auto_generated|divider|divider|StageOut[26]~78_combout\) # ((\Div3|auto_generated|divider|divider|StageOut[26]~63_combout\) # (!\Div3|auto_generated|divider|divider|op_5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[26]~78_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[26]~63_combout\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_5~3\,
	combout => \Div3|auto_generated|divider|divider|op_5~4_combout\,
	cout => \Div3|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X9_Y22_N6
\Div3|auto_generated|divider|divider|op_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_5~6_combout\ = (\Div3|auto_generated|divider|divider|StageOut[27]~72_combout\ & (((!\Div3|auto_generated|divider|divider|op_5~5\)))) # (!\Div3|auto_generated|divider|divider|StageOut[27]~72_combout\ & 
-- ((\Div3|auto_generated|divider|divider|StageOut[27]~62_combout\ & (!\Div3|auto_generated|divider|divider|op_5~5\)) # (!\Div3|auto_generated|divider|divider|StageOut[27]~62_combout\ & ((\Div3|auto_generated|divider|divider|op_5~5\) # (GND)))))
-- \Div3|auto_generated|divider|divider|op_5~7\ = CARRY(((!\Div3|auto_generated|divider|divider|StageOut[27]~72_combout\ & !\Div3|auto_generated|divider|divider|StageOut[27]~62_combout\)) # (!\Div3|auto_generated|divider|divider|op_5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[27]~72_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[27]~62_combout\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_5~5\,
	combout => \Div3|auto_generated|divider|divider|op_5~6_combout\,
	cout => \Div3|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X8_Y22_N16
\Div3|auto_generated|divider|divider|StageOut[28]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[28]~61_combout\ = (\Div3|auto_generated|divider|divider|op_4~6_combout\ & !\Div3|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|op_4~6_combout\,
	datad => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[28]~61_combout\);

-- Location: LCCOMB_X8_Y23_N16
\Div3|auto_generated|divider|divider|StageOut[28]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[28]~71_combout\ = (\Div3|auto_generated|divider|divider|op_4~10_combout\ & ((\Div3|auto_generated|divider|divider|StageOut[22]~76_combout\) # ((\Div3|auto_generated|divider|divider|op_3~4_combout\ & 
-- !\Div3|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|op_3~4_combout\,
	datab => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div3|auto_generated|divider|divider|StageOut[22]~76_combout\,
	datad => \Div3|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[28]~71_combout\);

-- Location: LCCOMB_X9_Y22_N8
\Div3|auto_generated|divider|divider|op_5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_5~9_cout\ = CARRY((\Div3|auto_generated|divider|divider|StageOut[28]~61_combout\) # ((\Div3|auto_generated|divider|divider|StageOut[28]~71_combout\) # (!\Div3|auto_generated|divider|divider|op_5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[28]~61_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[28]~71_combout\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_5~7\,
	cout => \Div3|auto_generated|divider|divider|op_5~9_cout\);

-- Location: LCCOMB_X9_Y22_N10
\Div3|auto_generated|divider|divider|op_5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_5~10_combout\ = !\Div3|auto_generated|divider|divider|op_5~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div3|auto_generated|divider|divider|op_5~9_cout\,
	combout => \Div3|auto_generated|divider|divider|op_5~10_combout\);

-- Location: LCCOMB_X9_Y22_N12
\Div3|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\Div3|auto_generated|divider|divider|op_5~6_combout\ & !\Div3|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|op_5~6_combout\,
	datad => \Div3|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X8_Y22_N24
\Div3|auto_generated|divider|divider|StageOut[33]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[33]~73_combout\ = (\Div3|auto_generated|divider|divider|op_5~10_combout\ & ((\Div3|auto_generated|divider|divider|StageOut[27]~72_combout\) # ((!\Div3|auto_generated|divider|divider|op_4~10_combout\ & 
-- \Div3|auto_generated|divider|divider|op_4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Div3|auto_generated|divider|divider|op_4~4_combout\,
	datac => \Div3|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div3|auto_generated|divider|divider|StageOut[27]~72_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[33]~73_combout\);

-- Location: LCCOMB_X9_Y22_N30
\Div3|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\Div3|auto_generated|divider|divider|op_5~4_combout\ & !\Div3|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div3|auto_generated|divider|divider|op_5~4_combout\,
	datad => \Div3|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X8_Y22_N26
\Div3|auto_generated|divider|divider|StageOut[32]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[32]~74_combout\ = (\Div3|auto_generated|divider|divider|op_5~10_combout\ & ((\Div3|auto_generated|divider|divider|StageOut[26]~78_combout\) # ((\Div3|auto_generated|divider|divider|op_4~2_combout\ & 
-- !\Div3|auto_generated|divider|divider|op_4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[26]~78_combout\,
	datab => \Div3|auto_generated|divider|divider|op_4~2_combout\,
	datac => \Div3|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[32]~74_combout\);

-- Location: LCCOMB_X8_Y22_N14
\Div3|auto_generated|divider|divider|StageOut[31]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[31]~79_combout\ = (\Div3|auto_generated|divider|divider|op_5~10_combout\ & ((\Div3|auto_generated|divider|divider|op_4~10_combout\ & ((\r_in_filter4[2]~input_o\))) # 
-- (!\Div3|auto_generated|divider|divider|op_4~10_combout\ & (\Div3|auto_generated|divider|divider|op_4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Div3|auto_generated|divider|divider|op_4~0_combout\,
	datac => \Div3|auto_generated|divider|divider|op_5~10_combout\,
	datad => \r_in_filter4[2]~input_o\,
	combout => \Div3|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X9_Y22_N16
\Div3|auto_generated|divider|divider|StageOut[31]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[31]~68_combout\ = (\Div3|auto_generated|divider|divider|op_5~2_combout\ & !\Div3|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_5~2_combout\,
	datad => \Div3|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[31]~68_combout\);

-- Location: LCCOMB_X6_Y22_N24
\Div3|auto_generated|divider|divider|StageOut[30]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[30]~69_combout\ = (\r_in_filter4[1]~input_o\ & \Div3|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter4[1]~input_o\,
	datac => \Div3|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[30]~69_combout\);

-- Location: LCCOMB_X9_Y22_N14
\Div3|auto_generated|divider|divider|StageOut[30]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[30]~70_combout\ = (\Div3|auto_generated|divider|divider|op_5~0_combout\ & !\Div3|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_5~0_combout\,
	datad => \Div3|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[30]~70_combout\);

-- Location: IOIBUF_X3_Y24_N1
\r_in_filter4[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter4(0),
	o => \r_in_filter4[0]~input_o\);

-- Location: LCCOMB_X9_Y22_N18
\Div3|auto_generated|divider|divider|op_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_6~1_cout\ = CARRY(\r_in_filter4[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter4[0]~input_o\,
	datad => VCC,
	cout => \Div3|auto_generated|divider|divider|op_6~1_cout\);

-- Location: LCCOMB_X9_Y22_N20
\Div3|auto_generated|divider|divider|op_6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_6~3_cout\ = CARRY((!\Div3|auto_generated|divider|divider|StageOut[30]~69_combout\ & (!\Div3|auto_generated|divider|divider|StageOut[30]~70_combout\ & !\Div3|auto_generated|divider|divider|op_6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[30]~70_combout\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_6~1_cout\,
	cout => \Div3|auto_generated|divider|divider|op_6~3_cout\);

-- Location: LCCOMB_X9_Y22_N22
\Div3|auto_generated|divider|divider|op_6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_6~5_cout\ = CARRY((\Div3|auto_generated|divider|divider|StageOut[31]~79_combout\) # ((\Div3|auto_generated|divider|divider|StageOut[31]~68_combout\) # (!\Div3|auto_generated|divider|divider|op_6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_6~3_cout\,
	cout => \Div3|auto_generated|divider|divider|op_6~5_cout\);

-- Location: LCCOMB_X9_Y22_N24
\Div3|auto_generated|divider|divider|op_6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_6~7_cout\ = CARRY(((!\Div3|auto_generated|divider|divider|StageOut[32]~67_combout\ & !\Div3|auto_generated|divider|divider|StageOut[32]~74_combout\)) # (!\Div3|auto_generated|divider|divider|op_6~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[32]~74_combout\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_6~5_cout\,
	cout => \Div3|auto_generated|divider|divider|op_6~7_cout\);

-- Location: LCCOMB_X9_Y22_N26
\Div3|auto_generated|divider|divider|op_6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_6~9_cout\ = CARRY((\Div3|auto_generated|divider|divider|StageOut[33]~66_combout\) # ((\Div3|auto_generated|divider|divider|StageOut[33]~73_combout\) # (!\Div3|auto_generated|divider|divider|op_6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[33]~73_combout\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_6~7_cout\,
	cout => \Div3|auto_generated|divider|divider|op_6~9_cout\);

-- Location: LCCOMB_X9_Y22_N28
\Div3|auto_generated|divider|divider|op_6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_6~10_combout\ = !\Div3|auto_generated|divider|divider|op_6~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div3|auto_generated|divider|divider|op_6~9_cout\,
	combout => \Div3|auto_generated|divider|divider|op_6~10_combout\);

-- Location: IOIBUF_X25_Y24_N22
\r_in_filter3[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter3(6),
	o => \r_in_filter3[6]~input_o\);

-- Location: IOIBUF_X25_Y24_N1
\r_in_filter3[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter3(5),
	o => \r_in_filter3[5]~input_o\);

-- Location: IOIBUF_X21_Y24_N8
\r_in_filter3[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter3(4),
	o => \r_in_filter3[4]~input_o\);

-- Location: LCCOMB_X19_Y20_N16
\Div2|auto_generated|divider|divider|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_2~0_combout\ = \r_in_filter3[4]~input_o\ $ (VCC)
-- \Div2|auto_generated|divider|divider|op_2~1\ = CARRY(\r_in_filter3[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter3[4]~input_o\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|op_2~0_combout\,
	cout => \Div2|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X19_Y20_N18
\Div2|auto_generated|divider|divider|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_2~2_combout\ = (\r_in_filter3[5]~input_o\ & (\Div2|auto_generated|divider|divider|op_2~1\ & VCC)) # (!\r_in_filter3[5]~input_o\ & (!\Div2|auto_generated|divider|divider|op_2~1\))
-- \Div2|auto_generated|divider|divider|op_2~3\ = CARRY((!\r_in_filter3[5]~input_o\ & !\Div2|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter3[5]~input_o\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_2~1\,
	combout => \Div2|auto_generated|divider|divider|op_2~2_combout\,
	cout => \Div2|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X19_Y20_N20
\Div2|auto_generated|divider|divider|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_2~4_combout\ = (\r_in_filter3[6]~input_o\ & ((GND) # (!\Div2|auto_generated|divider|divider|op_2~3\))) # (!\r_in_filter3[6]~input_o\ & (\Div2|auto_generated|divider|divider|op_2~3\ $ (GND)))
-- \Div2|auto_generated|divider|divider|op_2~5\ = CARRY((\r_in_filter3[6]~input_o\) # (!\Div2|auto_generated|divider|divider|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter3[6]~input_o\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_2~3\,
	combout => \Div2|auto_generated|divider|divider|op_2~4_combout\,
	cout => \Div2|auto_generated|divider|divider|op_2~5\);

-- Location: IOIBUF_X21_Y24_N1
\r_in_filter3[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter3(7),
	o => \r_in_filter3[7]~input_o\);

-- Location: LCCOMB_X19_Y20_N22
\Div2|auto_generated|divider|divider|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_2~6_combout\ = (\r_in_filter3[7]~input_o\ & (!\Div2|auto_generated|divider|divider|op_2~5\)) # (!\r_in_filter3[7]~input_o\ & ((\Div2|auto_generated|divider|divider|op_2~5\) # (GND)))
-- \Div2|auto_generated|divider|divider|op_2~7\ = CARRY((!\Div2|auto_generated|divider|divider|op_2~5\) # (!\r_in_filter3[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter3[7]~input_o\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_2~5\,
	combout => \Div2|auto_generated|divider|divider|op_2~6_combout\,
	cout => \Div2|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X19_Y20_N24
\Div2|auto_generated|divider|divider|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_2~8_combout\ = \Div2|auto_generated|divider|divider|op_2~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|op_2~7\,
	combout => \Div2|auto_generated|divider|divider|op_2~8_combout\);

-- Location: LCCOMB_X19_Y20_N0
\Div2|auto_generated|divider|divider|StageOut[18]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[18]~49_combout\ = (\Div2|auto_generated|divider|divider|op_2~6_combout\ & !\Div2|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|op_2~6_combout\,
	datad => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[18]~49_combout\);

-- Location: LCCOMB_X19_Y22_N24
\Div2|auto_generated|divider|divider|StageOut[18]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[18]~48_combout\ = (\Div2|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter3[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter3[7]~input_o\,
	combout => \Div2|auto_generated|divider|divider|StageOut[18]~48_combout\);

-- Location: LCCOMB_X19_Y20_N4
\Div2|auto_generated|divider|divider|StageOut[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[17]~51_combout\ = (\Div2|auto_generated|divider|divider|op_2~4_combout\ & !\Div2|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|op_2~4_combout\,
	datad => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[17]~51_combout\);

-- Location: LCCOMB_X19_Y20_N10
\Div2|auto_generated|divider|divider|StageOut[17]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[17]~50_combout\ = (\Div2|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter3[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter3[6]~input_o\,
	combout => \Div2|auto_generated|divider|divider|StageOut[17]~50_combout\);

-- Location: LCCOMB_X19_Y22_N26
\Div2|auto_generated|divider|divider|StageOut[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[16]~52_combout\ = (\Div2|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter3[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	datac => \r_in_filter3[5]~input_o\,
	combout => \Div2|auto_generated|divider|divider|StageOut[16]~52_combout\);

-- Location: LCCOMB_X19_Y22_N28
\Div2|auto_generated|divider|divider|StageOut[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[16]~53_combout\ = (\Div2|auto_generated|divider|divider|op_2~2_combout\ & !\Div2|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|op_2~2_combout\,
	datad => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[16]~53_combout\);

-- Location: LCCOMB_X19_Y20_N6
\Div2|auto_generated|divider|divider|StageOut[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[15]~55_combout\ = (\Div2|auto_generated|divider|divider|op_2~0_combout\ & !\Div2|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|op_2~0_combout\,
	datad => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[15]~55_combout\);

-- Location: LCCOMB_X19_Y22_N18
\Div2|auto_generated|divider|divider|StageOut[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[15]~54_combout\ = (\Div2|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter3[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	datac => \r_in_filter3[4]~input_o\,
	combout => \Div2|auto_generated|divider|divider|StageOut[15]~54_combout\);

-- Location: IOIBUF_X23_Y24_N8
\r_in_filter3[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter3(3),
	o => \r_in_filter3[3]~input_o\);

-- Location: LCCOMB_X19_Y22_N6
\Div2|auto_generated|divider|divider|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_3~0_combout\ = \r_in_filter3[3]~input_o\ $ (VCC)
-- \Div2|auto_generated|divider|divider|op_3~1\ = CARRY(\r_in_filter3[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter3[3]~input_o\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|op_3~0_combout\,
	cout => \Div2|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X19_Y22_N8
\Div2|auto_generated|divider|divider|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_3~2_combout\ = (\Div2|auto_generated|divider|divider|op_3~1\ & (((\Div2|auto_generated|divider|divider|StageOut[15]~55_combout\) # (\Div2|auto_generated|divider|divider|StageOut[15]~54_combout\)))) # 
-- (!\Div2|auto_generated|divider|divider|op_3~1\ & (!\Div2|auto_generated|divider|divider|StageOut[15]~55_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[15]~54_combout\)))
-- \Div2|auto_generated|divider|divider|op_3~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[15]~55_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[15]~54_combout\ & !\Div2|auto_generated|divider|divider|op_3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[15]~55_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[15]~54_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_3~1\,
	combout => \Div2|auto_generated|divider|divider|op_3~2_combout\,
	cout => \Div2|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X19_Y22_N10
\Div2|auto_generated|divider|divider|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_3~4_combout\ = (\Div2|auto_generated|divider|divider|op_3~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[16]~52_combout\) # (\Div2|auto_generated|divider|divider|StageOut[16]~53_combout\))))) # 
-- (!\Div2|auto_generated|divider|divider|op_3~3\ & ((\Div2|auto_generated|divider|divider|StageOut[16]~52_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[16]~53_combout\) # (GND))))
-- \Div2|auto_generated|divider|divider|op_3~5\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[16]~52_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[16]~53_combout\) # (!\Div2|auto_generated|divider|divider|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[16]~52_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[16]~53_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_3~3\,
	combout => \Div2|auto_generated|divider|divider|op_3~4_combout\,
	cout => \Div2|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X19_Y22_N12
\Div2|auto_generated|divider|divider|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_3~6_combout\ = (\Div2|auto_generated|divider|divider|StageOut[17]~51_combout\ & (((!\Div2|auto_generated|divider|divider|op_3~5\)))) # (!\Div2|auto_generated|divider|divider|StageOut[17]~51_combout\ & 
-- ((\Div2|auto_generated|divider|divider|StageOut[17]~50_combout\ & (!\Div2|auto_generated|divider|divider|op_3~5\)) # (!\Div2|auto_generated|divider|divider|StageOut[17]~50_combout\ & ((\Div2|auto_generated|divider|divider|op_3~5\) # (GND)))))
-- \Div2|auto_generated|divider|divider|op_3~7\ = CARRY(((!\Div2|auto_generated|divider|divider|StageOut[17]~51_combout\ & !\Div2|auto_generated|divider|divider|StageOut[17]~50_combout\)) # (!\Div2|auto_generated|divider|divider|op_3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[17]~51_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[17]~50_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_3~5\,
	combout => \Div2|auto_generated|divider|divider|op_3~6_combout\,
	cout => \Div2|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X19_Y22_N14
\Div2|auto_generated|divider|divider|op_3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_3~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[18]~49_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[18]~48_combout\) # (!\Div2|auto_generated|divider|divider|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[18]~49_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[18]~48_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_3~7\,
	cout => \Div2|auto_generated|divider|divider|op_3~9_cout\);

-- Location: LCCOMB_X19_Y22_N16
\Div2|auto_generated|divider|divider|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_3~10_combout\ = !\Div2|auto_generated|divider|divider|op_3~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|op_3~9_cout\,
	combout => \Div2|auto_generated|divider|divider|op_3~10_combout\);

-- Location: LCCOMB_X19_Y20_N8
\Div2|auto_generated|divider|divider|StageOut[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[23]~75_combout\ = (\Div2|auto_generated|divider|divider|op_3~10_combout\ & ((\Div2|auto_generated|divider|divider|op_2~8_combout\ & (\r_in_filter3[6]~input_o\)) # 
-- (!\Div2|auto_generated|divider|divider|op_2~8_combout\ & ((\Div2|auto_generated|divider|divider|op_2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter3[6]~input_o\,
	datab => \Div2|auto_generated|divider|divider|op_2~4_combout\,
	datac => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[23]~75_combout\);

-- Location: LCCOMB_X18_Y22_N0
\Div2|auto_generated|divider|divider|StageOut[23]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[23]~56_combout\ = (\Div2|auto_generated|divider|divider|op_3~6_combout\ & !\Div2|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|op_3~6_combout\,
	datad => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[23]~56_combout\);

-- Location: LCCOMB_X19_Y22_N20
\Div2|auto_generated|divider|divider|StageOut[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[22]~76_combout\ = (\Div2|auto_generated|divider|divider|op_3~10_combout\ & ((\Div2|auto_generated|divider|divider|op_2~8_combout\ & (\r_in_filter3[5]~input_o\)) # 
-- (!\Div2|auto_generated|divider|divider|op_2~8_combout\ & ((\Div2|auto_generated|divider|divider|op_2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter3[5]~input_o\,
	datab => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	datac => \Div2|auto_generated|divider|divider|op_2~2_combout\,
	datad => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[22]~76_combout\);

-- Location: LCCOMB_X19_Y22_N4
\Div2|auto_generated|divider|divider|StageOut[22]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[22]~57_combout\ = (\Div2|auto_generated|divider|divider|op_3~4_combout\ & !\Div2|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|op_3~4_combout\,
	datad => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[22]~57_combout\);

-- Location: LCCOMB_X18_Y22_N26
\Div2|auto_generated|divider|divider|StageOut[21]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[21]~58_combout\ = (\Div2|auto_generated|divider|divider|op_3~2_combout\ & !\Div2|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|op_3~2_combout\,
	datad => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[21]~58_combout\);

-- Location: LCCOMB_X19_Y20_N26
\Div2|auto_generated|divider|divider|StageOut[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[21]~77_combout\ = (\Div2|auto_generated|divider|divider|op_3~10_combout\ & ((\Div2|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter3[4]~input_o\))) # 
-- (!\Div2|auto_generated|divider|divider|op_2~8_combout\ & (\Div2|auto_generated|divider|divider|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_2~0_combout\,
	datab => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	datac => \r_in_filter3[4]~input_o\,
	datad => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[21]~77_combout\);

-- Location: LCCOMB_X19_Y22_N30
\Div2|auto_generated|divider|divider|StageOut[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[20]~59_combout\ = (\Div2|auto_generated|divider|divider|op_3~10_combout\ & \r_in_filter3[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	datac => \r_in_filter3[3]~input_o\,
	combout => \Div2|auto_generated|divider|divider|StageOut[20]~59_combout\);

-- Location: LCCOMB_X19_Y22_N0
\Div2|auto_generated|divider|divider|StageOut[20]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[20]~60_combout\ = (\Div2|auto_generated|divider|divider|op_3~0_combout\ & !\Div2|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_3~0_combout\,
	datad => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[20]~60_combout\);

-- Location: IOIBUF_X21_Y24_N15
\r_in_filter3[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter3(2),
	o => \r_in_filter3[2]~input_o\);

-- Location: LCCOMB_X18_Y22_N12
\Div2|auto_generated|divider|divider|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_4~0_combout\ = \r_in_filter3[2]~input_o\ $ (VCC)
-- \Div2|auto_generated|divider|divider|op_4~1\ = CARRY(\r_in_filter3[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter3[2]~input_o\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|op_4~0_combout\,
	cout => \Div2|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X18_Y22_N14
\Div2|auto_generated|divider|divider|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_4~2_combout\ = (\Div2|auto_generated|divider|divider|op_4~1\ & (((\Div2|auto_generated|divider|divider|StageOut[20]~59_combout\) # (\Div2|auto_generated|divider|divider|StageOut[20]~60_combout\)))) # 
-- (!\Div2|auto_generated|divider|divider|op_4~1\ & (!\Div2|auto_generated|divider|divider|StageOut[20]~59_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[20]~60_combout\)))
-- \Div2|auto_generated|divider|divider|op_4~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[20]~59_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[20]~60_combout\ & !\Div2|auto_generated|divider|divider|op_4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[20]~59_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[20]~60_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_4~1\,
	combout => \Div2|auto_generated|divider|divider|op_4~2_combout\,
	cout => \Div2|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X18_Y22_N16
\Div2|auto_generated|divider|divider|op_4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_4~4_combout\ = (\Div2|auto_generated|divider|divider|op_4~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[21]~58_combout\) # (\Div2|auto_generated|divider|divider|StageOut[21]~77_combout\))))) # 
-- (!\Div2|auto_generated|divider|divider|op_4~3\ & ((\Div2|auto_generated|divider|divider|StageOut[21]~58_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[21]~77_combout\) # (GND))))
-- \Div2|auto_generated|divider|divider|op_4~5\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[21]~58_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[21]~77_combout\) # (!\Div2|auto_generated|divider|divider|op_4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[21]~58_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[21]~77_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_4~3\,
	combout => \Div2|auto_generated|divider|divider|op_4~4_combout\,
	cout => \Div2|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X18_Y22_N18
\Div2|auto_generated|divider|divider|op_4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_4~6_combout\ = (\Div2|auto_generated|divider|divider|StageOut[22]~76_combout\ & (((!\Div2|auto_generated|divider|divider|op_4~5\)))) # (!\Div2|auto_generated|divider|divider|StageOut[22]~76_combout\ & 
-- ((\Div2|auto_generated|divider|divider|StageOut[22]~57_combout\ & (!\Div2|auto_generated|divider|divider|op_4~5\)) # (!\Div2|auto_generated|divider|divider|StageOut[22]~57_combout\ & ((\Div2|auto_generated|divider|divider|op_4~5\) # (GND)))))
-- \Div2|auto_generated|divider|divider|op_4~7\ = CARRY(((!\Div2|auto_generated|divider|divider|StageOut[22]~76_combout\ & !\Div2|auto_generated|divider|divider|StageOut[22]~57_combout\)) # (!\Div2|auto_generated|divider|divider|op_4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[22]~76_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[22]~57_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_4~5\,
	combout => \Div2|auto_generated|divider|divider|op_4~6_combout\,
	cout => \Div2|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X18_Y22_N20
\Div2|auto_generated|divider|divider|op_4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_4~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[23]~75_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[23]~56_combout\) # (!\Div2|auto_generated|divider|divider|op_4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[23]~75_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[23]~56_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_4~7\,
	cout => \Div2|auto_generated|divider|divider|op_4~9_cout\);

-- Location: LCCOMB_X18_Y22_N22
\Div2|auto_generated|divider|divider|op_4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_4~10_combout\ = !\Div2|auto_generated|divider|divider|op_4~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|op_4~9_cout\,
	combout => \Div2|auto_generated|divider|divider|op_4~10_combout\);

-- Location: LCCOMB_X18_Y22_N6
\Div2|auto_generated|divider|divider|StageOut[27]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[27]~62_combout\ = (!\Div2|auto_generated|divider|divider|op_4~10_combout\ & \Div2|auto_generated|divider|divider|op_4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div2|auto_generated|divider|divider|op_4~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[27]~62_combout\);

-- Location: LCCOMB_X18_Y22_N24
\Div2|auto_generated|divider|divider|StageOut[27]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[27]~72_combout\ = (\Div2|auto_generated|divider|divider|op_4~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((\Div2|auto_generated|divider|divider|op_3~2_combout\ & 
-- !\Div2|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[21]~77_combout\,
	datac => \Div2|auto_generated|divider|divider|op_3~2_combout\,
	datad => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[27]~72_combout\);

-- Location: LCCOMB_X16_Y22_N16
\Div2|auto_generated|divider|divider|StageOut[26]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[26]~63_combout\ = (!\Div2|auto_generated|divider|divider|op_4~10_combout\ & \Div2|auto_generated|divider|divider|op_4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div2|auto_generated|divider|divider|op_4~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[26]~63_combout\);

-- Location: LCCOMB_X19_Y22_N22
\Div2|auto_generated|divider|divider|StageOut[26]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[26]~78_combout\ = (\Div2|auto_generated|divider|divider|op_4~10_combout\ & ((\Div2|auto_generated|divider|divider|op_3~10_combout\ & ((\r_in_filter3[3]~input_o\))) # 
-- (!\Div2|auto_generated|divider|divider|op_3~10_combout\ & (\Div2|auto_generated|divider|divider|op_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_3~0_combout\,
	datab => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	datac => \r_in_filter3[3]~input_o\,
	datad => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[26]~78_combout\);

-- Location: LCCOMB_X18_Y22_N2
\Div2|auto_generated|divider|divider|StageOut[25]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[25]~65_combout\ = (!\Div2|auto_generated|divider|divider|op_4~10_combout\ & \Div2|auto_generated|divider|divider|op_4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div2|auto_generated|divider|divider|op_4~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[25]~65_combout\);

-- Location: LCCOMB_X18_Y22_N8
\Div2|auto_generated|divider|divider|StageOut[25]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[25]~64_combout\ = (\Div2|auto_generated|divider|divider|op_4~10_combout\ & \r_in_filter3[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	datad => \r_in_filter3[2]~input_o\,
	combout => \Div2|auto_generated|divider|divider|StageOut[25]~64_combout\);

-- Location: IOIBUF_X16_Y24_N1
\r_in_filter3[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter3(1),
	o => \r_in_filter3[1]~input_o\);

-- Location: LCCOMB_X17_Y22_N0
\Div2|auto_generated|divider|divider|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_5~0_combout\ = \r_in_filter3[1]~input_o\ $ (VCC)
-- \Div2|auto_generated|divider|divider|op_5~1\ = CARRY(\r_in_filter3[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter3[1]~input_o\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|op_5~0_combout\,
	cout => \Div2|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X17_Y22_N2
\Div2|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_5~2_combout\ = (\Div2|auto_generated|divider|divider|op_5~1\ & (((\Div2|auto_generated|divider|divider|StageOut[25]~65_combout\) # (\Div2|auto_generated|divider|divider|StageOut[25]~64_combout\)))) # 
-- (!\Div2|auto_generated|divider|divider|op_5~1\ & (!\Div2|auto_generated|divider|divider|StageOut[25]~65_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[25]~64_combout\)))
-- \Div2|auto_generated|divider|divider|op_5~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[25]~65_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[25]~64_combout\ & !\Div2|auto_generated|divider|divider|op_5~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[25]~65_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[25]~64_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_5~1\,
	combout => \Div2|auto_generated|divider|divider|op_5~2_combout\,
	cout => \Div2|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X17_Y22_N4
\Div2|auto_generated|divider|divider|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_5~4_combout\ = (\Div2|auto_generated|divider|divider|op_5~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[26]~63_combout\) # (\Div2|auto_generated|divider|divider|StageOut[26]~78_combout\))))) # 
-- (!\Div2|auto_generated|divider|divider|op_5~3\ & ((\Div2|auto_generated|divider|divider|StageOut[26]~63_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[26]~78_combout\) # (GND))))
-- \Div2|auto_generated|divider|divider|op_5~5\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[26]~63_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[26]~78_combout\) # (!\Div2|auto_generated|divider|divider|op_5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[26]~63_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[26]~78_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_5~3\,
	combout => \Div2|auto_generated|divider|divider|op_5~4_combout\,
	cout => \Div2|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X17_Y22_N6
\Div2|auto_generated|divider|divider|op_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_5~6_combout\ = (\Div2|auto_generated|divider|divider|StageOut[27]~62_combout\ & (((!\Div2|auto_generated|divider|divider|op_5~5\)))) # (!\Div2|auto_generated|divider|divider|StageOut[27]~62_combout\ & 
-- ((\Div2|auto_generated|divider|divider|StageOut[27]~72_combout\ & (!\Div2|auto_generated|divider|divider|op_5~5\)) # (!\Div2|auto_generated|divider|divider|StageOut[27]~72_combout\ & ((\Div2|auto_generated|divider|divider|op_5~5\) # (GND)))))
-- \Div2|auto_generated|divider|divider|op_5~7\ = CARRY(((!\Div2|auto_generated|divider|divider|StageOut[27]~62_combout\ & !\Div2|auto_generated|divider|divider|StageOut[27]~72_combout\)) # (!\Div2|auto_generated|divider|divider|op_5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[27]~62_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[27]~72_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_5~5\,
	combout => \Div2|auto_generated|divider|divider|op_5~6_combout\,
	cout => \Div2|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X19_Y22_N2
\Div2|auto_generated|divider|divider|StageOut[28]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[28]~71_combout\ = (\Div2|auto_generated|divider|divider|op_4~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[22]~76_combout\) # ((\Div2|auto_generated|divider|divider|op_3~4_combout\ & 
-- !\Div2|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[22]~76_combout\,
	datab => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div2|auto_generated|divider|divider|op_3~4_combout\,
	datad => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[28]~71_combout\);

-- Location: LCCOMB_X18_Y22_N28
\Div2|auto_generated|divider|divider|StageOut[28]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[28]~61_combout\ = (!\Div2|auto_generated|divider|divider|op_4~10_combout\ & \Div2|auto_generated|divider|divider|op_4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div2|auto_generated|divider|divider|op_4~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[28]~61_combout\);

-- Location: LCCOMB_X17_Y22_N8
\Div2|auto_generated|divider|divider|op_5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_5~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[28]~71_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[28]~61_combout\) # (!\Div2|auto_generated|divider|divider|op_5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[28]~71_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[28]~61_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_5~7\,
	cout => \Div2|auto_generated|divider|divider|op_5~9_cout\);

-- Location: LCCOMB_X17_Y22_N10
\Div2|auto_generated|divider|divider|op_5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_5~10_combout\ = !\Div2|auto_generated|divider|divider|op_5~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|op_5~9_cout\,
	combout => \Div2|auto_generated|divider|divider|op_5~10_combout\);

-- Location: LCCOMB_X17_Y22_N12
\Div2|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\Div2|auto_generated|divider|divider|op_5~6_combout\ & !\Div2|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_5~6_combout\,
	datad => \Div2|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X18_Y22_N10
\Div2|auto_generated|divider|divider|StageOut[33]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[33]~73_combout\ = (\Div2|auto_generated|divider|divider|op_5~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[27]~72_combout\) # ((\Div2|auto_generated|divider|divider|op_4~4_combout\ & 
-- !\Div2|auto_generated|divider|divider|op_4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_5~10_combout\,
	datab => \Div2|auto_generated|divider|divider|op_4~4_combout\,
	datac => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[27]~72_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[33]~73_combout\);

-- Location: LCCOMB_X17_Y22_N30
\Div2|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\Div2|auto_generated|divider|divider|op_5~4_combout\ & !\Div2|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|op_5~4_combout\,
	datad => \Div2|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X16_Y22_N12
\Div2|auto_generated|divider|divider|StageOut[32]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[32]~74_combout\ = (\Div2|auto_generated|divider|divider|op_5~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[26]~78_combout\) # ((\Div2|auto_generated|divider|divider|op_4~2_combout\ & 
-- !\Div2|auto_generated|divider|divider|op_4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_4~2_combout\,
	datab => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div2|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[26]~78_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[32]~74_combout\);

-- Location: LCCOMB_X18_Y22_N4
\Div2|auto_generated|divider|divider|StageOut[31]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[31]~79_combout\ = (\Div2|auto_generated|divider|divider|op_5~10_combout\ & ((\Div2|auto_generated|divider|divider|op_4~10_combout\ & (\r_in_filter3[2]~input_o\)) # 
-- (!\Div2|auto_generated|divider|divider|op_4~10_combout\ & ((\Div2|auto_generated|divider|divider|op_4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_5~10_combout\,
	datab => \r_in_filter3[2]~input_o\,
	datac => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div2|auto_generated|divider|divider|op_4~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X17_Y22_N28
\Div2|auto_generated|divider|divider|StageOut[31]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[31]~68_combout\ = (\Div2|auto_generated|divider|divider|op_5~2_combout\ & !\Div2|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|op_5~2_combout\,
	datad => \Div2|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[31]~68_combout\);

-- Location: LCCOMB_X16_Y22_N2
\Div2|auto_generated|divider|divider|StageOut[30]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[30]~69_combout\ = (\r_in_filter3[1]~input_o\ & \Div2|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter3[1]~input_o\,
	datac => \Div2|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[30]~69_combout\);

-- Location: LCCOMB_X17_Y22_N14
\Div2|auto_generated|divider|divider|StageOut[30]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[30]~70_combout\ = (\Div2|auto_generated|divider|divider|op_5~0_combout\ & !\Div2|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|op_5~0_combout\,
	datad => \Div2|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[30]~70_combout\);

-- Location: IOIBUF_X16_Y24_N8
\r_in_filter3[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter3(0),
	o => \r_in_filter3[0]~input_o\);

-- Location: LCCOMB_X17_Y22_N16
\Div2|auto_generated|divider|divider|op_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_6~1_cout\ = CARRY(\r_in_filter3[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter3[0]~input_o\,
	datad => VCC,
	cout => \Div2|auto_generated|divider|divider|op_6~1_cout\);

-- Location: LCCOMB_X17_Y22_N18
\Div2|auto_generated|divider|divider|op_6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_6~3_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[30]~69_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[30]~70_combout\ & !\Div2|auto_generated|divider|divider|op_6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[30]~70_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_6~1_cout\,
	cout => \Div2|auto_generated|divider|divider|op_6~3_cout\);

-- Location: LCCOMB_X17_Y22_N20
\Div2|auto_generated|divider|divider|op_6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_6~5_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[31]~79_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[31]~68_combout\) # (!\Div2|auto_generated|divider|divider|op_6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_6~3_cout\,
	cout => \Div2|auto_generated|divider|divider|op_6~5_cout\);

-- Location: LCCOMB_X17_Y22_N22
\Div2|auto_generated|divider|divider|op_6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_6~7_cout\ = CARRY(((!\Div2|auto_generated|divider|divider|StageOut[32]~67_combout\ & !\Div2|auto_generated|divider|divider|StageOut[32]~74_combout\)) # (!\Div2|auto_generated|divider|divider|op_6~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[32]~74_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_6~5_cout\,
	cout => \Div2|auto_generated|divider|divider|op_6~7_cout\);

-- Location: LCCOMB_X17_Y22_N24
\Div2|auto_generated|divider|divider|op_6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_6~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[33]~66_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[33]~73_combout\) # (!\Div2|auto_generated|divider|divider|op_6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[33]~73_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_6~7_cout\,
	cout => \Div2|auto_generated|divider|divider|op_6~9_cout\);

-- Location: LCCOMB_X17_Y22_N26
\Div2|auto_generated|divider|divider|op_6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_6~10_combout\ = !\Div2|auto_generated|divider|divider|op_6~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|op_6~9_cout\,
	combout => \Div2|auto_generated|divider|divider|op_6~10_combout\);

-- Location: IOIBUF_X32_Y24_N22
\r_in_filter2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter2(7),
	o => \r_in_filter2[7]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\r_in_filter2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter2(6),
	o => \r_in_filter2[6]~input_o\);

-- Location: IOIBUF_X23_Y24_N22
\r_in_filter2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter2(5),
	o => \r_in_filter2[5]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\r_in_filter2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter2(4),
	o => \r_in_filter2[4]~input_o\);

-- Location: LCCOMB_X23_Y21_N6
\Div1|auto_generated|divider|divider|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_2~0_combout\ = \r_in_filter2[4]~input_o\ $ (VCC)
-- \Div1|auto_generated|divider|divider|op_2~1\ = CARRY(\r_in_filter2[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter2[4]~input_o\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|op_2~0_combout\,
	cout => \Div1|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X23_Y21_N8
\Div1|auto_generated|divider|divider|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_2~2_combout\ = (\r_in_filter2[5]~input_o\ & (\Div1|auto_generated|divider|divider|op_2~1\ & VCC)) # (!\r_in_filter2[5]~input_o\ & (!\Div1|auto_generated|divider|divider|op_2~1\))
-- \Div1|auto_generated|divider|divider|op_2~3\ = CARRY((!\r_in_filter2[5]~input_o\ & !\Div1|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter2[5]~input_o\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_2~1\,
	combout => \Div1|auto_generated|divider|divider|op_2~2_combout\,
	cout => \Div1|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X23_Y21_N10
\Div1|auto_generated|divider|divider|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_2~4_combout\ = (\r_in_filter2[6]~input_o\ & ((GND) # (!\Div1|auto_generated|divider|divider|op_2~3\))) # (!\r_in_filter2[6]~input_o\ & (\Div1|auto_generated|divider|divider|op_2~3\ $ (GND)))
-- \Div1|auto_generated|divider|divider|op_2~5\ = CARRY((\r_in_filter2[6]~input_o\) # (!\Div1|auto_generated|divider|divider|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter2[6]~input_o\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_2~3\,
	combout => \Div1|auto_generated|divider|divider|op_2~4_combout\,
	cout => \Div1|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X23_Y21_N12
\Div1|auto_generated|divider|divider|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_2~6_combout\ = (\r_in_filter2[7]~input_o\ & (!\Div1|auto_generated|divider|divider|op_2~5\)) # (!\r_in_filter2[7]~input_o\ & ((\Div1|auto_generated|divider|divider|op_2~5\) # (GND)))
-- \Div1|auto_generated|divider|divider|op_2~7\ = CARRY((!\Div1|auto_generated|divider|divider|op_2~5\) # (!\r_in_filter2[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter2[7]~input_o\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_2~5\,
	combout => \Div1|auto_generated|divider|divider|op_2~6_combout\,
	cout => \Div1|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X23_Y21_N14
\Div1|auto_generated|divider|divider|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_2~8_combout\ = \Div1|auto_generated|divider|divider|op_2~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|op_2~7\,
	combout => \Div1|auto_generated|divider|divider|op_2~8_combout\);

-- Location: LCCOMB_X23_Y21_N16
\Div1|auto_generated|divider|divider|StageOut[18]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~48_combout\ = (\Div1|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter2[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter2[7]~input_o\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~48_combout\);

-- Location: LCCOMB_X23_Y21_N18
\Div1|auto_generated|divider|divider|StageOut[18]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~49_combout\ = (!\Div1|auto_generated|divider|divider|op_2~8_combout\ & \Div1|auto_generated|divider|divider|op_2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div1|auto_generated|divider|divider|op_2~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~49_combout\);

-- Location: LCCOMB_X23_Y21_N24
\Div1|auto_generated|divider|divider|StageOut[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~51_combout\ = (!\Div1|auto_generated|divider|divider|op_2~8_combout\ & \Div1|auto_generated|divider|divider|op_2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div1|auto_generated|divider|divider|op_2~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~51_combout\);

-- Location: LCCOMB_X23_Y21_N20
\Div1|auto_generated|divider|divider|StageOut[17]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~50_combout\ = (\Div1|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter2[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter2[6]~input_o\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~50_combout\);

-- Location: LCCOMB_X23_Y21_N26
\Div1|auto_generated|divider|divider|StageOut[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~52_combout\ = (\Div1|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter2[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter2[5]~input_o\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~52_combout\);

-- Location: LCCOMB_X23_Y21_N28
\Div1|auto_generated|divider|divider|StageOut[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~53_combout\ = (\Div1|auto_generated|divider|divider|op_2~2_combout\ & !\Div1|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|op_2~2_combout\,
	datac => \Div1|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~53_combout\);

-- Location: LCCOMB_X23_Y21_N0
\Div1|auto_generated|divider|divider|StageOut[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~55_combout\ = (!\Div1|auto_generated|divider|divider|op_2~8_combout\ & \Div1|auto_generated|divider|divider|op_2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div1|auto_generated|divider|divider|op_2~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~55_combout\);

-- Location: LCCOMB_X23_Y21_N30
\Div1|auto_generated|divider|divider|StageOut[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~54_combout\ = (\Div1|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter2[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter2[4]~input_o\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~54_combout\);

-- Location: IOIBUF_X28_Y24_N15
\r_in_filter2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter2(3),
	o => \r_in_filter2[3]~input_o\);

-- Location: LCCOMB_X24_Y21_N0
\Div1|auto_generated|divider|divider|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_3~0_combout\ = \r_in_filter2[3]~input_o\ $ (VCC)
-- \Div1|auto_generated|divider|divider|op_3~1\ = CARRY(\r_in_filter2[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter2[3]~input_o\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|op_3~0_combout\,
	cout => \Div1|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X24_Y21_N2
\Div1|auto_generated|divider|divider|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_3~2_combout\ = (\Div1|auto_generated|divider|divider|op_3~1\ & (((\Div1|auto_generated|divider|divider|StageOut[15]~55_combout\) # (\Div1|auto_generated|divider|divider|StageOut[15]~54_combout\)))) # 
-- (!\Div1|auto_generated|divider|divider|op_3~1\ & (!\Div1|auto_generated|divider|divider|StageOut[15]~55_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[15]~54_combout\)))
-- \Div1|auto_generated|divider|divider|op_3~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[15]~55_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[15]~54_combout\ & !\Div1|auto_generated|divider|divider|op_3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[15]~55_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[15]~54_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_3~1\,
	combout => \Div1|auto_generated|divider|divider|op_3~2_combout\,
	cout => \Div1|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X24_Y21_N4
\Div1|auto_generated|divider|divider|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_3~4_combout\ = (\Div1|auto_generated|divider|divider|op_3~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[16]~52_combout\) # (\Div1|auto_generated|divider|divider|StageOut[16]~53_combout\))))) # 
-- (!\Div1|auto_generated|divider|divider|op_3~3\ & ((\Div1|auto_generated|divider|divider|StageOut[16]~52_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[16]~53_combout\) # (GND))))
-- \Div1|auto_generated|divider|divider|op_3~5\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[16]~52_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[16]~53_combout\) # (!\Div1|auto_generated|divider|divider|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[16]~52_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[16]~53_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_3~3\,
	combout => \Div1|auto_generated|divider|divider|op_3~4_combout\,
	cout => \Div1|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X24_Y21_N6
\Div1|auto_generated|divider|divider|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_3~6_combout\ = (\Div1|auto_generated|divider|divider|StageOut[17]~51_combout\ & (((!\Div1|auto_generated|divider|divider|op_3~5\)))) # (!\Div1|auto_generated|divider|divider|StageOut[17]~51_combout\ & 
-- ((\Div1|auto_generated|divider|divider|StageOut[17]~50_combout\ & (!\Div1|auto_generated|divider|divider|op_3~5\)) # (!\Div1|auto_generated|divider|divider|StageOut[17]~50_combout\ & ((\Div1|auto_generated|divider|divider|op_3~5\) # (GND)))))
-- \Div1|auto_generated|divider|divider|op_3~7\ = CARRY(((!\Div1|auto_generated|divider|divider|StageOut[17]~51_combout\ & !\Div1|auto_generated|divider|divider|StageOut[17]~50_combout\)) # (!\Div1|auto_generated|divider|divider|op_3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[17]~51_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[17]~50_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_3~5\,
	combout => \Div1|auto_generated|divider|divider|op_3~6_combout\,
	cout => \Div1|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X24_Y21_N8
\Div1|auto_generated|divider|divider|op_3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_3~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[18]~48_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[18]~49_combout\) # (!\Div1|auto_generated|divider|divider|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[18]~48_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[18]~49_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_3~7\,
	cout => \Div1|auto_generated|divider|divider|op_3~9_cout\);

-- Location: LCCOMB_X24_Y21_N10
\Div1|auto_generated|divider|divider|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_3~10_combout\ = !\Div1|auto_generated|divider|divider|op_3~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|op_3~9_cout\,
	combout => \Div1|auto_generated|divider|divider|op_3~10_combout\);

-- Location: LCCOMB_X23_Y21_N2
\Div1|auto_generated|divider|divider|StageOut[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~75_combout\ = (\Div1|auto_generated|divider|divider|op_3~10_combout\ & ((\Div1|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter2[6]~input_o\))) # 
-- (!\Div1|auto_generated|divider|divider|op_2~8_combout\ & (\Div1|auto_generated|divider|divider|op_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_2~4_combout\,
	datab => \r_in_filter2[6]~input_o\,
	datac => \Div1|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~75_combout\);

-- Location: LCCOMB_X24_Y21_N12
\Div1|auto_generated|divider|divider|StageOut[23]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~56_combout\ = (\Div1|auto_generated|divider|divider|op_3~6_combout\ & !\Div1|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_3~6_combout\,
	datad => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~56_combout\);

-- Location: LCCOMB_X25_Y21_N24
\Div1|auto_generated|divider|divider|StageOut[22]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~57_combout\ = (\Div1|auto_generated|divider|divider|op_3~4_combout\ & !\Div1|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|op_3~4_combout\,
	datad => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~57_combout\);

-- Location: LCCOMB_X23_Y21_N4
\Div1|auto_generated|divider|divider|StageOut[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~76_combout\ = (\Div1|auto_generated|divider|divider|op_3~10_combout\ & ((\Div1|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter2[5]~input_o\))) # 
-- (!\Div1|auto_generated|divider|divider|op_2~8_combout\ & (\Div1|auto_generated|divider|divider|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	datab => \Div1|auto_generated|divider|divider|op_2~2_combout\,
	datac => \Div1|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter2[5]~input_o\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~76_combout\);

-- Location: LCCOMB_X25_Y21_N26
\Div1|auto_generated|divider|divider|StageOut[21]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~58_combout\ = (\Div1|auto_generated|divider|divider|op_3~2_combout\ & !\Div1|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_3~2_combout\,
	datad => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~58_combout\);

-- Location: LCCOMB_X23_Y21_N22
\Div1|auto_generated|divider|divider|StageOut[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~77_combout\ = (\Div1|auto_generated|divider|divider|op_3~10_combout\ & ((\Div1|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter2[4]~input_o\))) # 
-- (!\Div1|auto_generated|divider|divider|op_2~8_combout\ & (\Div1|auto_generated|divider|divider|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_2~0_combout\,
	datab => \r_in_filter2[4]~input_o\,
	datac => \Div1|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~77_combout\);

-- Location: LCCOMB_X24_Y21_N16
\Div1|auto_generated|divider|divider|StageOut[20]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~60_combout\ = (\Div1|auto_generated|divider|divider|op_3~0_combout\ & !\Div1|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|op_3~0_combout\,
	datad => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~60_combout\);

-- Location: LCCOMB_X24_Y21_N30
\Div1|auto_generated|divider|divider|StageOut[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~59_combout\ = (\Div1|auto_generated|divider|divider|op_3~10_combout\ & \r_in_filter2[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	datad => \r_in_filter2[3]~input_o\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~59_combout\);

-- Location: IOIBUF_X25_Y24_N8
\r_in_filter2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter2(2),
	o => \r_in_filter2[2]~input_o\);

-- Location: LCCOMB_X25_Y21_N6
\Div1|auto_generated|divider|divider|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_4~0_combout\ = \r_in_filter2[2]~input_o\ $ (VCC)
-- \Div1|auto_generated|divider|divider|op_4~1\ = CARRY(\r_in_filter2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter2[2]~input_o\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|op_4~0_combout\,
	cout => \Div1|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X25_Y21_N8
\Div1|auto_generated|divider|divider|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_4~2_combout\ = (\Div1|auto_generated|divider|divider|op_4~1\ & (((\Div1|auto_generated|divider|divider|StageOut[20]~60_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~59_combout\)))) # 
-- (!\Div1|auto_generated|divider|divider|op_4~1\ & (!\Div1|auto_generated|divider|divider|StageOut[20]~60_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[20]~59_combout\)))
-- \Div1|auto_generated|divider|divider|op_4~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[20]~60_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[20]~59_combout\ & !\Div1|auto_generated|divider|divider|op_4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[20]~60_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[20]~59_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_4~1\,
	combout => \Div1|auto_generated|divider|divider|op_4~2_combout\,
	cout => \Div1|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X25_Y21_N10
\Div1|auto_generated|divider|divider|op_4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_4~4_combout\ = (\Div1|auto_generated|divider|divider|op_4~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[21]~58_combout\) # (\Div1|auto_generated|divider|divider|StageOut[21]~77_combout\))))) # 
-- (!\Div1|auto_generated|divider|divider|op_4~3\ & ((\Div1|auto_generated|divider|divider|StageOut[21]~58_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[21]~77_combout\) # (GND))))
-- \Div1|auto_generated|divider|divider|op_4~5\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[21]~58_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[21]~77_combout\) # (!\Div1|auto_generated|divider|divider|op_4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[21]~58_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[21]~77_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_4~3\,
	combout => \Div1|auto_generated|divider|divider|op_4~4_combout\,
	cout => \Div1|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X25_Y21_N12
\Div1|auto_generated|divider|divider|op_4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_4~6_combout\ = (\Div1|auto_generated|divider|divider|StageOut[22]~57_combout\ & (((!\Div1|auto_generated|divider|divider|op_4~5\)))) # (!\Div1|auto_generated|divider|divider|StageOut[22]~57_combout\ & 
-- ((\Div1|auto_generated|divider|divider|StageOut[22]~76_combout\ & (!\Div1|auto_generated|divider|divider|op_4~5\)) # (!\Div1|auto_generated|divider|divider|StageOut[22]~76_combout\ & ((\Div1|auto_generated|divider|divider|op_4~5\) # (GND)))))
-- \Div1|auto_generated|divider|divider|op_4~7\ = CARRY(((!\Div1|auto_generated|divider|divider|StageOut[22]~57_combout\ & !\Div1|auto_generated|divider|divider|StageOut[22]~76_combout\)) # (!\Div1|auto_generated|divider|divider|op_4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[22]~57_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[22]~76_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_4~5\,
	combout => \Div1|auto_generated|divider|divider|op_4~6_combout\,
	cout => \Div1|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X25_Y21_N14
\Div1|auto_generated|divider|divider|op_4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_4~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[23]~75_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[23]~56_combout\) # (!\Div1|auto_generated|divider|divider|op_4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[23]~75_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[23]~56_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_4~7\,
	cout => \Div1|auto_generated|divider|divider|op_4~9_cout\);

-- Location: LCCOMB_X25_Y21_N16
\Div1|auto_generated|divider|divider|op_4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_4~10_combout\ = !\Div1|auto_generated|divider|divider|op_4~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|op_4~9_cout\,
	combout => \Div1|auto_generated|divider|divider|op_4~10_combout\);

-- Location: LCCOMB_X25_Y21_N18
\Div1|auto_generated|divider|divider|StageOut[27]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~72_combout\ = (\Div1|auto_generated|divider|divider|op_4~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((!\Div1|auto_generated|divider|divider|op_3~10_combout\ & 
-- \Div1|auto_generated|divider|divider|op_3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	datab => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[21]~77_combout\,
	datad => \Div1|auto_generated|divider|divider|op_3~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~72_combout\);

-- Location: LCCOMB_X25_Y21_N2
\Div1|auto_generated|divider|divider|StageOut[27]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~62_combout\ = (\Div1|auto_generated|divider|divider|op_4~4_combout\ & !\Div1|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_4~4_combout\,
	datad => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~62_combout\);

-- Location: LCCOMB_X24_Y21_N26
\Div1|auto_generated|divider|divider|StageOut[26]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~78_combout\ = (\Div1|auto_generated|divider|divider|op_4~10_combout\ & ((\Div1|auto_generated|divider|divider|op_3~10_combout\ & ((\r_in_filter2[3]~input_o\))) # 
-- (!\Div1|auto_generated|divider|divider|op_3~10_combout\ & (\Div1|auto_generated|divider|divider|op_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	datab => \Div1|auto_generated|divider|divider|op_3~0_combout\,
	datac => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	datad => \r_in_filter2[3]~input_o\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~78_combout\);

-- Location: LCCOMB_X24_Y23_N24
\Div1|auto_generated|divider|divider|StageOut[26]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~63_combout\ = (\Div1|auto_generated|divider|divider|op_4~2_combout\ & !\Div1|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|op_4~2_combout\,
	datac => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~63_combout\);

-- Location: LCCOMB_X25_Y21_N28
\Div1|auto_generated|divider|divider|StageOut[25]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~64_combout\ = (\Div1|auto_generated|divider|divider|op_4~10_combout\ & \r_in_filter2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	datac => \r_in_filter2[2]~input_o\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~64_combout\);

-- Location: LCCOMB_X25_Y21_N30
\Div1|auto_generated|divider|divider|StageOut[25]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~65_combout\ = (\Div1|auto_generated|divider|divider|op_4~0_combout\ & !\Div1|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_4~0_combout\,
	datad => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~65_combout\);

-- Location: IOIBUF_X25_Y24_N15
\r_in_filter2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter2(1),
	o => \r_in_filter2[1]~input_o\);

-- Location: LCCOMB_X24_Y23_N10
\Div1|auto_generated|divider|divider|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_5~0_combout\ = \r_in_filter2[1]~input_o\ $ (VCC)
-- \Div1|auto_generated|divider|divider|op_5~1\ = CARRY(\r_in_filter2[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter2[1]~input_o\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|op_5~0_combout\,
	cout => \Div1|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X24_Y23_N12
\Div1|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_5~2_combout\ = (\Div1|auto_generated|divider|divider|op_5~1\ & (((\Div1|auto_generated|divider|divider|StageOut[25]~64_combout\) # (\Div1|auto_generated|divider|divider|StageOut[25]~65_combout\)))) # 
-- (!\Div1|auto_generated|divider|divider|op_5~1\ & (!\Div1|auto_generated|divider|divider|StageOut[25]~64_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[25]~65_combout\)))
-- \Div1|auto_generated|divider|divider|op_5~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[25]~64_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[25]~65_combout\ & !\Div1|auto_generated|divider|divider|op_5~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[25]~64_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[25]~65_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_5~1\,
	combout => \Div1|auto_generated|divider|divider|op_5~2_combout\,
	cout => \Div1|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X24_Y23_N14
\Div1|auto_generated|divider|divider|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_5~4_combout\ = (\Div1|auto_generated|divider|divider|op_5~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[26]~78_combout\) # (\Div1|auto_generated|divider|divider|StageOut[26]~63_combout\))))) # 
-- (!\Div1|auto_generated|divider|divider|op_5~3\ & ((\Div1|auto_generated|divider|divider|StageOut[26]~78_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[26]~63_combout\) # (GND))))
-- \Div1|auto_generated|divider|divider|op_5~5\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[26]~78_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[26]~63_combout\) # (!\Div1|auto_generated|divider|divider|op_5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[26]~78_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[26]~63_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_5~3\,
	combout => \Div1|auto_generated|divider|divider|op_5~4_combout\,
	cout => \Div1|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X24_Y23_N16
\Div1|auto_generated|divider|divider|op_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_5~6_combout\ = (\Div1|auto_generated|divider|divider|StageOut[27]~72_combout\ & (((!\Div1|auto_generated|divider|divider|op_5~5\)))) # (!\Div1|auto_generated|divider|divider|StageOut[27]~72_combout\ & 
-- ((\Div1|auto_generated|divider|divider|StageOut[27]~62_combout\ & (!\Div1|auto_generated|divider|divider|op_5~5\)) # (!\Div1|auto_generated|divider|divider|StageOut[27]~62_combout\ & ((\Div1|auto_generated|divider|divider|op_5~5\) # (GND)))))
-- \Div1|auto_generated|divider|divider|op_5~7\ = CARRY(((!\Div1|auto_generated|divider|divider|StageOut[27]~72_combout\ & !\Div1|auto_generated|divider|divider|StageOut[27]~62_combout\)) # (!\Div1|auto_generated|divider|divider|op_5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[27]~72_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[27]~62_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_5~5\,
	combout => \Div1|auto_generated|divider|divider|op_5~6_combout\,
	cout => \Div1|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X25_Y21_N0
\Div1|auto_generated|divider|divider|StageOut[28]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~71_combout\ = (\Div1|auto_generated|divider|divider|op_4~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[22]~76_combout\) # ((!\Div1|auto_generated|divider|divider|op_3~10_combout\ & 
-- \Div1|auto_generated|divider|divider|op_3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[22]~76_combout\,
	datac => \Div1|auto_generated|divider|divider|op_3~4_combout\,
	datad => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~71_combout\);

-- Location: LCCOMB_X25_Y21_N4
\Div1|auto_generated|divider|divider|StageOut[28]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~61_combout\ = (\Div1|auto_generated|divider|divider|op_4~6_combout\ & !\Div1|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_4~6_combout\,
	datad => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~61_combout\);

-- Location: LCCOMB_X24_Y23_N18
\Div1|auto_generated|divider|divider|op_5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_5~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[28]~71_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[28]~61_combout\) # (!\Div1|auto_generated|divider|divider|op_5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[28]~71_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[28]~61_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_5~7\,
	cout => \Div1|auto_generated|divider|divider|op_5~9_cout\);

-- Location: LCCOMB_X24_Y23_N20
\Div1|auto_generated|divider|divider|op_5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_5~10_combout\ = !\Div1|auto_generated|divider|divider|op_5~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|op_5~9_cout\,
	combout => \Div1|auto_generated|divider|divider|op_5~10_combout\);

-- Location: LCCOMB_X24_Y23_N26
\Div1|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\Div1|auto_generated|divider|divider|op_5~6_combout\ & !\Div1|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|op_5~6_combout\,
	datad => \Div1|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X25_Y21_N20
\Div1|auto_generated|divider|divider|StageOut[33]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~73_combout\ = (\Div1|auto_generated|divider|divider|op_5~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[27]~72_combout\) # ((\Div1|auto_generated|divider|divider|op_4~4_combout\ & 
-- !\Div1|auto_generated|divider|divider|op_4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_4~4_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[27]~72_combout\,
	datac => \Div1|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~73_combout\);

-- Location: LCCOMB_X24_Y23_N8
\Div1|auto_generated|divider|divider|StageOut[32]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~74_combout\ = (\Div1|auto_generated|divider|divider|op_5~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[26]~78_combout\) # ((\Div1|auto_generated|divider|divider|op_4~2_combout\ & 
-- !\Div1|auto_generated|divider|divider|op_4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[26]~78_combout\,
	datab => \Div1|auto_generated|divider|divider|op_4~2_combout\,
	datac => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div1|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~74_combout\);

-- Location: LCCOMB_X24_Y23_N28
\Div1|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\Div1|auto_generated|divider|divider|op_5~4_combout\ & !\Div1|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|op_5~4_combout\,
	datad => \Div1|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X25_Y21_N22
\Div1|auto_generated|divider|divider|StageOut[31]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~79_combout\ = (\Div1|auto_generated|divider|divider|op_5~10_combout\ & ((\Div1|auto_generated|divider|divider|op_4~10_combout\ & ((\r_in_filter2[2]~input_o\))) # 
-- (!\Div1|auto_generated|divider|divider|op_4~10_combout\ & (\Div1|auto_generated|divider|divider|op_4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_4~0_combout\,
	datab => \Div1|auto_generated|divider|divider|op_5~10_combout\,
	datac => \r_in_filter2[2]~input_o\,
	datad => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X24_Y23_N6
\Div1|auto_generated|divider|divider|StageOut[31]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~68_combout\ = (\Div1|auto_generated|divider|divider|op_5~2_combout\ & !\Div1|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_5~2_combout\,
	datad => \Div1|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~68_combout\);

-- Location: LCCOMB_X24_Y23_N0
\Div1|auto_generated|divider|divider|StageOut[30]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~69_combout\ = (\r_in_filter2[1]~input_o\ & \Div1|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_in_filter2[1]~input_o\,
	datad => \Div1|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~69_combout\);

-- Location: LCCOMB_X24_Y23_N22
\Div1|auto_generated|divider|divider|StageOut[30]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~70_combout\ = (\Div1|auto_generated|divider|divider|op_5~0_combout\ & !\Div1|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_5~0_combout\,
	datad => \Div1|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~70_combout\);

-- Location: IOIBUF_X28_Y24_N8
\r_in_filter2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter2(0),
	o => \r_in_filter2[0]~input_o\);

-- Location: LCCOMB_X25_Y23_N18
\Div1|auto_generated|divider|divider|op_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_6~1_cout\ = CARRY(\r_in_filter2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter2[0]~input_o\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|op_6~1_cout\);

-- Location: LCCOMB_X25_Y23_N20
\Div1|auto_generated|divider|divider|op_6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_6~3_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[30]~69_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[30]~70_combout\ & !\Div1|auto_generated|divider|divider|op_6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[30]~70_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_6~1_cout\,
	cout => \Div1|auto_generated|divider|divider|op_6~3_cout\);

-- Location: LCCOMB_X25_Y23_N22
\Div1|auto_generated|divider|divider|op_6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_6~5_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[31]~79_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[31]~68_combout\) # (!\Div1|auto_generated|divider|divider|op_6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_6~3_cout\,
	cout => \Div1|auto_generated|divider|divider|op_6~5_cout\);

-- Location: LCCOMB_X25_Y23_N24
\Div1|auto_generated|divider|divider|op_6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_6~7_cout\ = CARRY(((!\Div1|auto_generated|divider|divider|StageOut[32]~74_combout\ & !\Div1|auto_generated|divider|divider|StageOut[32]~67_combout\)) # (!\Div1|auto_generated|divider|divider|op_6~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[32]~74_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_6~5_cout\,
	cout => \Div1|auto_generated|divider|divider|op_6~7_cout\);

-- Location: LCCOMB_X25_Y23_N26
\Div1|auto_generated|divider|divider|op_6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_6~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[33]~66_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[33]~73_combout\) # (!\Div1|auto_generated|divider|divider|op_6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[33]~73_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_6~7_cout\,
	cout => \Div1|auto_generated|divider|divider|op_6~9_cout\);

-- Location: LCCOMB_X25_Y23_N28
\Div1|auto_generated|divider|divider|op_6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_6~10_combout\ = !\Div1|auto_generated|divider|divider|op_6~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|op_6~9_cout\,
	combout => \Div1|auto_generated|divider|divider|op_6~10_combout\);

-- Location: IOIBUF_X16_Y0_N15
\r_in_filter5[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter5(1),
	o => \r_in_filter5[1]~input_o\);

-- Location: LCCOMB_X17_Y5_N14
\Div4|auto_generated|divider|divider|op_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_6~0_combout\ = \r_in_filter5[1]~input_o\ $ (VCC)
-- \Div4|auto_generated|divider|divider|op_6~1\ = CARRY(\r_in_filter5[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter5[1]~input_o\,
	datad => VCC,
	combout => \Div4|auto_generated|divider|divider|op_6~0_combout\,
	cout => \Div4|auto_generated|divider|divider|op_6~1\);

-- Location: IOIBUF_X21_Y0_N22
\r_in_filter5[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter5(7),
	o => \r_in_filter5[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\r_in_filter5[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter5(6),
	o => \r_in_filter5[6]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\r_in_filter5[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter5(5),
	o => \r_in_filter5[5]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\r_in_filter5[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter5(4),
	o => \r_in_filter5[4]~input_o\);

-- Location: LCCOMB_X19_Y4_N6
\Div4|auto_generated|divider|divider|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_3~0_combout\ = \r_in_filter5[4]~input_o\ $ (VCC)
-- \Div4|auto_generated|divider|divider|op_3~1\ = CARRY(\r_in_filter5[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter5[4]~input_o\,
	datad => VCC,
	combout => \Div4|auto_generated|divider|divider|op_3~0_combout\,
	cout => \Div4|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X19_Y4_N8
\Div4|auto_generated|divider|divider|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_3~2_combout\ = (\r_in_filter5[5]~input_o\ & (\Div4|auto_generated|divider|divider|op_3~1\ & VCC)) # (!\r_in_filter5[5]~input_o\ & (!\Div4|auto_generated|divider|divider|op_3~1\))
-- \Div4|auto_generated|divider|divider|op_3~3\ = CARRY((!\r_in_filter5[5]~input_o\ & !\Div4|auto_generated|divider|divider|op_3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter5[5]~input_o\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_3~1\,
	combout => \Div4|auto_generated|divider|divider|op_3~2_combout\,
	cout => \Div4|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X19_Y4_N10
\Div4|auto_generated|divider|divider|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_3~4_combout\ = (\r_in_filter5[6]~input_o\ & ((GND) # (!\Div4|auto_generated|divider|divider|op_3~3\))) # (!\r_in_filter5[6]~input_o\ & (\Div4|auto_generated|divider|divider|op_3~3\ $ (GND)))
-- \Div4|auto_generated|divider|divider|op_3~5\ = CARRY((\r_in_filter5[6]~input_o\) # (!\Div4|auto_generated|divider|divider|op_3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter5[6]~input_o\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_3~3\,
	combout => \Div4|auto_generated|divider|divider|op_3~4_combout\,
	cout => \Div4|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X19_Y4_N12
\Div4|auto_generated|divider|divider|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_3~6_combout\ = (\r_in_filter5[7]~input_o\ & (!\Div4|auto_generated|divider|divider|op_3~5\)) # (!\r_in_filter5[7]~input_o\ & ((\Div4|auto_generated|divider|divider|op_3~5\) # (GND)))
-- \Div4|auto_generated|divider|divider|op_3~7\ = CARRY((!\Div4|auto_generated|divider|divider|op_3~5\) # (!\r_in_filter5[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter5[7]~input_o\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_3~5\,
	combout => \Div4|auto_generated|divider|divider|op_3~6_combout\,
	cout => \Div4|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X19_Y4_N14
\Div4|auto_generated|divider|divider|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_3~8_combout\ = \Div4|auto_generated|divider|divider|op_3~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div4|auto_generated|divider|divider|op_3~7\,
	combout => \Div4|auto_generated|divider|divider|op_3~8_combout\);

-- Location: LCCOMB_X18_Y4_N0
\Div4|auto_generated|divider|divider|StageOut[18]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[18]~76_combout\ = (\Div4|auto_generated|divider|divider|op_3~8_combout\ & \r_in_filter5[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div4|auto_generated|divider|divider|op_3~8_combout\,
	datad => \r_in_filter5[7]~input_o\,
	combout => \Div4|auto_generated|divider|divider|StageOut[18]~76_combout\);

-- Location: LCCOMB_X19_Y4_N0
\Div4|auto_generated|divider|divider|StageOut[18]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[18]~77_combout\ = (!\Div4|auto_generated|divider|divider|op_3~8_combout\ & \Div4|auto_generated|divider|divider|op_3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_3~8_combout\,
	datad => \Div4|auto_generated|divider|divider|op_3~6_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[18]~77_combout\);

-- Location: LCCOMB_X19_Y4_N2
\Div4|auto_generated|divider|divider|StageOut[17]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[17]~78_combout\ = (\Div4|auto_generated|divider|divider|op_3~8_combout\ & \r_in_filter5[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_3~8_combout\,
	datad => \r_in_filter5[6]~input_o\,
	combout => \Div4|auto_generated|divider|divider|StageOut[17]~78_combout\);

-- Location: LCCOMB_X19_Y4_N20
\Div4|auto_generated|divider|divider|StageOut[17]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[17]~79_combout\ = (!\Div4|auto_generated|divider|divider|op_3~8_combout\ & \Div4|auto_generated|divider|divider|op_3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_3~8_combout\,
	datad => \Div4|auto_generated|divider|divider|op_3~4_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[17]~79_combout\);

-- Location: LCCOMB_X18_Y4_N26
\Div4|auto_generated|divider|divider|StageOut[16]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[16]~80_combout\ = (\r_in_filter5[5]~input_o\ & \Div4|auto_generated|divider|divider|op_3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter5[5]~input_o\,
	datac => \Div4|auto_generated|divider|divider|op_3~8_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[16]~80_combout\);

-- Location: LCCOMB_X18_Y4_N28
\Div4|auto_generated|divider|divider|StageOut[16]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[16]~81_combout\ = (\Div4|auto_generated|divider|divider|op_3~2_combout\ & !\Div4|auto_generated|divider|divider|op_3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div4|auto_generated|divider|divider|op_3~2_combout\,
	datac => \Div4|auto_generated|divider|divider|op_3~8_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[16]~81_combout\);

-- Location: LCCOMB_X19_Y4_N24
\Div4|auto_generated|divider|divider|StageOut[15]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[15]~82_combout\ = (\Div4|auto_generated|divider|divider|op_3~8_combout\ & \r_in_filter5[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_3~8_combout\,
	datad => \r_in_filter5[4]~input_o\,
	combout => \Div4|auto_generated|divider|divider|StageOut[15]~82_combout\);

-- Location: LCCOMB_X19_Y4_N26
\Div4|auto_generated|divider|divider|StageOut[15]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[15]~83_combout\ = (!\Div4|auto_generated|divider|divider|op_3~8_combout\ & \Div4|auto_generated|divider|divider|op_3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_3~8_combout\,
	datad => \Div4|auto_generated|divider|divider|op_3~0_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[15]~83_combout\);

-- Location: IOIBUF_X18_Y0_N15
\r_in_filter5[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter5(3),
	o => \r_in_filter5[3]~input_o\);

-- Location: LCCOMB_X18_Y4_N12
\Div4|auto_generated|divider|divider|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_4~0_combout\ = \r_in_filter5[3]~input_o\ $ (VCC)
-- \Div4|auto_generated|divider|divider|op_4~1\ = CARRY(\r_in_filter5[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter5[3]~input_o\,
	datad => VCC,
	combout => \Div4|auto_generated|divider|divider|op_4~0_combout\,
	cout => \Div4|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X18_Y4_N14
\Div4|auto_generated|divider|divider|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_4~2_combout\ = (\Div4|auto_generated|divider|divider|op_4~1\ & (((\Div4|auto_generated|divider|divider|StageOut[15]~82_combout\) # (\Div4|auto_generated|divider|divider|StageOut[15]~83_combout\)))) # 
-- (!\Div4|auto_generated|divider|divider|op_4~1\ & (!\Div4|auto_generated|divider|divider|StageOut[15]~82_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[15]~83_combout\)))
-- \Div4|auto_generated|divider|divider|op_4~3\ = CARRY((!\Div4|auto_generated|divider|divider|StageOut[15]~82_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[15]~83_combout\ & !\Div4|auto_generated|divider|divider|op_4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[15]~82_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[15]~83_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_4~1\,
	combout => \Div4|auto_generated|divider|divider|op_4~2_combout\,
	cout => \Div4|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X18_Y4_N16
\Div4|auto_generated|divider|divider|op_4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_4~4_combout\ = (\Div4|auto_generated|divider|divider|op_4~3\ & ((((\Div4|auto_generated|divider|divider|StageOut[16]~80_combout\) # (\Div4|auto_generated|divider|divider|StageOut[16]~81_combout\))))) # 
-- (!\Div4|auto_generated|divider|divider|op_4~3\ & ((\Div4|auto_generated|divider|divider|StageOut[16]~80_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[16]~81_combout\) # (GND))))
-- \Div4|auto_generated|divider|divider|op_4~5\ = CARRY((\Div4|auto_generated|divider|divider|StageOut[16]~80_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[16]~81_combout\) # (!\Div4|auto_generated|divider|divider|op_4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[16]~80_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[16]~81_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_4~3\,
	combout => \Div4|auto_generated|divider|divider|op_4~4_combout\,
	cout => \Div4|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X18_Y4_N18
\Div4|auto_generated|divider|divider|op_4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_4~6_combout\ = (\Div4|auto_generated|divider|divider|StageOut[17]~78_combout\ & (((!\Div4|auto_generated|divider|divider|op_4~5\)))) # (!\Div4|auto_generated|divider|divider|StageOut[17]~78_combout\ & 
-- ((\Div4|auto_generated|divider|divider|StageOut[17]~79_combout\ & (!\Div4|auto_generated|divider|divider|op_4~5\)) # (!\Div4|auto_generated|divider|divider|StageOut[17]~79_combout\ & ((\Div4|auto_generated|divider|divider|op_4~5\) # (GND)))))
-- \Div4|auto_generated|divider|divider|op_4~7\ = CARRY(((!\Div4|auto_generated|divider|divider|StageOut[17]~78_combout\ & !\Div4|auto_generated|divider|divider|StageOut[17]~79_combout\)) # (!\Div4|auto_generated|divider|divider|op_4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[17]~78_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[17]~79_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_4~5\,
	combout => \Div4|auto_generated|divider|divider|op_4~6_combout\,
	cout => \Div4|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X18_Y4_N20
\Div4|auto_generated|divider|divider|op_4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_4~9_cout\ = CARRY((\Div4|auto_generated|divider|divider|StageOut[18]~76_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[18]~77_combout\) # (!\Div4|auto_generated|divider|divider|op_4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[18]~76_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[18]~77_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_4~7\,
	cout => \Div4|auto_generated|divider|divider|op_4~9_cout\);

-- Location: LCCOMB_X18_Y4_N22
\Div4|auto_generated|divider|divider|op_4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_4~10_combout\ = !\Div4|auto_generated|divider|divider|op_4~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div4|auto_generated|divider|divider|op_4~9_cout\,
	combout => \Div4|auto_generated|divider|divider|op_4~10_combout\);

-- Location: LCCOMB_X18_Y4_N4
\Div4|auto_generated|divider|divider|StageOut[22]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[22]~122_combout\ = (\Div4|auto_generated|divider|divider|op_4~10_combout\ & ((\Div4|auto_generated|divider|divider|op_3~8_combout\ & ((\r_in_filter5[5]~input_o\))) # 
-- (!\Div4|auto_generated|divider|divider|op_3~8_combout\ & (\Div4|auto_generated|divider|divider|op_3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Div4|auto_generated|divider|divider|op_3~2_combout\,
	datac => \Div4|auto_generated|divider|divider|op_3~8_combout\,
	datad => \r_in_filter5[5]~input_o\,
	combout => \Div4|auto_generated|divider|divider|StageOut[22]~122_combout\);

-- Location: LCCOMB_X18_Y4_N8
\Div4|auto_generated|divider|divider|StageOut[22]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[22]~85_combout\ = (!\Div4|auto_generated|divider|divider|op_4~10_combout\ & \Div4|auto_generated|divider|divider|op_4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_4~4_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[22]~85_combout\);

-- Location: LCCOMB_X18_Y4_N2
\Div4|auto_generated|divider|divider|StageOut[21]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[21]~86_combout\ = (\Div4|auto_generated|divider|divider|op_4~2_combout\ & !\Div4|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div4|auto_generated|divider|divider|op_4~2_combout\,
	datac => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[21]~86_combout\);

-- Location: LCCOMB_X19_Y4_N30
\Div4|auto_generated|divider|divider|StageOut[21]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[21]~123_combout\ = (\Div4|auto_generated|divider|divider|op_4~10_combout\ & ((\Div4|auto_generated|divider|divider|op_3~8_combout\ & ((\r_in_filter5[4]~input_o\))) # 
-- (!\Div4|auto_generated|divider|divider|op_3~8_combout\ & (\Div4|auto_generated|divider|divider|op_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_3~0_combout\,
	datab => \r_in_filter5[4]~input_o\,
	datac => \Div4|auto_generated|divider|divider|op_3~8_combout\,
	datad => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[21]~123_combout\);

-- Location: LCCOMB_X18_Y4_N24
\Div4|auto_generated|divider|divider|StageOut[20]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[20]~88_combout\ = (!\Div4|auto_generated|divider|divider|op_4~10_combout\ & \Div4|auto_generated|divider|divider|op_4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_4~0_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[20]~88_combout\);

-- Location: LCCOMB_X17_Y4_N24
\Div4|auto_generated|divider|divider|StageOut[20]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[20]~87_combout\ = (\r_in_filter5[3]~input_o\ & \Div4|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter5[3]~input_o\,
	datac => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[20]~87_combout\);

-- Location: IOIBUF_X16_Y0_N1
\r_in_filter5[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter5(2),
	o => \r_in_filter5[2]~input_o\);

-- Location: LCCOMB_X17_Y4_N6
\Div4|auto_generated|divider|divider|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_5~0_combout\ = \r_in_filter5[2]~input_o\ $ (VCC)
-- \Div4|auto_generated|divider|divider|op_5~1\ = CARRY(\r_in_filter5[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter5[2]~input_o\,
	datad => VCC,
	combout => \Div4|auto_generated|divider|divider|op_5~0_combout\,
	cout => \Div4|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X17_Y4_N8
\Div4|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_5~2_combout\ = (\Div4|auto_generated|divider|divider|op_5~1\ & (((\Div4|auto_generated|divider|divider|StageOut[20]~88_combout\) # (\Div4|auto_generated|divider|divider|StageOut[20]~87_combout\)))) # 
-- (!\Div4|auto_generated|divider|divider|op_5~1\ & (!\Div4|auto_generated|divider|divider|StageOut[20]~88_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[20]~87_combout\)))
-- \Div4|auto_generated|divider|divider|op_5~3\ = CARRY((!\Div4|auto_generated|divider|divider|StageOut[20]~88_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[20]~87_combout\ & !\Div4|auto_generated|divider|divider|op_5~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[20]~88_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[20]~87_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_5~1\,
	combout => \Div4|auto_generated|divider|divider|op_5~2_combout\,
	cout => \Div4|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X17_Y4_N10
\Div4|auto_generated|divider|divider|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_5~4_combout\ = (\Div4|auto_generated|divider|divider|op_5~3\ & ((((\Div4|auto_generated|divider|divider|StageOut[21]~86_combout\) # (\Div4|auto_generated|divider|divider|StageOut[21]~123_combout\))))) # 
-- (!\Div4|auto_generated|divider|divider|op_5~3\ & ((\Div4|auto_generated|divider|divider|StageOut[21]~86_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[21]~123_combout\) # (GND))))
-- \Div4|auto_generated|divider|divider|op_5~5\ = CARRY((\Div4|auto_generated|divider|divider|StageOut[21]~86_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[21]~123_combout\) # (!\Div4|auto_generated|divider|divider|op_5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[21]~86_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[21]~123_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_5~3\,
	combout => \Div4|auto_generated|divider|divider|op_5~4_combout\,
	cout => \Div4|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X17_Y4_N12
\Div4|auto_generated|divider|divider|op_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_5~6_combout\ = (\Div4|auto_generated|divider|divider|StageOut[22]~122_combout\ & (((!\Div4|auto_generated|divider|divider|op_5~5\)))) # (!\Div4|auto_generated|divider|divider|StageOut[22]~122_combout\ & 
-- ((\Div4|auto_generated|divider|divider|StageOut[22]~85_combout\ & (!\Div4|auto_generated|divider|divider|op_5~5\)) # (!\Div4|auto_generated|divider|divider|StageOut[22]~85_combout\ & ((\Div4|auto_generated|divider|divider|op_5~5\) # (GND)))))
-- \Div4|auto_generated|divider|divider|op_5~7\ = CARRY(((!\Div4|auto_generated|divider|divider|StageOut[22]~122_combout\ & !\Div4|auto_generated|divider|divider|StageOut[22]~85_combout\)) # (!\Div4|auto_generated|divider|divider|op_5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[22]~122_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[22]~85_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_5~5\,
	combout => \Div4|auto_generated|divider|divider|op_5~6_combout\,
	cout => \Div4|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X18_Y4_N6
\Div4|auto_generated|divider|divider|StageOut[23]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[23]~84_combout\ = (!\Div4|auto_generated|divider|divider|op_4~10_combout\ & \Div4|auto_generated|divider|divider|op_4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_4~6_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[23]~84_combout\);

-- Location: LCCOMB_X19_Y4_N28
\Div4|auto_generated|divider|divider|StageOut[23]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[23]~121_combout\ = (\Div4|auto_generated|divider|divider|op_4~10_combout\ & ((\Div4|auto_generated|divider|divider|op_3~8_combout\ & ((\r_in_filter5[6]~input_o\))) # 
-- (!\Div4|auto_generated|divider|divider|op_3~8_combout\ & (\Div4|auto_generated|divider|divider|op_3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_3~4_combout\,
	datab => \r_in_filter5[6]~input_o\,
	datac => \Div4|auto_generated|divider|divider|op_3~8_combout\,
	datad => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[23]~121_combout\);

-- Location: LCCOMB_X17_Y4_N14
\Div4|auto_generated|divider|divider|op_5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_5~9_cout\ = CARRY((\Div4|auto_generated|divider|divider|StageOut[23]~84_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[23]~121_combout\) # (!\Div4|auto_generated|divider|divider|op_5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[23]~84_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[23]~121_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_5~7\,
	cout => \Div4|auto_generated|divider|divider|op_5~9_cout\);

-- Location: LCCOMB_X17_Y4_N16
\Div4|auto_generated|divider|divider|op_5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_5~10_combout\ = !\Div4|auto_generated|divider|divider|op_5~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div4|auto_generated|divider|divider|op_5~9_cout\,
	combout => \Div4|auto_generated|divider|divider|op_5~10_combout\);

-- Location: LCCOMB_X17_Y4_N2
\Div4|auto_generated|divider|divider|StageOut[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[28]~89_combout\ = (\Div4|auto_generated|divider|divider|op_5~6_combout\ & !\Div4|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_5~6_combout\,
	datad => \Div4|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[28]~89_combout\);

-- Location: LCCOMB_X18_Y4_N10
\Div4|auto_generated|divider|divider|StageOut[28]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[28]~111_combout\ = (\Div4|auto_generated|divider|divider|op_5~10_combout\ & ((\Div4|auto_generated|divider|divider|StageOut[22]~122_combout\) # ((!\Div4|auto_generated|divider|divider|op_4~10_combout\ & 
-- \Div4|auto_generated|divider|divider|op_4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_5~10_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[22]~122_combout\,
	datac => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_4~4_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[28]~111_combout\);

-- Location: LCCOMB_X17_Y4_N22
\Div4|auto_generated|divider|divider|StageOut[27]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[27]~112_combout\ = (\Div4|auto_generated|divider|divider|op_5~10_combout\ & ((\Div4|auto_generated|divider|divider|StageOut[21]~123_combout\) # ((!\Div4|auto_generated|divider|divider|op_4~10_combout\ & 
-- \Div4|auto_generated|divider|divider|op_4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Div4|auto_generated|divider|divider|op_5~10_combout\,
	datac => \Div4|auto_generated|divider|divider|op_4~2_combout\,
	datad => \Div4|auto_generated|divider|divider|StageOut[21]~123_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[27]~112_combout\);

-- Location: LCCOMB_X17_Y4_N28
\Div4|auto_generated|divider|divider|StageOut[27]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[27]~90_combout\ = (\Div4|auto_generated|divider|divider|op_5~4_combout\ & !\Div4|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_5~4_combout\,
	datad => \Div4|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[27]~90_combout\);

-- Location: LCCOMB_X17_Y4_N4
\Div4|auto_generated|divider|divider|StageOut[26]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[26]~124_combout\ = (\Div4|auto_generated|divider|divider|op_5~10_combout\ & ((\Div4|auto_generated|divider|divider|op_4~10_combout\ & ((\r_in_filter5[3]~input_o\))) # 
-- (!\Div4|auto_generated|divider|divider|op_4~10_combout\ & (\Div4|auto_generated|divider|divider|op_4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Div4|auto_generated|divider|divider|op_5~10_combout\,
	datac => \Div4|auto_generated|divider|divider|op_4~0_combout\,
	datad => \r_in_filter5[3]~input_o\,
	combout => \Div4|auto_generated|divider|divider|StageOut[26]~124_combout\);

-- Location: LCCOMB_X17_Y4_N18
\Div4|auto_generated|divider|divider|StageOut[26]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[26]~91_combout\ = (\Div4|auto_generated|divider|divider|op_5~2_combout\ & !\Div4|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_5~2_combout\,
	datad => \Div4|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[26]~91_combout\);

-- Location: LCCOMB_X17_Y4_N20
\Div4|auto_generated|divider|divider|StageOut[25]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[25]~92_combout\ = (\r_in_filter5[2]~input_o\ & \Div4|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter5[2]~input_o\,
	datad => \Div4|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[25]~92_combout\);

-- Location: LCCOMB_X17_Y5_N8
\Div4|auto_generated|divider|divider|StageOut[25]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[25]~93_combout\ = (!\Div4|auto_generated|divider|divider|op_5~10_combout\ & \Div4|auto_generated|divider|divider|op_5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div4|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_5~0_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[25]~93_combout\);

-- Location: LCCOMB_X17_Y5_N16
\Div4|auto_generated|divider|divider|op_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_6~2_combout\ = (\Div4|auto_generated|divider|divider|op_6~1\ & (((\Div4|auto_generated|divider|divider|StageOut[25]~92_combout\) # (\Div4|auto_generated|divider|divider|StageOut[25]~93_combout\)))) # 
-- (!\Div4|auto_generated|divider|divider|op_6~1\ & (!\Div4|auto_generated|divider|divider|StageOut[25]~92_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[25]~93_combout\)))
-- \Div4|auto_generated|divider|divider|op_6~3\ = CARRY((!\Div4|auto_generated|divider|divider|StageOut[25]~92_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[25]~93_combout\ & !\Div4|auto_generated|divider|divider|op_6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[25]~92_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[25]~93_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_6~1\,
	combout => \Div4|auto_generated|divider|divider|op_6~2_combout\,
	cout => \Div4|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X17_Y5_N18
\Div4|auto_generated|divider|divider|op_6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_6~4_combout\ = (\Div4|auto_generated|divider|divider|op_6~3\ & ((((\Div4|auto_generated|divider|divider|StageOut[26]~124_combout\) # (\Div4|auto_generated|divider|divider|StageOut[26]~91_combout\))))) # 
-- (!\Div4|auto_generated|divider|divider|op_6~3\ & ((\Div4|auto_generated|divider|divider|StageOut[26]~124_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[26]~91_combout\) # (GND))))
-- \Div4|auto_generated|divider|divider|op_6~5\ = CARRY((\Div4|auto_generated|divider|divider|StageOut[26]~124_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[26]~91_combout\) # (!\Div4|auto_generated|divider|divider|op_6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[26]~124_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[26]~91_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_6~3\,
	combout => \Div4|auto_generated|divider|divider|op_6~4_combout\,
	cout => \Div4|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X17_Y5_N20
\Div4|auto_generated|divider|divider|op_6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_6~6_combout\ = (\Div4|auto_generated|divider|divider|StageOut[27]~112_combout\ & (((!\Div4|auto_generated|divider|divider|op_6~5\)))) # (!\Div4|auto_generated|divider|divider|StageOut[27]~112_combout\ & 
-- ((\Div4|auto_generated|divider|divider|StageOut[27]~90_combout\ & (!\Div4|auto_generated|divider|divider|op_6~5\)) # (!\Div4|auto_generated|divider|divider|StageOut[27]~90_combout\ & ((\Div4|auto_generated|divider|divider|op_6~5\) # (GND)))))
-- \Div4|auto_generated|divider|divider|op_6~7\ = CARRY(((!\Div4|auto_generated|divider|divider|StageOut[27]~112_combout\ & !\Div4|auto_generated|divider|divider|StageOut[27]~90_combout\)) # (!\Div4|auto_generated|divider|divider|op_6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[27]~112_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[27]~90_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_6~5\,
	combout => \Div4|auto_generated|divider|divider|op_6~6_combout\,
	cout => \Div4|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X17_Y5_N22
\Div4|auto_generated|divider|divider|op_6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_6~9_cout\ = CARRY((\Div4|auto_generated|divider|divider|StageOut[28]~89_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[28]~111_combout\) # (!\Div4|auto_generated|divider|divider|op_6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[28]~89_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[28]~111_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_6~7\,
	cout => \Div4|auto_generated|divider|divider|op_6~9_cout\);

-- Location: LCCOMB_X17_Y5_N24
\Div4|auto_generated|divider|divider|op_6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_6~10_combout\ = !\Div4|auto_generated|divider|divider|op_6~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div4|auto_generated|divider|divider|op_6~9_cout\,
	combout => \Div4|auto_generated|divider|divider|op_6~10_combout\);

-- Location: LCCOMB_X17_Y5_N10
\Div4|auto_generated|divider|divider|StageOut[33]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[33]~94_combout\ = (\Div4|auto_generated|divider|divider|op_6~6_combout\ & !\Div4|auto_generated|divider|divider|op_6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div4|auto_generated|divider|divider|op_6~6_combout\,
	datad => \Div4|auto_generated|divider|divider|op_6~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[33]~94_combout\);

-- Location: LCCOMB_X17_Y4_N0
\Div4|auto_generated|divider|divider|StageOut[33]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[33]~113_combout\ = (\Div4|auto_generated|divider|divider|op_6~10_combout\ & ((\Div4|auto_generated|divider|divider|StageOut[27]~112_combout\) # ((!\Div4|auto_generated|divider|divider|op_5~10_combout\ & 
-- \Div4|auto_generated|divider|divider|op_5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[27]~112_combout\,
	datab => \Div4|auto_generated|divider|divider|op_5~10_combout\,
	datac => \Div4|auto_generated|divider|divider|op_6~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_5~4_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[33]~113_combout\);

-- Location: LCCOMB_X17_Y4_N26
\Div4|auto_generated|divider|divider|StageOut[32]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[32]~114_combout\ = (\Div4|auto_generated|divider|divider|op_6~10_combout\ & ((\Div4|auto_generated|divider|divider|StageOut[26]~124_combout\) # ((\Div4|auto_generated|divider|divider|op_5~2_combout\ & 
-- !\Div4|auto_generated|divider|divider|op_5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_5~2_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[26]~124_combout\,
	datac => \Div4|auto_generated|divider|divider|op_6~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[32]~114_combout\);

-- Location: LCCOMB_X17_Y7_N0
\Div4|auto_generated|divider|divider|StageOut[32]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[32]~95_combout\ = (!\Div4|auto_generated|divider|divider|op_6~10_combout\ & \Div4|auto_generated|divider|divider|op_6~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div4|auto_generated|divider|divider|op_6~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_6~4_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[32]~95_combout\);

-- Location: LCCOMB_X17_Y7_N10
\Div4|auto_generated|divider|divider|StageOut[31]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[31]~96_combout\ = (!\Div4|auto_generated|divider|divider|op_6~10_combout\ & \Div4|auto_generated|divider|divider|op_6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_6~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_6~2_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[31]~96_combout\);

-- Location: LCCOMB_X17_Y4_N30
\Div4|auto_generated|divider|divider|StageOut[31]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[31]~125_combout\ = (\Div4|auto_generated|divider|divider|op_6~10_combout\ & ((\Div4|auto_generated|divider|divider|op_5~10_combout\ & ((\r_in_filter5[2]~input_o\))) # 
-- (!\Div4|auto_generated|divider|divider|op_5~10_combout\ & (\Div4|auto_generated|divider|divider|op_5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_5~0_combout\,
	datab => \r_in_filter5[2]~input_o\,
	datac => \Div4|auto_generated|divider|divider|op_6~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[31]~125_combout\);

-- Location: LCCOMB_X17_Y7_N6
\Div4|auto_generated|divider|divider|StageOut[30]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[30]~98_combout\ = (!\Div4|auto_generated|divider|divider|op_6~10_combout\ & \Div4|auto_generated|divider|divider|op_6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div4|auto_generated|divider|divider|op_6~10_combout\,
	datac => \Div4|auto_generated|divider|divider|op_6~0_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[30]~98_combout\);

-- Location: LCCOMB_X17_Y7_N28
\Div4|auto_generated|divider|divider|StageOut[30]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[30]~97_combout\ = (\Div4|auto_generated|divider|divider|op_6~10_combout\ & \r_in_filter5[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div4|auto_generated|divider|divider|op_6~10_combout\,
	datac => \r_in_filter5[1]~input_o\,
	combout => \Div4|auto_generated|divider|divider|StageOut[30]~97_combout\);

-- Location: IOIBUF_X18_Y0_N22
\r_in_filter5[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter5(0),
	o => \r_in_filter5[0]~input_o\);

-- Location: LCCOMB_X17_Y7_N16
\Div4|auto_generated|divider|divider|op_7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_7~0_combout\ = \r_in_filter5[0]~input_o\ $ (VCC)
-- \Div4|auto_generated|divider|divider|op_7~1\ = CARRY(\r_in_filter5[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter5[0]~input_o\,
	datad => VCC,
	combout => \Div4|auto_generated|divider|divider|op_7~0_combout\,
	cout => \Div4|auto_generated|divider|divider|op_7~1\);

-- Location: LCCOMB_X17_Y7_N18
\Div4|auto_generated|divider|divider|op_7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_7~2_combout\ = (\Div4|auto_generated|divider|divider|op_7~1\ & (((\Div4|auto_generated|divider|divider|StageOut[30]~98_combout\) # (\Div4|auto_generated|divider|divider|StageOut[30]~97_combout\)))) # 
-- (!\Div4|auto_generated|divider|divider|op_7~1\ & (!\Div4|auto_generated|divider|divider|StageOut[30]~98_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[30]~97_combout\)))
-- \Div4|auto_generated|divider|divider|op_7~3\ = CARRY((!\Div4|auto_generated|divider|divider|StageOut[30]~98_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[30]~97_combout\ & !\Div4|auto_generated|divider|divider|op_7~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[30]~98_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[30]~97_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_7~1\,
	combout => \Div4|auto_generated|divider|divider|op_7~2_combout\,
	cout => \Div4|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X17_Y7_N20
\Div4|auto_generated|divider|divider|op_7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_7~4_combout\ = (\Div4|auto_generated|divider|divider|op_7~3\ & ((((\Div4|auto_generated|divider|divider|StageOut[31]~96_combout\) # (\Div4|auto_generated|divider|divider|StageOut[31]~125_combout\))))) # 
-- (!\Div4|auto_generated|divider|divider|op_7~3\ & ((\Div4|auto_generated|divider|divider|StageOut[31]~96_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[31]~125_combout\) # (GND))))
-- \Div4|auto_generated|divider|divider|op_7~5\ = CARRY((\Div4|auto_generated|divider|divider|StageOut[31]~96_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[31]~125_combout\) # (!\Div4|auto_generated|divider|divider|op_7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[31]~96_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[31]~125_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_7~3\,
	combout => \Div4|auto_generated|divider|divider|op_7~4_combout\,
	cout => \Div4|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X17_Y7_N22
\Div4|auto_generated|divider|divider|op_7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_7~6_combout\ = (\Div4|auto_generated|divider|divider|StageOut[32]~114_combout\ & (((!\Div4|auto_generated|divider|divider|op_7~5\)))) # (!\Div4|auto_generated|divider|divider|StageOut[32]~114_combout\ & 
-- ((\Div4|auto_generated|divider|divider|StageOut[32]~95_combout\ & (!\Div4|auto_generated|divider|divider|op_7~5\)) # (!\Div4|auto_generated|divider|divider|StageOut[32]~95_combout\ & ((\Div4|auto_generated|divider|divider|op_7~5\) # (GND)))))
-- \Div4|auto_generated|divider|divider|op_7~7\ = CARRY(((!\Div4|auto_generated|divider|divider|StageOut[32]~114_combout\ & !\Div4|auto_generated|divider|divider|StageOut[32]~95_combout\)) # (!\Div4|auto_generated|divider|divider|op_7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[32]~114_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[32]~95_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_7~5\,
	combout => \Div4|auto_generated|divider|divider|op_7~6_combout\,
	cout => \Div4|auto_generated|divider|divider|op_7~7\);

-- Location: LCCOMB_X17_Y7_N24
\Div4|auto_generated|divider|divider|op_7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_7~9_cout\ = CARRY((\Div4|auto_generated|divider|divider|StageOut[33]~94_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[33]~113_combout\) # (!\Div4|auto_generated|divider|divider|op_7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[33]~94_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[33]~113_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_7~7\,
	cout => \Div4|auto_generated|divider|divider|op_7~9_cout\);

-- Location: LCCOMB_X17_Y7_N26
\Div4|auto_generated|divider|divider|op_7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_7~10_combout\ = !\Div4|auto_generated|divider|divider|op_7~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div4|auto_generated|divider|divider|op_7~9_cout\,
	combout => \Div4|auto_generated|divider|divider|op_7~10_combout\);

-- Location: LCCOMB_X17_Y7_N12
\Div4|auto_generated|divider|divider|StageOut[36]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[36]~126_combout\ = (\Div4|auto_generated|divider|divider|op_7~10_combout\ & ((\Div4|auto_generated|divider|divider|op_6~10_combout\ & (\r_in_filter5[1]~input_o\)) # 
-- (!\Div4|auto_generated|divider|divider|op_6~10_combout\ & ((\Div4|auto_generated|divider|divider|op_6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter5[1]~input_o\,
	datab => \Div4|auto_generated|divider|divider|op_6~0_combout\,
	datac => \Div4|auto_generated|divider|divider|op_6~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_7~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[36]~126_combout\);

-- Location: LCCOMB_X18_Y7_N28
\Div4|auto_generated|divider|divider|StageOut[36]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[36]~101_combout\ = (!\Div4|auto_generated|divider|divider|op_7~10_combout\ & \Div4|auto_generated|divider|divider|op_7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_7~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_7~2_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[36]~101_combout\);

-- Location: LCCOMB_X18_Y7_N30
\Div4|auto_generated|divider|divider|StageOut[35]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[35]~102_combout\ = (\Div4|auto_generated|divider|divider|op_7~10_combout\ & \r_in_filter5[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_7~10_combout\,
	datad => \r_in_filter5[0]~input_o\,
	combout => \Div4|auto_generated|divider|divider|StageOut[35]~102_combout\);

-- Location: LCCOMB_X17_Y7_N2
\Div4|auto_generated|divider|divider|StageOut[35]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[35]~103_combout\ = (!\Div4|auto_generated|divider|divider|op_7~10_combout\ & \Div4|auto_generated|divider|divider|op_7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_7~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_7~0_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[35]~103_combout\);

-- Location: LCCOMB_X18_Y7_N0
\Div4|auto_generated|divider|divider|op_8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_8~0_combout\ = (((\Div4|auto_generated|divider|divider|StageOut[35]~102_combout\) # (\Div4|auto_generated|divider|divider|StageOut[35]~103_combout\)))
-- \Div4|auto_generated|divider|divider|op_8~1\ = CARRY((\Div4|auto_generated|divider|divider|StageOut[35]~102_combout\) # (\Div4|auto_generated|divider|divider|StageOut[35]~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[35]~102_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[35]~103_combout\,
	datad => VCC,
	combout => \Div4|auto_generated|divider|divider|op_8~0_combout\,
	cout => \Div4|auto_generated|divider|divider|op_8~1\);

-- Location: LCCOMB_X18_Y7_N2
\Div4|auto_generated|divider|divider|op_8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_8~2_combout\ = (\Div4|auto_generated|divider|divider|op_8~1\ & (((\Div4|auto_generated|divider|divider|StageOut[36]~126_combout\) # (\Div4|auto_generated|divider|divider|StageOut[36]~101_combout\)))) # 
-- (!\Div4|auto_generated|divider|divider|op_8~1\ & (!\Div4|auto_generated|divider|divider|StageOut[36]~126_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[36]~101_combout\)))
-- \Div4|auto_generated|divider|divider|op_8~3\ = CARRY((!\Div4|auto_generated|divider|divider|StageOut[36]~126_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[36]~101_combout\ & !\Div4|auto_generated|divider|divider|op_8~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[36]~126_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[36]~101_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_8~1\,
	combout => \Div4|auto_generated|divider|divider|op_8~2_combout\,
	cout => \Div4|auto_generated|divider|divider|op_8~3\);

-- Location: LCCOMB_X17_Y7_N8
\Div4|auto_generated|divider|divider|StageOut[38]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[38]~99_combout\ = (\Div4|auto_generated|divider|divider|op_7~6_combout\ & !\Div4|auto_generated|divider|divider|op_7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_7~6_combout\,
	datac => \Div4|auto_generated|divider|divider|op_7~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[38]~99_combout\);

-- Location: LCCOMB_X17_Y7_N4
\Div4|auto_generated|divider|divider|StageOut[38]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[38]~115_combout\ = (\Div4|auto_generated|divider|divider|op_7~10_combout\ & ((\Div4|auto_generated|divider|divider|StageOut[32]~114_combout\) # ((!\Div4|auto_generated|divider|divider|op_6~10_combout\ & 
-- \Div4|auto_generated|divider|divider|op_6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[32]~114_combout\,
	datab => \Div4|auto_generated|divider|divider|op_6~10_combout\,
	datac => \Div4|auto_generated|divider|divider|op_7~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_6~4_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[38]~115_combout\);

-- Location: LCCOMB_X18_Y7_N18
\Div4|auto_generated|divider|divider|StageOut[37]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[37]~100_combout\ = (!\Div4|auto_generated|divider|divider|op_7~10_combout\ & \Div4|auto_generated|divider|divider|op_7~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_7~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_7~4_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[37]~100_combout\);

-- Location: LCCOMB_X17_Y7_N30
\Div4|auto_generated|divider|divider|StageOut[37]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[37]~116_combout\ = (\Div4|auto_generated|divider|divider|op_7~10_combout\ & ((\Div4|auto_generated|divider|divider|StageOut[31]~125_combout\) # ((!\Div4|auto_generated|divider|divider|op_6~10_combout\ & 
-- \Div4|auto_generated|divider|divider|op_6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_7~10_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[31]~125_combout\,
	datac => \Div4|auto_generated|divider|divider|op_6~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_6~2_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[37]~116_combout\);

-- Location: LCCOMB_X18_Y7_N4
\Div4|auto_generated|divider|divider|op_8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_8~4_combout\ = (\Div4|auto_generated|divider|divider|op_8~3\ & (((\Div4|auto_generated|divider|divider|StageOut[37]~100_combout\) # (\Div4|auto_generated|divider|divider|StageOut[37]~116_combout\)))) # 
-- (!\Div4|auto_generated|divider|divider|op_8~3\ & ((((\Div4|auto_generated|divider|divider|StageOut[37]~100_combout\) # (\Div4|auto_generated|divider|divider|StageOut[37]~116_combout\)))))
-- \Div4|auto_generated|divider|divider|op_8~5\ = CARRY((!\Div4|auto_generated|divider|divider|op_8~3\ & ((\Div4|auto_generated|divider|divider|StageOut[37]~100_combout\) # (\Div4|auto_generated|divider|divider|StageOut[37]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[37]~100_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[37]~116_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_8~3\,
	combout => \Div4|auto_generated|divider|divider|op_8~4_combout\,
	cout => \Div4|auto_generated|divider|divider|op_8~5\);

-- Location: LCCOMB_X18_Y7_N6
\Div4|auto_generated|divider|divider|op_8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_8~7_cout\ = CARRY((!\Div4|auto_generated|divider|divider|StageOut[38]~99_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[38]~115_combout\ & !\Div4|auto_generated|divider|divider|op_8~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[38]~99_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[38]~115_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_8~5\,
	cout => \Div4|auto_generated|divider|divider|op_8~7_cout\);

-- Location: LCCOMB_X18_Y7_N8
\Div4|auto_generated|divider|divider|op_8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_8~8_combout\ = \Div4|auto_generated|divider|divider|op_8~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div4|auto_generated|divider|divider|op_8~7_cout\,
	combout => \Div4|auto_generated|divider|divider|op_8~8_combout\);

-- Location: LCCOMB_X18_Y7_N14
\Div4|auto_generated|divider|divider|StageOut[42]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[42]~118_combout\ = (\Div4|auto_generated|divider|divider|op_8~8_combout\ & ((\Div4|auto_generated|divider|divider|StageOut[36]~126_combout\) # ((!\Div4|auto_generated|divider|divider|op_7~10_combout\ & 
-- \Div4|auto_generated|divider|divider|op_7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[36]~126_combout\,
	datab => \Div4|auto_generated|divider|divider|op_8~8_combout\,
	datac => \Div4|auto_generated|divider|divider|op_7~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_7~2_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[42]~118_combout\);

-- Location: LCCOMB_X18_Y7_N12
\Div4|auto_generated|divider|divider|StageOut[43]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[43]~117_combout\ = (\Div4|auto_generated|divider|divider|op_8~8_combout\ & ((\Div4|auto_generated|divider|divider|StageOut[37]~116_combout\) # ((!\Div4|auto_generated|divider|divider|op_7~10_combout\ & 
-- \Div4|auto_generated|divider|divider|op_7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_7~10_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[37]~116_combout\,
	datac => \Div4|auto_generated|divider|divider|op_8~8_combout\,
	datad => \Div4|auto_generated|divider|divider|op_7~4_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[43]~117_combout\);

-- Location: LCCOMB_X18_Y7_N24
\Div4|auto_generated|divider|divider|StageOut[43]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[43]~104_combout\ = (\Div4|auto_generated|divider|divider|op_8~4_combout\ & !\Div4|auto_generated|divider|divider|op_8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div4|auto_generated|divider|divider|op_8~4_combout\,
	datac => \Div4|auto_generated|divider|divider|op_8~8_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[43]~104_combout\);

-- Location: LCCOMB_X19_Y7_N0
\Div4|auto_generated|divider|divider|StageOut[42]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[42]~105_combout\ = (\Div4|auto_generated|divider|divider|op_8~2_combout\ & !\Div4|auto_generated|divider|divider|op_8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_8~2_combout\,
	datad => \Div4|auto_generated|divider|divider|op_8~8_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[42]~105_combout\);

-- Location: LCCOMB_X19_Y7_N12
\Div4|auto_generated|divider|divider|StageOut[41]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[41]~106_combout\ = (\Div4|auto_generated|divider|divider|op_8~0_combout\ & !\Div4|auto_generated|divider|divider|op_8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_8~0_combout\,
	datad => \Div4|auto_generated|divider|divider|op_8~8_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[41]~106_combout\);

-- Location: LCCOMB_X18_Y7_N10
\Div4|auto_generated|divider|divider|StageOut[41]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[41]~127_combout\ = (\Div4|auto_generated|divider|divider|op_8~8_combout\ & ((\Div4|auto_generated|divider|divider|op_7~10_combout\ & ((\r_in_filter5[0]~input_o\))) # 
-- (!\Div4|auto_generated|divider|divider|op_7~10_combout\ & (\Div4|auto_generated|divider|divider|op_7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_7~0_combout\,
	datab => \Div4|auto_generated|divider|divider|op_8~8_combout\,
	datac => \Div4|auto_generated|divider|divider|op_7~10_combout\,
	datad => \r_in_filter5[0]~input_o\,
	combout => \Div4|auto_generated|divider|divider|StageOut[41]~127_combout\);

-- Location: LCCOMB_X19_Y7_N2
\Div4|auto_generated|divider|divider|op_9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_9~1_cout\ = CARRY(!\Div4|auto_generated|divider|divider|op_8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_8~8_combout\,
	datad => VCC,
	cout => \Div4|auto_generated|divider|divider|op_9~1_cout\);

-- Location: LCCOMB_X19_Y7_N4
\Div4|auto_generated|divider|divider|op_9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_9~2_combout\ = (\Div4|auto_generated|divider|divider|op_9~1_cout\ & (((\Div4|auto_generated|divider|divider|StageOut[41]~106_combout\) # (\Div4|auto_generated|divider|divider|StageOut[41]~127_combout\)))) # 
-- (!\Div4|auto_generated|divider|divider|op_9~1_cout\ & (!\Div4|auto_generated|divider|divider|StageOut[41]~106_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[41]~127_combout\)))
-- \Div4|auto_generated|divider|divider|op_9~3\ = CARRY((!\Div4|auto_generated|divider|divider|StageOut[41]~106_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[41]~127_combout\ & !\Div4|auto_generated|divider|divider|op_9~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[41]~106_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[41]~127_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_9~1_cout\,
	combout => \Div4|auto_generated|divider|divider|op_9~2_combout\,
	cout => \Div4|auto_generated|divider|divider|op_9~3\);

-- Location: LCCOMB_X19_Y7_N6
\Div4|auto_generated|divider|divider|op_9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_9~4_combout\ = (\Div4|auto_generated|divider|divider|op_9~3\ & (((\Div4|auto_generated|divider|divider|StageOut[42]~118_combout\) # (\Div4|auto_generated|divider|divider|StageOut[42]~105_combout\)))) # 
-- (!\Div4|auto_generated|divider|divider|op_9~3\ & ((((\Div4|auto_generated|divider|divider|StageOut[42]~118_combout\) # (\Div4|auto_generated|divider|divider|StageOut[42]~105_combout\)))))
-- \Div4|auto_generated|divider|divider|op_9~5\ = CARRY((!\Div4|auto_generated|divider|divider|op_9~3\ & ((\Div4|auto_generated|divider|divider|StageOut[42]~118_combout\) # (\Div4|auto_generated|divider|divider|StageOut[42]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[42]~118_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[42]~105_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_9~3\,
	combout => \Div4|auto_generated|divider|divider|op_9~4_combout\,
	cout => \Div4|auto_generated|divider|divider|op_9~5\);

-- Location: LCCOMB_X19_Y7_N8
\Div4|auto_generated|divider|divider|op_9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_9~7_cout\ = CARRY((!\Div4|auto_generated|divider|divider|StageOut[43]~117_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[43]~104_combout\ & !\Div4|auto_generated|divider|divider|op_9~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[43]~117_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[43]~104_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_9~5\,
	cout => \Div4|auto_generated|divider|divider|op_9~7_cout\);

-- Location: LCCOMB_X19_Y7_N10
\Div4|auto_generated|divider|divider|op_9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_9~8_combout\ = \Div4|auto_generated|divider|divider|op_9~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div4|auto_generated|divider|divider|op_9~7_cout\,
	combout => \Div4|auto_generated|divider|divider|op_9~8_combout\);

-- Location: LCCOMB_X19_Y7_N30
\Div4|auto_generated|divider|divider|StageOut[48]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[48]~119_combout\ = (\Div4|auto_generated|divider|divider|op_9~8_combout\ & ((\Div4|auto_generated|divider|divider|StageOut[42]~118_combout\) # ((\Div4|auto_generated|divider|divider|op_8~2_combout\ & 
-- !\Div4|auto_generated|divider|divider|op_8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_8~2_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[42]~118_combout\,
	datac => \Div4|auto_generated|divider|divider|op_9~8_combout\,
	datad => \Div4|auto_generated|divider|divider|op_8~8_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[48]~119_combout\);

-- Location: LCCOMB_X19_Y7_N14
\Div4|auto_generated|divider|divider|StageOut[48]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[48]~107_combout\ = (\Div4|auto_generated|divider|divider|op_9~4_combout\ & !\Div4|auto_generated|divider|divider|op_9~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_9~4_combout\,
	datad => \Div4|auto_generated|divider|divider|op_9~8_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[48]~107_combout\);

-- Location: LCCOMB_X18_Y7_N16
\Div4|auto_generated|divider|divider|StageOut[47]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[47]~120_combout\ = (\Div4|auto_generated|divider|divider|op_9~8_combout\ & ((\Div4|auto_generated|divider|divider|StageOut[41]~127_combout\) # ((!\Div4|auto_generated|divider|divider|op_8~8_combout\ & 
-- \Div4|auto_generated|divider|divider|op_8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[41]~127_combout\,
	datab => \Div4|auto_generated|divider|divider|op_8~8_combout\,
	datac => \Div4|auto_generated|divider|divider|op_9~8_combout\,
	datad => \Div4|auto_generated|divider|divider|op_8~0_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[47]~120_combout\);

-- Location: LCCOMB_X19_Y7_N16
\Div4|auto_generated|divider|divider|StageOut[47]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[47]~108_combout\ = (\Div4|auto_generated|divider|divider|op_9~2_combout\ & !\Div4|auto_generated|divider|divider|op_9~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_9~2_combout\,
	datad => \Div4|auto_generated|divider|divider|op_9~8_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[47]~108_combout\);

-- Location: LCCOMB_X18_Y7_N26
\Div4|auto_generated|divider|divider|StageOut[46]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[46]~109_combout\ = (!\Div4|auto_generated|divider|divider|op_8~8_combout\ & \Div4|auto_generated|divider|divider|op_9~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div4|auto_generated|divider|divider|op_8~8_combout\,
	datac => \Div4|auto_generated|divider|divider|op_9~8_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[46]~109_combout\);

-- Location: LCCOMB_X19_Y7_N18
\Div4|auto_generated|divider|divider|StageOut[46]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[46]~110_combout\ = (\Div4|auto_generated|divider|divider|op_8~8_combout\ & !\Div4|auto_generated|divider|divider|op_9~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_8~8_combout\,
	datad => \Div4|auto_generated|divider|divider|op_9~8_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[46]~110_combout\);

-- Location: LCCOMB_X19_Y7_N20
\Div4|auto_generated|divider|divider|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_1~1_cout\ = CARRY(!\Div4|auto_generated|divider|divider|op_9~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_9~8_combout\,
	datad => VCC,
	cout => \Div4|auto_generated|divider|divider|op_1~1_cout\);

-- Location: LCCOMB_X19_Y7_N22
\Div4|auto_generated|divider|divider|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_1~3_cout\ = CARRY((!\Div4|auto_generated|divider|divider|StageOut[46]~109_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[46]~110_combout\ & !\Div4|auto_generated|divider|divider|op_1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[46]~109_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[46]~110_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_1~1_cout\,
	cout => \Div4|auto_generated|divider|divider|op_1~3_cout\);

-- Location: LCCOMB_X19_Y7_N24
\Div4|auto_generated|divider|divider|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_1~5_cout\ = CARRY((!\Div4|auto_generated|divider|divider|op_1~3_cout\ & ((\Div4|auto_generated|divider|divider|StageOut[47]~120_combout\) # (\Div4|auto_generated|divider|divider|StageOut[47]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[47]~120_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[47]~108_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_1~3_cout\,
	cout => \Div4|auto_generated|divider|divider|op_1~5_cout\);

-- Location: LCCOMB_X19_Y7_N26
\Div4|auto_generated|divider|divider|op_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_1~7_cout\ = CARRY((!\Div4|auto_generated|divider|divider|StageOut[48]~119_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[48]~107_combout\ & !\Div4|auto_generated|divider|divider|op_1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[48]~119_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[48]~107_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_1~5_cout\,
	cout => \Div4|auto_generated|divider|divider|op_1~7_cout\);

-- Location: LCCOMB_X19_Y7_N28
\Div4|auto_generated|divider|divider|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_1~8_combout\ = \Div4|auto_generated|divider|divider|op_1~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div4|auto_generated|divider|divider|op_1~7_cout\,
	combout => \Div4|auto_generated|divider|divider|op_1~8_combout\);

-- Location: IOIBUF_X18_Y24_N22
\r_in_filter1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter1(5),
	o => \r_in_filter1[5]~input_o\);

-- Location: IOIBUF_X34_Y19_N8
\r_in_filter1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter1(4),
	o => \r_in_filter1[4]~input_o\);

-- Location: LCCOMB_X18_Y19_N4
\Div0|auto_generated|divider|divider|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~0_combout\ = \r_in_filter1[4]~input_o\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_2~1\ = CARRY(\r_in_filter1[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter1[4]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_2~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X18_Y19_N6
\Div0|auto_generated|divider|divider|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~2_combout\ = (\r_in_filter1[5]~input_o\ & (\Div0|auto_generated|divider|divider|op_2~1\ & VCC)) # (!\r_in_filter1[5]~input_o\ & (!\Div0|auto_generated|divider|divider|op_2~1\))
-- \Div0|auto_generated|divider|divider|op_2~3\ = CARRY((!\r_in_filter1[5]~input_o\ & !\Div0|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter1[5]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~1\,
	combout => \Div0|auto_generated|divider|divider|op_2~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~3\);

-- Location: IOIBUF_X11_Y24_N1
\r_in_filter1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter1(7),
	o => \r_in_filter1[7]~input_o\);

-- Location: IOIBUF_X18_Y24_N8
\r_in_filter1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter1(6),
	o => \r_in_filter1[6]~input_o\);

-- Location: LCCOMB_X18_Y19_N8
\Div0|auto_generated|divider|divider|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~4_combout\ = (\r_in_filter1[6]~input_o\ & ((GND) # (!\Div0|auto_generated|divider|divider|op_2~3\))) # (!\r_in_filter1[6]~input_o\ & (\Div0|auto_generated|divider|divider|op_2~3\ $ (GND)))
-- \Div0|auto_generated|divider|divider|op_2~5\ = CARRY((\r_in_filter1[6]~input_o\) # (!\Div0|auto_generated|divider|divider|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter1[6]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~3\,
	combout => \Div0|auto_generated|divider|divider|op_2~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X18_Y19_N10
\Div0|auto_generated|divider|divider|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~6_combout\ = (\r_in_filter1[7]~input_o\ & (!\Div0|auto_generated|divider|divider|op_2~5\)) # (!\r_in_filter1[7]~input_o\ & ((\Div0|auto_generated|divider|divider|op_2~5\) # (GND)))
-- \Div0|auto_generated|divider|divider|op_2~7\ = CARRY((!\Div0|auto_generated|divider|divider|op_2~5\) # (!\r_in_filter1[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter1[7]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~5\,
	combout => \Div0|auto_generated|divider|divider|op_2~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X18_Y19_N12
\Div0|auto_generated|divider|divider|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~8_combout\ = \Div0|auto_generated|divider|divider|op_2~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_2~7\,
	combout => \Div0|auto_generated|divider|divider|op_2~8_combout\);

-- Location: LCCOMB_X18_Y19_N2
\Div0|auto_generated|divider|divider|StageOut[18]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~49_combout\ = (\Div0|auto_generated|divider|divider|op_2~6_combout\ & !\Div0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~49_combout\);

-- Location: LCCOMB_X18_Y19_N16
\Div0|auto_generated|divider|divider|StageOut[18]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~48_combout\ = (\r_in_filter1[7]~input_o\ & \Div0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_in_filter1[7]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~48_combout\);

-- Location: LCCOMB_X18_Y19_N0
\Div0|auto_generated|divider|divider|StageOut[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~51_combout\ = (\Div0|auto_generated|divider|divider|op_2~4_combout\ & !\Div0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_2~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~51_combout\);

-- Location: LCCOMB_X18_Y19_N22
\Div0|auto_generated|divider|divider|StageOut[17]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~50_combout\ = (\Div0|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter1[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter1[6]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~50_combout\);

-- Location: LCCOMB_X18_Y19_N20
\Div0|auto_generated|divider|divider|StageOut[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~53_combout\ = (\Div0|auto_generated|divider|divider|op_2~2_combout\ & !\Div0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~53_combout\);

-- Location: LCCOMB_X18_Y19_N26
\Div0|auto_generated|divider|divider|StageOut[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~52_combout\ = (\Div0|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter1[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	datac => \r_in_filter1[5]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~52_combout\);

-- Location: LCCOMB_X18_Y19_N30
\Div0|auto_generated|divider|divider|StageOut[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~54_combout\ = (\Div0|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter1[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter1[4]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~54_combout\);

-- Location: LCCOMB_X18_Y19_N24
\Div0|auto_generated|divider|divider|StageOut[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~55_combout\ = (\Div0|auto_generated|divider|divider|op_2~0_combout\ & !\Div0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_2~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~55_combout\);

-- Location: IOIBUF_X13_Y24_N15
\r_in_filter1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter1(3),
	o => \r_in_filter1[3]~input_o\);

-- Location: LCCOMB_X17_Y19_N12
\Div0|auto_generated|divider|divider|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~0_combout\ = \r_in_filter1[3]~input_o\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_3~1\ = CARRY(\r_in_filter1[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter1[3]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_3~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X17_Y19_N14
\Div0|auto_generated|divider|divider|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~2_combout\ = (\Div0|auto_generated|divider|divider|op_3~1\ & (((\Div0|auto_generated|divider|divider|StageOut[15]~54_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~55_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_3~1\ & (!\Div0|auto_generated|divider|divider|StageOut[15]~54_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[15]~55_combout\)))
-- \Div0|auto_generated|divider|divider|op_3~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[15]~54_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[15]~55_combout\ & !\Div0|auto_generated|divider|divider|op_3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[15]~54_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[15]~55_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~1\,
	combout => \Div0|auto_generated|divider|divider|op_3~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X17_Y19_N16
\Div0|auto_generated|divider|divider|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~4_combout\ = (\Div0|auto_generated|divider|divider|op_3~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[16]~53_combout\) # (\Div0|auto_generated|divider|divider|StageOut[16]~52_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|op_3~3\ & ((\Div0|auto_generated|divider|divider|StageOut[16]~53_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[16]~52_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|op_3~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[16]~53_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[16]~52_combout\) # (!\Div0|auto_generated|divider|divider|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~53_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~52_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~3\,
	combout => \Div0|auto_generated|divider|divider|op_3~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X17_Y19_N18
\Div0|auto_generated|divider|divider|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[17]~51_combout\ & (((!\Div0|auto_generated|divider|divider|op_3~5\)))) # (!\Div0|auto_generated|divider|divider|StageOut[17]~51_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[17]~50_combout\ & (!\Div0|auto_generated|divider|divider|op_3~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[17]~50_combout\ & ((\Div0|auto_generated|divider|divider|op_3~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_3~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[17]~51_combout\ & !\Div0|auto_generated|divider|divider|StageOut[17]~50_combout\)) # (!\Div0|auto_generated|divider|divider|op_3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~51_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~50_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~5\,
	combout => \Div0|auto_generated|divider|divider|op_3~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X17_Y19_N20
\Div0|auto_generated|divider|divider|op_3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~9_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[18]~49_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[18]~48_combout\) # (!\Div0|auto_generated|divider|divider|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~49_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~48_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~7\,
	cout => \Div0|auto_generated|divider|divider|op_3~9_cout\);

-- Location: LCCOMB_X17_Y19_N22
\Div0|auto_generated|divider|divider|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~10_combout\ = !\Div0|auto_generated|divider|divider|op_3~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_3~9_cout\,
	combout => \Div0|auto_generated|divider|divider|op_3~10_combout\);

-- Location: LCCOMB_X18_Y19_N28
\Div0|auto_generated|divider|divider|StageOut[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~76_combout\ = (\Div0|auto_generated|divider|divider|op_3~10_combout\ & ((\Div0|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter1[5]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|op_2~8_combout\ & (\Div0|auto_generated|divider|divider|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~2_combout\,
	datab => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	datac => \r_in_filter1[5]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~76_combout\);

-- Location: LCCOMB_X17_Y19_N26
\Div0|auto_generated|divider|divider|StageOut[22]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~57_combout\ = (!\Div0|auto_generated|divider|divider|op_3~10_combout\ & \Div0|auto_generated|divider|divider|op_3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~57_combout\);

-- Location: LCCOMB_X18_Y19_N14
\Div0|auto_generated|divider|divider|StageOut[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~77_combout\ = (\Div0|auto_generated|divider|divider|op_3~10_combout\ & ((\Div0|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter1[4]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|op_2~8_combout\ & (\Div0|auto_generated|divider|divider|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	datab => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	datac => \Div0|auto_generated|divider|divider|op_2~0_combout\,
	datad => \r_in_filter1[4]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~77_combout\);

-- Location: LCCOMB_X17_Y19_N28
\Div0|auto_generated|divider|divider|StageOut[21]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~58_combout\ = (\Div0|auto_generated|divider|divider|op_3~2_combout\ & !\Div0|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_3~2_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~58_combout\);

-- Location: LCCOMB_X17_Y19_N6
\Div0|auto_generated|divider|divider|StageOut[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~59_combout\ = (\Div0|auto_generated|divider|divider|op_3~10_combout\ & \r_in_filter1[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	datad => \r_in_filter1[3]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~59_combout\);

-- Location: LCCOMB_X17_Y19_N0
\Div0|auto_generated|divider|divider|StageOut[20]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~60_combout\ = (!\Div0|auto_generated|divider|divider|op_3~10_combout\ & \Div0|auto_generated|divider|divider|op_3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~60_combout\);

-- Location: IOIBUF_X11_Y24_N15
\r_in_filter1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter1(2),
	o => \r_in_filter1[2]~input_o\);

-- Location: LCCOMB_X16_Y19_N16
\Div0|auto_generated|divider|divider|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~0_combout\ = \r_in_filter1[2]~input_o\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_4~1\ = CARRY(\r_in_filter1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter1[2]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_4~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X16_Y19_N18
\Div0|auto_generated|divider|divider|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~2_combout\ = (\Div0|auto_generated|divider|divider|op_4~1\ & (((\Div0|auto_generated|divider|divider|StageOut[20]~59_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~60_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_4~1\ & (!\Div0|auto_generated|divider|divider|StageOut[20]~59_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[20]~60_combout\)))
-- \Div0|auto_generated|divider|divider|op_4~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[20]~59_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[20]~60_combout\ & !\Div0|auto_generated|divider|divider|op_4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[20]~59_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[20]~60_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~1\,
	combout => \Div0|auto_generated|divider|divider|op_4~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X16_Y19_N20
\Div0|auto_generated|divider|divider|op_4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~4_combout\ = (\Div0|auto_generated|divider|divider|op_4~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[21]~77_combout\) # (\Div0|auto_generated|divider|divider|StageOut[21]~58_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|op_4~3\ & ((\Div0|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[21]~58_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|op_4~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[21]~58_combout\) # (!\Div0|auto_generated|divider|divider|op_4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~77_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[21]~58_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~3\,
	combout => \Div0|auto_generated|divider|divider|op_4~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X16_Y19_N22
\Div0|auto_generated|divider|divider|op_4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[22]~76_combout\ & (((!\Div0|auto_generated|divider|divider|op_4~5\)))) # (!\Div0|auto_generated|divider|divider|StageOut[22]~76_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[22]~57_combout\ & (!\Div0|auto_generated|divider|divider|op_4~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[22]~57_combout\ & ((\Div0|auto_generated|divider|divider|op_4~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_4~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[22]~76_combout\ & !\Div0|auto_generated|divider|divider|StageOut[22]~57_combout\)) # (!\Div0|auto_generated|divider|divider|op_4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~76_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[22]~57_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~5\,
	combout => \Div0|auto_generated|divider|divider|op_4~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X18_Y19_N18
\Div0|auto_generated|divider|divider|StageOut[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~75_combout\ = (\Div0|auto_generated|divider|divider|op_3~10_combout\ & ((\Div0|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter1[6]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|op_2~8_combout\ & (\Div0|auto_generated|divider|divider|op_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	datab => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	datac => \Div0|auto_generated|divider|divider|op_2~4_combout\,
	datad => \r_in_filter1[6]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~75_combout\);

-- Location: LCCOMB_X17_Y19_N24
\Div0|auto_generated|divider|divider|StageOut[23]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~56_combout\ = (!\Div0|auto_generated|divider|divider|op_3~10_combout\ & \Div0|auto_generated|divider|divider|op_3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~56_combout\);

-- Location: LCCOMB_X16_Y19_N24
\Div0|auto_generated|divider|divider|op_4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~9_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[23]~75_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[23]~56_combout\) # (!\Div0|auto_generated|divider|divider|op_4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[23]~75_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[23]~56_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~7\,
	cout => \Div0|auto_generated|divider|divider|op_4~9_cout\);

-- Location: LCCOMB_X16_Y19_N26
\Div0|auto_generated|divider|divider|op_4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~10_combout\ = !\Div0|auto_generated|divider|divider|op_4~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_4~9_cout\,
	combout => \Div0|auto_generated|divider|divider|op_4~10_combout\);

-- Location: LCCOMB_X16_Y19_N0
\Div0|auto_generated|divider|divider|StageOut[28]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~61_combout\ = (\Div0|auto_generated|divider|divider|op_4~6_combout\ & !\Div0|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_4~6_combout\,
	datac => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~61_combout\);

-- Location: LCCOMB_X17_Y19_N8
\Div0|auto_generated|divider|divider|StageOut[28]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~71_combout\ = (\Div0|auto_generated|divider|divider|op_4~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~76_combout\) # ((\Div0|auto_generated|divider|divider|op_3~4_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Div0|auto_generated|divider|divider|op_3~4_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[22]~76_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~71_combout\);

-- Location: LCCOMB_X16_Y19_N30
\Div0|auto_generated|divider|divider|StageOut[27]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~62_combout\ = (!\Div0|auto_generated|divider|divider|op_4~10_combout\ & \Div0|auto_generated|divider|divider|op_4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~62_combout\);

-- Location: LCCOMB_X17_Y19_N2
\Div0|auto_generated|divider|divider|StageOut[27]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~72_combout\ = (\Div0|auto_generated|divider|divider|op_4~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((\Div0|auto_generated|divider|divider|op_3~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Div0|auto_generated|divider|divider|op_3~2_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[21]~77_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~72_combout\);

-- Location: LCCOMB_X16_Y19_N28
\Div0|auto_generated|divider|divider|StageOut[26]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~63_combout\ = (!\Div0|auto_generated|divider|divider|op_4~10_combout\ & \Div0|auto_generated|divider|divider|op_4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~63_combout\);

-- Location: LCCOMB_X17_Y19_N4
\Div0|auto_generated|divider|divider|StageOut[26]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~78_combout\ = (\Div0|auto_generated|divider|divider|op_4~10_combout\ & ((\Div0|auto_generated|divider|divider|op_3~10_combout\ & ((\r_in_filter1[3]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|op_3~10_combout\ & (\Div0|auto_generated|divider|divider|op_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Div0|auto_generated|divider|divider|op_3~0_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	datad => \r_in_filter1[3]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~78_combout\);

-- Location: LCCOMB_X16_Y19_N14
\Div0|auto_generated|divider|divider|StageOut[25]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~65_combout\ = (!\Div0|auto_generated|divider|divider|op_4~10_combout\ & \Div0|auto_generated|divider|divider|op_4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~65_combout\);

-- Location: LCCOMB_X17_Y19_N10
\Div0|auto_generated|divider|divider|StageOut[25]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~64_combout\ = (\Div0|auto_generated|divider|divider|op_4~10_combout\ & \r_in_filter1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	datad => \r_in_filter1[2]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~64_combout\);

-- Location: IOIBUF_X0_Y19_N15
\r_in_filter1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter1(1),
	o => \r_in_filter1[1]~input_o\);

-- Location: LCCOMB_X16_Y19_N2
\Div0|auto_generated|divider|divider|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~0_combout\ = \r_in_filter1[1]~input_o\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_5~1\ = CARRY(\r_in_filter1[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter1[1]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_5~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X16_Y19_N4
\Div0|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~2_combout\ = (\Div0|auto_generated|divider|divider|op_5~1\ & (((\Div0|auto_generated|divider|divider|StageOut[25]~65_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~64_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_5~1\ & (!\Div0|auto_generated|divider|divider|StageOut[25]~65_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[25]~64_combout\)))
-- \Div0|auto_generated|divider|divider|op_5~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[25]~65_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[25]~64_combout\ & !\Div0|auto_generated|divider|divider|op_5~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~65_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[25]~64_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~1\,
	combout => \Div0|auto_generated|divider|divider|op_5~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X16_Y19_N6
\Div0|auto_generated|divider|divider|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~4_combout\ = (\Div0|auto_generated|divider|divider|op_5~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[26]~63_combout\) # (\Div0|auto_generated|divider|divider|StageOut[26]~78_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|op_5~3\ & ((\Div0|auto_generated|divider|divider|StageOut[26]~63_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[26]~78_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|op_5~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[26]~63_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[26]~78_combout\) # (!\Div0|auto_generated|divider|divider|op_5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~63_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[26]~78_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~3\,
	combout => \Div0|auto_generated|divider|divider|op_5~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X16_Y19_N8
\Div0|auto_generated|divider|divider|op_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[27]~62_combout\ & (((!\Div0|auto_generated|divider|divider|op_5~5\)))) # (!\Div0|auto_generated|divider|divider|StageOut[27]~62_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[27]~72_combout\ & (!\Div0|auto_generated|divider|divider|op_5~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[27]~72_combout\ & ((\Div0|auto_generated|divider|divider|op_5~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_5~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[27]~62_combout\ & !\Div0|auto_generated|divider|divider|StageOut[27]~72_combout\)) # (!\Div0|auto_generated|divider|divider|op_5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~62_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[27]~72_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~5\,
	combout => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X16_Y19_N10
\Div0|auto_generated|divider|divider|op_5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~9_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[28]~61_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[28]~71_combout\) # (!\Div0|auto_generated|divider|divider|op_5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[28]~61_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[28]~71_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~7\,
	cout => \Div0|auto_generated|divider|divider|op_5~9_cout\);

-- Location: LCCOMB_X16_Y19_N12
\Div0|auto_generated|divider|divider|op_5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~10_combout\ = !\Div0|auto_generated|divider|divider|op_5~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_5~9_cout\,
	combout => \Div0|auto_generated|divider|divider|op_5~10_combout\);

-- Location: LCCOMB_X14_Y19_N30
\Div0|auto_generated|divider|divider|StageOut[33]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~73_combout\ = (\Div0|auto_generated|divider|divider|op_5~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~72_combout\) # ((!\Div0|auto_generated|divider|divider|op_4~10_combout\ & 
-- \Div0|auto_generated|divider|divider|op_4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	datab => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div0|auto_generated|divider|divider|op_4~4_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[27]~72_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~73_combout\);

-- Location: LCCOMB_X14_Y19_N24
\Div0|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\Div0|auto_generated|divider|divider|op_5~6_combout\ & !\Div0|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X14_Y19_N22
\Div0|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\Div0|auto_generated|divider|divider|op_5~4_combout\ & !\Div0|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X14_Y19_N16
\Div0|auto_generated|divider|divider|StageOut[32]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~74_combout\ = (\Div0|auto_generated|divider|divider|op_5~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[26]~78_combout\) # ((!\Div0|auto_generated|divider|divider|op_4~10_combout\ & 
-- \Div0|auto_generated|divider|divider|op_4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	datab => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[26]~78_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~74_combout\);

-- Location: LCCOMB_X14_Y19_N26
\Div0|auto_generated|divider|divider|StageOut[31]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~79_combout\ = (\Div0|auto_generated|divider|divider|op_5~10_combout\ & ((\Div0|auto_generated|divider|divider|op_4~10_combout\ & (\r_in_filter1[2]~input_o\)) # 
-- (!\Div0|auto_generated|divider|divider|op_4~10_combout\ & ((\Div0|auto_generated|divider|divider|op_4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	datab => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	datac => \r_in_filter1[2]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_4~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X14_Y19_N0
\Div0|auto_generated|divider|divider|StageOut[31]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~68_combout\ = (\Div0|auto_generated|divider|divider|op_5~2_combout\ & !\Div0|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_5~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~68_combout\);

-- Location: LCCOMB_X14_Y19_N28
\Div0|auto_generated|divider|divider|StageOut[30]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~70_combout\ = (\Div0|auto_generated|divider|divider|op_5~0_combout\ & !\Div0|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_5~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~70_combout\);

-- Location: LCCOMB_X14_Y19_N18
\Div0|auto_generated|divider|divider|StageOut[30]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~69_combout\ = (\r_in_filter1[1]~input_o\ & \Div0|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_in_filter1[1]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~69_combout\);

-- Location: IOIBUF_X5_Y24_N15
\r_in_filter1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter1(0),
	o => \r_in_filter1[0]~input_o\);

-- Location: LCCOMB_X14_Y19_N2
\Div0|auto_generated|divider|divider|op_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~1_cout\ = CARRY(\r_in_filter1[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter1[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_6~1_cout\);

-- Location: LCCOMB_X14_Y19_N4
\Div0|auto_generated|divider|divider|op_6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[30]~70_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[30]~69_combout\ & !\Div0|auto_generated|divider|divider|op_6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[30]~70_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~1_cout\,
	cout => \Div0|auto_generated|divider|divider|op_6~3_cout\);

-- Location: LCCOMB_X14_Y19_N6
\Div0|auto_generated|divider|divider|op_6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[31]~79_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[31]~68_combout\) # (!\Div0|auto_generated|divider|divider|op_6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~3_cout\,
	cout => \Div0|auto_generated|divider|divider|op_6~5_cout\);

-- Location: LCCOMB_X14_Y19_N8
\Div0|auto_generated|divider|divider|op_6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~7_cout\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ & !\Div0|auto_generated|divider|divider|StageOut[32]~74_combout\)) # (!\Div0|auto_generated|divider|divider|op_6~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[32]~74_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~5_cout\,
	cout => \Div0|auto_generated|divider|divider|op_6~7_cout\);

-- Location: LCCOMB_X14_Y19_N10
\Div0|auto_generated|divider|divider|op_6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~9_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[33]~73_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[33]~66_combout\) # (!\Div0|auto_generated|divider|divider|op_6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~73_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~7_cout\,
	cout => \Div0|auto_generated|divider|divider|op_6~9_cout\);

-- Location: LCCOMB_X14_Y19_N12
\Div0|auto_generated|divider|divider|op_6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~10_combout\ = !\Div0|auto_generated|divider|divider|op_6~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_6~9_cout\,
	combout => \Div0|auto_generated|divider|divider|op_6~10_combout\);

-- Location: LCCOMB_X18_Y17_N16
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\Div4|auto_generated|divider|divider|op_1~8_combout\ & (\Div0|auto_generated|divider|divider|op_6~10_combout\ $ (VCC))) # (!\Div4|auto_generated|divider|divider|op_1~8_combout\ & ((\Div0|auto_generated|divider|divider|op_6~10_combout\) 
-- # (GND)))
-- \Add0~1\ = CARRY((\Div0|auto_generated|divider|divider|op_6~10_combout\) # (!\Div4|auto_generated|divider|divider|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_1~8_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~10_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X18_Y17_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Div1|auto_generated|divider|divider|op_6~10_combout\ & ((\Add0~0_combout\) # (GND))) # (!\Div1|auto_generated|divider|divider|op_6~10_combout\ & (\Add0~0_combout\ $ (VCC)))
-- \Add1~1\ = CARRY((\Div1|auto_generated|divider|divider|op_6~10_combout\) # (\Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_6~10_combout\,
	datab => \Add0~0_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X17_Y17_N16
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\Div2|auto_generated|divider|divider|op_6~10_combout\ & ((\Add1~0_combout\) # (GND))) # (!\Div2|auto_generated|divider|divider|op_6~10_combout\ & (\Add1~0_combout\ $ (VCC)))
-- \Add2~1\ = CARRY((\Div2|auto_generated|divider|divider|op_6~10_combout\) # (\Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_6~10_combout\,
	datab => \Add1~0_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X17_Y17_N0
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\Div3|auto_generated|divider|divider|op_6~10_combout\ & ((\Add2~0_combout\) # (GND))) # (!\Div3|auto_generated|divider|divider|op_6~10_combout\ & (\Add2~0_combout\ $ (VCC)))
-- \Add3~1\ = CARRY((\Div3|auto_generated|divider|divider|op_6~10_combout\) # (\Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|op_6~10_combout\,
	datab => \Add2~0_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X17_Y16_N16
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (\Div5|auto_generated|divider|divider|op_6~10_combout\ & ((\Add3~0_combout\) # (GND))) # (!\Div5|auto_generated|divider|divider|op_6~10_combout\ & (\Add3~0_combout\ $ (VCC)))
-- \Add4~1\ = CARRY((\Div5|auto_generated|divider|divider|op_6~10_combout\) # (\Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|op_6~10_combout\,
	datab => \Add3~0_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X17_Y16_N0
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (\Div6|auto_generated|divider|divider|op_6~10_combout\ & ((\Add4~0_combout\) # (GND))) # (!\Div6|auto_generated|divider|divider|op_6~10_combout\ & (\Add4~0_combout\ $ (VCC)))
-- \Add5~1\ = CARRY((\Div6|auto_generated|divider|divider|op_6~10_combout\) # (\Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|op_6~10_combout\,
	datab => \Add4~0_combout\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X25_Y10_N0
\Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = (\Div7|auto_generated|divider|divider|op_6~10_combout\ & ((\Add5~0_combout\) # (GND))) # (!\Div7|auto_generated|divider|divider|op_6~10_combout\ & (\Add5~0_combout\ $ (VCC)))
-- \Add6~1\ = CARRY((\Div7|auto_generated|divider|divider|op_6~10_combout\) # (\Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|op_6~10_combout\,
	datab => \Add5~0_combout\,
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X25_Y10_N16
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (\Div8|auto_generated|divider|divider|op_6~10_combout\ & ((\Add6~0_combout\) # (GND))) # (!\Div8|auto_generated|divider|divider|op_6~10_combout\ & (\Add6~0_combout\ $ (VCC)))
-- \Add7~1\ = CARRY((\Div8|auto_generated|divider|divider|op_6~10_combout\) # (\Add6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|op_6~10_combout\,
	datab => \Add6~0_combout\,
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X18_Y17_N18
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Div0|auto_generated|divider|divider|op_5~10_combout\ & ((\Div4|auto_generated|divider|divider|op_9~8_combout\ & (!\Add0~1\)) # (!\Div4|auto_generated|divider|divider|op_9~8_combout\ & (\Add0~1\ & VCC)))) # 
-- (!\Div0|auto_generated|divider|divider|op_5~10_combout\ & ((\Div4|auto_generated|divider|divider|op_9~8_combout\ & ((\Add0~1\) # (GND))) # (!\Div4|auto_generated|divider|divider|op_9~8_combout\ & (!\Add0~1\))))
-- \Add0~3\ = CARRY((\Div0|auto_generated|divider|divider|op_5~10_combout\ & (\Div4|auto_generated|divider|divider|op_9~8_combout\ & !\Add0~1\)) # (!\Div0|auto_generated|divider|divider|op_5~10_combout\ & 
-- ((\Div4|auto_generated|divider|divider|op_9~8_combout\) # (!\Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	datab => \Div4|auto_generated|divider|divider|op_9~8_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X18_Y17_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Div1|auto_generated|divider|divider|op_5~10_combout\ & ((\Add0~2_combout\ & (\Add1~1\ & VCC)) # (!\Add0~2_combout\ & (!\Add1~1\)))) # (!\Div1|auto_generated|divider|divider|op_5~10_combout\ & ((\Add0~2_combout\ & (!\Add1~1\)) # 
-- (!\Add0~2_combout\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\Div1|auto_generated|divider|divider|op_5~10_combout\ & (!\Add0~2_combout\ & !\Add1~1\)) # (!\Div1|auto_generated|divider|divider|op_5~10_combout\ & ((!\Add1~1\) # (!\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_5~10_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X17_Y17_N18
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add1~2_combout\ & ((\Div2|auto_generated|divider|divider|op_5~10_combout\ & (\Add2~1\ & VCC)) # (!\Div2|auto_generated|divider|divider|op_5~10_combout\ & (!\Add2~1\)))) # (!\Add1~2_combout\ & 
-- ((\Div2|auto_generated|divider|divider|op_5~10_combout\ & (!\Add2~1\)) # (!\Div2|auto_generated|divider|divider|op_5~10_combout\ & ((\Add2~1\) # (GND)))))
-- \Add2~3\ = CARRY((\Add1~2_combout\ & (!\Div2|auto_generated|divider|divider|op_5~10_combout\ & !\Add2~1\)) # (!\Add1~2_combout\ & ((!\Add2~1\) # (!\Div2|auto_generated|divider|divider|op_5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Div2|auto_generated|divider|divider|op_5~10_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X17_Y17_N2
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\Div3|auto_generated|divider|divider|op_5~10_combout\ & ((\Add2~2_combout\ & (\Add3~1\ & VCC)) # (!\Add2~2_combout\ & (!\Add3~1\)))) # (!\Div3|auto_generated|divider|divider|op_5~10_combout\ & ((\Add2~2_combout\ & (!\Add3~1\)) # 
-- (!\Add2~2_combout\ & ((\Add3~1\) # (GND)))))
-- \Add3~3\ = CARRY((\Div3|auto_generated|divider|divider|op_5~10_combout\ & (!\Add2~2_combout\ & !\Add3~1\)) # (!\Div3|auto_generated|divider|divider|op_5~10_combout\ & ((!\Add3~1\) # (!\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|op_5~10_combout\,
	datab => \Add2~2_combout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X17_Y16_N18
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\Div5|auto_generated|divider|divider|op_5~10_combout\ & ((\Add3~2_combout\ & (\Add4~1\ & VCC)) # (!\Add3~2_combout\ & (!\Add4~1\)))) # (!\Div5|auto_generated|divider|divider|op_5~10_combout\ & ((\Add3~2_combout\ & (!\Add4~1\)) # 
-- (!\Add3~2_combout\ & ((\Add4~1\) # (GND)))))
-- \Add4~3\ = CARRY((\Div5|auto_generated|divider|divider|op_5~10_combout\ & (!\Add3~2_combout\ & !\Add4~1\)) # (!\Div5|auto_generated|divider|divider|op_5~10_combout\ & ((!\Add4~1\) # (!\Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|op_5~10_combout\,
	datab => \Add3~2_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X17_Y16_N2
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\Div6|auto_generated|divider|divider|op_5~10_combout\ & ((\Add4~2_combout\ & (\Add5~1\ & VCC)) # (!\Add4~2_combout\ & (!\Add5~1\)))) # (!\Div6|auto_generated|divider|divider|op_5~10_combout\ & ((\Add4~2_combout\ & (!\Add5~1\)) # 
-- (!\Add4~2_combout\ & ((\Add5~1\) # (GND)))))
-- \Add5~3\ = CARRY((\Div6|auto_generated|divider|divider|op_5~10_combout\ & (!\Add4~2_combout\ & !\Add5~1\)) # (!\Div6|auto_generated|divider|divider|op_5~10_combout\ & ((!\Add5~1\) # (!\Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|op_5~10_combout\,
	datab => \Add4~2_combout\,
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X25_Y10_N2
\Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\Div7|auto_generated|divider|divider|op_5~10_combout\ & ((\Add5~2_combout\ & (\Add6~1\ & VCC)) # (!\Add5~2_combout\ & (!\Add6~1\)))) # (!\Div7|auto_generated|divider|divider|op_5~10_combout\ & ((\Add5~2_combout\ & (!\Add6~1\)) # 
-- (!\Add5~2_combout\ & ((\Add6~1\) # (GND)))))
-- \Add6~3\ = CARRY((\Div7|auto_generated|divider|divider|op_5~10_combout\ & (!\Add5~2_combout\ & !\Add6~1\)) # (!\Div7|auto_generated|divider|divider|op_5~10_combout\ & ((!\Add6~1\) # (!\Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|op_5~10_combout\,
	datab => \Add5~2_combout\,
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X25_Y10_N18
\Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\Div8|auto_generated|divider|divider|op_5~10_combout\ & ((\Add6~2_combout\ & (\Add7~1\ & VCC)) # (!\Add6~2_combout\ & (!\Add7~1\)))) # (!\Div8|auto_generated|divider|divider|op_5~10_combout\ & ((\Add6~2_combout\ & (!\Add7~1\)) # 
-- (!\Add6~2_combout\ & ((\Add7~1\) # (GND)))))
-- \Add7~3\ = CARRY((\Div8|auto_generated|divider|divider|op_5~10_combout\ & (!\Add6~2_combout\ & !\Add7~1\)) # (!\Div8|auto_generated|divider|divider|op_5~10_combout\ & ((!\Add7~1\) # (!\Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|op_5~10_combout\,
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X18_Y17_N20
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\Div0|auto_generated|divider|divider|op_4~10_combout\ $ (\Div4|auto_generated|divider|divider|op_8~8_combout\ $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\Div0|auto_generated|divider|divider|op_4~10_combout\ & ((!\Add0~3\) # (!\Div4|auto_generated|divider|divider|op_8~8_combout\))) # (!\Div0|auto_generated|divider|divider|op_4~10_combout\ & 
-- (!\Div4|auto_generated|divider|divider|op_8~8_combout\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Div4|auto_generated|divider|divider|op_8~8_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X18_Y17_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\Div1|auto_generated|divider|divider|op_4~10_combout\ $ (\Add0~4_combout\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\Div1|auto_generated|divider|divider|op_4~10_combout\ & ((\Add0~4_combout\) # (!\Add1~3\))) # (!\Div1|auto_generated|divider|divider|op_4~10_combout\ & (\Add0~4_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X17_Y17_N20
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\Div2|auto_generated|divider|divider|op_4~10_combout\ $ (\Add1~4_combout\ $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\Div2|auto_generated|divider|divider|op_4~10_combout\ & ((\Add1~4_combout\) # (!\Add2~3\))) # (!\Div2|auto_generated|divider|divider|op_4~10_combout\ & (\Add1~4_combout\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Add1~4_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X17_Y17_N4
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((\Div3|auto_generated|divider|divider|op_4~10_combout\ $ (\Add2~4_combout\ $ (!\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((\Div3|auto_generated|divider|divider|op_4~10_combout\ & ((\Add2~4_combout\) # (!\Add3~3\))) # (!\Div3|auto_generated|divider|divider|op_4~10_combout\ & (\Add2~4_combout\ & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Add2~4_combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X17_Y16_N20
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = ((\Div5|auto_generated|divider|divider|op_4~10_combout\ $ (\Add3~4_combout\ $ (!\Add4~3\)))) # (GND)
-- \Add4~5\ = CARRY((\Div5|auto_generated|divider|divider|op_4~10_combout\ & ((\Add3~4_combout\) # (!\Add4~3\))) # (!\Div5|auto_generated|divider|divider|op_4~10_combout\ & (\Add3~4_combout\ & !\Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Add3~4_combout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X17_Y16_N4
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = ((\Div6|auto_generated|divider|divider|op_4~10_combout\ $ (\Add4~4_combout\ $ (!\Add5~3\)))) # (GND)
-- \Add5~5\ = CARRY((\Div6|auto_generated|divider|divider|op_4~10_combout\ & ((\Add4~4_combout\) # (!\Add5~3\))) # (!\Div6|auto_generated|divider|divider|op_4~10_combout\ & (\Add4~4_combout\ & !\Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Add4~4_combout\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X25_Y10_N4
\Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = ((\Add5~4_combout\ $ (\Div7|auto_generated|divider|divider|op_4~10_combout\ $ (!\Add6~3\)))) # (GND)
-- \Add6~5\ = CARRY((\Add5~4_combout\ & ((\Div7|auto_generated|divider|divider|op_4~10_combout\) # (!\Add6~3\))) # (!\Add5~4_combout\ & (\Div7|auto_generated|divider|divider|op_4~10_combout\ & !\Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~4_combout\,
	datab => \Div7|auto_generated|divider|divider|op_4~10_combout\,
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X25_Y10_N20
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = ((\Div8|auto_generated|divider|divider|op_4~10_combout\ $ (\Add6~4_combout\ $ (!\Add7~3\)))) # (GND)
-- \Add7~5\ = CARRY((\Div8|auto_generated|divider|divider|op_4~10_combout\ & ((\Add6~4_combout\) # (!\Add7~3\))) # (!\Div8|auto_generated|divider|divider|op_4~10_combout\ & (\Add6~4_combout\ & !\Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Add6~4_combout\,
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X18_Y17_N22
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Div0|auto_generated|divider|divider|op_3~10_combout\ & ((\Div4|auto_generated|divider|divider|op_7~10_combout\ & (!\Add0~5\)) # (!\Div4|auto_generated|divider|divider|op_7~10_combout\ & (\Add0~5\ & VCC)))) # 
-- (!\Div0|auto_generated|divider|divider|op_3~10_combout\ & ((\Div4|auto_generated|divider|divider|op_7~10_combout\ & ((\Add0~5\) # (GND))) # (!\Div4|auto_generated|divider|divider|op_7~10_combout\ & (!\Add0~5\))))
-- \Add0~7\ = CARRY((\Div0|auto_generated|divider|divider|op_3~10_combout\ & (\Div4|auto_generated|divider|divider|op_7~10_combout\ & !\Add0~5\)) # (!\Div0|auto_generated|divider|divider|op_3~10_combout\ & 
-- ((\Div4|auto_generated|divider|divider|op_7~10_combout\) # (!\Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	datab => \Div4|auto_generated|divider|divider|op_7~10_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X18_Y17_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add0~6_combout\ & ((\Div1|auto_generated|divider|divider|op_3~10_combout\ & (\Add1~5\ & VCC)) # (!\Div1|auto_generated|divider|divider|op_3~10_combout\ & (!\Add1~5\)))) # (!\Add0~6_combout\ & 
-- ((\Div1|auto_generated|divider|divider|op_3~10_combout\ & (!\Add1~5\)) # (!\Div1|auto_generated|divider|divider|op_3~10_combout\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\Add0~6_combout\ & (!\Div1|auto_generated|divider|divider|op_3~10_combout\ & !\Add1~5\)) # (!\Add0~6_combout\ & ((!\Add1~5\) # (!\Div1|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X17_Y17_N22
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add1~6_combout\ & ((\Div2|auto_generated|divider|divider|op_3~10_combout\ & (\Add2~5\ & VCC)) # (!\Div2|auto_generated|divider|divider|op_3~10_combout\ & (!\Add2~5\)))) # (!\Add1~6_combout\ & 
-- ((\Div2|auto_generated|divider|divider|op_3~10_combout\ & (!\Add2~5\)) # (!\Div2|auto_generated|divider|divider|op_3~10_combout\ & ((\Add2~5\) # (GND)))))
-- \Add2~7\ = CARRY((\Add1~6_combout\ & (!\Div2|auto_generated|divider|divider|op_3~10_combout\ & !\Add2~5\)) # (!\Add1~6_combout\ & ((!\Add2~5\) # (!\Div2|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X17_Y17_N6
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\Add2~6_combout\ & ((\Div3|auto_generated|divider|divider|op_3~10_combout\ & (\Add3~5\ & VCC)) # (!\Div3|auto_generated|divider|divider|op_3~10_combout\ & (!\Add3~5\)))) # (!\Add2~6_combout\ & 
-- ((\Div3|auto_generated|divider|divider|op_3~10_combout\ & (!\Add3~5\)) # (!\Div3|auto_generated|divider|divider|op_3~10_combout\ & ((\Add3~5\) # (GND)))))
-- \Add3~7\ = CARRY((\Add2~6_combout\ & (!\Div3|auto_generated|divider|divider|op_3~10_combout\ & !\Add3~5\)) # (!\Add2~6_combout\ & ((!\Add3~5\) # (!\Div3|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Div3|auto_generated|divider|divider|op_3~10_combout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X17_Y16_N22
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\Add3~6_combout\ & ((\Div5|auto_generated|divider|divider|op_3~10_combout\ & (\Add4~5\ & VCC)) # (!\Div5|auto_generated|divider|divider|op_3~10_combout\ & (!\Add4~5\)))) # (!\Add3~6_combout\ & 
-- ((\Div5|auto_generated|divider|divider|op_3~10_combout\ & (!\Add4~5\)) # (!\Div5|auto_generated|divider|divider|op_3~10_combout\ & ((\Add4~5\) # (GND)))))
-- \Add4~7\ = CARRY((\Add3~6_combout\ & (!\Div5|auto_generated|divider|divider|op_3~10_combout\ & !\Add4~5\)) # (!\Add3~6_combout\ & ((!\Add4~5\) # (!\Div5|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Div5|auto_generated|divider|divider|op_3~10_combout\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X17_Y16_N6
\Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\Add4~6_combout\ & ((\Div6|auto_generated|divider|divider|op_3~10_combout\ & (\Add5~5\ & VCC)) # (!\Div6|auto_generated|divider|divider|op_3~10_combout\ & (!\Add5~5\)))) # (!\Add4~6_combout\ & 
-- ((\Div6|auto_generated|divider|divider|op_3~10_combout\ & (!\Add5~5\)) # (!\Div6|auto_generated|divider|divider|op_3~10_combout\ & ((\Add5~5\) # (GND)))))
-- \Add5~7\ = CARRY((\Add4~6_combout\ & (!\Div6|auto_generated|divider|divider|op_3~10_combout\ & !\Add5~5\)) # (!\Add4~6_combout\ & ((!\Add5~5\) # (!\Div6|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~6_combout\,
	datab => \Div6|auto_generated|divider|divider|op_3~10_combout\,
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X25_Y10_N6
\Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (\Add5~6_combout\ & ((\Div7|auto_generated|divider|divider|op_3~10_combout\ & (\Add6~5\ & VCC)) # (!\Div7|auto_generated|divider|divider|op_3~10_combout\ & (!\Add6~5\)))) # (!\Add5~6_combout\ & 
-- ((\Div7|auto_generated|divider|divider|op_3~10_combout\ & (!\Add6~5\)) # (!\Div7|auto_generated|divider|divider|op_3~10_combout\ & ((\Add6~5\) # (GND)))))
-- \Add6~7\ = CARRY((\Add5~6_combout\ & (!\Div7|auto_generated|divider|divider|op_3~10_combout\ & !\Add6~5\)) # (!\Add5~6_combout\ & ((!\Add6~5\) # (!\Div7|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~6_combout\,
	datab => \Div7|auto_generated|divider|divider|op_3~10_combout\,
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X25_Y10_N22
\Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (\Add6~6_combout\ & ((\Div8|auto_generated|divider|divider|op_3~10_combout\ & (\Add7~5\ & VCC)) # (!\Div8|auto_generated|divider|divider|op_3~10_combout\ & (!\Add7~5\)))) # (!\Add6~6_combout\ & 
-- ((\Div8|auto_generated|divider|divider|op_3~10_combout\ & (!\Add7~5\)) # (!\Div8|auto_generated|divider|divider|op_3~10_combout\ & ((\Add7~5\) # (GND)))))
-- \Add7~7\ = CARRY((\Add6~6_combout\ & (!\Div8|auto_generated|divider|divider|op_3~10_combout\ & !\Add7~5\)) # (!\Add6~6_combout\ & ((!\Add7~5\) # (!\Div8|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => \Div8|auto_generated|divider|divider|op_3~10_combout\,
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X18_Y17_N24
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\Div4|auto_generated|divider|divider|op_6~10_combout\ $ (\Div0|auto_generated|divider|divider|op_2~8_combout\ $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\Div4|auto_generated|divider|divider|op_6~10_combout\ & (\Div0|auto_generated|divider|divider|op_2~8_combout\ & !\Add0~7\)) # (!\Div4|auto_generated|divider|divider|op_6~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_2~8_combout\) # (!\Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_6~10_combout\,
	datab => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X18_Y17_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\Div1|auto_generated|divider|divider|op_2~8_combout\ $ (\Add0~8_combout\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\Div1|auto_generated|divider|divider|op_2~8_combout\ & ((\Add0~8_combout\) # (!\Add1~7\))) # (!\Div1|auto_generated|divider|divider|op_2~8_combout\ & (\Add0~8_combout\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_2~8_combout\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X17_Y17_N24
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\Div2|auto_generated|divider|divider|op_2~8_combout\ $ (\Add1~8_combout\ $ (!\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((\Div2|auto_generated|divider|divider|op_2~8_combout\ & ((\Add1~8_combout\) # (!\Add2~7\))) # (!\Div2|auto_generated|divider|divider|op_2~8_combout\ & (\Add1~8_combout\ & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	datab => \Add1~8_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X17_Y17_N8
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = ((\Div3|auto_generated|divider|divider|op_2~8_combout\ $ (\Add2~8_combout\ $ (!\Add3~7\)))) # (GND)
-- \Add3~9\ = CARRY((\Div3|auto_generated|divider|divider|op_2~8_combout\ & ((\Add2~8_combout\) # (!\Add3~7\))) # (!\Div3|auto_generated|divider|divider|op_2~8_combout\ & (\Add2~8_combout\ & !\Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|op_2~8_combout\,
	datab => \Add2~8_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X17_Y16_N24
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = ((\Div5|auto_generated|divider|divider|op_2~8_combout\ $ (\Add3~8_combout\ $ (!\Add4~7\)))) # (GND)
-- \Add4~9\ = CARRY((\Div5|auto_generated|divider|divider|op_2~8_combout\ & ((\Add3~8_combout\) # (!\Add4~7\))) # (!\Div5|auto_generated|divider|divider|op_2~8_combout\ & (\Add3~8_combout\ & !\Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div5|auto_generated|divider|divider|op_2~8_combout\,
	datab => \Add3~8_combout\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X17_Y16_N8
\Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = ((\Div6|auto_generated|divider|divider|op_2~8_combout\ $ (\Add4~8_combout\ $ (!\Add5~7\)))) # (GND)
-- \Add5~9\ = CARRY((\Div6|auto_generated|divider|divider|op_2~8_combout\ & ((\Add4~8_combout\) # (!\Add5~7\))) # (!\Div6|auto_generated|divider|divider|op_2~8_combout\ & (\Add4~8_combout\ & !\Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div6|auto_generated|divider|divider|op_2~8_combout\,
	datab => \Add4~8_combout\,
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X25_Y10_N8
\Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = ((\Div7|auto_generated|divider|divider|op_2~8_combout\ $ (\Add5~8_combout\ $ (!\Add6~7\)))) # (GND)
-- \Add6~9\ = CARRY((\Div7|auto_generated|divider|divider|op_2~8_combout\ & ((\Add5~8_combout\) # (!\Add6~7\))) # (!\Div7|auto_generated|divider|divider|op_2~8_combout\ & (\Add5~8_combout\ & !\Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div7|auto_generated|divider|divider|op_2~8_combout\,
	datab => \Add5~8_combout\,
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X25_Y10_N24
\Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = ((\Div8|auto_generated|divider|divider|op_2~8_combout\ $ (\Add6~8_combout\ $ (!\Add7~7\)))) # (GND)
-- \Add7~9\ = CARRY((\Div8|auto_generated|divider|divider|op_2~8_combout\ & ((\Add6~8_combout\) # (!\Add7~7\))) # (!\Div8|auto_generated|divider|divider|op_2~8_combout\ & (\Add6~8_combout\ & !\Add7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div8|auto_generated|divider|divider|op_2~8_combout\,
	datab => \Add6~8_combout\,
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X18_Y17_N26
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Div4|auto_generated|divider|divider|op_5~10_combout\ & (!\Add0~9\)) # (!\Div4|auto_generated|divider|divider|op_5~10_combout\ & (\Add0~9\ & VCC))
-- \Add0~11\ = CARRY((\Div4|auto_generated|divider|divider|op_5~10_combout\ & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_5~10_combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X18_Y17_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Add0~10_combout\ & (\Add1~9\ & VCC)) # (!\Add0~10_combout\ & (!\Add1~9\))
-- \Add1~11\ = CARRY((!\Add0~10_combout\ & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X17_Y17_N26
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Add1~10_combout\ & (\Add2~9\ & VCC)) # (!\Add1~10_combout\ & (!\Add2~9\))
-- \Add2~11\ = CARRY((!\Add1~10_combout\ & !\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~10_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X17_Y17_N10
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\Add2~10_combout\ & (\Add3~9\ & VCC)) # (!\Add2~10_combout\ & (!\Add3~9\))
-- \Add3~11\ = CARRY((!\Add2~10_combout\ & !\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X17_Y16_N26
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\Add3~10_combout\ & (\Add4~9\ & VCC)) # (!\Add3~10_combout\ & (!\Add4~9\))
-- \Add4~11\ = CARRY((!\Add3~10_combout\ & !\Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~10_combout\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X17_Y16_N10
\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\Add4~10_combout\ & (\Add5~9\ & VCC)) # (!\Add4~10_combout\ & (!\Add5~9\))
-- \Add5~11\ = CARRY((!\Add4~10_combout\ & !\Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X25_Y10_N10
\Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (\Add5~10_combout\ & (\Add6~9\ & VCC)) # (!\Add5~10_combout\ & (!\Add6~9\))
-- \Add6~11\ = CARRY((!\Add5~10_combout\ & !\Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~10_combout\,
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X25_Y10_N26
\Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (\Add6~10_combout\ & (\Add7~9\ & VCC)) # (!\Add6~10_combout\ & (!\Add7~9\))
-- \Add7~11\ = CARRY((!\Add6~10_combout\ & !\Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~10_combout\,
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X18_Y17_N28
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\Div4|auto_generated|divider|divider|op_4~10_combout\ & (\Add0~11\ $ (GND))) # (!\Div4|auto_generated|divider|divider|op_4~10_combout\ & ((GND) # (!\Add0~11\)))
-- \Add0~13\ = CARRY((!\Add0~11\) # (!\Div4|auto_generated|divider|divider|op_4~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X18_Y17_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\Add0~12_combout\ & ((GND) # (!\Add1~11\))) # (!\Add0~12_combout\ & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((\Add0~12_combout\) # (!\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X17_Y17_N28
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\Add1~12_combout\ & ((GND) # (!\Add2~11\))) # (!\Add1~12_combout\ & (\Add2~11\ $ (GND)))
-- \Add2~13\ = CARRY((\Add1~12_combout\) # (!\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~12_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X17_Y17_N12
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\Add2~12_combout\ & ((GND) # (!\Add3~11\))) # (!\Add2~12_combout\ & (\Add3~11\ $ (GND)))
-- \Add3~13\ = CARRY((\Add2~12_combout\) # (!\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~12_combout\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X17_Y16_N28
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (\Add3~12_combout\ & ((GND) # (!\Add4~11\))) # (!\Add3~12_combout\ & (\Add4~11\ $ (GND)))
-- \Add4~13\ = CARRY((\Add3~12_combout\) # (!\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X17_Y16_N12
\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (\Add4~12_combout\ & ((GND) # (!\Add5~11\))) # (!\Add4~12_combout\ & (\Add5~11\ $ (GND)))
-- \Add5~13\ = CARRY((\Add4~12_combout\) # (!\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~12_combout\,
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X25_Y10_N12
\Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = (\Add5~12_combout\ & ((GND) # (!\Add6~11\))) # (!\Add5~12_combout\ & (\Add6~11\ $ (GND)))
-- \Add6~13\ = CARRY((\Add5~12_combout\) # (!\Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add5~12_combout\,
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: LCCOMB_X25_Y10_N28
\Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (\Add6~12_combout\ & ((GND) # (!\Add7~11\))) # (!\Add6~12_combout\ & (\Add7~11\ $ (GND)))
-- \Add7~13\ = CARRY((\Add6~12_combout\) # (!\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~12_combout\,
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X18_Y17_N30
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Div4|auto_generated|divider|divider|op_3~8_combout\ $ (\Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div4|auto_generated|divider|divider|op_3~8_combout\,
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X18_Y17_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Add0~14_combout\ $ (!\Add1~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X17_Y17_N30
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = \Add1~14_combout\ $ (!\Add2~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~14_combout\,
	cin => \Add2~13\,
	combout => \Add2~14_combout\);

-- Location: LCCOMB_X17_Y17_N14
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = \Add2~14_combout\ $ (!\Add3~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	cin => \Add3~13\,
	combout => \Add3~14_combout\);

-- Location: LCCOMB_X17_Y16_N30
\Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = \Add4~13\ $ (!\Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add3~14_combout\,
	cin => \Add4~13\,
	combout => \Add4~14_combout\);

-- Location: LCCOMB_X17_Y16_N14
\Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = \Add4~14_combout\ $ (!\Add5~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~14_combout\,
	cin => \Add5~13\,
	combout => \Add5~14_combout\);

-- Location: LCCOMB_X25_Y10_N14
\Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = \Add6~13\ $ (!\Add5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add5~14_combout\,
	cin => \Add6~13\,
	combout => \Add6~14_combout\);

-- Location: LCCOMB_X25_Y10_N30
\Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = \Add6~14_combout\ $ (!\Add7~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~14_combout\,
	cin => \Add7~13\,
	combout => \Add7~14_combout\);

ww_r_out_filter(0) <= \r_out_filter[0]~output_o\;

ww_r_out_filter(1) <= \r_out_filter[1]~output_o\;

ww_r_out_filter(2) <= \r_out_filter[2]~output_o\;

ww_r_out_filter(3) <= \r_out_filter[3]~output_o\;

ww_r_out_filter(4) <= \r_out_filter[4]~output_o\;

ww_r_out_filter(5) <= \r_out_filter[5]~output_o\;

ww_r_out_filter(6) <= \r_out_filter[6]~output_o\;

ww_r_out_filter(7) <= \r_out_filter[7]~output_o\;

ww_g_out_filter(0) <= \g_out_filter[0]~output_o\;

ww_g_out_filter(1) <= \g_out_filter[1]~output_o\;

ww_g_out_filter(2) <= \g_out_filter[2]~output_o\;

ww_g_out_filter(3) <= \g_out_filter[3]~output_o\;

ww_g_out_filter(4) <= \g_out_filter[4]~output_o\;

ww_g_out_filter(5) <= \g_out_filter[5]~output_o\;

ww_g_out_filter(6) <= \g_out_filter[6]~output_o\;

ww_g_out_filter(7) <= \g_out_filter[7]~output_o\;

ww_b_out_filter(0) <= \b_out_filter[0]~output_o\;

ww_b_out_filter(1) <= \b_out_filter[1]~output_o\;

ww_b_out_filter(2) <= \b_out_filter[2]~output_o\;

ww_b_out_filter(3) <= \b_out_filter[3]~output_o\;

ww_b_out_filter(4) <= \b_out_filter[4]~output_o\;

ww_b_out_filter(5) <= \b_out_filter[5]~output_o\;

ww_b_out_filter(6) <= \b_out_filter[6]~output_o\;

ww_b_out_filter(7) <= \b_out_filter[7]~output_o\;
END structure;


