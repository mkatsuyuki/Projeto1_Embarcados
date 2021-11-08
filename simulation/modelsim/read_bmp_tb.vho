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

-- DATE "11/07/2021 20:47:18"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	filter IS
    PORT (
	Clk : IN std_logic;
	r_in_filter2 : IN std_logic_vector(7 DOWNTO 0);
	r_in_filter4 : IN std_logic_vector(7 DOWNTO 0);
	r_in_filter5 : IN std_logic_vector(7 DOWNTO 0);
	r_in_filter6 : IN std_logic_vector(7 DOWNTO 0);
	r_in_filter8 : IN std_logic_vector(7 DOWNTO 0);
	r_out_filter : OUT std_logic_vector(7 DOWNTO 0);
	g_out_filter : OUT std_logic_vector(7 DOWNTO 0);
	b_out_filter : OUT std_logic_vector(7 DOWNTO 0)
	);
END filter;

-- Design Ports Information
-- r_out_filter[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out_filter[1]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out_filter[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out_filter[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out_filter[4]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out_filter[5]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out_filter[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out_filter[7]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out_filter[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out_filter[1]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out_filter[2]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out_filter[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out_filter[4]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out_filter[5]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out_filter[6]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out_filter[7]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out_filter[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out_filter[1]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out_filter[2]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out_filter[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out_filter[4]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out_filter[5]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out_filter[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out_filter[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter8[7]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter8[6]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter8[5]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter8[4]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter8[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter8[2]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter8[1]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter8[0]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter4[7]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter4[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter4[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter4[4]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter4[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter4[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter4[1]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter4[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter2[7]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter2[6]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter2[5]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter2[4]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter2[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter2[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter2[1]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter2[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter5[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter5[6]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter5[5]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter5[4]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter5[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter5[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter5[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter5[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter6[7]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter6[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter6[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter6[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter6[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter6[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter6[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_in_filter6[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_Clk : std_logic;
SIGNAL ww_r_in_filter2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r_in_filter4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r_in_filter5 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r_in_filter6 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r_in_filter8 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r_out_filter : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_g_out_filter : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b_out_filter : std_logic_vector(7 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \r_in_filter8[7]~input_o\ : std_logic;
SIGNAL \r_in_filter8[6]~input_o\ : std_logic;
SIGNAL \r_in_filter8[5]~input_o\ : std_logic;
SIGNAL \r_in_filter8[4]~input_o\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[18]~48_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[18]~49_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[17]~51_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[17]~50_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[16]~53_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[16]~52_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[15]~54_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[15]~55_combout\ : std_logic;
SIGNAL \r_in_filter8[3]~input_o\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_3~9_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[22]~76_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[23]~56_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[23]~75_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[22]~57_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[21]~77_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[21]~58_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[20]~60_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[20]~59_combout\ : std_logic;
SIGNAL \r_in_filter8[2]~input_o\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_4~9_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[28]~71_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[28]~61_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[27]~72_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[27]~62_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[26]~63_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[26]~78_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[25]~65_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[25]~64_combout\ : std_logic;
SIGNAL \r_in_filter8[1]~input_o\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~9_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[33]~73_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[32]~74_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[31]~68_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[30]~70_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[30]~69_combout\ : std_logic;
SIGNAL \r_in_filter8[0]~input_o\ : std_logic;
SIGNAL \r_aux8[0]~2_cout\ : std_logic;
SIGNAL \r_aux8[0]~4_cout\ : std_logic;
SIGNAL \r_aux8[0]~6_cout\ : std_logic;
SIGNAL \r_aux8[0]~8_cout\ : std_logic;
SIGNAL \r_aux8[0]~10_cout\ : std_logic;
SIGNAL \r_aux8[0]~11_combout\ : std_logic;
SIGNAL \r_in_filter5[5]~input_o\ : std_logic;
SIGNAL \r_in_filter5[4]~input_o\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \r_in_filter5[7]~input_o\ : std_logic;
SIGNAL \r_in_filter5[6]~input_o\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[16]~77_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[16]~76_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[15]~79_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[15]~78_combout\ : std_logic;
SIGNAL \r_in_filter5[3]~input_o\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[18]~72_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[18]~73_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[17]~75_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[17]~74_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_3~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[22]~81_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[22]~112_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[21]~113_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[21]~82_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[20]~83_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[20]~84_combout\ : std_logic;
SIGNAL \r_in_filter5[2]~input_o\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[23]~80_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[23]~111_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_4~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[28]~85_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[28]~103_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[27]~86_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[27]~104_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[26]~87_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[26]~114_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[25]~89_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[25]~88_combout\ : std_logic;
SIGNAL \r_in_filter5[1]~input_o\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[33]~90_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[33]~105_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[32]~91_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[32]~106_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[31]~92_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[31]~115_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[30]~94_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[30]~93_combout\ : std_logic;
SIGNAL \r_in_filter5[0]~input_o\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_6~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_6~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[38]~107_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[38]~95_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[37]~108_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[37]~96_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[36]~116_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[36]~97_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[35]~98_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[35]~99_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_7~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_7~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_7~7_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_7~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[43]~109_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[43]~100_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[42]~101_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[42]~110_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[41]~117_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_7~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[41]~102_combout\ : std_logic;
SIGNAL \r_aux5[0]~2_cout\ : std_logic;
SIGNAL \r_aux5[0]~4_cout\ : std_logic;
SIGNAL \r_aux5[0]~6_cout\ : std_logic;
SIGNAL \r_aux5[0]~8_cout\ : std_logic;
SIGNAL \r_aux5[0]~9_combout\ : std_logic;
SIGNAL \r_in_filter2[4]~input_o\ : std_logic;
SIGNAL \r_in_filter2[7]~input_o\ : std_logic;
SIGNAL \r_in_filter2[6]~input_o\ : std_logic;
SIGNAL \r_in_filter2[5]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~49_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~48_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~50_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~51_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~53_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~52_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~55_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~54_combout\ : std_logic;
SIGNAL \r_in_filter2[3]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~77_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~58_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~60_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~59_combout\ : std_logic;
SIGNAL \r_in_filter2[2]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~75_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~56_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~57_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~76_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~72_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~61_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~71_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~62_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~63_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~78_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~65_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~64_combout\ : std_logic;
SIGNAL \r_in_filter2[1]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~73_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~74_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~68_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~70_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~69_combout\ : std_logic;
SIGNAL \r_in_filter2[0]~input_o\ : std_logic;
SIGNAL \r_aux2[0]~2_cout\ : std_logic;
SIGNAL \r_aux2[0]~4_cout\ : std_logic;
SIGNAL \r_aux2[0]~6_cout\ : std_logic;
SIGNAL \r_aux2[0]~8_cout\ : std_logic;
SIGNAL \r_aux2[0]~10_cout\ : std_logic;
SIGNAL \r_aux2[0]~11_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \r_in_filter4[4]~input_o\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \r_in_filter4[7]~input_o\ : std_logic;
SIGNAL \r_in_filter4[6]~input_o\ : std_logic;
SIGNAL \r_in_filter4[5]~input_o\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~49_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~48_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~50_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~51_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~53_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~52_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~55_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~54_combout\ : std_logic;
SIGNAL \r_in_filter4[3]~input_o\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~77_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~58_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~60_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~59_combout\ : std_logic;
SIGNAL \r_in_filter4[2]~input_o\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~56_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~75_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~57_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~76_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~72_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~71_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~61_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~62_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~78_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~63_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~64_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~65_combout\ : std_logic;
SIGNAL \r_in_filter4[1]~input_o\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~73_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~74_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~68_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~70_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~69_combout\ : std_logic;
SIGNAL \r_in_filter4[0]~input_o\ : std_logic;
SIGNAL \r_aux4[0]~2_cout\ : std_logic;
SIGNAL \r_aux4[0]~4_cout\ : std_logic;
SIGNAL \r_aux4[0]~6_cout\ : std_logic;
SIGNAL \r_aux4[0]~8_cout\ : std_logic;
SIGNAL \r_aux4[0]~10_cout\ : std_logic;
SIGNAL \r_aux4[0]~11_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \r_in_filter6[7]~input_o\ : std_logic;
SIGNAL \r_in_filter6[6]~input_o\ : std_logic;
SIGNAL \r_in_filter6[5]~input_o\ : std_logic;
SIGNAL \r_in_filter6[4]~input_o\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[15]~54_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[15]~55_combout\ : std_logic;
SIGNAL \r_in_filter6[3]~input_o\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[18]~49_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[18]~48_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[17]~50_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[17]~51_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[16]~53_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[16]~52_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_3~9_cout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[23]~75_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[23]~56_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[22]~76_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[22]~57_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[21]~77_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[21]~58_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[20]~60_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[20]~59_combout\ : std_logic;
SIGNAL \r_in_filter6[2]~input_o\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_4~9_cout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[27]~72_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[28]~61_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[28]~71_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[27]~62_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[26]~63_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[26]~78_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[25]~65_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[25]~64_combout\ : std_logic;
SIGNAL \r_in_filter6[1]~input_o\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~9_cout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[33]~73_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[32]~74_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[31]~68_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[30]~69_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[30]~70_combout\ : std_logic;
SIGNAL \r_in_filter6[0]~input_o\ : std_logic;
SIGNAL \r_aux6[0]~2_cout\ : std_logic;
SIGNAL \r_aux6[0]~4_cout\ : std_logic;
SIGNAL \r_aux6[0]~6_cout\ : std_logic;
SIGNAL \r_aux6[0]~8_cout\ : std_logic;
SIGNAL \r_aux6[0]~10_cout\ : std_logic;
SIGNAL \r_aux6[0]~11_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \final[0]~8_combout\ : std_logic;
SIGNAL \r_out_filter[0]~reg0feeder_combout\ : std_logic;
SIGNAL \r_out_filter[0]~reg0_q\ : std_logic;
SIGNAL \r_aux8[1]~13_combout\ : std_logic;
SIGNAL \r_aux4[1]~13_combout\ : std_logic;
SIGNAL \r_aux5[1]~11_combout\ : std_logic;
SIGNAL \r_aux2[1]~13_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \r_aux6[1]~13_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \final[0]~9\ : std_logic;
SIGNAL \final[1]~10_combout\ : std_logic;
SIGNAL \r_out_filter[1]~reg0feeder_combout\ : std_logic;
SIGNAL \r_out_filter[1]~reg0_q\ : std_logic;
SIGNAL \r_aux8[2]~14_combout\ : std_logic;
SIGNAL \r_aux6[2]~14_combout\ : std_logic;
SIGNAL \r_aux4[2]~14_combout\ : std_logic;
SIGNAL \r_aux5[2]~12_combout\ : std_logic;
SIGNAL \r_aux2[2]~14_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \final[1]~11\ : std_logic;
SIGNAL \final[2]~12_combout\ : std_logic;
SIGNAL \r_out_filter[2]~reg0feeder_combout\ : std_logic;
SIGNAL \r_out_filter[2]~reg0_q\ : std_logic;
SIGNAL \r_aux6[3]~15_combout\ : std_logic;
SIGNAL \r_aux2[3]~15_combout\ : std_logic;
SIGNAL \r_aux5[3]~13_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \r_aux4[3]~15_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \r_aux8[3]~15_combout\ : std_logic;
SIGNAL \final[2]~13\ : std_logic;
SIGNAL \final[3]~14_combout\ : std_logic;
SIGNAL \r_out_filter[3]~reg0feeder_combout\ : std_logic;
SIGNAL \r_out_filter[3]~reg0_q\ : std_logic;
SIGNAL \r_aux8[4]~16_combout\ : std_logic;
SIGNAL \r_aux4[4]~16_combout\ : std_logic;
SIGNAL \r_aux2[4]~16_combout\ : std_logic;
SIGNAL \r_aux5[4]~14_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \r_aux6[4]~16_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \final[3]~15\ : std_logic;
SIGNAL \final[4]~16_combout\ : std_logic;
SIGNAL \r_out_filter[4]~reg0feeder_combout\ : std_logic;
SIGNAL \r_out_filter[4]~reg0_q\ : std_logic;
SIGNAL \r_aux5[5]~15_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \final[4]~17\ : std_logic;
SIGNAL \final[5]~18_combout\ : std_logic;
SIGNAL \r_out_filter[5]~reg0feeder_combout\ : std_logic;
SIGNAL \r_out_filter[5]~reg0_q\ : std_logic;
SIGNAL \r_aux5[6]~16_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \final[5]~19\ : std_logic;
SIGNAL \final[6]~20_combout\ : std_logic;
SIGNAL \r_out_filter[6]~reg0feeder_combout\ : std_logic;
SIGNAL \r_out_filter[6]~reg0_q\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \final[6]~21\ : std_logic;
SIGNAL \final[7]~22_combout\ : std_logic;
SIGNAL \r_out_filter[7]~reg0feeder_combout\ : std_logic;
SIGNAL \r_out_filter[7]~reg0_q\ : std_logic;
SIGNAL \g_out_filter[0]~reg0feeder_combout\ : std_logic;
SIGNAL \g_out_filter[0]~reg0_q\ : std_logic;
SIGNAL \g_out_filter[1]~reg0feeder_combout\ : std_logic;
SIGNAL \g_out_filter[1]~reg0_q\ : std_logic;
SIGNAL \g_out_filter[2]~reg0feeder_combout\ : std_logic;
SIGNAL \g_out_filter[2]~reg0_q\ : std_logic;
SIGNAL \g_out_filter[3]~reg0feeder_combout\ : std_logic;
SIGNAL \g_out_filter[3]~reg0_q\ : std_logic;
SIGNAL \g_out_filter[4]~reg0feeder_combout\ : std_logic;
SIGNAL \g_out_filter[4]~reg0_q\ : std_logic;
SIGNAL \g_out_filter[5]~reg0feeder_combout\ : std_logic;
SIGNAL \g_out_filter[5]~reg0_q\ : std_logic;
SIGNAL \g_out_filter[6]~reg0feeder_combout\ : std_logic;
SIGNAL \g_out_filter[6]~reg0_q\ : std_logic;
SIGNAL \g_out_filter[7]~reg0feeder_combout\ : std_logic;
SIGNAL \g_out_filter[7]~reg0_q\ : std_logic;
SIGNAL \b_out_filter[0]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out_filter[0]~reg0_q\ : std_logic;
SIGNAL \b_out_filter[1]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out_filter[1]~reg0_q\ : std_logic;
SIGNAL \b_out_filter[2]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out_filter[2]~reg0_q\ : std_logic;
SIGNAL \b_out_filter[3]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out_filter[3]~reg0_q\ : std_logic;
SIGNAL \b_out_filter[4]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out_filter[4]~reg0_q\ : std_logic;
SIGNAL \b_out_filter[5]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out_filter[5]~reg0_q\ : std_logic;
SIGNAL \b_out_filter[6]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out_filter[6]~reg0_q\ : std_logic;
SIGNAL \b_out_filter[7]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out_filter[7]~reg0_q\ : std_logic;
SIGNAL final : std_logic_vector(7 DOWNTO 0);
SIGNAL r_aux8 : std_logic_vector(7 DOWNTO 0);
SIGNAL r_aux4 : std_logic_vector(7 DOWNTO 0);
SIGNAL r_aux2 : std_logic_vector(7 DOWNTO 0);
SIGNAL r_aux5 : std_logic_vector(7 DOWNTO 0);
SIGNAL r_aux6 : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clk <= Clk;
ww_r_in_filter2 <= r_in_filter2;
ww_r_in_filter4 <= r_in_filter4;
ww_r_in_filter5 <= r_in_filter5;
ww_r_in_filter6 <= r_in_filter6;
ww_r_in_filter8 <= r_in_filter8;
r_out_filter <= ww_r_out_filter;
g_out_filter <= ww_g_out_filter;
b_out_filter <= ww_b_out_filter;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y24_N23
\r_out_filter[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out_filter[0]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out_filter[0]~output_o\);

-- Location: IOOBUF_X3_Y24_N2
\r_out_filter[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out_filter[1]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out_filter[1]~output_o\);

-- Location: IOOBUF_X3_Y24_N9
\r_out_filter[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out_filter[2]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out_filter[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\r_out_filter[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out_filter[3]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out_filter[3]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\r_out_filter[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out_filter[4]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out_filter[4]~output_o\);

-- Location: IOOBUF_X34_Y20_N2
\r_out_filter[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out_filter[5]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out_filter[5]~output_o\);

-- Location: IOOBUF_X25_Y24_N23
\r_out_filter[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out_filter[6]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out_filter[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\r_out_filter[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out_filter[7]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out_filter[7]~output_o\);

-- Location: IOOBUF_X25_Y24_N2
\g_out_filter[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out_filter[0]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out_filter[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\g_out_filter[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out_filter[1]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out_filter[1]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\g_out_filter[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out_filter[2]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out_filter[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N16
\g_out_filter[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out_filter[3]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out_filter[3]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\g_out_filter[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out_filter[4]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out_filter[4]~output_o\);

-- Location: IOOBUF_X34_Y20_N16
\g_out_filter[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out_filter[5]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out_filter[5]~output_o\);

-- Location: IOOBUF_X25_Y24_N9
\g_out_filter[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out_filter[6]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out_filter[6]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\g_out_filter[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out_filter[7]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out_filter[7]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\b_out_filter[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out_filter[0]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out_filter[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\b_out_filter[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out_filter[1]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out_filter[1]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\b_out_filter[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out_filter[2]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out_filter[2]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\b_out_filter[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out_filter[3]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out_filter[3]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\b_out_filter[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out_filter[4]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out_filter[4]~output_o\);

-- Location: IOOBUF_X21_Y24_N2
\b_out_filter[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out_filter[5]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out_filter[5]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\b_out_filter[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out_filter[6]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out_filter[6]~output_o\);

-- Location: IOOBUF_X21_Y24_N16
\b_out_filter[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out_filter[7]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out_filter[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G2
\Clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X5_Y24_N8
\r_in_filter8[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter8(7),
	o => \r_in_filter8[7]~input_o\);

-- Location: IOIBUF_X5_Y24_N1
\r_in_filter8[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter8(6),
	o => \r_in_filter8[6]~input_o\);

-- Location: IOIBUF_X5_Y24_N22
\r_in_filter8[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter8(5),
	o => \r_in_filter8[5]~input_o\);

-- Location: IOIBUF_X5_Y24_N15
\r_in_filter8[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter8(4),
	o => \r_in_filter8[4]~input_o\);

-- Location: LCCOMB_X5_Y20_N0
\Div4|auto_generated|divider|divider|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_2~0_combout\ = \r_in_filter8[4]~input_o\ $ (VCC)
-- \Div4|auto_generated|divider|divider|op_2~1\ = CARRY(\r_in_filter8[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter8[4]~input_o\,
	datad => VCC,
	combout => \Div4|auto_generated|divider|divider|op_2~0_combout\,
	cout => \Div4|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X5_Y20_N2
\Div4|auto_generated|divider|divider|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_2~2_combout\ = (\r_in_filter8[5]~input_o\ & (\Div4|auto_generated|divider|divider|op_2~1\ & VCC)) # (!\r_in_filter8[5]~input_o\ & (!\Div4|auto_generated|divider|divider|op_2~1\))
-- \Div4|auto_generated|divider|divider|op_2~3\ = CARRY((!\r_in_filter8[5]~input_o\ & !\Div4|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter8[5]~input_o\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_2~1\,
	combout => \Div4|auto_generated|divider|divider|op_2~2_combout\,
	cout => \Div4|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X5_Y20_N4
\Div4|auto_generated|divider|divider|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_2~4_combout\ = (\r_in_filter8[6]~input_o\ & ((GND) # (!\Div4|auto_generated|divider|divider|op_2~3\))) # (!\r_in_filter8[6]~input_o\ & (\Div4|auto_generated|divider|divider|op_2~3\ $ (GND)))
-- \Div4|auto_generated|divider|divider|op_2~5\ = CARRY((\r_in_filter8[6]~input_o\) # (!\Div4|auto_generated|divider|divider|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter8[6]~input_o\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_2~3\,
	combout => \Div4|auto_generated|divider|divider|op_2~4_combout\,
	cout => \Div4|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X5_Y20_N6
\Div4|auto_generated|divider|divider|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_2~6_combout\ = (\r_in_filter8[7]~input_o\ & (!\Div4|auto_generated|divider|divider|op_2~5\)) # (!\r_in_filter8[7]~input_o\ & ((\Div4|auto_generated|divider|divider|op_2~5\) # (GND)))
-- \Div4|auto_generated|divider|divider|op_2~7\ = CARRY((!\Div4|auto_generated|divider|divider|op_2~5\) # (!\r_in_filter8[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter8[7]~input_o\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_2~5\,
	combout => \Div4|auto_generated|divider|divider|op_2~6_combout\,
	cout => \Div4|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X5_Y20_N8
\Div4|auto_generated|divider|divider|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_2~8_combout\ = \Div4|auto_generated|divider|divider|op_2~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div4|auto_generated|divider|divider|op_2~7\,
	combout => \Div4|auto_generated|divider|divider|op_2~8_combout\);

-- Location: LCCOMB_X5_Y20_N22
\Div4|auto_generated|divider|divider|StageOut[18]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[18]~48_combout\ = (\Div4|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter8[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter8[7]~input_o\,
	combout => \Div4|auto_generated|divider|divider|StageOut[18]~48_combout\);

-- Location: LCCOMB_X5_Y20_N20
\Div4|auto_generated|divider|divider|StageOut[18]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[18]~49_combout\ = (!\Div4|auto_generated|divider|divider|op_2~8_combout\ & \Div4|auto_generated|divider|divider|op_2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div4|auto_generated|divider|divider|op_2~6_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[18]~49_combout\);

-- Location: LCCOMB_X5_Y20_N12
\Div4|auto_generated|divider|divider|StageOut[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[17]~51_combout\ = (\Div4|auto_generated|divider|divider|op_2~4_combout\ & !\Div4|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div4|auto_generated|divider|divider|op_2~4_combout\,
	datac => \Div4|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[17]~51_combout\);

-- Location: LCCOMB_X5_Y20_N18
\Div4|auto_generated|divider|divider|StageOut[17]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[17]~50_combout\ = (\Div4|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter8[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter8[6]~input_o\,
	combout => \Div4|auto_generated|divider|divider|StageOut[17]~50_combout\);

-- Location: LCCOMB_X5_Y20_N24
\Div4|auto_generated|divider|divider|StageOut[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[16]~53_combout\ = (!\Div4|auto_generated|divider|divider|op_2~8_combout\ & \Div4|auto_generated|divider|divider|op_2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div4|auto_generated|divider|divider|op_2~2_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[16]~53_combout\);

-- Location: LCCOMB_X5_Y20_N26
\Div4|auto_generated|divider|divider|StageOut[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[16]~52_combout\ = (\Div4|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter8[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter8[5]~input_o\,
	combout => \Div4|auto_generated|divider|divider|StageOut[16]~52_combout\);

-- Location: LCCOMB_X5_Y20_N30
\Div4|auto_generated|divider|divider|StageOut[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[15]~54_combout\ = (\Div4|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter8[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter8[4]~input_o\,
	combout => \Div4|auto_generated|divider|divider|StageOut[15]~54_combout\);

-- Location: LCCOMB_X5_Y20_N16
\Div4|auto_generated|divider|divider|StageOut[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[15]~55_combout\ = (!\Div4|auto_generated|divider|divider|op_2~8_combout\ & \Div4|auto_generated|divider|divider|op_2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div4|auto_generated|divider|divider|op_2~0_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[15]~55_combout\);

-- Location: IOIBUF_X3_Y24_N15
\r_in_filter8[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter8(3),
	o => \r_in_filter8[3]~input_o\);

-- Location: LCCOMB_X5_Y21_N2
\Div4|auto_generated|divider|divider|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_3~0_combout\ = \r_in_filter8[3]~input_o\ $ (VCC)
-- \Div4|auto_generated|divider|divider|op_3~1\ = CARRY(\r_in_filter8[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter8[3]~input_o\,
	datad => VCC,
	combout => \Div4|auto_generated|divider|divider|op_3~0_combout\,
	cout => \Div4|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X5_Y21_N4
\Div4|auto_generated|divider|divider|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_3~2_combout\ = (\Div4|auto_generated|divider|divider|op_3~1\ & (((\Div4|auto_generated|divider|divider|StageOut[15]~54_combout\) # (\Div4|auto_generated|divider|divider|StageOut[15]~55_combout\)))) # 
-- (!\Div4|auto_generated|divider|divider|op_3~1\ & (!\Div4|auto_generated|divider|divider|StageOut[15]~54_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[15]~55_combout\)))
-- \Div4|auto_generated|divider|divider|op_3~3\ = CARRY((!\Div4|auto_generated|divider|divider|StageOut[15]~54_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[15]~55_combout\ & !\Div4|auto_generated|divider|divider|op_3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[15]~54_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[15]~55_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_3~1\,
	combout => \Div4|auto_generated|divider|divider|op_3~2_combout\,
	cout => \Div4|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X5_Y21_N6
\Div4|auto_generated|divider|divider|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_3~4_combout\ = (\Div4|auto_generated|divider|divider|op_3~3\ & ((((\Div4|auto_generated|divider|divider|StageOut[16]~53_combout\) # (\Div4|auto_generated|divider|divider|StageOut[16]~52_combout\))))) # 
-- (!\Div4|auto_generated|divider|divider|op_3~3\ & ((\Div4|auto_generated|divider|divider|StageOut[16]~53_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[16]~52_combout\) # (GND))))
-- \Div4|auto_generated|divider|divider|op_3~5\ = CARRY((\Div4|auto_generated|divider|divider|StageOut[16]~53_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[16]~52_combout\) # (!\Div4|auto_generated|divider|divider|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[16]~53_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[16]~52_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_3~3\,
	combout => \Div4|auto_generated|divider|divider|op_3~4_combout\,
	cout => \Div4|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X5_Y21_N8
\Div4|auto_generated|divider|divider|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_3~6_combout\ = (\Div4|auto_generated|divider|divider|StageOut[17]~51_combout\ & (((!\Div4|auto_generated|divider|divider|op_3~5\)))) # (!\Div4|auto_generated|divider|divider|StageOut[17]~51_combout\ & 
-- ((\Div4|auto_generated|divider|divider|StageOut[17]~50_combout\ & (!\Div4|auto_generated|divider|divider|op_3~5\)) # (!\Div4|auto_generated|divider|divider|StageOut[17]~50_combout\ & ((\Div4|auto_generated|divider|divider|op_3~5\) # (GND)))))
-- \Div4|auto_generated|divider|divider|op_3~7\ = CARRY(((!\Div4|auto_generated|divider|divider|StageOut[17]~51_combout\ & !\Div4|auto_generated|divider|divider|StageOut[17]~50_combout\)) # (!\Div4|auto_generated|divider|divider|op_3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[17]~51_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[17]~50_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_3~5\,
	combout => \Div4|auto_generated|divider|divider|op_3~6_combout\,
	cout => \Div4|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X5_Y21_N10
\Div4|auto_generated|divider|divider|op_3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_3~9_cout\ = CARRY((\Div4|auto_generated|divider|divider|StageOut[18]~48_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[18]~49_combout\) # (!\Div4|auto_generated|divider|divider|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[18]~48_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[18]~49_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_3~7\,
	cout => \Div4|auto_generated|divider|divider|op_3~9_cout\);

-- Location: LCCOMB_X5_Y21_N12
\Div4|auto_generated|divider|divider|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_3~10_combout\ = !\Div4|auto_generated|divider|divider|op_3~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div4|auto_generated|divider|divider|op_3~9_cout\,
	combout => \Div4|auto_generated|divider|divider|op_3~10_combout\);

-- Location: LCCOMB_X5_Y20_N28
\Div4|auto_generated|divider|divider|StageOut[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[22]~76_combout\ = (\Div4|auto_generated|divider|divider|op_3~10_combout\ & ((\Div4|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter8[5]~input_o\))) # 
-- (!\Div4|auto_generated|divider|divider|op_2~8_combout\ & (\Div4|auto_generated|divider|divider|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_3~10_combout\,
	datab => \Div4|auto_generated|divider|divider|op_2~2_combout\,
	datac => \Div4|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter8[5]~input_o\,
	combout => \Div4|auto_generated|divider|divider|StageOut[22]~76_combout\);

-- Location: LCCOMB_X5_Y21_N30
\Div4|auto_generated|divider|divider|StageOut[23]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[23]~56_combout\ = (\Div4|auto_generated|divider|divider|op_3~6_combout\ & !\Div4|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_3~6_combout\,
	datad => \Div4|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[23]~56_combout\);

-- Location: LCCOMB_X5_Y20_N14
\Div4|auto_generated|divider|divider|StageOut[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[23]~75_combout\ = (\Div4|auto_generated|divider|divider|op_3~10_combout\ & ((\Div4|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter8[6]~input_o\))) # 
-- (!\Div4|auto_generated|divider|divider|op_2~8_combout\ & (\Div4|auto_generated|divider|divider|op_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_3~10_combout\,
	datab => \Div4|auto_generated|divider|divider|op_2~4_combout\,
	datac => \Div4|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter8[6]~input_o\,
	combout => \Div4|auto_generated|divider|divider|StageOut[23]~75_combout\);

-- Location: LCCOMB_X6_Y21_N16
\Div4|auto_generated|divider|divider|StageOut[22]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[22]~57_combout\ = (\Div4|auto_generated|divider|divider|op_3~4_combout\ & !\Div4|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_3~4_combout\,
	datad => \Div4|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[22]~57_combout\);

-- Location: LCCOMB_X5_Y20_N10
\Div4|auto_generated|divider|divider|StageOut[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[21]~77_combout\ = (\Div4|auto_generated|divider|divider|op_3~10_combout\ & ((\Div4|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter8[4]~input_o\))) # 
-- (!\Div4|auto_generated|divider|divider|op_2~8_combout\ & (\Div4|auto_generated|divider|divider|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_3~10_combout\,
	datab => \Div4|auto_generated|divider|divider|op_2~0_combout\,
	datac => \Div4|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter8[4]~input_o\,
	combout => \Div4|auto_generated|divider|divider|StageOut[21]~77_combout\);

-- Location: LCCOMB_X6_Y21_N26
\Div4|auto_generated|divider|divider|StageOut[21]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[21]~58_combout\ = (\Div4|auto_generated|divider|divider|op_3~2_combout\ & !\Div4|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_3~2_combout\,
	datad => \Div4|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[21]~58_combout\);

-- Location: LCCOMB_X5_Y21_N14
\Div4|auto_generated|divider|divider|StageOut[20]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[20]~60_combout\ = (!\Div4|auto_generated|divider|divider|op_3~10_combout\ & \Div4|auto_generated|divider|divider|op_3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_3~0_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[20]~60_combout\);

-- Location: LCCOMB_X5_Y21_N0
\Div4|auto_generated|divider|divider|StageOut[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[20]~59_combout\ = (\r_in_filter8[3]~input_o\ & \Div4|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_in_filter8[3]~input_o\,
	datad => \Div4|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[20]~59_combout\);

-- Location: IOIBUF_X0_Y21_N22
\r_in_filter8[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter8(2),
	o => \r_in_filter8[2]~input_o\);

-- Location: LCCOMB_X5_Y21_N16
\Div4|auto_generated|divider|divider|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_4~0_combout\ = \r_in_filter8[2]~input_o\ $ (VCC)
-- \Div4|auto_generated|divider|divider|op_4~1\ = CARRY(\r_in_filter8[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter8[2]~input_o\,
	datad => VCC,
	combout => \Div4|auto_generated|divider|divider|op_4~0_combout\,
	cout => \Div4|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X5_Y21_N18
\Div4|auto_generated|divider|divider|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_4~2_combout\ = (\Div4|auto_generated|divider|divider|op_4~1\ & (((\Div4|auto_generated|divider|divider|StageOut[20]~60_combout\) # (\Div4|auto_generated|divider|divider|StageOut[20]~59_combout\)))) # 
-- (!\Div4|auto_generated|divider|divider|op_4~1\ & (!\Div4|auto_generated|divider|divider|StageOut[20]~60_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[20]~59_combout\)))
-- \Div4|auto_generated|divider|divider|op_4~3\ = CARRY((!\Div4|auto_generated|divider|divider|StageOut[20]~60_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[20]~59_combout\ & !\Div4|auto_generated|divider|divider|op_4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[20]~60_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[20]~59_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_4~1\,
	combout => \Div4|auto_generated|divider|divider|op_4~2_combout\,
	cout => \Div4|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X5_Y21_N20
\Div4|auto_generated|divider|divider|op_4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_4~4_combout\ = (\Div4|auto_generated|divider|divider|op_4~3\ & ((((\Div4|auto_generated|divider|divider|StageOut[21]~77_combout\) # (\Div4|auto_generated|divider|divider|StageOut[21]~58_combout\))))) # 
-- (!\Div4|auto_generated|divider|divider|op_4~3\ & ((\Div4|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[21]~58_combout\) # (GND))))
-- \Div4|auto_generated|divider|divider|op_4~5\ = CARRY((\Div4|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[21]~58_combout\) # (!\Div4|auto_generated|divider|divider|op_4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[21]~77_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[21]~58_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_4~3\,
	combout => \Div4|auto_generated|divider|divider|op_4~4_combout\,
	cout => \Div4|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X5_Y21_N22
\Div4|auto_generated|divider|divider|op_4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_4~6_combout\ = (\Div4|auto_generated|divider|divider|StageOut[22]~76_combout\ & (((!\Div4|auto_generated|divider|divider|op_4~5\)))) # (!\Div4|auto_generated|divider|divider|StageOut[22]~76_combout\ & 
-- ((\Div4|auto_generated|divider|divider|StageOut[22]~57_combout\ & (!\Div4|auto_generated|divider|divider|op_4~5\)) # (!\Div4|auto_generated|divider|divider|StageOut[22]~57_combout\ & ((\Div4|auto_generated|divider|divider|op_4~5\) # (GND)))))
-- \Div4|auto_generated|divider|divider|op_4~7\ = CARRY(((!\Div4|auto_generated|divider|divider|StageOut[22]~76_combout\ & !\Div4|auto_generated|divider|divider|StageOut[22]~57_combout\)) # (!\Div4|auto_generated|divider|divider|op_4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[22]~76_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[22]~57_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_4~5\,
	combout => \Div4|auto_generated|divider|divider|op_4~6_combout\,
	cout => \Div4|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X5_Y21_N24
\Div4|auto_generated|divider|divider|op_4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_4~9_cout\ = CARRY((\Div4|auto_generated|divider|divider|StageOut[23]~56_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[23]~75_combout\) # (!\Div4|auto_generated|divider|divider|op_4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[23]~56_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[23]~75_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_4~7\,
	cout => \Div4|auto_generated|divider|divider|op_4~9_cout\);

-- Location: LCCOMB_X5_Y21_N26
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

-- Location: LCCOMB_X6_Y21_N0
\Div4|auto_generated|divider|divider|StageOut[28]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[28]~71_combout\ = (\Div4|auto_generated|divider|divider|op_4~10_combout\ & ((\Div4|auto_generated|divider|divider|StageOut[22]~76_combout\) # ((\Div4|auto_generated|divider|divider|op_3~4_combout\ & 
-- !\Div4|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[22]~76_combout\,
	datab => \Div4|auto_generated|divider|divider|op_3~4_combout\,
	datac => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[28]~71_combout\);

-- Location: LCCOMB_X6_Y21_N20
\Div4|auto_generated|divider|divider|StageOut[28]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[28]~61_combout\ = (!\Div4|auto_generated|divider|divider|op_4~10_combout\ & \Div4|auto_generated|divider|divider|op_4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_4~6_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[28]~61_combout\);

-- Location: LCCOMB_X6_Y21_N22
\Div4|auto_generated|divider|divider|StageOut[27]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[27]~72_combout\ = (\Div4|auto_generated|divider|divider|op_4~10_combout\ & ((\Div4|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((\Div4|auto_generated|divider|divider|op_3~2_combout\ & 
-- !\Div4|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[21]~77_combout\,
	datac => \Div4|auto_generated|divider|divider|op_3~2_combout\,
	datad => \Div4|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[27]~72_combout\);

-- Location: LCCOMB_X6_Y21_N2
\Div4|auto_generated|divider|divider|StageOut[27]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[27]~62_combout\ = (!\Div4|auto_generated|divider|divider|op_4~10_combout\ & \Div4|auto_generated|divider|divider|op_4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_4~4_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[27]~62_combout\);

-- Location: LCCOMB_X6_Y21_N24
\Div4|auto_generated|divider|divider|StageOut[26]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[26]~63_combout\ = (!\Div4|auto_generated|divider|divider|op_4~10_combout\ & \Div4|auto_generated|divider|divider|op_4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_4~2_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[26]~63_combout\);

-- Location: LCCOMB_X6_Y21_N18
\Div4|auto_generated|divider|divider|StageOut[26]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[26]~78_combout\ = (\Div4|auto_generated|divider|divider|op_4~10_combout\ & ((\Div4|auto_generated|divider|divider|op_3~10_combout\ & (\r_in_filter8[3]~input_o\)) # 
-- (!\Div4|auto_generated|divider|divider|op_3~10_combout\ & ((\Div4|auto_generated|divider|divider|op_3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_3~10_combout\,
	datab => \r_in_filter8[3]~input_o\,
	datac => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_3~0_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[26]~78_combout\);

-- Location: LCCOMB_X7_Y21_N2
\Div4|auto_generated|divider|divider|StageOut[25]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[25]~65_combout\ = (!\Div4|auto_generated|divider|divider|op_4~10_combout\ & \Div4|auto_generated|divider|divider|op_4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div4|auto_generated|divider|divider|op_4~0_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[25]~65_combout\);

-- Location: LCCOMB_X7_Y21_N22
\Div4|auto_generated|divider|divider|StageOut[25]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[25]~64_combout\ = (\r_in_filter8[2]~input_o\ & \Div4|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter8[2]~input_o\,
	datad => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[25]~64_combout\);

-- Location: IOIBUF_X3_Y24_N22
\r_in_filter8[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter8(1),
	o => \r_in_filter8[1]~input_o\);

-- Location: LCCOMB_X6_Y21_N4
\Div4|auto_generated|divider|divider|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_5~0_combout\ = \r_in_filter8[1]~input_o\ $ (VCC)
-- \Div4|auto_generated|divider|divider|op_5~1\ = CARRY(\r_in_filter8[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter8[1]~input_o\,
	datad => VCC,
	combout => \Div4|auto_generated|divider|divider|op_5~0_combout\,
	cout => \Div4|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X6_Y21_N6
\Div4|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_5~2_combout\ = (\Div4|auto_generated|divider|divider|op_5~1\ & (((\Div4|auto_generated|divider|divider|StageOut[25]~65_combout\) # (\Div4|auto_generated|divider|divider|StageOut[25]~64_combout\)))) # 
-- (!\Div4|auto_generated|divider|divider|op_5~1\ & (!\Div4|auto_generated|divider|divider|StageOut[25]~65_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[25]~64_combout\)))
-- \Div4|auto_generated|divider|divider|op_5~3\ = CARRY((!\Div4|auto_generated|divider|divider|StageOut[25]~65_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[25]~64_combout\ & !\Div4|auto_generated|divider|divider|op_5~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[25]~65_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[25]~64_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_5~1\,
	combout => \Div4|auto_generated|divider|divider|op_5~2_combout\,
	cout => \Div4|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X6_Y21_N8
\Div4|auto_generated|divider|divider|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_5~4_combout\ = (\Div4|auto_generated|divider|divider|op_5~3\ & ((((\Div4|auto_generated|divider|divider|StageOut[26]~63_combout\) # (\Div4|auto_generated|divider|divider|StageOut[26]~78_combout\))))) # 
-- (!\Div4|auto_generated|divider|divider|op_5~3\ & ((\Div4|auto_generated|divider|divider|StageOut[26]~63_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[26]~78_combout\) # (GND))))
-- \Div4|auto_generated|divider|divider|op_5~5\ = CARRY((\Div4|auto_generated|divider|divider|StageOut[26]~63_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[26]~78_combout\) # (!\Div4|auto_generated|divider|divider|op_5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[26]~63_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[26]~78_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_5~3\,
	combout => \Div4|auto_generated|divider|divider|op_5~4_combout\,
	cout => \Div4|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X6_Y21_N10
\Div4|auto_generated|divider|divider|op_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_5~6_combout\ = (\Div4|auto_generated|divider|divider|StageOut[27]~72_combout\ & (((!\Div4|auto_generated|divider|divider|op_5~5\)))) # (!\Div4|auto_generated|divider|divider|StageOut[27]~72_combout\ & 
-- ((\Div4|auto_generated|divider|divider|StageOut[27]~62_combout\ & (!\Div4|auto_generated|divider|divider|op_5~5\)) # (!\Div4|auto_generated|divider|divider|StageOut[27]~62_combout\ & ((\Div4|auto_generated|divider|divider|op_5~5\) # (GND)))))
-- \Div4|auto_generated|divider|divider|op_5~7\ = CARRY(((!\Div4|auto_generated|divider|divider|StageOut[27]~72_combout\ & !\Div4|auto_generated|divider|divider|StageOut[27]~62_combout\)) # (!\Div4|auto_generated|divider|divider|op_5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[27]~72_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[27]~62_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_5~5\,
	combout => \Div4|auto_generated|divider|divider|op_5~6_combout\,
	cout => \Div4|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X6_Y21_N12
\Div4|auto_generated|divider|divider|op_5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_5~9_cout\ = CARRY((\Div4|auto_generated|divider|divider|StageOut[28]~71_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[28]~61_combout\) # (!\Div4|auto_generated|divider|divider|op_5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[28]~71_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[28]~61_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|op_5~7\,
	cout => \Div4|auto_generated|divider|divider|op_5~9_cout\);

-- Location: LCCOMB_X6_Y21_N14
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

-- Location: LCCOMB_X7_Y21_N24
\Div4|auto_generated|divider|divider|StageOut[33]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[33]~73_combout\ = (\Div4|auto_generated|divider|divider|op_5~10_combout\ & ((\Div4|auto_generated|divider|divider|StageOut[27]~72_combout\) # ((!\Div4|auto_generated|divider|divider|op_4~10_combout\ & 
-- \Div4|auto_generated|divider|divider|op_4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_5~10_combout\,
	datab => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div4|auto_generated|divider|divider|op_4~4_combout\,
	datad => \Div4|auto_generated|divider|divider|StageOut[27]~72_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[33]~73_combout\);

-- Location: LCCOMB_X7_Y21_N28
\Div4|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\Div4|auto_generated|divider|divider|op_5~6_combout\ & !\Div4|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_5~6_combout\,
	datad => \Div4|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X7_Y21_N26
\Div4|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\Div4|auto_generated|divider|divider|op_5~4_combout\ & !\Div4|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_5~4_combout\,
	datad => \Div4|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X6_Y21_N28
\Div4|auto_generated|divider|divider|StageOut[32]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[32]~74_combout\ = (\Div4|auto_generated|divider|divider|op_5~10_combout\ & ((\Div4|auto_generated|divider|divider|StageOut[26]~78_combout\) # ((!\Div4|auto_generated|divider|divider|op_4~10_combout\ & 
-- \Div4|auto_generated|divider|divider|op_4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Div4|auto_generated|divider|divider|op_4~2_combout\,
	datac => \Div4|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div4|auto_generated|divider|divider|StageOut[26]~78_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[32]~74_combout\);

-- Location: LCCOMB_X7_Y21_N18
\Div4|auto_generated|divider|divider|StageOut[31]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[31]~79_combout\ = (\Div4|auto_generated|divider|divider|op_5~10_combout\ & ((\Div4|auto_generated|divider|divider|op_4~10_combout\ & ((\r_in_filter8[2]~input_o\))) # 
-- (!\Div4|auto_generated|divider|divider|op_4~10_combout\ & (\Div4|auto_generated|divider|divider|op_4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|op_4~0_combout\,
	datab => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	datac => \r_in_filter8[2]~input_o\,
	datad => \Div4|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X7_Y21_N20
\Div4|auto_generated|divider|divider|StageOut[31]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[31]~68_combout\ = (\Div4|auto_generated|divider|divider|op_5~2_combout\ & !\Div4|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_5~2_combout\,
	datad => \Div4|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[31]~68_combout\);

-- Location: LCCOMB_X7_Y21_N30
\Div4|auto_generated|divider|divider|StageOut[30]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[30]~70_combout\ = (\Div4|auto_generated|divider|divider|op_5~0_combout\ & !\Div4|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_5~0_combout\,
	datad => \Div4|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[30]~70_combout\);

-- Location: LCCOMB_X6_Y21_N30
\Div4|auto_generated|divider|divider|StageOut[30]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[30]~69_combout\ = (\Div4|auto_generated|divider|divider|op_5~10_combout\ & \r_in_filter8[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_5~10_combout\,
	datad => \r_in_filter8[1]~input_o\,
	combout => \Div4|auto_generated|divider|divider|StageOut[30]~69_combout\);

-- Location: IOIBUF_X0_Y23_N8
\r_in_filter8[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter8(0),
	o => \r_in_filter8[0]~input_o\);

-- Location: LCCOMB_X7_Y21_N6
\r_aux8[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux8[0]~2_cout\ = CARRY(\r_in_filter8[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter8[0]~input_o\,
	datad => VCC,
	cout => \r_aux8[0]~2_cout\);

-- Location: LCCOMB_X7_Y21_N8
\r_aux8[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux8[0]~4_cout\ = CARRY((!\Div4|auto_generated|divider|divider|StageOut[30]~70_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[30]~69_combout\ & !\r_aux8[0]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[30]~70_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datad => VCC,
	cin => \r_aux8[0]~2_cout\,
	cout => \r_aux8[0]~4_cout\);

-- Location: LCCOMB_X7_Y21_N10
\r_aux8[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux8[0]~6_cout\ = CARRY((\Div4|auto_generated|divider|divider|StageOut[31]~79_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[31]~68_combout\) # (!\r_aux8[0]~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datad => VCC,
	cin => \r_aux8[0]~4_cout\,
	cout => \r_aux8[0]~6_cout\);

-- Location: LCCOMB_X7_Y21_N12
\r_aux8[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux8[0]~8_cout\ = CARRY(((!\Div4|auto_generated|divider|divider|StageOut[32]~67_combout\ & !\Div4|auto_generated|divider|divider|StageOut[32]~74_combout\)) # (!\r_aux8[0]~6_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[32]~74_combout\,
	datad => VCC,
	cin => \r_aux8[0]~6_cout\,
	cout => \r_aux8[0]~8_cout\);

-- Location: LCCOMB_X7_Y21_N14
\r_aux8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux8[0]~10_cout\ = CARRY((\Div4|auto_generated|divider|divider|StageOut[33]~73_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[33]~66_combout\) # (!\r_aux8[0]~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[33]~73_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datad => VCC,
	cin => \r_aux8[0]~8_cout\,
	cout => \r_aux8[0]~10_cout\);

-- Location: LCCOMB_X7_Y21_N16
\r_aux8[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux8[0]~11_combout\ = \r_aux8[0]~10_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \r_aux8[0]~10_cout\,
	combout => \r_aux8[0]~11_combout\);

-- Location: FF_X7_Y21_N5
\r_aux8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \r_aux8[0]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux8(0));

-- Location: IOIBUF_X0_Y11_N15
\r_in_filter5[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter5(5),
	o => \r_in_filter5[5]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\r_in_filter5[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter5(4),
	o => \r_in_filter5[4]~input_o\);

-- Location: LCCOMB_X19_Y19_N20
\Div2|auto_generated|divider|divider|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_2~0_combout\ = \r_in_filter5[4]~input_o\ $ (VCC)
-- \Div2|auto_generated|divider|divider|op_2~1\ = CARRY(\r_in_filter5[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter5[4]~input_o\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|op_2~0_combout\,
	cout => \Div2|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X19_Y19_N22
\Div2|auto_generated|divider|divider|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_2~2_combout\ = (\r_in_filter5[5]~input_o\ & (\Div2|auto_generated|divider|divider|op_2~1\ & VCC)) # (!\r_in_filter5[5]~input_o\ & (!\Div2|auto_generated|divider|divider|op_2~1\))
-- \Div2|auto_generated|divider|divider|op_2~3\ = CARRY((!\r_in_filter5[5]~input_o\ & !\Div2|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter5[5]~input_o\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_2~1\,
	combout => \Div2|auto_generated|divider|divider|op_2~2_combout\,
	cout => \Div2|auto_generated|divider|divider|op_2~3\);

-- Location: IOIBUF_X18_Y24_N15
\r_in_filter5[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter5(7),
	o => \r_in_filter5[7]~input_o\);

-- Location: IOIBUF_X34_Y19_N8
\r_in_filter5[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter5(6),
	o => \r_in_filter5[6]~input_o\);

-- Location: LCCOMB_X19_Y19_N24
\Div2|auto_generated|divider|divider|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_2~4_combout\ = (\r_in_filter5[6]~input_o\ & ((GND) # (!\Div2|auto_generated|divider|divider|op_2~3\))) # (!\r_in_filter5[6]~input_o\ & (\Div2|auto_generated|divider|divider|op_2~3\ $ (GND)))
-- \Div2|auto_generated|divider|divider|op_2~5\ = CARRY((\r_in_filter5[6]~input_o\) # (!\Div2|auto_generated|divider|divider|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter5[6]~input_o\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_2~3\,
	combout => \Div2|auto_generated|divider|divider|op_2~4_combout\,
	cout => \Div2|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X19_Y19_N26
\Div2|auto_generated|divider|divider|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_2~6_combout\ = (\r_in_filter5[7]~input_o\ & (!\Div2|auto_generated|divider|divider|op_2~5\)) # (!\r_in_filter5[7]~input_o\ & ((\Div2|auto_generated|divider|divider|op_2~5\) # (GND)))
-- \Div2|auto_generated|divider|divider|op_2~7\ = CARRY((!\Div2|auto_generated|divider|divider|op_2~5\) # (!\r_in_filter5[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter5[7]~input_o\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_2~5\,
	combout => \Div2|auto_generated|divider|divider|op_2~6_combout\,
	cout => \Div2|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X19_Y19_N28
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

-- Location: LCCOMB_X19_Y19_N6
\Div2|auto_generated|divider|divider|StageOut[16]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[16]~77_combout\ = (\Div2|auto_generated|divider|divider|op_2~2_combout\ & !\Div2|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|op_2~2_combout\,
	datad => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[16]~77_combout\);

-- Location: LCCOMB_X19_Y19_N8
\Div2|auto_generated|divider|divider|StageOut[16]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[16]~76_combout\ = (\r_in_filter5[5]~input_o\ & \Div2|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_in_filter5[5]~input_o\,
	datad => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[16]~76_combout\);

-- Location: LCCOMB_X19_Y19_N2
\Div2|auto_generated|divider|divider|StageOut[15]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[15]~79_combout\ = (\Div2|auto_generated|divider|divider|op_2~0_combout\ & !\Div2|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|op_2~0_combout\,
	datad => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[15]~79_combout\);

-- Location: LCCOMB_X19_Y19_N12
\Div2|auto_generated|divider|divider|StageOut[15]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[15]~78_combout\ = (\r_in_filter5[4]~input_o\ & \Div2|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_in_filter5[4]~input_o\,
	datad => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[15]~78_combout\);

-- Location: IOIBUF_X16_Y24_N22
\r_in_filter5[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter5(3),
	o => \r_in_filter5[3]~input_o\);

-- Location: LCCOMB_X18_Y19_N14
\Div2|auto_generated|divider|divider|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_3~0_combout\ = \r_in_filter5[3]~input_o\ $ (VCC)
-- \Div2|auto_generated|divider|divider|op_3~1\ = CARRY(\r_in_filter5[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter5[3]~input_o\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|op_3~0_combout\,
	cout => \Div2|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X18_Y19_N16
\Div2|auto_generated|divider|divider|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_3~2_combout\ = (\Div2|auto_generated|divider|divider|op_3~1\ & (((\Div2|auto_generated|divider|divider|StageOut[15]~79_combout\) # (\Div2|auto_generated|divider|divider|StageOut[15]~78_combout\)))) # 
-- (!\Div2|auto_generated|divider|divider|op_3~1\ & (!\Div2|auto_generated|divider|divider|StageOut[15]~79_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[15]~78_combout\)))
-- \Div2|auto_generated|divider|divider|op_3~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[15]~79_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[15]~78_combout\ & !\Div2|auto_generated|divider|divider|op_3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[15]~79_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[15]~78_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_3~1\,
	combout => \Div2|auto_generated|divider|divider|op_3~2_combout\,
	cout => \Div2|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X18_Y19_N18
\Div2|auto_generated|divider|divider|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_3~4_combout\ = (\Div2|auto_generated|divider|divider|op_3~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[16]~77_combout\) # (\Div2|auto_generated|divider|divider|StageOut[16]~76_combout\))))) # 
-- (!\Div2|auto_generated|divider|divider|op_3~3\ & ((\Div2|auto_generated|divider|divider|StageOut[16]~77_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[16]~76_combout\) # (GND))))
-- \Div2|auto_generated|divider|divider|op_3~5\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[16]~77_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[16]~76_combout\) # (!\Div2|auto_generated|divider|divider|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[16]~77_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[16]~76_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_3~3\,
	combout => \Div2|auto_generated|divider|divider|op_3~4_combout\,
	cout => \Div2|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X19_Y19_N4
\Div2|auto_generated|divider|divider|StageOut[18]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[18]~72_combout\ = (\r_in_filter5[7]~input_o\ & \Div2|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_in_filter5[7]~input_o\,
	datad => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[18]~72_combout\);

-- Location: LCCOMB_X19_Y19_N10
\Div2|auto_generated|divider|divider|StageOut[18]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[18]~73_combout\ = (\Div2|auto_generated|divider|divider|op_2~6_combout\ & !\Div2|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|op_2~6_combout\,
	datad => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[18]~73_combout\);

-- Location: LCCOMB_X19_Y19_N30
\Div2|auto_generated|divider|divider|StageOut[17]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[17]~75_combout\ = (\Div2|auto_generated|divider|divider|op_2~4_combout\ & !\Div2|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|op_2~4_combout\,
	datad => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[17]~75_combout\);

-- Location: LCCOMB_X19_Y19_N16
\Div2|auto_generated|divider|divider|StageOut[17]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[17]~74_combout\ = (\Div2|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter5[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	datac => \r_in_filter5[6]~input_o\,
	combout => \Div2|auto_generated|divider|divider|StageOut[17]~74_combout\);

-- Location: LCCOMB_X18_Y19_N20
\Div2|auto_generated|divider|divider|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_3~6_combout\ = (\Div2|auto_generated|divider|divider|StageOut[17]~75_combout\ & (((!\Div2|auto_generated|divider|divider|op_3~5\)))) # (!\Div2|auto_generated|divider|divider|StageOut[17]~75_combout\ & 
-- ((\Div2|auto_generated|divider|divider|StageOut[17]~74_combout\ & (!\Div2|auto_generated|divider|divider|op_3~5\)) # (!\Div2|auto_generated|divider|divider|StageOut[17]~74_combout\ & ((\Div2|auto_generated|divider|divider|op_3~5\) # (GND)))))
-- \Div2|auto_generated|divider|divider|op_3~7\ = CARRY(((!\Div2|auto_generated|divider|divider|StageOut[17]~75_combout\ & !\Div2|auto_generated|divider|divider|StageOut[17]~74_combout\)) # (!\Div2|auto_generated|divider|divider|op_3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[17]~75_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[17]~74_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_3~5\,
	combout => \Div2|auto_generated|divider|divider|op_3~6_combout\,
	cout => \Div2|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X18_Y19_N22
\Div2|auto_generated|divider|divider|op_3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_3~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[18]~72_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[18]~73_combout\) # (!\Div2|auto_generated|divider|divider|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[18]~72_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[18]~73_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_3~7\,
	cout => \Div2|auto_generated|divider|divider|op_3~9_cout\);

-- Location: LCCOMB_X18_Y19_N24
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

-- Location: LCCOMB_X17_Y19_N28
\Div2|auto_generated|divider|divider|StageOut[22]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[22]~81_combout\ = (\Div2|auto_generated|divider|divider|op_3~4_combout\ & !\Div2|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|op_3~4_combout\,
	datad => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[22]~81_combout\);

-- Location: LCCOMB_X19_Y19_N14
\Div2|auto_generated|divider|divider|StageOut[22]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[22]~112_combout\ = (\Div2|auto_generated|divider|divider|op_3~10_combout\ & ((\Div2|auto_generated|divider|divider|op_2~8_combout\ & (\r_in_filter5[5]~input_o\)) # 
-- (!\Div2|auto_generated|divider|divider|op_2~8_combout\ & ((\Div2|auto_generated|divider|divider|op_2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter5[5]~input_o\,
	datab => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	datac => \Div2|auto_generated|divider|divider|op_2~2_combout\,
	datad => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[22]~112_combout\);

-- Location: LCCOMB_X19_Y19_N18
\Div2|auto_generated|divider|divider|StageOut[21]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[21]~113_combout\ = (\Div2|auto_generated|divider|divider|op_3~10_combout\ & ((\Div2|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter5[4]~input_o\))) # 
-- (!\Div2|auto_generated|divider|divider|op_2~8_combout\ & (\Div2|auto_generated|divider|divider|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	datab => \Div2|auto_generated|divider|divider|op_2~0_combout\,
	datac => \r_in_filter5[4]~input_o\,
	datad => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[21]~113_combout\);

-- Location: LCCOMB_X17_Y19_N18
\Div2|auto_generated|divider|divider|StageOut[21]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[21]~82_combout\ = (\Div2|auto_generated|divider|divider|op_3~2_combout\ & !\Div2|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|op_3~2_combout\,
	datad => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[21]~82_combout\);

-- Location: LCCOMB_X18_Y19_N6
\Div2|auto_generated|divider|divider|StageOut[20]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[20]~83_combout\ = (\r_in_filter5[3]~input_o\ & \Div2|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_in_filter5[3]~input_o\,
	datad => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[20]~83_combout\);

-- Location: LCCOMB_X18_Y19_N12
\Div2|auto_generated|divider|divider|StageOut[20]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[20]~84_combout\ = (\Div2|auto_generated|divider|divider|op_3~0_combout\ & !\Div2|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|op_3~0_combout\,
	datad => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[20]~84_combout\);

-- Location: IOIBUF_X16_Y24_N8
\r_in_filter5[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter5(2),
	o => \r_in_filter5[2]~input_o\);

-- Location: LCCOMB_X17_Y19_N6
\Div2|auto_generated|divider|divider|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_4~0_combout\ = \r_in_filter5[2]~input_o\ $ (VCC)
-- \Div2|auto_generated|divider|divider|op_4~1\ = CARRY(\r_in_filter5[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter5[2]~input_o\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|op_4~0_combout\,
	cout => \Div2|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X17_Y19_N8
\Div2|auto_generated|divider|divider|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_4~2_combout\ = (\Div2|auto_generated|divider|divider|op_4~1\ & (((\Div2|auto_generated|divider|divider|StageOut[20]~83_combout\) # (\Div2|auto_generated|divider|divider|StageOut[20]~84_combout\)))) # 
-- (!\Div2|auto_generated|divider|divider|op_4~1\ & (!\Div2|auto_generated|divider|divider|StageOut[20]~83_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[20]~84_combout\)))
-- \Div2|auto_generated|divider|divider|op_4~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[20]~83_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[20]~84_combout\ & !\Div2|auto_generated|divider|divider|op_4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[20]~83_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[20]~84_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_4~1\,
	combout => \Div2|auto_generated|divider|divider|op_4~2_combout\,
	cout => \Div2|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X17_Y19_N10
\Div2|auto_generated|divider|divider|op_4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_4~4_combout\ = (\Div2|auto_generated|divider|divider|op_4~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[21]~113_combout\) # (\Div2|auto_generated|divider|divider|StageOut[21]~82_combout\))))) # 
-- (!\Div2|auto_generated|divider|divider|op_4~3\ & ((\Div2|auto_generated|divider|divider|StageOut[21]~113_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[21]~82_combout\) # (GND))))
-- \Div2|auto_generated|divider|divider|op_4~5\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[21]~113_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[21]~82_combout\) # (!\Div2|auto_generated|divider|divider|op_4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[21]~113_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[21]~82_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_4~3\,
	combout => \Div2|auto_generated|divider|divider|op_4~4_combout\,
	cout => \Div2|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X17_Y19_N12
\Div2|auto_generated|divider|divider|op_4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_4~6_combout\ = (\Div2|auto_generated|divider|divider|StageOut[22]~81_combout\ & (((!\Div2|auto_generated|divider|divider|op_4~5\)))) # (!\Div2|auto_generated|divider|divider|StageOut[22]~81_combout\ & 
-- ((\Div2|auto_generated|divider|divider|StageOut[22]~112_combout\ & (!\Div2|auto_generated|divider|divider|op_4~5\)) # (!\Div2|auto_generated|divider|divider|StageOut[22]~112_combout\ & ((\Div2|auto_generated|divider|divider|op_4~5\) # (GND)))))
-- \Div2|auto_generated|divider|divider|op_4~7\ = CARRY(((!\Div2|auto_generated|divider|divider|StageOut[22]~81_combout\ & !\Div2|auto_generated|divider|divider|StageOut[22]~112_combout\)) # (!\Div2|auto_generated|divider|divider|op_4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[22]~81_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[22]~112_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_4~5\,
	combout => \Div2|auto_generated|divider|divider|op_4~6_combout\,
	cout => \Div2|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X18_Y19_N4
\Div2|auto_generated|divider|divider|StageOut[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[23]~80_combout\ = (\Div2|auto_generated|divider|divider|op_3~6_combout\ & !\Div2|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|op_3~6_combout\,
	datad => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[23]~80_combout\);

-- Location: LCCOMB_X19_Y19_N0
\Div2|auto_generated|divider|divider|StageOut[23]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[23]~111_combout\ = (\Div2|auto_generated|divider|divider|op_3~10_combout\ & ((\Div2|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter5[6]~input_o\))) # 
-- (!\Div2|auto_generated|divider|divider|op_2~8_combout\ & (\Div2|auto_generated|divider|divider|op_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	datab => \Div2|auto_generated|divider|divider|op_2~4_combout\,
	datac => \r_in_filter5[6]~input_o\,
	datad => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[23]~111_combout\);

-- Location: LCCOMB_X17_Y19_N14
\Div2|auto_generated|divider|divider|op_4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_4~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[23]~80_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[23]~111_combout\) # (!\Div2|auto_generated|divider|divider|op_4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[23]~80_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[23]~111_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_4~7\,
	cout => \Div2|auto_generated|divider|divider|op_4~9_cout\);

-- Location: LCCOMB_X17_Y19_N16
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

-- Location: LCCOMB_X17_Y19_N4
\Div2|auto_generated|divider|divider|StageOut[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[28]~85_combout\ = (\Div2|auto_generated|divider|divider|op_4~6_combout\ & !\Div2|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_4~6_combout\,
	datad => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[28]~85_combout\);

-- Location: LCCOMB_X17_Y19_N26
\Div2|auto_generated|divider|divider|StageOut[28]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[28]~103_combout\ = (\Div2|auto_generated|divider|divider|op_4~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[22]~112_combout\) # ((\Div2|auto_generated|divider|divider|op_3~4_combout\ & 
-- !\Div2|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Div2|auto_generated|divider|divider|op_3~4_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[22]~112_combout\,
	datad => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[28]~103_combout\);

-- Location: LCCOMB_X17_Y19_N2
\Div2|auto_generated|divider|divider|StageOut[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[27]~86_combout\ = (\Div2|auto_generated|divider|divider|op_4~4_combout\ & !\Div2|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_4~4_combout\,
	datad => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[27]~86_combout\);

-- Location: LCCOMB_X17_Y19_N0
\Div2|auto_generated|divider|divider|StageOut[27]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[27]~104_combout\ = (\Div2|auto_generated|divider|divider|op_4~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[21]~113_combout\) # ((\Div2|auto_generated|divider|divider|op_3~2_combout\ & 
-- !\Div2|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Div2|auto_generated|divider|divider|op_3~2_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[21]~113_combout\,
	datad => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[27]~104_combout\);

-- Location: LCCOMB_X16_Y19_N0
\Div2|auto_generated|divider|divider|StageOut[26]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[26]~87_combout\ = (\Div2|auto_generated|divider|divider|op_4~2_combout\ & !\Div2|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|op_4~2_combout\,
	datad => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[26]~87_combout\);

-- Location: LCCOMB_X17_Y19_N22
\Div2|auto_generated|divider|divider|StageOut[26]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[26]~114_combout\ = (\Div2|auto_generated|divider|divider|op_4~10_combout\ & ((\Div2|auto_generated|divider|divider|op_3~10_combout\ & (\r_in_filter5[3]~input_o\)) # 
-- (!\Div2|auto_generated|divider|divider|op_3~10_combout\ & ((\Div2|auto_generated|divider|divider|op_3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter5[3]~input_o\,
	datab => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div2|auto_generated|divider|divider|op_3~0_combout\,
	datad => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[26]~114_combout\);

-- Location: LCCOMB_X16_Y19_N10
\Div2|auto_generated|divider|divider|StageOut[25]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[25]~89_combout\ = (\Div2|auto_generated|divider|divider|op_4~0_combout\ & !\Div2|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_4~0_combout\,
	datad => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[25]~89_combout\);

-- Location: LCCOMB_X17_Y19_N24
\Div2|auto_generated|divider|divider|StageOut[25]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[25]~88_combout\ = (\r_in_filter5[2]~input_o\ & \Div2|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter5[2]~input_o\,
	datad => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[25]~88_combout\);

-- Location: IOIBUF_X16_Y24_N15
\r_in_filter5[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter5(1),
	o => \r_in_filter5[1]~input_o\);

-- Location: LCCOMB_X16_Y19_N12
\Div2|auto_generated|divider|divider|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_5~0_combout\ = \r_in_filter5[1]~input_o\ $ (VCC)
-- \Div2|auto_generated|divider|divider|op_5~1\ = CARRY(\r_in_filter5[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter5[1]~input_o\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|op_5~0_combout\,
	cout => \Div2|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X16_Y19_N14
\Div2|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_5~2_combout\ = (\Div2|auto_generated|divider|divider|op_5~1\ & (((\Div2|auto_generated|divider|divider|StageOut[25]~89_combout\) # (\Div2|auto_generated|divider|divider|StageOut[25]~88_combout\)))) # 
-- (!\Div2|auto_generated|divider|divider|op_5~1\ & (!\Div2|auto_generated|divider|divider|StageOut[25]~89_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[25]~88_combout\)))
-- \Div2|auto_generated|divider|divider|op_5~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[25]~89_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[25]~88_combout\ & !\Div2|auto_generated|divider|divider|op_5~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[25]~89_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[25]~88_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_5~1\,
	combout => \Div2|auto_generated|divider|divider|op_5~2_combout\,
	cout => \Div2|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X16_Y19_N16
\Div2|auto_generated|divider|divider|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_5~4_combout\ = (\Div2|auto_generated|divider|divider|op_5~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[26]~87_combout\) # (\Div2|auto_generated|divider|divider|StageOut[26]~114_combout\))))) # 
-- (!\Div2|auto_generated|divider|divider|op_5~3\ & ((\Div2|auto_generated|divider|divider|StageOut[26]~87_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[26]~114_combout\) # (GND))))
-- \Div2|auto_generated|divider|divider|op_5~5\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[26]~87_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[26]~114_combout\) # (!\Div2|auto_generated|divider|divider|op_5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[26]~87_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[26]~114_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_5~3\,
	combout => \Div2|auto_generated|divider|divider|op_5~4_combout\,
	cout => \Div2|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X16_Y19_N18
\Div2|auto_generated|divider|divider|op_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_5~6_combout\ = (\Div2|auto_generated|divider|divider|StageOut[27]~86_combout\ & (((!\Div2|auto_generated|divider|divider|op_5~5\)))) # (!\Div2|auto_generated|divider|divider|StageOut[27]~86_combout\ & 
-- ((\Div2|auto_generated|divider|divider|StageOut[27]~104_combout\ & (!\Div2|auto_generated|divider|divider|op_5~5\)) # (!\Div2|auto_generated|divider|divider|StageOut[27]~104_combout\ & ((\Div2|auto_generated|divider|divider|op_5~5\) # (GND)))))
-- \Div2|auto_generated|divider|divider|op_5~7\ = CARRY(((!\Div2|auto_generated|divider|divider|StageOut[27]~86_combout\ & !\Div2|auto_generated|divider|divider|StageOut[27]~104_combout\)) # (!\Div2|auto_generated|divider|divider|op_5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[27]~86_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[27]~104_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_5~5\,
	combout => \Div2|auto_generated|divider|divider|op_5~6_combout\,
	cout => \Div2|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X16_Y19_N20
\Div2|auto_generated|divider|divider|op_5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_5~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[28]~85_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[28]~103_combout\) # (!\Div2|auto_generated|divider|divider|op_5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[28]~85_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[28]~103_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_5~7\,
	cout => \Div2|auto_generated|divider|divider|op_5~9_cout\);

-- Location: LCCOMB_X16_Y19_N22
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

-- Location: LCCOMB_X16_Y19_N24
\Div2|auto_generated|divider|divider|StageOut[33]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[33]~90_combout\ = (!\Div2|auto_generated|divider|divider|op_5~10_combout\ & \Div2|auto_generated|divider|divider|op_5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div2|auto_generated|divider|divider|op_5~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[33]~90_combout\);

-- Location: LCCOMB_X16_Y19_N6
\Div2|auto_generated|divider|divider|StageOut[33]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[33]~105_combout\ = (\Div2|auto_generated|divider|divider|op_5~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[27]~104_combout\) # ((\Div2|auto_generated|divider|divider|op_4~4_combout\ & 
-- !\Div2|auto_generated|divider|divider|op_4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_5~10_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[27]~104_combout\,
	datac => \Div2|auto_generated|divider|divider|op_4~4_combout\,
	datad => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[33]~105_combout\);

-- Location: LCCOMB_X16_Y19_N30
\Div2|auto_generated|divider|divider|StageOut[32]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[32]~91_combout\ = (!\Div2|auto_generated|divider|divider|op_5~10_combout\ & \Div2|auto_generated|divider|divider|op_5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div2|auto_generated|divider|divider|op_5~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[32]~91_combout\);

-- Location: LCCOMB_X16_Y19_N8
\Div2|auto_generated|divider|divider|StageOut[32]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[32]~106_combout\ = (\Div2|auto_generated|divider|divider|op_5~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[26]~114_combout\) # ((\Div2|auto_generated|divider|divider|op_4~2_combout\ & 
-- !\Div2|auto_generated|divider|divider|op_4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_5~10_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[26]~114_combout\,
	datac => \Div2|auto_generated|divider|divider|op_4~2_combout\,
	datad => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[32]~106_combout\);

-- Location: LCCOMB_X16_Y19_N4
\Div2|auto_generated|divider|divider|StageOut[31]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[31]~92_combout\ = (\Div2|auto_generated|divider|divider|op_5~2_combout\ & !\Div2|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|op_5~2_combout\,
	datac => \Div2|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[31]~92_combout\);

-- Location: LCCOMB_X16_Y19_N2
\Div2|auto_generated|divider|divider|StageOut[31]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[31]~115_combout\ = (\Div2|auto_generated|divider|divider|op_5~10_combout\ & ((\Div2|auto_generated|divider|divider|op_4~10_combout\ & ((\r_in_filter5[2]~input_o\))) # 
-- (!\Div2|auto_generated|divider|divider|op_4~10_combout\ & (\Div2|auto_generated|divider|divider|op_4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_4~0_combout\,
	datab => \r_in_filter5[2]~input_o\,
	datac => \Div2|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[31]~115_combout\);

-- Location: LCCOMB_X16_Y17_N30
\Div2|auto_generated|divider|divider|StageOut[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[30]~94_combout\ = (\Div2|auto_generated|divider|divider|op_5~0_combout\ & !\Div2|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|op_5~0_combout\,
	datad => \Div2|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[30]~94_combout\);

-- Location: LCCOMB_X16_Y17_N24
\Div2|auto_generated|divider|divider|StageOut[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[30]~93_combout\ = (\Div2|auto_generated|divider|divider|op_5~10_combout\ & \r_in_filter5[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|op_5~10_combout\,
	datad => \r_in_filter5[1]~input_o\,
	combout => \Div2|auto_generated|divider|divider|StageOut[30]~93_combout\);

-- Location: IOIBUF_X13_Y24_N8
\r_in_filter5[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter5(0),
	o => \r_in_filter5[0]~input_o\);

-- Location: LCCOMB_X16_Y17_N2
\Div2|auto_generated|divider|divider|op_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_6~0_combout\ = \r_in_filter5[0]~input_o\ $ (VCC)
-- \Div2|auto_generated|divider|divider|op_6~1\ = CARRY(\r_in_filter5[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter5[0]~input_o\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|op_6~0_combout\,
	cout => \Div2|auto_generated|divider|divider|op_6~1\);

-- Location: LCCOMB_X16_Y17_N4
\Div2|auto_generated|divider|divider|op_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_6~2_combout\ = (\Div2|auto_generated|divider|divider|op_6~1\ & (((\Div2|auto_generated|divider|divider|StageOut[30]~94_combout\) # (\Div2|auto_generated|divider|divider|StageOut[30]~93_combout\)))) # 
-- (!\Div2|auto_generated|divider|divider|op_6~1\ & (!\Div2|auto_generated|divider|divider|StageOut[30]~94_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[30]~93_combout\)))
-- \Div2|auto_generated|divider|divider|op_6~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[30]~94_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[30]~93_combout\ & !\Div2|auto_generated|divider|divider|op_6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[30]~94_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[30]~93_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_6~1\,
	combout => \Div2|auto_generated|divider|divider|op_6~2_combout\,
	cout => \Div2|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X16_Y17_N6
\Div2|auto_generated|divider|divider|op_6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_6~4_combout\ = (\Div2|auto_generated|divider|divider|op_6~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[31]~92_combout\) # (\Div2|auto_generated|divider|divider|StageOut[31]~115_combout\))))) # 
-- (!\Div2|auto_generated|divider|divider|op_6~3\ & ((\Div2|auto_generated|divider|divider|StageOut[31]~92_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[31]~115_combout\) # (GND))))
-- \Div2|auto_generated|divider|divider|op_6~5\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[31]~92_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[31]~115_combout\) # (!\Div2|auto_generated|divider|divider|op_6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[31]~92_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[31]~115_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_6~3\,
	combout => \Div2|auto_generated|divider|divider|op_6~4_combout\,
	cout => \Div2|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X16_Y17_N8
\Div2|auto_generated|divider|divider|op_6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_6~6_combout\ = (\Div2|auto_generated|divider|divider|StageOut[32]~91_combout\ & (((!\Div2|auto_generated|divider|divider|op_6~5\)))) # (!\Div2|auto_generated|divider|divider|StageOut[32]~91_combout\ & 
-- ((\Div2|auto_generated|divider|divider|StageOut[32]~106_combout\ & (!\Div2|auto_generated|divider|divider|op_6~5\)) # (!\Div2|auto_generated|divider|divider|StageOut[32]~106_combout\ & ((\Div2|auto_generated|divider|divider|op_6~5\) # (GND)))))
-- \Div2|auto_generated|divider|divider|op_6~7\ = CARRY(((!\Div2|auto_generated|divider|divider|StageOut[32]~91_combout\ & !\Div2|auto_generated|divider|divider|StageOut[32]~106_combout\)) # (!\Div2|auto_generated|divider|divider|op_6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[32]~91_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[32]~106_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_6~5\,
	combout => \Div2|auto_generated|divider|divider|op_6~6_combout\,
	cout => \Div2|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X16_Y17_N10
\Div2|auto_generated|divider|divider|op_6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_6~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[33]~90_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[33]~105_combout\) # (!\Div2|auto_generated|divider|divider|op_6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[33]~90_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[33]~105_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_6~7\,
	cout => \Div2|auto_generated|divider|divider|op_6~9_cout\);

-- Location: LCCOMB_X16_Y17_N12
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

-- Location: LCCOMB_X16_Y19_N26
\Div2|auto_generated|divider|divider|StageOut[38]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[38]~107_combout\ = (\Div2|auto_generated|divider|divider|op_6~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[32]~106_combout\) # ((!\Div2|auto_generated|divider|divider|op_5~10_combout\ & 
-- \Div2|auto_generated|divider|divider|op_5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_5~10_combout\,
	datab => \Div2|auto_generated|divider|divider|op_6~10_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[32]~106_combout\,
	datad => \Div2|auto_generated|divider|divider|op_5~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[38]~107_combout\);

-- Location: LCCOMB_X16_Y17_N28
\Div2|auto_generated|divider|divider|StageOut[38]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[38]~95_combout\ = (\Div2|auto_generated|divider|divider|op_6~6_combout\ & !\Div2|auto_generated|divider|divider|op_6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|op_6~6_combout\,
	datad => \Div2|auto_generated|divider|divider|op_6~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[38]~95_combout\);

-- Location: LCCOMB_X16_Y19_N28
\Div2|auto_generated|divider|divider|StageOut[37]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[37]~108_combout\ = (\Div2|auto_generated|divider|divider|op_6~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[31]~115_combout\) # ((!\Div2|auto_generated|divider|divider|op_5~10_combout\ & 
-- \Div2|auto_generated|divider|divider|op_5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_5~10_combout\,
	datab => \Div2|auto_generated|divider|divider|op_6~10_combout\,
	datac => \Div2|auto_generated|divider|divider|op_5~2_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[31]~115_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[37]~108_combout\);

-- Location: LCCOMB_X17_Y17_N0
\Div2|auto_generated|divider|divider|StageOut[37]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[37]~96_combout\ = (\Div2|auto_generated|divider|divider|op_6~4_combout\ & !\Div2|auto_generated|divider|divider|op_6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|op_6~4_combout\,
	datad => \Div2|auto_generated|divider|divider|op_6~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[37]~96_combout\);

-- Location: LCCOMB_X16_Y17_N26
\Div2|auto_generated|divider|divider|StageOut[36]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[36]~116_combout\ = (\Div2|auto_generated|divider|divider|op_6~10_combout\ & ((\Div2|auto_generated|divider|divider|op_5~10_combout\ & ((\r_in_filter5[1]~input_o\))) # 
-- (!\Div2|auto_generated|divider|divider|op_5~10_combout\ & (\Div2|auto_generated|divider|divider|op_5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_6~10_combout\,
	datab => \Div2|auto_generated|divider|divider|op_5~10_combout\,
	datac => \Div2|auto_generated|divider|divider|op_5~0_combout\,
	datad => \r_in_filter5[1]~input_o\,
	combout => \Div2|auto_generated|divider|divider|StageOut[36]~116_combout\);

-- Location: LCCOMB_X16_Y17_N18
\Div2|auto_generated|divider|divider|StageOut[36]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[36]~97_combout\ = (\Div2|auto_generated|divider|divider|op_6~2_combout\ & !\Div2|auto_generated|divider|divider|op_6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|op_6~2_combout\,
	datad => \Div2|auto_generated|divider|divider|op_6~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[36]~97_combout\);

-- Location: LCCOMB_X16_Y17_N0
\Div2|auto_generated|divider|divider|StageOut[35]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[35]~98_combout\ = (\r_in_filter5[0]~input_o\ & \Div2|auto_generated|divider|divider|op_6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_in_filter5[0]~input_o\,
	datad => \Div2|auto_generated|divider|divider|op_6~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[35]~98_combout\);

-- Location: LCCOMB_X16_Y17_N22
\Div2|auto_generated|divider|divider|StageOut[35]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[35]~99_combout\ = (\Div2|auto_generated|divider|divider|op_6~0_combout\ & !\Div2|auto_generated|divider|divider|op_6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|op_6~0_combout\,
	datad => \Div2|auto_generated|divider|divider|op_6~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[35]~99_combout\);

-- Location: LCCOMB_X17_Y17_N18
\Div2|auto_generated|divider|divider|op_7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_7~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[35]~98_combout\) # (\Div2|auto_generated|divider|divider|StageOut[35]~99_combout\)))
-- \Div2|auto_generated|divider|divider|op_7~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[35]~98_combout\) # (\Div2|auto_generated|divider|divider|StageOut[35]~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[35]~98_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[35]~99_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|op_7~0_combout\,
	cout => \Div2|auto_generated|divider|divider|op_7~1\);

-- Location: LCCOMB_X17_Y17_N20
\Div2|auto_generated|divider|divider|op_7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_7~2_combout\ = (\Div2|auto_generated|divider|divider|op_7~1\ & (((\Div2|auto_generated|divider|divider|StageOut[36]~116_combout\) # (\Div2|auto_generated|divider|divider|StageOut[36]~97_combout\)))) # 
-- (!\Div2|auto_generated|divider|divider|op_7~1\ & (!\Div2|auto_generated|divider|divider|StageOut[36]~116_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[36]~97_combout\)))
-- \Div2|auto_generated|divider|divider|op_7~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[36]~116_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[36]~97_combout\ & !\Div2|auto_generated|divider|divider|op_7~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[36]~116_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[36]~97_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_7~1\,
	combout => \Div2|auto_generated|divider|divider|op_7~2_combout\,
	cout => \Div2|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X17_Y17_N22
\Div2|auto_generated|divider|divider|op_7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_7~4_combout\ = (\Div2|auto_generated|divider|divider|op_7~3\ & (((\Div2|auto_generated|divider|divider|StageOut[37]~108_combout\) # (\Div2|auto_generated|divider|divider|StageOut[37]~96_combout\)))) # 
-- (!\Div2|auto_generated|divider|divider|op_7~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[37]~108_combout\) # (\Div2|auto_generated|divider|divider|StageOut[37]~96_combout\)))))
-- \Div2|auto_generated|divider|divider|op_7~5\ = CARRY((!\Div2|auto_generated|divider|divider|op_7~3\ & ((\Div2|auto_generated|divider|divider|StageOut[37]~108_combout\) # (\Div2|auto_generated|divider|divider|StageOut[37]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[37]~108_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[37]~96_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_7~3\,
	combout => \Div2|auto_generated|divider|divider|op_7~4_combout\,
	cout => \Div2|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X17_Y17_N24
\Div2|auto_generated|divider|divider|op_7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_7~7_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[38]~107_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[38]~95_combout\ & !\Div2|auto_generated|divider|divider|op_7~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[38]~107_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[38]~95_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_7~5\,
	cout => \Div2|auto_generated|divider|divider|op_7~7_cout\);

-- Location: LCCOMB_X17_Y17_N26
\Div2|auto_generated|divider|divider|op_7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_7~8_combout\ = \Div2|auto_generated|divider|divider|op_7~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|op_7~7_cout\,
	combout => \Div2|auto_generated|divider|divider|op_7~8_combout\);

-- Location: LCCOMB_X17_Y17_N12
\Div2|auto_generated|divider|divider|StageOut[43]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[43]~109_combout\ = (\Div2|auto_generated|divider|divider|op_7~8_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[37]~108_combout\) # ((\Div2|auto_generated|divider|divider|op_6~4_combout\ & 
-- !\Div2|auto_generated|divider|divider|op_6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_7~8_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[37]~108_combout\,
	datac => \Div2|auto_generated|divider|divider|op_6~4_combout\,
	datad => \Div2|auto_generated|divider|divider|op_6~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[43]~109_combout\);

-- Location: LCCOMB_X17_Y17_N16
\Div2|auto_generated|divider|divider|StageOut[43]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[43]~100_combout\ = (\Div2|auto_generated|divider|divider|op_7~4_combout\ & !\Div2|auto_generated|divider|divider|op_7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_7~4_combout\,
	datac => \Div2|auto_generated|divider|divider|op_7~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[43]~100_combout\);

-- Location: LCCOMB_X17_Y17_N30
\Div2|auto_generated|divider|divider|StageOut[42]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[42]~101_combout\ = (!\Div2|auto_generated|divider|divider|op_7~8_combout\ & \Div2|auto_generated|divider|divider|op_7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|op_7~8_combout\,
	datad => \Div2|auto_generated|divider|divider|op_7~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[42]~101_combout\);

-- Location: LCCOMB_X16_Y17_N20
\Div2|auto_generated|divider|divider|StageOut[42]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[42]~110_combout\ = (\Div2|auto_generated|divider|divider|op_7~8_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[36]~116_combout\) # ((\Div2|auto_generated|divider|divider|op_6~2_combout\ & 
-- !\Div2|auto_generated|divider|divider|op_6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[36]~116_combout\,
	datab => \Div2|auto_generated|divider|divider|op_7~8_combout\,
	datac => \Div2|auto_generated|divider|divider|op_6~2_combout\,
	datad => \Div2|auto_generated|divider|divider|op_6~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[42]~110_combout\);

-- Location: LCCOMB_X16_Y17_N16
\Div2|auto_generated|divider|divider|StageOut[41]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[41]~117_combout\ = (\Div2|auto_generated|divider|divider|op_7~8_combout\ & ((\Div2|auto_generated|divider|divider|op_6~10_combout\ & ((\r_in_filter5[0]~input_o\))) # 
-- (!\Div2|auto_generated|divider|divider|op_6~10_combout\ & (\Div2|auto_generated|divider|divider|op_6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_6~10_combout\,
	datab => \Div2|auto_generated|divider|divider|op_6~0_combout\,
	datac => \r_in_filter5[0]~input_o\,
	datad => \Div2|auto_generated|divider|divider|op_7~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[41]~117_combout\);

-- Location: LCCOMB_X17_Y17_N28
\Div2|auto_generated|divider|divider|StageOut[41]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[41]~102_combout\ = (!\Div2|auto_generated|divider|divider|op_7~8_combout\ & \Div2|auto_generated|divider|divider|op_7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|op_7~8_combout\,
	datad => \Div2|auto_generated|divider|divider|op_7~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[41]~102_combout\);

-- Location: LCCOMB_X17_Y17_N2
\r_aux5[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux5[0]~2_cout\ = CARRY(!\Div2|auto_generated|divider|divider|op_7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|op_7~8_combout\,
	datad => VCC,
	cout => \r_aux5[0]~2_cout\);

-- Location: LCCOMB_X17_Y17_N4
\r_aux5[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux5[0]~4_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[41]~117_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[41]~102_combout\ & !\r_aux5[0]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[41]~117_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[41]~102_combout\,
	datad => VCC,
	cin => \r_aux5[0]~2_cout\,
	cout => \r_aux5[0]~4_cout\);

-- Location: LCCOMB_X17_Y17_N6
\r_aux5[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux5[0]~6_cout\ = CARRY((!\r_aux5[0]~4_cout\ & ((\Div2|auto_generated|divider|divider|StageOut[42]~101_combout\) # (\Div2|auto_generated|divider|divider|StageOut[42]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[42]~101_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[42]~110_combout\,
	datad => VCC,
	cin => \r_aux5[0]~4_cout\,
	cout => \r_aux5[0]~6_cout\);

-- Location: LCCOMB_X17_Y17_N8
\r_aux5[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux5[0]~8_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[43]~109_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[43]~100_combout\ & !\r_aux5[0]~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[43]~109_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[43]~100_combout\,
	datad => VCC,
	cin => \r_aux5[0]~6_cout\,
	cout => \r_aux5[0]~8_cout\);

-- Location: LCCOMB_X17_Y17_N10
\r_aux5[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux5[0]~9_combout\ = !\r_aux5[0]~8_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \r_aux5[0]~8_cout\,
	combout => \r_aux5[0]~9_combout\);

-- Location: FF_X18_Y17_N13
\r_aux5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \r_aux5[0]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux5(0));

-- Location: IOIBUF_X11_Y24_N15
\r_in_filter2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter2(4),
	o => \r_in_filter2[4]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\r_in_filter2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter2(7),
	o => \r_in_filter2[7]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\r_in_filter2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter2(6),
	o => \r_in_filter2[6]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\r_in_filter2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter2(5),
	o => \r_in_filter2[5]~input_o\);

-- Location: LCCOMB_X14_Y16_N6
\Div0|auto_generated|divider|divider|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~0_combout\ = \r_in_filter2[4]~input_o\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_2~1\ = CARRY(\r_in_filter2[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter2[4]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_2~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X14_Y16_N8
\Div0|auto_generated|divider|divider|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~2_combout\ = (\r_in_filter2[5]~input_o\ & (\Div0|auto_generated|divider|divider|op_2~1\ & VCC)) # (!\r_in_filter2[5]~input_o\ & (!\Div0|auto_generated|divider|divider|op_2~1\))
-- \Div0|auto_generated|divider|divider|op_2~3\ = CARRY((!\r_in_filter2[5]~input_o\ & !\Div0|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter2[5]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~1\,
	combout => \Div0|auto_generated|divider|divider|op_2~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X14_Y16_N10
\Div0|auto_generated|divider|divider|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~4_combout\ = (\r_in_filter2[6]~input_o\ & ((GND) # (!\Div0|auto_generated|divider|divider|op_2~3\))) # (!\r_in_filter2[6]~input_o\ & (\Div0|auto_generated|divider|divider|op_2~3\ $ (GND)))
-- \Div0|auto_generated|divider|divider|op_2~5\ = CARRY((\r_in_filter2[6]~input_o\) # (!\Div0|auto_generated|divider|divider|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter2[6]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~3\,
	combout => \Div0|auto_generated|divider|divider|op_2~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X14_Y16_N12
\Div0|auto_generated|divider|divider|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~6_combout\ = (\r_in_filter2[7]~input_o\ & (!\Div0|auto_generated|divider|divider|op_2~5\)) # (!\r_in_filter2[7]~input_o\ & ((\Div0|auto_generated|divider|divider|op_2~5\) # (GND)))
-- \Div0|auto_generated|divider|divider|op_2~7\ = CARRY((!\Div0|auto_generated|divider|divider|op_2~5\) # (!\r_in_filter2[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter2[7]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~5\,
	combout => \Div0|auto_generated|divider|divider|op_2~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X14_Y16_N14
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

-- Location: LCCOMB_X16_Y16_N8
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

-- Location: LCCOMB_X14_Y16_N28
\Div0|auto_generated|divider|divider|StageOut[18]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~48_combout\ = (\r_in_filter2[7]~input_o\ & \Div0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter2[7]~input_o\,
	datac => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~48_combout\);

-- Location: LCCOMB_X14_Y16_N18
\Div0|auto_generated|divider|divider|StageOut[17]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~50_combout\ = (\r_in_filter2[6]~input_o\ & \Div0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter2[6]~input_o\,
	datac => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~50_combout\);

-- Location: LCCOMB_X14_Y16_N0
\Div0|auto_generated|divider|divider|StageOut[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~51_combout\ = (!\Div0|auto_generated|divider|divider|op_2~8_combout\ & \Div0|auto_generated|divider|divider|op_2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~51_combout\);

-- Location: LCCOMB_X14_Y16_N30
\Div0|auto_generated|divider|divider|StageOut[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~53_combout\ = (\Div0|auto_generated|divider|divider|op_2~2_combout\ & !\Div0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_2~2_combout\,
	datac => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~53_combout\);

-- Location: LCCOMB_X14_Y16_N16
\Div0|auto_generated|divider|divider|StageOut[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~52_combout\ = (\r_in_filter2[5]~input_o\ & \Div0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter2[5]~input_o\,
	datac => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~52_combout\);

-- Location: LCCOMB_X14_Y16_N26
\Div0|auto_generated|divider|divider|StageOut[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~55_combout\ = (!\Div0|auto_generated|divider|divider|op_2~8_combout\ & \Div0|auto_generated|divider|divider|op_2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~55_combout\);

-- Location: LCCOMB_X14_Y16_N20
\Div0|auto_generated|divider|divider|StageOut[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~54_combout\ = (\r_in_filter2[4]~input_o\ & \Div0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter2[4]~input_o\,
	datac => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~54_combout\);

-- Location: IOIBUF_X18_Y24_N8
\r_in_filter2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter2(3),
	o => \r_in_filter2[3]~input_o\);

-- Location: LCCOMB_X18_Y16_N0
\Div0|auto_generated|divider|divider|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~0_combout\ = \r_in_filter2[3]~input_o\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_3~1\ = CARRY(\r_in_filter2[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter2[3]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_3~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X18_Y16_N2
\Div0|auto_generated|divider|divider|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~2_combout\ = (\Div0|auto_generated|divider|divider|op_3~1\ & (((\Div0|auto_generated|divider|divider|StageOut[15]~55_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~54_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_3~1\ & (!\Div0|auto_generated|divider|divider|StageOut[15]~55_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[15]~54_combout\)))
-- \Div0|auto_generated|divider|divider|op_3~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[15]~55_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[15]~54_combout\ & !\Div0|auto_generated|divider|divider|op_3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[15]~55_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[15]~54_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~1\,
	combout => \Div0|auto_generated|divider|divider|op_3~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X18_Y16_N4
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

-- Location: LCCOMB_X18_Y16_N6
\Div0|auto_generated|divider|divider|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[17]~50_combout\ & (((!\Div0|auto_generated|divider|divider|op_3~5\)))) # (!\Div0|auto_generated|divider|divider|StageOut[17]~50_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[17]~51_combout\ & (!\Div0|auto_generated|divider|divider|op_3~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[17]~51_combout\ & ((\Div0|auto_generated|divider|divider|op_3~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_3~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[17]~50_combout\ & !\Div0|auto_generated|divider|divider|StageOut[17]~51_combout\)) # (!\Div0|auto_generated|divider|divider|op_3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~50_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~51_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~5\,
	combout => \Div0|auto_generated|divider|divider|op_3~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X18_Y16_N8
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

-- Location: LCCOMB_X18_Y16_N10
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

-- Location: LCCOMB_X14_Y16_N24
\Div0|auto_generated|divider|divider|StageOut[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~77_combout\ = (\Div0|auto_generated|divider|divider|op_3~10_combout\ & ((\Div0|auto_generated|divider|divider|op_2~8_combout\ & (\r_in_filter2[4]~input_o\)) # 
-- (!\Div0|auto_generated|divider|divider|op_2~8_combout\ & ((\Div0|auto_generated|divider|divider|op_2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter2[4]~input_o\,
	datab => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	datac => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~77_combout\);

-- Location: LCCOMB_X18_Y16_N16
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

-- Location: LCCOMB_X18_Y16_N20
\Div0|auto_generated|divider|divider|StageOut[20]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~60_combout\ = (\Div0|auto_generated|divider|divider|op_3~0_combout\ & !\Div0|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_3~0_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~60_combout\);

-- Location: LCCOMB_X18_Y16_N26
\Div0|auto_generated|divider|divider|StageOut[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~59_combout\ = (\Div0|auto_generated|divider|divider|op_3~10_combout\ & \r_in_filter2[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	datad => \r_in_filter2[3]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~59_combout\);

-- Location: IOIBUF_X16_Y24_N1
\r_in_filter2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter2(2),
	o => \r_in_filter2[2]~input_o\);

-- Location: LCCOMB_X17_Y16_N4
\Div0|auto_generated|divider|divider|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~0_combout\ = \r_in_filter2[2]~input_o\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_4~1\ = CARRY(\r_in_filter2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter2[2]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_4~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X17_Y16_N6
\Div0|auto_generated|divider|divider|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~2_combout\ = (\Div0|auto_generated|divider|divider|op_4~1\ & (((\Div0|auto_generated|divider|divider|StageOut[20]~60_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~59_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_4~1\ & (!\Div0|auto_generated|divider|divider|StageOut[20]~60_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[20]~59_combout\)))
-- \Div0|auto_generated|divider|divider|op_4~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[20]~60_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[20]~59_combout\ & !\Div0|auto_generated|divider|divider|op_4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[20]~60_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[20]~59_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~1\,
	combout => \Div0|auto_generated|divider|divider|op_4~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X17_Y16_N8
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

-- Location: LCCOMB_X14_Y16_N4
\Div0|auto_generated|divider|divider|StageOut[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~75_combout\ = (\Div0|auto_generated|divider|divider|op_3~10_combout\ & ((\Div0|auto_generated|divider|divider|op_2~8_combout\ & (\r_in_filter2[6]~input_o\)) # 
-- (!\Div0|auto_generated|divider|divider|op_2~8_combout\ & ((\Div0|auto_generated|divider|divider|op_2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter2[6]~input_o\,
	datab => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	datac => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~75_combout\);

-- Location: LCCOMB_X18_Y16_N28
\Div0|auto_generated|divider|divider|StageOut[23]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~56_combout\ = (\Div0|auto_generated|divider|divider|op_3~6_combout\ & !\Div0|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~6_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~56_combout\);

-- Location: LCCOMB_X18_Y16_N30
\Div0|auto_generated|divider|divider|StageOut[22]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~57_combout\ = (!\Div0|auto_generated|divider|divider|op_3~10_combout\ & \Div0|auto_generated|divider|divider|op_3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~57_combout\);

-- Location: LCCOMB_X14_Y16_N2
\Div0|auto_generated|divider|divider|StageOut[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~76_combout\ = (\Div0|auto_generated|divider|divider|op_3~10_combout\ & ((\Div0|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter2[5]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|op_2~8_combout\ & (\Div0|auto_generated|divider|divider|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~2_combout\,
	datab => \r_in_filter2[5]~input_o\,
	datac => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~76_combout\);

-- Location: LCCOMB_X17_Y16_N10
\Div0|auto_generated|divider|divider|op_4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[22]~57_combout\ & (((!\Div0|auto_generated|divider|divider|op_4~5\)))) # (!\Div0|auto_generated|divider|divider|StageOut[22]~57_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[22]~76_combout\ & (!\Div0|auto_generated|divider|divider|op_4~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[22]~76_combout\ & ((\Div0|auto_generated|divider|divider|op_4~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_4~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[22]~57_combout\ & !\Div0|auto_generated|divider|divider|StageOut[22]~76_combout\)) # (!\Div0|auto_generated|divider|divider|op_4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~57_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[22]~76_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~5\,
	combout => \Div0|auto_generated|divider|divider|op_4~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X17_Y16_N12
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

-- Location: LCCOMB_X17_Y16_N14
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

-- Location: LCCOMB_X16_Y16_N0
\Div0|auto_generated|divider|divider|StageOut[27]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~72_combout\ = (\Div0|auto_generated|divider|divider|op_4~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((\Div0|auto_generated|divider|divider|op_3~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~2_combout\,
	datab => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[21]~77_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~72_combout\);

-- Location: LCCOMB_X16_Y16_N2
\Div0|auto_generated|divider|divider|StageOut[28]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~61_combout\ = (!\Div0|auto_generated|divider|divider|op_4~10_combout\ & \Div0|auto_generated|divider|divider|op_4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div0|auto_generated|divider|divider|op_4~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~61_combout\);

-- Location: LCCOMB_X18_Y16_N12
\Div0|auto_generated|divider|divider|StageOut[28]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~71_combout\ = (\Div0|auto_generated|divider|divider|op_4~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~76_combout\) # ((!\Div0|auto_generated|divider|divider|op_3~10_combout\ & 
-- \Div0|auto_generated|divider|divider|op_3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~76_combout\,
	datab => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~71_combout\);

-- Location: LCCOMB_X17_Y16_N0
\Div0|auto_generated|divider|divider|StageOut[27]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~62_combout\ = (!\Div0|auto_generated|divider|divider|op_4~10_combout\ & \Div0|auto_generated|divider|divider|op_4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div0|auto_generated|divider|divider|op_4~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~62_combout\);

-- Location: LCCOMB_X17_Y16_N30
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

-- Location: LCCOMB_X18_Y16_N18
\Div0|auto_generated|divider|divider|StageOut[26]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~78_combout\ = (\Div0|auto_generated|divider|divider|op_4~10_combout\ & ((\Div0|auto_generated|divider|divider|op_3~10_combout\ & ((\r_in_filter2[3]~input_o\))) # 
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
	datad => \r_in_filter2[3]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~78_combout\);

-- Location: LCCOMB_X17_Y16_N28
\Div0|auto_generated|divider|divider|StageOut[25]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~65_combout\ = (!\Div0|auto_generated|divider|divider|op_4~10_combout\ & \Div0|auto_generated|divider|divider|op_4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div0|auto_generated|divider|divider|op_4~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~65_combout\);

-- Location: LCCOMB_X18_Y16_N14
\Div0|auto_generated|divider|divider|StageOut[25]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~64_combout\ = (\r_in_filter2[2]~input_o\ & \Div0|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_in_filter2[2]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~64_combout\);

-- Location: IOIBUF_X0_Y18_N22
\r_in_filter2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter2(1),
	o => \r_in_filter2[1]~input_o\);

-- Location: LCCOMB_X17_Y16_N16
\Div0|auto_generated|divider|divider|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~0_combout\ = \r_in_filter2[1]~input_o\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_5~1\ = CARRY(\r_in_filter2[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter2[1]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_5~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X17_Y16_N18
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

-- Location: LCCOMB_X17_Y16_N20
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

-- Location: LCCOMB_X17_Y16_N22
\Div0|auto_generated|divider|divider|op_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[27]~72_combout\ & (((!\Div0|auto_generated|divider|divider|op_5~5\)))) # (!\Div0|auto_generated|divider|divider|StageOut[27]~72_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[27]~62_combout\ & (!\Div0|auto_generated|divider|divider|op_5~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[27]~62_combout\ & ((\Div0|auto_generated|divider|divider|op_5~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_5~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[27]~72_combout\ & !\Div0|auto_generated|divider|divider|StageOut[27]~62_combout\)) # (!\Div0|auto_generated|divider|divider|op_5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~72_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[27]~62_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~5\,
	combout => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X17_Y16_N24
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

-- Location: LCCOMB_X17_Y16_N26
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

-- Location: LCCOMB_X16_Y16_N26
\Div0|auto_generated|divider|divider|StageOut[33]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~73_combout\ = (\Div0|auto_generated|divider|divider|op_5~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~72_combout\) # ((\Div0|auto_generated|divider|divider|op_4~4_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_4~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[27]~72_combout\,
	datac => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~73_combout\);

-- Location: LCCOMB_X16_Y16_N4
\Div0|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\Div0|auto_generated|divider|divider|op_5~6_combout\ & !\Div0|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X17_Y16_N2
\Div0|auto_generated|divider|divider|StageOut[32]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~74_combout\ = (\Div0|auto_generated|divider|divider|op_5~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[26]~78_combout\) # ((\Div0|auto_generated|divider|divider|op_4~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_4~2_combout\,
	datab => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[26]~78_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~74_combout\);

-- Location: LCCOMB_X16_Y16_N30
\Div0|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\Div0|auto_generated|divider|divider|op_5~4_combout\ & !\Div0|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_5~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X16_Y16_N24
\Div0|auto_generated|divider|divider|StageOut[31]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~79_combout\ = (\Div0|auto_generated|divider|divider|op_5~10_combout\ & ((\Div0|auto_generated|divider|divider|op_4~10_combout\ & ((\r_in_filter2[2]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|op_4~10_combout\ & (\Div0|auto_generated|divider|divider|op_4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_4~0_combout\,
	datab => \r_in_filter2[2]~input_o\,
	datac => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X16_Y16_N28
\Div0|auto_generated|divider|divider|StageOut[31]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~68_combout\ = (\Div0|auto_generated|divider|divider|op_5~2_combout\ & !\Div0|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_5~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~68_combout\);

-- Location: LCCOMB_X16_Y16_N22
\Div0|auto_generated|divider|divider|StageOut[30]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~70_combout\ = (\Div0|auto_generated|divider|divider|op_5~0_combout\ & !\Div0|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_5~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~70_combout\);

-- Location: LCCOMB_X19_Y16_N0
\Div0|auto_generated|divider|divider|StageOut[30]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~69_combout\ = (\r_in_filter2[1]~input_o\ & \Div0|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_in_filter2[1]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~69_combout\);

-- Location: IOIBUF_X16_Y0_N1
\r_in_filter2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter2(0),
	o => \r_in_filter2[0]~input_o\);

-- Location: LCCOMB_X16_Y16_N10
\r_aux2[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux2[0]~2_cout\ = CARRY(\r_in_filter2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter2[0]~input_o\,
	datad => VCC,
	cout => \r_aux2[0]~2_cout\);

-- Location: LCCOMB_X16_Y16_N12
\r_aux2[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux2[0]~4_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[30]~70_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[30]~69_combout\ & !\r_aux2[0]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[30]~70_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datad => VCC,
	cin => \r_aux2[0]~2_cout\,
	cout => \r_aux2[0]~4_cout\);

-- Location: LCCOMB_X16_Y16_N14
\r_aux2[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux2[0]~6_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[31]~79_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[31]~68_combout\) # (!\r_aux2[0]~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datad => VCC,
	cin => \r_aux2[0]~4_cout\,
	cout => \r_aux2[0]~6_cout\);

-- Location: LCCOMB_X16_Y16_N16
\r_aux2[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux2[0]~8_cout\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[32]~74_combout\ & !\Div0|auto_generated|divider|divider|StageOut[32]~67_combout\)) # (!\r_aux2[0]~6_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[32]~74_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \r_aux2[0]~6_cout\,
	cout => \r_aux2[0]~8_cout\);

-- Location: LCCOMB_X16_Y16_N18
\r_aux2[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux2[0]~10_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[33]~73_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[33]~66_combout\) # (!\r_aux2[0]~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~73_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datad => VCC,
	cin => \r_aux2[0]~8_cout\,
	cout => \r_aux2[0]~10_cout\);

-- Location: LCCOMB_X16_Y16_N20
\r_aux2[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux2[0]~11_combout\ = \r_aux2[0]~10_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \r_aux2[0]~10_cout\,
	combout => \r_aux2[0]~11_combout\);

-- Location: FF_X18_Y17_N17
\r_aux2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \r_aux2[0]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux2(0));

-- Location: LCCOMB_X18_Y17_N16
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (r_aux5(0) & ((GND) # (!r_aux2(0)))) # (!r_aux5(0) & (r_aux2(0) $ (GND)))
-- \Add0~1\ = CARRY((r_aux5(0)) # (!r_aux2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_aux5(0),
	datab => r_aux2(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X11_Y24_N22
\r_in_filter4[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter4(4),
	o => \r_in_filter4[4]~input_o\);

-- Location: LCCOMB_X10_Y21_N14
\Div1|auto_generated|divider|divider|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_2~0_combout\ = \r_in_filter4[4]~input_o\ $ (VCC)
-- \Div1|auto_generated|divider|divider|op_2~1\ = CARRY(\r_in_filter4[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter4[4]~input_o\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|op_2~0_combout\,
	cout => \Div1|auto_generated|divider|divider|op_2~1\);

-- Location: IOIBUF_X9_Y24_N15
\r_in_filter4[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter4(7),
	o => \r_in_filter4[7]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\r_in_filter4[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter4(6),
	o => \r_in_filter4[6]~input_o\);

-- Location: IOIBUF_X9_Y24_N22
\r_in_filter4[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter4(5),
	o => \r_in_filter4[5]~input_o\);

-- Location: LCCOMB_X10_Y21_N16
\Div1|auto_generated|divider|divider|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_2~2_combout\ = (\r_in_filter4[5]~input_o\ & (\Div1|auto_generated|divider|divider|op_2~1\ & VCC)) # (!\r_in_filter4[5]~input_o\ & (!\Div1|auto_generated|divider|divider|op_2~1\))
-- \Div1|auto_generated|divider|divider|op_2~3\ = CARRY((!\r_in_filter4[5]~input_o\ & !\Div1|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter4[5]~input_o\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_2~1\,
	combout => \Div1|auto_generated|divider|divider|op_2~2_combout\,
	cout => \Div1|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X10_Y21_N18
\Div1|auto_generated|divider|divider|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_2~4_combout\ = (\r_in_filter4[6]~input_o\ & ((GND) # (!\Div1|auto_generated|divider|divider|op_2~3\))) # (!\r_in_filter4[6]~input_o\ & (\Div1|auto_generated|divider|divider|op_2~3\ $ (GND)))
-- \Div1|auto_generated|divider|divider|op_2~5\ = CARRY((\r_in_filter4[6]~input_o\) # (!\Div1|auto_generated|divider|divider|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter4[6]~input_o\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_2~3\,
	combout => \Div1|auto_generated|divider|divider|op_2~4_combout\,
	cout => \Div1|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X10_Y21_N20
\Div1|auto_generated|divider|divider|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_2~6_combout\ = (\r_in_filter4[7]~input_o\ & (!\Div1|auto_generated|divider|divider|op_2~5\)) # (!\r_in_filter4[7]~input_o\ & ((\Div1|auto_generated|divider|divider|op_2~5\) # (GND)))
-- \Div1|auto_generated|divider|divider|op_2~7\ = CARRY((!\Div1|auto_generated|divider|divider|op_2~5\) # (!\r_in_filter4[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter4[7]~input_o\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_2~5\,
	combout => \Div1|auto_generated|divider|divider|op_2~6_combout\,
	cout => \Div1|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X10_Y21_N22
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

-- Location: LCCOMB_X10_Y21_N26
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

-- Location: LCCOMB_X10_Y21_N24
\Div1|auto_generated|divider|divider|StageOut[18]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~48_combout\ = (\r_in_filter4[7]~input_o\ & \Div1|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter4[7]~input_o\,
	datac => \Div1|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~48_combout\);

-- Location: LCCOMB_X10_Y21_N12
\Div1|auto_generated|divider|divider|StageOut[17]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~50_combout\ = (\r_in_filter4[6]~input_o\ & \Div1|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter4[6]~input_o\,
	datac => \Div1|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~50_combout\);

-- Location: LCCOMB_X10_Y21_N30
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

-- Location: LCCOMB_X10_Y21_N10
\Div1|auto_generated|divider|divider|StageOut[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~53_combout\ = (!\Div1|auto_generated|divider|divider|op_2~8_combout\ & \Div1|auto_generated|divider|divider|op_2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div1|auto_generated|divider|divider|op_2~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~53_combout\);

-- Location: LCCOMB_X10_Y21_N28
\Div1|auto_generated|divider|divider|StageOut[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~52_combout\ = (\Div1|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter4[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter4[5]~input_o\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~52_combout\);

-- Location: LCCOMB_X11_Y21_N6
\Div1|auto_generated|divider|divider|StageOut[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~55_combout\ = (\Div1|auto_generated|divider|divider|op_2~0_combout\ & !\Div1|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_2~0_combout\,
	datad => \Div1|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~55_combout\);

-- Location: LCCOMB_X11_Y21_N4
\Div1|auto_generated|divider|divider|StageOut[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~54_combout\ = (\Div1|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter4[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|op_2~8_combout\,
	datac => \r_in_filter4[4]~input_o\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~54_combout\);

-- Location: IOIBUF_X11_Y24_N8
\r_in_filter4[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter4(3),
	o => \r_in_filter4[3]~input_o\);

-- Location: LCCOMB_X11_Y21_N14
\Div1|auto_generated|divider|divider|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_3~0_combout\ = \r_in_filter4[3]~input_o\ $ (VCC)
-- \Div1|auto_generated|divider|divider|op_3~1\ = CARRY(\r_in_filter4[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter4[3]~input_o\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|op_3~0_combout\,
	cout => \Div1|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X11_Y21_N16
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

-- Location: LCCOMB_X11_Y21_N18
\Div1|auto_generated|divider|divider|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_3~4_combout\ = (\Div1|auto_generated|divider|divider|op_3~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[16]~53_combout\) # (\Div1|auto_generated|divider|divider|StageOut[16]~52_combout\))))) # 
-- (!\Div1|auto_generated|divider|divider|op_3~3\ & ((\Div1|auto_generated|divider|divider|StageOut[16]~53_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[16]~52_combout\) # (GND))))
-- \Div1|auto_generated|divider|divider|op_3~5\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[16]~53_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[16]~52_combout\) # (!\Div1|auto_generated|divider|divider|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[16]~53_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[16]~52_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_3~3\,
	combout => \Div1|auto_generated|divider|divider|op_3~4_combout\,
	cout => \Div1|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X11_Y21_N20
\Div1|auto_generated|divider|divider|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_3~6_combout\ = (\Div1|auto_generated|divider|divider|StageOut[17]~50_combout\ & (((!\Div1|auto_generated|divider|divider|op_3~5\)))) # (!\Div1|auto_generated|divider|divider|StageOut[17]~50_combout\ & 
-- ((\Div1|auto_generated|divider|divider|StageOut[17]~51_combout\ & (!\Div1|auto_generated|divider|divider|op_3~5\)) # (!\Div1|auto_generated|divider|divider|StageOut[17]~51_combout\ & ((\Div1|auto_generated|divider|divider|op_3~5\) # (GND)))))
-- \Div1|auto_generated|divider|divider|op_3~7\ = CARRY(((!\Div1|auto_generated|divider|divider|StageOut[17]~50_combout\ & !\Div1|auto_generated|divider|divider|StageOut[17]~51_combout\)) # (!\Div1|auto_generated|divider|divider|op_3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[17]~50_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[17]~51_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_3~5\,
	combout => \Div1|auto_generated|divider|divider|op_3~6_combout\,
	cout => \Div1|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X11_Y21_N22
\Div1|auto_generated|divider|divider|op_3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_3~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[18]~49_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[18]~48_combout\) # (!\Div1|auto_generated|divider|divider|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[18]~49_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[18]~48_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_3~7\,
	cout => \Div1|auto_generated|divider|divider|op_3~9_cout\);

-- Location: LCCOMB_X11_Y21_N24
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

-- Location: LCCOMB_X11_Y21_N12
\Div1|auto_generated|divider|divider|StageOut[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~77_combout\ = (\Div1|auto_generated|divider|divider|op_3~10_combout\ & ((\Div1|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter4[4]~input_o\))) # 
-- (!\Div1|auto_generated|divider|divider|op_2~8_combout\ & (\Div1|auto_generated|divider|divider|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_2~0_combout\,
	datab => \Div1|auto_generated|divider|divider|op_2~8_combout\,
	datac => \r_in_filter4[4]~input_o\,
	datad => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~77_combout\);

-- Location: LCCOMB_X12_Y21_N16
\Div1|auto_generated|divider|divider|StageOut[21]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~58_combout\ = (!\Div1|auto_generated|divider|divider|op_3~10_combout\ & \Div1|auto_generated|divider|divider|op_3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	datac => \Div1|auto_generated|divider|divider|op_3~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~58_combout\);

-- Location: LCCOMB_X11_Y21_N10
\Div1|auto_generated|divider|divider|StageOut[20]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~60_combout\ = (\Div1|auto_generated|divider|divider|op_3~0_combout\ & !\Div1|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|op_3~0_combout\,
	datad => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~60_combout\);

-- Location: LCCOMB_X11_Y21_N28
\Div1|auto_generated|divider|divider|StageOut[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~59_combout\ = (\Div1|auto_generated|divider|divider|op_3~10_combout\ & \r_in_filter4[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	datac => \r_in_filter4[3]~input_o\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~59_combout\);

-- Location: IOIBUF_X13_Y24_N1
\r_in_filter4[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter4(2),
	o => \r_in_filter4[2]~input_o\);

-- Location: LCCOMB_X12_Y21_N2
\Div1|auto_generated|divider|divider|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_4~0_combout\ = \r_in_filter4[2]~input_o\ $ (VCC)
-- \Div1|auto_generated|divider|divider|op_4~1\ = CARRY(\r_in_filter4[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter4[2]~input_o\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|op_4~0_combout\,
	cout => \Div1|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X12_Y21_N4
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

-- Location: LCCOMB_X12_Y21_N6
\Div1|auto_generated|divider|divider|op_4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_4~4_combout\ = (\Div1|auto_generated|divider|divider|op_4~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[21]~77_combout\) # (\Div1|auto_generated|divider|divider|StageOut[21]~58_combout\))))) # 
-- (!\Div1|auto_generated|divider|divider|op_4~3\ & ((\Div1|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[21]~58_combout\) # (GND))))
-- \Div1|auto_generated|divider|divider|op_4~5\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[21]~58_combout\) # (!\Div1|auto_generated|divider|divider|op_4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[21]~77_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[21]~58_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_4~3\,
	combout => \Div1|auto_generated|divider|divider|op_4~4_combout\,
	cout => \Div1|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X11_Y21_N0
\Div1|auto_generated|divider|divider|StageOut[23]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~56_combout\ = (\Div1|auto_generated|divider|divider|op_3~6_combout\ & !\Div1|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|op_3~6_combout\,
	datad => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~56_combout\);

-- Location: LCCOMB_X10_Y21_N0
\Div1|auto_generated|divider|divider|StageOut[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~75_combout\ = (\Div1|auto_generated|divider|divider|op_3~10_combout\ & ((\Div1|auto_generated|divider|divider|op_2~8_combout\ & ((\r_in_filter4[6]~input_o\))) # 
-- (!\Div1|auto_generated|divider|divider|op_2~8_combout\ & (\Div1|auto_generated|divider|divider|op_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_2~8_combout\,
	datab => \Div1|auto_generated|divider|divider|op_2~4_combout\,
	datac => \r_in_filter4[6]~input_o\,
	datad => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~75_combout\);

-- Location: LCCOMB_X11_Y21_N26
\Div1|auto_generated|divider|divider|StageOut[22]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~57_combout\ = (\Div1|auto_generated|divider|divider|op_3~4_combout\ & !\Div1|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|op_3~4_combout\,
	datad => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~57_combout\);

-- Location: LCCOMB_X10_Y21_N4
\Div1|auto_generated|divider|divider|StageOut[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~76_combout\ = (\Div1|auto_generated|divider|divider|op_3~10_combout\ & ((\Div1|auto_generated|divider|divider|op_2~8_combout\ & (\r_in_filter4[5]~input_o\)) # 
-- (!\Div1|auto_generated|divider|divider|op_2~8_combout\ & ((\Div1|auto_generated|divider|divider|op_2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter4[5]~input_o\,
	datab => \Div1|auto_generated|divider|divider|op_2~2_combout\,
	datac => \Div1|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~76_combout\);

-- Location: LCCOMB_X12_Y21_N8
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

-- Location: LCCOMB_X12_Y21_N10
\Div1|auto_generated|divider|divider|op_4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_4~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[23]~56_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[23]~75_combout\) # (!\Div1|auto_generated|divider|divider|op_4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[23]~56_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[23]~75_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_4~7\,
	cout => \Div1|auto_generated|divider|divider|op_4~9_cout\);

-- Location: LCCOMB_X12_Y21_N12
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

-- Location: LCCOMB_X12_Y21_N28
\Div1|auto_generated|divider|divider|StageOut[27]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~72_combout\ = (\Div1|auto_generated|divider|divider|op_4~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((\Div1|auto_generated|divider|divider|op_3~2_combout\ & 
-- !\Div1|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_3~2_combout\,
	datab => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[21]~77_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~72_combout\);

-- Location: LCCOMB_X12_Y21_N30
\Div1|auto_generated|divider|divider|StageOut[28]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~71_combout\ = (\Div1|auto_generated|divider|divider|op_4~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[22]~76_combout\) # ((!\Div1|auto_generated|divider|divider|op_3~10_combout\ & 
-- \Div1|auto_generated|divider|divider|op_3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	datab => \Div1|auto_generated|divider|divider|op_3~4_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[22]~76_combout\,
	datad => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~71_combout\);

-- Location: LCCOMB_X12_Y21_N14
\Div1|auto_generated|divider|divider|StageOut[28]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~61_combout\ = (\Div1|auto_generated|divider|divider|op_4~6_combout\ & !\Div1|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|op_4~6_combout\,
	datad => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~61_combout\);

-- Location: LCCOMB_X12_Y21_N20
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

-- Location: LCCOMB_X11_Y21_N30
\Div1|auto_generated|divider|divider|StageOut[26]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~78_combout\ = (\Div1|auto_generated|divider|divider|op_4~10_combout\ & ((\Div1|auto_generated|divider|divider|op_3~10_combout\ & (\r_in_filter4[3]~input_o\)) # 
-- (!\Div1|auto_generated|divider|divider|op_3~10_combout\ & ((\Div1|auto_generated|divider|divider|op_3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter4[3]~input_o\,
	datab => \Div1|auto_generated|divider|divider|op_3~0_combout\,
	datac => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~78_combout\);

-- Location: LCCOMB_X12_Y21_N22
\Div1|auto_generated|divider|divider|StageOut[26]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~63_combout\ = (\Div1|auto_generated|divider|divider|op_4~2_combout\ & !\Div1|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|op_4~2_combout\,
	datad => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~63_combout\);

-- Location: LCCOMB_X13_Y21_N16
\Div1|auto_generated|divider|divider|StageOut[25]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~64_combout\ = (\Div1|auto_generated|divider|divider|op_4~10_combout\ & \r_in_filter4[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	datac => \r_in_filter4[2]~input_o\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~64_combout\);

-- Location: LCCOMB_X12_Y21_N0
\Div1|auto_generated|divider|divider|StageOut[25]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~65_combout\ = (\Div1|auto_generated|divider|divider|op_4~0_combout\ & !\Div1|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|op_4~0_combout\,
	datad => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~65_combout\);

-- Location: IOIBUF_X13_Y24_N22
\r_in_filter4[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter4(1),
	o => \r_in_filter4[1]~input_o\);

-- Location: LCCOMB_X12_Y20_N14
\Div1|auto_generated|divider|divider|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_5~0_combout\ = \r_in_filter4[1]~input_o\ $ (VCC)
-- \Div1|auto_generated|divider|divider|op_5~1\ = CARRY(\r_in_filter4[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter4[1]~input_o\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|op_5~0_combout\,
	cout => \Div1|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X12_Y20_N16
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

-- Location: LCCOMB_X12_Y20_N18
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

-- Location: LCCOMB_X12_Y20_N20
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

-- Location: LCCOMB_X12_Y20_N22
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

-- Location: LCCOMB_X12_Y20_N24
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

-- Location: LCCOMB_X12_Y21_N26
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

-- Location: LCCOMB_X12_Y20_N28
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

-- Location: LCCOMB_X12_Y20_N30
\Div1|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\Div1|auto_generated|divider|divider|op_5~4_combout\ & !\Div1|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|op_5~4_combout\,
	datad => \Div1|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X12_Y21_N24
\Div1|auto_generated|divider|divider|StageOut[32]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~74_combout\ = (\Div1|auto_generated|divider|divider|op_5~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[26]~78_combout\) # ((\Div1|auto_generated|divider|divider|op_4~2_combout\ & 
-- !\Div1|auto_generated|divider|divider|op_4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_5~10_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[26]~78_combout\,
	datac => \Div1|auto_generated|divider|divider|op_4~2_combout\,
	datad => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~74_combout\);

-- Location: LCCOMB_X12_Y21_N18
\Div1|auto_generated|divider|divider|StageOut[31]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~79_combout\ = (\Div1|auto_generated|divider|divider|op_5~10_combout\ & ((\Div1|auto_generated|divider|divider|op_4~10_combout\ & ((\r_in_filter4[2]~input_o\))) # 
-- (!\Div1|auto_generated|divider|divider|op_4~10_combout\ & (\Div1|auto_generated|divider|divider|op_4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_5~10_combout\,
	datab => \Div1|auto_generated|divider|divider|op_4~0_combout\,
	datac => \r_in_filter4[2]~input_o\,
	datad => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X12_Y20_N0
\Div1|auto_generated|divider|divider|StageOut[31]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~68_combout\ = (\Div1|auto_generated|divider|divider|op_5~2_combout\ & !\Div1|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|op_5~2_combout\,
	datad => \Div1|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~68_combout\);

-- Location: LCCOMB_X12_Y20_N26
\Div1|auto_generated|divider|divider|StageOut[30]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~70_combout\ = (\Div1|auto_generated|divider|divider|op_5~0_combout\ & !\Div1|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|op_5~0_combout\,
	datad => \Div1|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~70_combout\);

-- Location: LCCOMB_X13_Y20_N24
\Div1|auto_generated|divider|divider|StageOut[30]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~69_combout\ = (\Div1|auto_generated|divider|divider|op_5~10_combout\ & \r_in_filter4[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|op_5~10_combout\,
	datac => \r_in_filter4[1]~input_o\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~69_combout\);

-- Location: IOIBUF_X11_Y24_N1
\r_in_filter4[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter4(0),
	o => \r_in_filter4[0]~input_o\);

-- Location: LCCOMB_X12_Y20_N2
\r_aux4[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux4[0]~2_cout\ = CARRY(\r_in_filter4[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter4[0]~input_o\,
	datad => VCC,
	cout => \r_aux4[0]~2_cout\);

-- Location: LCCOMB_X12_Y20_N4
\r_aux4[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux4[0]~4_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[30]~70_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[30]~69_combout\ & !\r_aux4[0]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[30]~70_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datad => VCC,
	cin => \r_aux4[0]~2_cout\,
	cout => \r_aux4[0]~4_cout\);

-- Location: LCCOMB_X12_Y20_N6
\r_aux4[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux4[0]~6_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[31]~79_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[31]~68_combout\) # (!\r_aux4[0]~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datad => VCC,
	cin => \r_aux4[0]~4_cout\,
	cout => \r_aux4[0]~6_cout\);

-- Location: LCCOMB_X12_Y20_N8
\r_aux4[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux4[0]~8_cout\ = CARRY(((!\Div1|auto_generated|divider|divider|StageOut[32]~67_combout\ & !\Div1|auto_generated|divider|divider|StageOut[32]~74_combout\)) # (!\r_aux4[0]~6_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[32]~74_combout\,
	datad => VCC,
	cin => \r_aux4[0]~6_cout\,
	cout => \r_aux4[0]~8_cout\);

-- Location: LCCOMB_X12_Y20_N10
\r_aux4[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux4[0]~10_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[33]~73_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[33]~66_combout\) # (!\r_aux4[0]~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[33]~73_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datad => VCC,
	cin => \r_aux4[0]~8_cout\,
	cout => \r_aux4[0]~10_cout\);

-- Location: LCCOMB_X12_Y20_N12
\r_aux4[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux4[0]~11_combout\ = \r_aux4[0]~10_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \r_aux4[0]~10_cout\,
	combout => \r_aux4[0]~11_combout\);

-- Location: FF_X18_Y17_N1
\r_aux4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \r_aux4[0]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux4(0));

-- Location: LCCOMB_X18_Y17_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Add0~0_combout\ & ((GND) # (!r_aux4(0)))) # (!\Add0~0_combout\ & (r_aux4(0) $ (GND)))
-- \Add1~1\ = CARRY((\Add0~0_combout\) # (!r_aux4(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => r_aux4(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X23_Y24_N8
\r_in_filter6[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter6(7),
	o => \r_in_filter6[7]~input_o\);

-- Location: IOIBUF_X23_Y24_N22
\r_in_filter6[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter6(6),
	o => \r_in_filter6[6]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\r_in_filter6[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter6(5),
	o => \r_in_filter6[5]~input_o\);

-- Location: IOIBUF_X30_Y24_N8
\r_in_filter6[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter6(4),
	o => \r_in_filter6[4]~input_o\);

-- Location: LCCOMB_X23_Y21_N16
\Div3|auto_generated|divider|divider|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_2~0_combout\ = \r_in_filter6[4]~input_o\ $ (VCC)
-- \Div3|auto_generated|divider|divider|op_2~1\ = CARRY(\r_in_filter6[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter6[4]~input_o\,
	datad => VCC,
	combout => \Div3|auto_generated|divider|divider|op_2~0_combout\,
	cout => \Div3|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X23_Y21_N18
\Div3|auto_generated|divider|divider|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_2~2_combout\ = (\r_in_filter6[5]~input_o\ & (\Div3|auto_generated|divider|divider|op_2~1\ & VCC)) # (!\r_in_filter6[5]~input_o\ & (!\Div3|auto_generated|divider|divider|op_2~1\))
-- \Div3|auto_generated|divider|divider|op_2~3\ = CARRY((!\r_in_filter6[5]~input_o\ & !\Div3|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter6[5]~input_o\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_2~1\,
	combout => \Div3|auto_generated|divider|divider|op_2~2_combout\,
	cout => \Div3|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X23_Y21_N20
\Div3|auto_generated|divider|divider|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_2~4_combout\ = (\r_in_filter6[6]~input_o\ & ((GND) # (!\Div3|auto_generated|divider|divider|op_2~3\))) # (!\r_in_filter6[6]~input_o\ & (\Div3|auto_generated|divider|divider|op_2~3\ $ (GND)))
-- \Div3|auto_generated|divider|divider|op_2~5\ = CARRY((\r_in_filter6[6]~input_o\) # (!\Div3|auto_generated|divider|divider|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter6[6]~input_o\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_2~3\,
	combout => \Div3|auto_generated|divider|divider|op_2~4_combout\,
	cout => \Div3|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X23_Y21_N22
\Div3|auto_generated|divider|divider|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_2~6_combout\ = (\r_in_filter6[7]~input_o\ & (!\Div3|auto_generated|divider|divider|op_2~5\)) # (!\r_in_filter6[7]~input_o\ & ((\Div3|auto_generated|divider|divider|op_2~5\) # (GND)))
-- \Div3|auto_generated|divider|divider|op_2~7\ = CARRY((!\Div3|auto_generated|divider|divider|op_2~5\) # (!\r_in_filter6[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter6[7]~input_o\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_2~5\,
	combout => \Div3|auto_generated|divider|divider|op_2~6_combout\,
	cout => \Div3|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X23_Y21_N24
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

-- Location: LCCOMB_X23_Y21_N12
\Div3|auto_generated|divider|divider|StageOut[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[15]~54_combout\ = (\Div3|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter6[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_2~8_combout\,
	datac => \r_in_filter6[4]~input_o\,
	combout => \Div3|auto_generated|divider|divider|StageOut[15]~54_combout\);

-- Location: LCCOMB_X23_Y21_N30
\Div3|auto_generated|divider|divider|StageOut[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[15]~55_combout\ = (\Div3|auto_generated|divider|divider|op_2~0_combout\ & !\Div3|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_2~0_combout\,
	datad => \Div3|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[15]~55_combout\);

-- Location: IOIBUF_X28_Y24_N15
\r_in_filter6[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter6(3),
	o => \r_in_filter6[3]~input_o\);

-- Location: LCCOMB_X24_Y21_N0
\Div3|auto_generated|divider|divider|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_3~0_combout\ = \r_in_filter6[3]~input_o\ $ (VCC)
-- \Div3|auto_generated|divider|divider|op_3~1\ = CARRY(\r_in_filter6[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter6[3]~input_o\,
	datad => VCC,
	combout => \Div3|auto_generated|divider|divider|op_3~0_combout\,
	cout => \Div3|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X24_Y21_N2
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

-- Location: LCCOMB_X24_Y21_N12
\Div3|auto_generated|divider|divider|StageOut[18]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[18]~49_combout\ = (\Div3|auto_generated|divider|divider|op_2~6_combout\ & !\Div3|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_2~6_combout\,
	datad => \Div3|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[18]~49_combout\);

-- Location: LCCOMB_X23_Y21_N6
\Div3|auto_generated|divider|divider|StageOut[18]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[18]~48_combout\ = (\Div3|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter6[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_2~8_combout\,
	datac => \r_in_filter6[7]~input_o\,
	combout => \Div3|auto_generated|divider|divider|StageOut[18]~48_combout\);

-- Location: LCCOMB_X23_Y21_N0
\Div3|auto_generated|divider|divider|StageOut[17]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[17]~50_combout\ = (\Div3|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter6[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_2~8_combout\,
	datad => \r_in_filter6[6]~input_o\,
	combout => \Div3|auto_generated|divider|divider|StageOut[17]~50_combout\);

-- Location: LCCOMB_X23_Y21_N10
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

-- Location: LCCOMB_X23_Y21_N2
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

-- Location: LCCOMB_X23_Y21_N28
\Div3|auto_generated|divider|divider|StageOut[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[16]~52_combout\ = (\Div3|auto_generated|divider|divider|op_2~8_combout\ & \r_in_filter6[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_2~8_combout\,
	datac => \r_in_filter6[5]~input_o\,
	combout => \Div3|auto_generated|divider|divider|StageOut[16]~52_combout\);

-- Location: LCCOMB_X24_Y21_N4
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

-- Location: LCCOMB_X24_Y21_N6
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

-- Location: LCCOMB_X24_Y21_N8
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

-- Location: LCCOMB_X24_Y21_N10
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

-- Location: LCCOMB_X23_Y21_N14
\Div3|auto_generated|divider|divider|StageOut[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[23]~75_combout\ = (\Div3|auto_generated|divider|divider|op_3~10_combout\ & ((\Div3|auto_generated|divider|divider|op_2~8_combout\ & (\r_in_filter6[6]~input_o\)) # 
-- (!\Div3|auto_generated|divider|divider|op_2~8_combout\ & ((\Div3|auto_generated|divider|divider|op_2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter6[6]~input_o\,
	datab => \Div3|auto_generated|divider|divider|op_2~4_combout\,
	datac => \Div3|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div3|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[23]~75_combout\);

-- Location: LCCOMB_X24_Y21_N14
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

-- Location: LCCOMB_X23_Y21_N4
\Div3|auto_generated|divider|divider|StageOut[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[22]~76_combout\ = (\Div3|auto_generated|divider|divider|op_3~10_combout\ & ((\Div3|auto_generated|divider|divider|op_2~8_combout\ & (\r_in_filter6[5]~input_o\)) # 
-- (!\Div3|auto_generated|divider|divider|op_2~8_combout\ & ((\Div3|auto_generated|divider|divider|op_2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter6[5]~input_o\,
	datab => \Div3|auto_generated|divider|divider|op_2~2_combout\,
	datac => \Div3|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div3|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[22]~76_combout\);

-- Location: LCCOMB_X24_Y21_N16
\Div3|auto_generated|divider|divider|StageOut[22]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[22]~57_combout\ = (\Div3|auto_generated|divider|divider|op_3~4_combout\ & !\Div3|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div3|auto_generated|divider|divider|op_3~4_combout\,
	datad => \Div3|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[22]~57_combout\);

-- Location: LCCOMB_X23_Y21_N26
\Div3|auto_generated|divider|divider|StageOut[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[21]~77_combout\ = (\Div3|auto_generated|divider|divider|op_3~10_combout\ & ((\Div3|auto_generated|divider|divider|op_2~8_combout\ & (\r_in_filter6[4]~input_o\)) # 
-- (!\Div3|auto_generated|divider|divider|op_2~8_combout\ & ((\Div3|auto_generated|divider|divider|op_2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter6[4]~input_o\,
	datab => \Div3|auto_generated|divider|divider|op_2~0_combout\,
	datac => \Div3|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div3|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[21]~77_combout\);

-- Location: LCCOMB_X25_Y21_N22
\Div3|auto_generated|divider|divider|StageOut[21]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[21]~58_combout\ = (\Div3|auto_generated|divider|divider|op_3~2_combout\ & !\Div3|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|op_3~2_combout\,
	datad => \Div3|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[21]~58_combout\);

-- Location: LCCOMB_X24_Y21_N30
\Div3|auto_generated|divider|divider|StageOut[20]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[20]~60_combout\ = (\Div3|auto_generated|divider|divider|op_3~0_combout\ & !\Div3|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_3~0_combout\,
	datad => \Div3|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[20]~60_combout\);

-- Location: LCCOMB_X25_Y21_N28
\Div3|auto_generated|divider|divider|StageOut[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[20]~59_combout\ = (\Div3|auto_generated|divider|divider|op_3~10_combout\ & \r_in_filter6[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|op_3~10_combout\,
	datac => \r_in_filter6[3]~input_o\,
	combout => \Div3|auto_generated|divider|divider|StageOut[20]~59_combout\);

-- Location: IOIBUF_X25_Y24_N15
\r_in_filter6[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter6(2),
	o => \r_in_filter6[2]~input_o\);

-- Location: LCCOMB_X24_Y21_N18
\Div3|auto_generated|divider|divider|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_4~0_combout\ = \r_in_filter6[2]~input_o\ $ (VCC)
-- \Div3|auto_generated|divider|divider|op_4~1\ = CARRY(\r_in_filter6[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter6[2]~input_o\,
	datad => VCC,
	combout => \Div3|auto_generated|divider|divider|op_4~0_combout\,
	cout => \Div3|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X24_Y21_N20
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

-- Location: LCCOMB_X24_Y21_N22
\Div3|auto_generated|divider|divider|op_4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_4~4_combout\ = (\Div3|auto_generated|divider|divider|op_4~3\ & ((((\Div3|auto_generated|divider|divider|StageOut[21]~77_combout\) # (\Div3|auto_generated|divider|divider|StageOut[21]~58_combout\))))) # 
-- (!\Div3|auto_generated|divider|divider|op_4~3\ & ((\Div3|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((\Div3|auto_generated|divider|divider|StageOut[21]~58_combout\) # (GND))))
-- \Div3|auto_generated|divider|divider|op_4~5\ = CARRY((\Div3|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((\Div3|auto_generated|divider|divider|StageOut[21]~58_combout\) # (!\Div3|auto_generated|divider|divider|op_4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[21]~77_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[21]~58_combout\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_4~3\,
	combout => \Div3|auto_generated|divider|divider|op_4~4_combout\,
	cout => \Div3|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X24_Y21_N24
\Div3|auto_generated|divider|divider|op_4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_4~6_combout\ = (\Div3|auto_generated|divider|divider|StageOut[22]~76_combout\ & (((!\Div3|auto_generated|divider|divider|op_4~5\)))) # (!\Div3|auto_generated|divider|divider|StageOut[22]~76_combout\ & 
-- ((\Div3|auto_generated|divider|divider|StageOut[22]~57_combout\ & (!\Div3|auto_generated|divider|divider|op_4~5\)) # (!\Div3|auto_generated|divider|divider|StageOut[22]~57_combout\ & ((\Div3|auto_generated|divider|divider|op_4~5\) # (GND)))))
-- \Div3|auto_generated|divider|divider|op_4~7\ = CARRY(((!\Div3|auto_generated|divider|divider|StageOut[22]~76_combout\ & !\Div3|auto_generated|divider|divider|StageOut[22]~57_combout\)) # (!\Div3|auto_generated|divider|divider|op_4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[22]~76_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[22]~57_combout\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_4~5\,
	combout => \Div3|auto_generated|divider|divider|op_4~6_combout\,
	cout => \Div3|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X24_Y21_N26
\Div3|auto_generated|divider|divider|op_4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_4~9_cout\ = CARRY((\Div3|auto_generated|divider|divider|StageOut[23]~75_combout\) # ((\Div3|auto_generated|divider|divider|StageOut[23]~56_combout\) # (!\Div3|auto_generated|divider|divider|op_4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[23]~75_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[23]~56_combout\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_4~7\,
	cout => \Div3|auto_generated|divider|divider|op_4~9_cout\);

-- Location: LCCOMB_X24_Y21_N28
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

-- Location: LCCOMB_X25_Y21_N12
\Div3|auto_generated|divider|divider|StageOut[27]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[27]~72_combout\ = (\Div3|auto_generated|divider|divider|op_4~10_combout\ & ((\Div3|auto_generated|divider|divider|StageOut[21]~77_combout\) # ((\Div3|auto_generated|divider|divider|op_3~2_combout\ & 
-- !\Div3|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|op_3~2_combout\,
	datab => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div3|auto_generated|divider|divider|StageOut[21]~77_combout\,
	datad => \Div3|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[27]~72_combout\);

-- Location: LCCOMB_X25_Y21_N14
\Div3|auto_generated|divider|divider|StageOut[28]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[28]~61_combout\ = (!\Div3|auto_generated|divider|divider|op_4~10_combout\ & \Div3|auto_generated|divider|divider|op_4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div3|auto_generated|divider|divider|op_4~6_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[28]~61_combout\);

-- Location: LCCOMB_X25_Y21_N18
\Div3|auto_generated|divider|divider|StageOut[28]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[28]~71_combout\ = (\Div3|auto_generated|divider|divider|op_4~10_combout\ & ((\Div3|auto_generated|divider|divider|StageOut[22]~76_combout\) # ((!\Div3|auto_generated|divider|divider|op_3~10_combout\ & 
-- \Div3|auto_generated|divider|divider|op_3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|op_3~10_combout\,
	datab => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div3|auto_generated|divider|divider|op_3~4_combout\,
	datad => \Div3|auto_generated|divider|divider|StageOut[22]~76_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[28]~71_combout\);

-- Location: LCCOMB_X25_Y21_N0
\Div3|auto_generated|divider|divider|StageOut[27]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[27]~62_combout\ = (!\Div3|auto_generated|divider|divider|op_4~10_combout\ & \Div3|auto_generated|divider|divider|op_4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div3|auto_generated|divider|divider|op_4~4_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[27]~62_combout\);

-- Location: LCCOMB_X25_Y21_N26
\Div3|auto_generated|divider|divider|StageOut[26]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[26]~63_combout\ = (!\Div3|auto_generated|divider|divider|op_4~10_combout\ & \Div3|auto_generated|divider|divider|op_4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div3|auto_generated|divider|divider|op_4~2_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[26]~63_combout\);

-- Location: LCCOMB_X25_Y21_N30
\Div3|auto_generated|divider|divider|StageOut[26]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[26]~78_combout\ = (\Div3|auto_generated|divider|divider|op_4~10_combout\ & ((\Div3|auto_generated|divider|divider|op_3~10_combout\ & ((\r_in_filter6[3]~input_o\))) # 
-- (!\Div3|auto_generated|divider|divider|op_3~10_combout\ & (\Div3|auto_generated|divider|divider|op_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|op_3~0_combout\,
	datab => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	datac => \r_in_filter6[3]~input_o\,
	datad => \Div3|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[26]~78_combout\);

-- Location: LCCOMB_X25_Y21_N2
\Div3|auto_generated|divider|divider|StageOut[25]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[25]~65_combout\ = (!\Div3|auto_generated|divider|divider|op_4~10_combout\ & \Div3|auto_generated|divider|divider|op_4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div3|auto_generated|divider|divider|op_4~0_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[25]~65_combout\);

-- Location: LCCOMB_X25_Y21_N24
\Div3|auto_generated|divider|divider|StageOut[25]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[25]~64_combout\ = (\Div3|auto_generated|divider|divider|op_4~10_combout\ & \r_in_filter6[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	datac => \r_in_filter6[2]~input_o\,
	combout => \Div3|auto_generated|divider|divider|StageOut[25]~64_combout\);

-- Location: IOIBUF_X28_Y24_N22
\r_in_filter6[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter6(1),
	o => \r_in_filter6[1]~input_o\);

-- Location: LCCOMB_X26_Y21_N18
\Div3|auto_generated|divider|divider|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_5~0_combout\ = \r_in_filter6[1]~input_o\ $ (VCC)
-- \Div3|auto_generated|divider|divider|op_5~1\ = CARRY(\r_in_filter6[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_in_filter6[1]~input_o\,
	datad => VCC,
	combout => \Div3|auto_generated|divider|divider|op_5~0_combout\,
	cout => \Div3|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X26_Y21_N20
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

-- Location: LCCOMB_X26_Y21_N22
\Div3|auto_generated|divider|divider|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_5~4_combout\ = (\Div3|auto_generated|divider|divider|op_5~3\ & ((((\Div3|auto_generated|divider|divider|StageOut[26]~63_combout\) # (\Div3|auto_generated|divider|divider|StageOut[26]~78_combout\))))) # 
-- (!\Div3|auto_generated|divider|divider|op_5~3\ & ((\Div3|auto_generated|divider|divider|StageOut[26]~63_combout\) # ((\Div3|auto_generated|divider|divider|StageOut[26]~78_combout\) # (GND))))
-- \Div3|auto_generated|divider|divider|op_5~5\ = CARRY((\Div3|auto_generated|divider|divider|StageOut[26]~63_combout\) # ((\Div3|auto_generated|divider|divider|StageOut[26]~78_combout\) # (!\Div3|auto_generated|divider|divider|op_5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[26]~63_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[26]~78_combout\,
	datad => VCC,
	cin => \Div3|auto_generated|divider|divider|op_5~3\,
	combout => \Div3|auto_generated|divider|divider|op_5~4_combout\,
	cout => \Div3|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X26_Y21_N24
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

-- Location: LCCOMB_X26_Y21_N26
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

-- Location: LCCOMB_X26_Y21_N28
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

-- Location: LCCOMB_X25_Y21_N10
\Div3|auto_generated|divider|divider|StageOut[33]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[33]~73_combout\ = (\Div3|auto_generated|divider|divider|op_5~10_combout\ & ((\Div3|auto_generated|divider|divider|StageOut[27]~72_combout\) # ((!\Div3|auto_generated|divider|divider|op_4~10_combout\ & 
-- \Div3|auto_generated|divider|divider|op_4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[27]~72_combout\,
	datab => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div3|auto_generated|divider|divider|op_4~4_combout\,
	datad => \Div3|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[33]~73_combout\);

-- Location: LCCOMB_X26_Y21_N16
\Div3|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\Div3|auto_generated|divider|divider|op_5~6_combout\ & !\Div3|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_5~6_combout\,
	datad => \Div3|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X25_Y21_N16
\Div3|auto_generated|divider|divider|StageOut[32]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[32]~74_combout\ = (\Div3|auto_generated|divider|divider|op_5~10_combout\ & ((\Div3|auto_generated|divider|divider|StageOut[26]~78_combout\) # ((\Div3|auto_generated|divider|divider|op_4~2_combout\ & 
-- !\Div3|auto_generated|divider|divider|op_4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|op_4~2_combout\,
	datab => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div3|auto_generated|divider|divider|StageOut[26]~78_combout\,
	datad => \Div3|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[32]~74_combout\);

-- Location: LCCOMB_X26_Y21_N14
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

-- Location: LCCOMB_X25_Y21_N4
\Div3|auto_generated|divider|divider|StageOut[31]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[31]~79_combout\ = (\Div3|auto_generated|divider|divider|op_5~10_combout\ & ((\Div3|auto_generated|divider|divider|op_4~10_combout\ & ((\r_in_filter6[2]~input_o\))) # 
-- (!\Div3|auto_generated|divider|divider|op_4~10_combout\ & (\Div3|auto_generated|divider|divider|op_4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Div3|auto_generated|divider|divider|op_4~0_combout\,
	datac => \r_in_filter6[2]~input_o\,
	datad => \Div3|auto_generated|divider|divider|op_5~10_combout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X26_Y21_N0
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

-- Location: LCCOMB_X26_Y21_N30
\Div3|auto_generated|divider|divider|StageOut[30]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[30]~69_combout\ = (\Div3|auto_generated|divider|divider|op_5~10_combout\ & \r_in_filter6[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|op_5~10_combout\,
	datad => \r_in_filter6[1]~input_o\,
	combout => \Div3|auto_generated|divider|divider|StageOut[30]~69_combout\);

-- Location: LCCOMB_X25_Y21_N20
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

-- Location: IOIBUF_X28_Y24_N1
\r_in_filter6[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_in_filter6(0),
	o => \r_in_filter6[0]~input_o\);

-- Location: LCCOMB_X26_Y21_N2
\r_aux6[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux6[0]~2_cout\ = CARRY(\r_in_filter6[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_in_filter6[0]~input_o\,
	datad => VCC,
	cout => \r_aux6[0]~2_cout\);

-- Location: LCCOMB_X26_Y21_N4
\r_aux6[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux6[0]~4_cout\ = CARRY((!\Div3|auto_generated|divider|divider|StageOut[30]~69_combout\ & (!\Div3|auto_generated|divider|divider|StageOut[30]~70_combout\ & !\r_aux6[0]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[30]~70_combout\,
	datad => VCC,
	cin => \r_aux6[0]~2_cout\,
	cout => \r_aux6[0]~4_cout\);

-- Location: LCCOMB_X26_Y21_N6
\r_aux6[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux6[0]~6_cout\ = CARRY((\Div3|auto_generated|divider|divider|StageOut[31]~79_combout\) # ((\Div3|auto_generated|divider|divider|StageOut[31]~68_combout\) # (!\r_aux6[0]~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datad => VCC,
	cin => \r_aux6[0]~4_cout\,
	cout => \r_aux6[0]~6_cout\);

-- Location: LCCOMB_X26_Y21_N8
\r_aux6[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux6[0]~8_cout\ = CARRY(((!\Div3|auto_generated|divider|divider|StageOut[32]~74_combout\ & !\Div3|auto_generated|divider|divider|StageOut[32]~67_combout\)) # (!\r_aux6[0]~6_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[32]~74_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \r_aux6[0]~6_cout\,
	cout => \r_aux6[0]~8_cout\);

-- Location: LCCOMB_X26_Y21_N10
\r_aux6[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux6[0]~10_cout\ = CARRY((\Div3|auto_generated|divider|divider|StageOut[33]~73_combout\) # ((\Div3|auto_generated|divider|divider|StageOut[33]~66_combout\) # (!\r_aux6[0]~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|StageOut[33]~73_combout\,
	datab => \Div3|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datad => VCC,
	cin => \r_aux6[0]~8_cout\,
	cout => \r_aux6[0]~10_cout\);

-- Location: LCCOMB_X26_Y21_N12
\r_aux6[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux6[0]~11_combout\ = \r_aux6[0]~10_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \r_aux6[0]~10_cout\,
	combout => \r_aux6[0]~11_combout\);

-- Location: FF_X26_Y21_N17
\r_aux6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \r_aux6[0]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux6(0));

-- Location: LCCOMB_X19_Y17_N16
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\Add1~0_combout\ & ((GND) # (!r_aux6(0)))) # (!\Add1~0_combout\ & (r_aux6(0) $ (GND)))
-- \Add2~1\ = CARRY((\Add1~0_combout\) # (!r_aux6(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => r_aux6(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X19_Y17_N0
\final[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \final[0]~8_combout\ = (r_aux8(0) & (\Add2~0_combout\ $ (VCC))) # (!r_aux8(0) & ((\Add2~0_combout\) # (GND)))
-- \final[0]~9\ = CARRY((\Add2~0_combout\) # (!r_aux8(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_aux8(0),
	datab => \Add2~0_combout\,
	datad => VCC,
	combout => \final[0]~8_combout\,
	cout => \final[0]~9\);

-- Location: FF_X19_Y17_N1
\final[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \final[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => final(0));

-- Location: LCCOMB_X22_Y20_N28
\r_out_filter[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out_filter[0]~reg0feeder_combout\ = final(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(0),
	combout => \r_out_filter[0]~reg0feeder_combout\);

-- Location: FF_X22_Y20_N29
\r_out_filter[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \r_out_filter[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out_filter[0]~reg0_q\);

-- Location: LCCOMB_X7_Y21_N4
\r_aux8[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux8[1]~13_combout\ = !\Div4|auto_generated|divider|divider|op_5~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div4|auto_generated|divider|divider|op_5~10_combout\,
	combout => \r_aux8[1]~13_combout\);

-- Location: FF_X7_Y21_N23
\r_aux8[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \r_aux8[1]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux8(1));

-- Location: LCCOMB_X13_Y20_N30
\r_aux4[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux4[1]~13_combout\ = !\Div1|auto_generated|divider|divider|op_5~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div1|auto_generated|divider|divider|op_5~10_combout\,
	combout => \r_aux4[1]~13_combout\);

-- Location: FF_X18_Y17_N3
\r_aux4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \r_aux4[1]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux4(1));

-- Location: LCCOMB_X17_Y17_N14
\r_aux5[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux5[1]~11_combout\ = !\Div2|auto_generated|divider|divider|op_7~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|op_7~8_combout\,
	combout => \r_aux5[1]~11_combout\);

-- Location: FF_X18_Y17_N19
\r_aux5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \r_aux5[1]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux5(1));

-- Location: LCCOMB_X19_Y16_N14
\r_aux2[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux2[1]~13_combout\ = !\Div0|auto_generated|divider|divider|op_5~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	combout => \r_aux2[1]~13_combout\);

-- Location: FF_X18_Y17_N11
\r_aux2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \r_aux2[1]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux2(1));

-- Location: LCCOMB_X18_Y17_N18
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (r_aux5(1) & ((r_aux2(1) & (!\Add0~1\)) # (!r_aux2(1) & (\Add0~1\ & VCC)))) # (!r_aux5(1) & ((r_aux2(1) & ((\Add0~1\) # (GND))) # (!r_aux2(1) & (!\Add0~1\))))
-- \Add0~3\ = CARRY((r_aux5(1) & (r_aux2(1) & !\Add0~1\)) # (!r_aux5(1) & ((r_aux2(1)) # (!\Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_aux5(1),
	datab => r_aux2(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X18_Y17_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (r_aux4(1) & ((\Add0~2_combout\ & (!\Add1~1\)) # (!\Add0~2_combout\ & ((\Add1~1\) # (GND))))) # (!r_aux4(1) & ((\Add0~2_combout\ & (\Add1~1\ & VCC)) # (!\Add0~2_combout\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((r_aux4(1) & ((!\Add1~1\) # (!\Add0~2_combout\))) # (!r_aux4(1) & (!\Add0~2_combout\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_aux4(1),
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X25_Y21_N8
\r_aux6[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux6[1]~13_combout\ = !\Div3|auto_generated|divider|divider|op_5~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div3|auto_generated|divider|divider|op_5~10_combout\,
	combout => \r_aux6[1]~13_combout\);

-- Location: FF_X25_Y21_N9
\r_aux6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \r_aux6[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux6(1));

-- Location: LCCOMB_X19_Y17_N18
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add1~2_combout\ & ((r_aux6(1) & (!\Add2~1\)) # (!r_aux6(1) & (\Add2~1\ & VCC)))) # (!\Add1~2_combout\ & ((r_aux6(1) & ((\Add2~1\) # (GND))) # (!r_aux6(1) & (!\Add2~1\))))
-- \Add2~3\ = CARRY((\Add1~2_combout\ & (r_aux6(1) & !\Add2~1\)) # (!\Add1~2_combout\ & ((r_aux6(1)) # (!\Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => r_aux6(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X19_Y17_N2
\final[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \final[1]~10_combout\ = (r_aux8(1) & ((\Add2~2_combout\ & (!\final[0]~9\)) # (!\Add2~2_combout\ & ((\final[0]~9\) # (GND))))) # (!r_aux8(1) & ((\Add2~2_combout\ & (\final[0]~9\ & VCC)) # (!\Add2~2_combout\ & (!\final[0]~9\))))
-- \final[1]~11\ = CARRY((r_aux8(1) & ((!\final[0]~9\) # (!\Add2~2_combout\))) # (!r_aux8(1) & (!\Add2~2_combout\ & !\final[0]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_aux8(1),
	datab => \Add2~2_combout\,
	datad => VCC,
	cin => \final[0]~9\,
	combout => \final[1]~10_combout\,
	cout => \final[1]~11\);

-- Location: FF_X19_Y17_N3
\final[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \final[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => final(1));

-- Location: LCCOMB_X8_Y21_N16
\r_out_filter[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out_filter[1]~reg0feeder_combout\ = final(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(1),
	combout => \r_out_filter[1]~reg0feeder_combout\);

-- Location: FF_X8_Y21_N17
\r_out_filter[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \r_out_filter[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out_filter[1]~reg0_q\);

-- Location: LCCOMB_X7_Y21_N0
\r_aux8[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux8[2]~14_combout\ = !\Div4|auto_generated|divider|divider|op_4~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div4|auto_generated|divider|divider|op_4~10_combout\,
	combout => \r_aux8[2]~14_combout\);

-- Location: FF_X7_Y21_N1
\r_aux8[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \r_aux8[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux8(2));

-- Location: LCCOMB_X24_Y17_N0
\r_aux6[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux6[2]~14_combout\ = !\Div3|auto_generated|divider|divider|op_4~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div3|auto_generated|divider|divider|op_4~10_combout\,
	combout => \r_aux6[2]~14_combout\);

-- Location: FF_X24_Y17_N1
\r_aux6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \r_aux6[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux6(2));

-- Location: LCCOMB_X13_Y21_N14
\r_aux4[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux4[2]~14_combout\ = !\Div1|auto_generated|divider|divider|op_4~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div1|auto_generated|divider|divider|op_4~10_combout\,
	combout => \r_aux4[2]~14_combout\);

-- Location: FF_X18_Y17_N5
\r_aux4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \r_aux4[2]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux4(2));

-- Location: LCCOMB_X16_Y17_N14
\r_aux5[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux5[2]~12_combout\ = !\Div2|auto_generated|divider|divider|op_6~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div2|auto_generated|divider|divider|op_6~10_combout\,
	combout => \r_aux5[2]~12_combout\);

-- Location: FF_X18_Y17_N31
\r_aux5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \r_aux5[2]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux5(2));

-- Location: LCCOMB_X18_Y16_N24
\r_aux2[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux2[2]~14_combout\ = !\Div0|auto_generated|divider|divider|op_4~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	combout => \r_aux2[2]~14_combout\);

-- Location: FF_X18_Y17_N21
\r_aux2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \r_aux2[2]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux2(2));

-- Location: LCCOMB_X18_Y17_N20
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((r_aux5(2) $ (r_aux2(2) $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((r_aux5(2) & ((!\Add0~3\) # (!r_aux2(2)))) # (!r_aux5(2) & (!r_aux2(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_aux5(2),
	datab => r_aux2(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X18_Y17_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((r_aux4(2) $ (\Add0~4_combout\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((r_aux4(2) & (\Add0~4_combout\ & !\Add1~3\)) # (!r_aux4(2) & ((\Add0~4_combout\) # (!\Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_aux4(2),
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X19_Y17_N20
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((r_aux6(2) $ (\Add1~4_combout\ $ (\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((r_aux6(2) & (\Add1~4_combout\ & !\Add2~3\)) # (!r_aux6(2) & ((\Add1~4_combout\) # (!\Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_aux6(2),
	datab => \Add1~4_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X19_Y17_N4
\final[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \final[2]~12_combout\ = ((r_aux8(2) $ (\Add2~4_combout\ $ (\final[1]~11\)))) # (GND)
-- \final[2]~13\ = CARRY((r_aux8(2) & (\Add2~4_combout\ & !\final[1]~11\)) # (!r_aux8(2) & ((\Add2~4_combout\) # (!\final[1]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_aux8(2),
	datab => \Add2~4_combout\,
	datad => VCC,
	cin => \final[1]~11\,
	combout => \final[2]~12_combout\,
	cout => \final[2]~13\);

-- Location: FF_X19_Y17_N5
\final[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \final[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => final(2));

-- Location: LCCOMB_X8_Y21_N2
\r_out_filter[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out_filter[2]~reg0feeder_combout\ = final(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(2),
	combout => \r_out_filter[2]~reg0feeder_combout\);

-- Location: FF_X8_Y21_N3
\r_out_filter[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \r_out_filter[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out_filter[2]~reg0_q\);

-- Location: LCCOMB_X19_Y21_N24
\r_aux6[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux6[3]~15_combout\ = !\Div3|auto_generated|divider|divider|op_3~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div3|auto_generated|divider|divider|op_3~10_combout\,
	combout => \r_aux6[3]~15_combout\);

-- Location: FF_X19_Y21_N25
\r_aux6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \r_aux6[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux6(3));

-- Location: LCCOMB_X18_Y16_N22
\r_aux2[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux2[3]~15_combout\ = !\Div0|auto_generated|divider|divider|op_3~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \r_aux2[3]~15_combout\);

-- Location: FF_X18_Y17_N7
\r_aux2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \r_aux2[3]~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux2(3));

-- Location: LCCOMB_X18_Y18_N4
\r_aux5[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux5[3]~13_combout\ = !\Div2|auto_generated|divider|divider|op_5~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div2|auto_generated|divider|divider|op_5~10_combout\,
	combout => \r_aux5[3]~13_combout\);

-- Location: FF_X18_Y17_N23
\r_aux5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \r_aux5[3]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux5(3));

-- Location: LCCOMB_X18_Y17_N22
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (r_aux2(3) & ((r_aux5(3) & (!\Add0~5\)) # (!r_aux5(3) & ((\Add0~5\) # (GND))))) # (!r_aux2(3) & ((r_aux5(3) & (\Add0~5\ & VCC)) # (!r_aux5(3) & (!\Add0~5\))))
-- \Add0~7\ = CARRY((r_aux2(3) & ((!\Add0~5\) # (!r_aux5(3)))) # (!r_aux2(3) & (!r_aux5(3) & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_aux2(3),
	datab => r_aux5(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X11_Y21_N8
\r_aux4[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux4[3]~15_combout\ = !\Div1|auto_generated|divider|divider|op_3~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div1|auto_generated|divider|divider|op_3~10_combout\,
	combout => \r_aux4[3]~15_combout\);

-- Location: FF_X18_Y17_N15
\r_aux4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \r_aux4[3]~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux4(3));

-- Location: LCCOMB_X18_Y17_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add0~6_combout\ & ((r_aux4(3) & (!\Add1~5\)) # (!r_aux4(3) & (\Add1~5\ & VCC)))) # (!\Add0~6_combout\ & ((r_aux4(3) & ((\Add1~5\) # (GND))) # (!r_aux4(3) & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\Add0~6_combout\ & (r_aux4(3) & !\Add1~5\)) # (!\Add0~6_combout\ & ((r_aux4(3)) # (!\Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => r_aux4(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X19_Y17_N22
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (r_aux6(3) & ((\Add1~6_combout\ & (!\Add2~5\)) # (!\Add1~6_combout\ & ((\Add2~5\) # (GND))))) # (!r_aux6(3) & ((\Add1~6_combout\ & (\Add2~5\ & VCC)) # (!\Add1~6_combout\ & (!\Add2~5\))))
-- \Add2~7\ = CARRY((r_aux6(3) & ((!\Add2~5\) # (!\Add1~6_combout\))) # (!r_aux6(3) & (!\Add1~6_combout\ & !\Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_aux6(3),
	datab => \Add1~6_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X11_Y17_N24
\r_aux8[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux8[3]~15_combout\ = !\Div4|auto_generated|divider|divider|op_3~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div4|auto_generated|divider|divider|op_3~10_combout\,
	combout => \r_aux8[3]~15_combout\);

-- Location: FF_X11_Y17_N25
\r_aux8[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \r_aux8[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux8(3));

-- Location: LCCOMB_X19_Y17_N6
\final[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \final[3]~14_combout\ = (\Add2~6_combout\ & ((r_aux8(3) & (!\final[2]~13\)) # (!r_aux8(3) & (\final[2]~13\ & VCC)))) # (!\Add2~6_combout\ & ((r_aux8(3) & ((\final[2]~13\) # (GND))) # (!r_aux8(3) & (!\final[2]~13\))))
-- \final[3]~15\ = CARRY((\Add2~6_combout\ & (r_aux8(3) & !\final[2]~13\)) # (!\Add2~6_combout\ & ((r_aux8(3)) # (!\final[2]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => r_aux8(3),
	datad => VCC,
	cin => \final[2]~13\,
	combout => \final[3]~14_combout\,
	cout => \final[3]~15\);

-- Location: FF_X19_Y17_N7
\final[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \final[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => final(3));

-- Location: LCCOMB_X8_Y21_N24
\r_out_filter[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out_filter[3]~reg0feeder_combout\ = final(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(3),
	combout => \r_out_filter[3]~reg0feeder_combout\);

-- Location: FF_X8_Y21_N25
\r_out_filter[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \r_out_filter[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out_filter[3]~reg0_q\);

-- Location: LCCOMB_X5_Y21_N28
\r_aux8[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux8[4]~16_combout\ = !\Div4|auto_generated|divider|divider|op_2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|op_2~8_combout\,
	combout => \r_aux8[4]~16_combout\);

-- Location: FF_X5_Y21_N29
\r_aux8[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \r_aux8[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux8(4));

-- Location: LCCOMB_X10_Y21_N2
\r_aux4[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux4[4]~16_combout\ = !\Div1|auto_generated|divider|divider|op_2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|op_2~8_combout\,
	combout => \r_aux4[4]~16_combout\);

-- Location: FF_X18_Y17_N9
\r_aux4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \r_aux4[4]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux4(4));

-- Location: LCCOMB_X14_Y16_N22
\r_aux2[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux2[4]~16_combout\ = !\Div0|auto_generated|divider|divider|op_2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \r_aux2[4]~16_combout\);

-- Location: FF_X18_Y17_N25
\r_aux2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \r_aux2[4]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux2(4));

-- Location: LCCOMB_X17_Y19_N20
\r_aux5[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux5[4]~14_combout\ = !\Div2|auto_generated|divider|divider|op_4~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div2|auto_generated|divider|divider|op_4~10_combout\,
	combout => \r_aux5[4]~14_combout\);

-- Location: FF_X18_Y17_N29
\r_aux5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \r_aux5[4]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux5(4));

-- Location: LCCOMB_X18_Y17_N24
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((r_aux2(4) $ (r_aux5(4) $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((r_aux2(4) & (r_aux5(4) & !\Add0~7\)) # (!r_aux2(4) & ((r_aux5(4)) # (!\Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_aux2(4),
	datab => r_aux5(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X18_Y17_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((r_aux4(4) $ (\Add0~8_combout\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((r_aux4(4) & (\Add0~8_combout\ & !\Add1~7\)) # (!r_aux4(4) & ((\Add0~8_combout\) # (!\Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_aux4(4),
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X23_Y21_N8
\r_aux6[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux6[4]~16_combout\ = !\Div3|auto_generated|divider|divider|op_2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div3|auto_generated|divider|divider|op_2~8_combout\,
	combout => \r_aux6[4]~16_combout\);

-- Location: FF_X23_Y21_N9
\r_aux6[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \r_aux6[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux6(4));

-- Location: LCCOMB_X19_Y17_N24
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\Add1~8_combout\ $ (r_aux6(4) $ (\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((\Add1~8_combout\ & ((!\Add2~7\) # (!r_aux6(4)))) # (!\Add1~8_combout\ & (!r_aux6(4) & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => r_aux6(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X19_Y17_N8
\final[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \final[4]~16_combout\ = ((r_aux8(4) $ (\Add2~8_combout\ $ (\final[3]~15\)))) # (GND)
-- \final[4]~17\ = CARRY((r_aux8(4) & (\Add2~8_combout\ & !\final[3]~15\)) # (!r_aux8(4) & ((\Add2~8_combout\) # (!\final[3]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_aux8(4),
	datab => \Add2~8_combout\,
	datad => VCC,
	cin => \final[3]~15\,
	combout => \final[4]~16_combout\,
	cout => \final[4]~17\);

-- Location: FF_X19_Y17_N9
\final[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \final[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => final(4));

-- Location: LCCOMB_X8_Y21_N6
\r_out_filter[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out_filter[4]~reg0feeder_combout\ = final(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(4),
	combout => \r_out_filter[4]~reg0feeder_combout\);

-- Location: FF_X8_Y21_N7
\r_out_filter[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \r_out_filter[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out_filter[4]~reg0_q\);

-- Location: LCCOMB_X18_Y19_N2
\r_aux5[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux5[5]~15_combout\ = !\Div2|auto_generated|divider|divider|op_3~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \r_aux5[5]~15_combout\);

-- Location: FF_X18_Y17_N27
\r_aux5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \r_aux5[5]~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux5(5));

-- Location: LCCOMB_X18_Y17_N26
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (r_aux5(5) & (\Add0~9\ & VCC)) # (!r_aux5(5) & (!\Add0~9\))
-- \Add0~11\ = CARRY((!r_aux5(5) & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_aux5(5),
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

-- Location: LCCOMB_X19_Y17_N26
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Add1~10_combout\ & (\Add2~9\ & VCC)) # (!\Add1~10_combout\ & (!\Add2~9\))
-- \Add2~11\ = CARRY((!\Add1~10_combout\ & !\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X19_Y17_N10
\final[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \final[5]~18_combout\ = (\Add2~10_combout\ & (\final[4]~17\ & VCC)) # (!\Add2~10_combout\ & (!\final[4]~17\))
-- \final[5]~19\ = CARRY((!\Add2~10_combout\ & !\final[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datad => VCC,
	cin => \final[4]~17\,
	combout => \final[5]~18_combout\,
	cout => \final[5]~19\);

-- Location: FF_X19_Y17_N11
\final[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \final[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => final(5));

-- Location: LCCOMB_X22_Y20_N6
\r_out_filter[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out_filter[5]~reg0feeder_combout\ = final(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(5),
	combout => \r_out_filter[5]~reg0feeder_combout\);

-- Location: FF_X22_Y20_N7
\r_out_filter[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \r_out_filter[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out_filter[5]~reg0_q\);

-- Location: LCCOMB_X18_Y18_N18
\r_aux5[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_aux5[6]~16_combout\ = !\Div2|auto_generated|divider|divider|op_2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div2|auto_generated|divider|divider|op_2~8_combout\,
	combout => \r_aux5[6]~16_combout\);

-- Location: FF_X19_Y17_N17
\r_aux5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \r_aux5[6]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_aux5(6));

-- Location: LCCOMB_X18_Y17_N28
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (r_aux5(6) & ((GND) # (!\Add0~11\))) # (!r_aux5(6) & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((r_aux5(6)) # (!\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_aux5(6),
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

-- Location: LCCOMB_X19_Y17_N28
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\Add1~12_combout\ & ((GND) # (!\Add2~11\))) # (!\Add1~12_combout\ & (\Add2~11\ $ (GND)))
-- \Add2~13\ = CARRY((\Add1~12_combout\) # (!\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X19_Y17_N12
\final[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \final[6]~20_combout\ = (\Add2~12_combout\ & ((GND) # (!\final[5]~19\))) # (!\Add2~12_combout\ & (\final[5]~19\ $ (GND)))
-- \final[6]~21\ = CARRY((\Add2~12_combout\) # (!\final[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~12_combout\,
	datad => VCC,
	cin => \final[5]~19\,
	combout => \final[6]~20_combout\,
	cout => \final[6]~21\);

-- Location: FF_X19_Y17_N13
\final[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \final[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => final(6));

-- Location: LCCOMB_X22_Y20_N24
\r_out_filter[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out_filter[6]~reg0feeder_combout\ = final(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(6),
	combout => \r_out_filter[6]~reg0feeder_combout\);

-- Location: FF_X22_Y20_N25
\r_out_filter[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \r_out_filter[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out_filter[6]~reg0_q\);

-- Location: LCCOMB_X18_Y17_N30
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = !\Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X18_Y17_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Add1~13\ $ (!\Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add0~14_combout\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X19_Y17_N30
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = \Add2~13\ $ (!\Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add1~14_combout\,
	cin => \Add2~13\,
	combout => \Add2~14_combout\);

-- Location: LCCOMB_X19_Y17_N14
\final[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \final[7]~22_combout\ = \final[6]~21\ $ (!\Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add2~14_combout\,
	cin => \final[6]~21\,
	combout => \final[7]~22_combout\);

-- Location: FF_X19_Y17_N15
\final[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \final[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => final(7));

-- Location: LCCOMB_X22_Y20_N26
\r_out_filter[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out_filter[7]~reg0feeder_combout\ = final(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(7),
	combout => \r_out_filter[7]~reg0feeder_combout\);

-- Location: FF_X22_Y20_N27
\r_out_filter[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \r_out_filter[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out_filter[7]~reg0_q\);

-- Location: LCCOMB_X22_Y20_N12
\g_out_filter[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \g_out_filter[0]~reg0feeder_combout\ = final(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(0),
	combout => \g_out_filter[0]~reg0feeder_combout\);

-- Location: FF_X22_Y20_N13
\g_out_filter[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \g_out_filter[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out_filter[0]~reg0_q\);

-- Location: LCCOMB_X8_Y21_N0
\g_out_filter[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \g_out_filter[1]~reg0feeder_combout\ = final(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(1),
	combout => \g_out_filter[1]~reg0feeder_combout\);

-- Location: FF_X8_Y21_N1
\g_out_filter[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \g_out_filter[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out_filter[1]~reg0_q\);

-- Location: LCCOMB_X8_Y21_N22
\g_out_filter[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \g_out_filter[2]~reg0feeder_combout\ = final(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(2),
	combout => \g_out_filter[2]~reg0feeder_combout\);

-- Location: FF_X8_Y21_N23
\g_out_filter[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \g_out_filter[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out_filter[2]~reg0_q\);

-- Location: LCCOMB_X8_Y21_N20
\g_out_filter[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \g_out_filter[3]~reg0feeder_combout\ = final(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(3),
	combout => \g_out_filter[3]~reg0feeder_combout\);

-- Location: FF_X8_Y21_N21
\g_out_filter[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \g_out_filter[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out_filter[3]~reg0_q\);

-- Location: LCCOMB_X8_Y21_N10
\g_out_filter[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \g_out_filter[4]~reg0feeder_combout\ = final(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(4),
	combout => \g_out_filter[4]~reg0feeder_combout\);

-- Location: FF_X8_Y21_N11
\g_out_filter[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \g_out_filter[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out_filter[4]~reg0_q\);

-- Location: LCCOMB_X22_Y20_N22
\g_out_filter[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \g_out_filter[5]~reg0feeder_combout\ = final(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(5),
	combout => \g_out_filter[5]~reg0feeder_combout\);

-- Location: FF_X22_Y20_N23
\g_out_filter[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \g_out_filter[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out_filter[5]~reg0_q\);

-- Location: LCCOMB_X22_Y20_N20
\g_out_filter[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \g_out_filter[6]~reg0feeder_combout\ = final(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(6),
	combout => \g_out_filter[6]~reg0feeder_combout\);

-- Location: FF_X22_Y20_N21
\g_out_filter[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \g_out_filter[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out_filter[6]~reg0_q\);

-- Location: LCCOMB_X22_Y20_N2
\g_out_filter[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \g_out_filter[7]~reg0feeder_combout\ = final(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(7),
	combout => \g_out_filter[7]~reg0feeder_combout\);

-- Location: FF_X22_Y20_N3
\g_out_filter[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \g_out_filter[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out_filter[7]~reg0_q\);

-- Location: LCCOMB_X22_Y20_N4
\b_out_filter[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_out_filter[0]~reg0feeder_combout\ = final(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(0),
	combout => \b_out_filter[0]~reg0feeder_combout\);

-- Location: FF_X22_Y20_N5
\b_out_filter[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \b_out_filter[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out_filter[0]~reg0_q\);

-- Location: LCCOMB_X8_Y21_N12
\b_out_filter[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_out_filter[1]~reg0feeder_combout\ = final(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(1),
	combout => \b_out_filter[1]~reg0feeder_combout\);

-- Location: FF_X8_Y21_N13
\b_out_filter[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \b_out_filter[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out_filter[1]~reg0_q\);

-- Location: LCCOMB_X8_Y21_N18
\b_out_filter[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_out_filter[2]~reg0feeder_combout\ = final(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(2),
	combout => \b_out_filter[2]~reg0feeder_combout\);

-- Location: FF_X8_Y21_N19
\b_out_filter[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \b_out_filter[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out_filter[2]~reg0_q\);

-- Location: LCCOMB_X8_Y21_N28
\b_out_filter[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_out_filter[3]~reg0feeder_combout\ = final(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(3),
	combout => \b_out_filter[3]~reg0feeder_combout\);

-- Location: FF_X8_Y21_N29
\b_out_filter[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \b_out_filter[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out_filter[3]~reg0_q\);

-- Location: LCCOMB_X8_Y21_N26
\b_out_filter[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_out_filter[4]~reg0feeder_combout\ = final(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(4),
	combout => \b_out_filter[4]~reg0feeder_combout\);

-- Location: FF_X8_Y21_N27
\b_out_filter[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \b_out_filter[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out_filter[4]~reg0_q\);

-- Location: LCCOMB_X22_Y20_N14
\b_out_filter[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_out_filter[5]~reg0feeder_combout\ = final(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(5),
	combout => \b_out_filter[5]~reg0feeder_combout\);

-- Location: FF_X22_Y20_N15
\b_out_filter[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \b_out_filter[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out_filter[5]~reg0_q\);

-- Location: LCCOMB_X22_Y20_N0
\b_out_filter[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_out_filter[6]~reg0feeder_combout\ = final(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(6),
	combout => \b_out_filter[6]~reg0feeder_combout\);

-- Location: FF_X22_Y20_N1
\b_out_filter[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \b_out_filter[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out_filter[6]~reg0_q\);

-- Location: LCCOMB_X22_Y20_N10
\b_out_filter[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_out_filter[7]~reg0feeder_combout\ = final(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => final(7),
	combout => \b_out_filter[7]~reg0feeder_combout\);

-- Location: FF_X22_Y20_N11
\b_out_filter[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \b_out_filter[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out_filter[7]~reg0_q\);

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


