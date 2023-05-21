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

-- DATE "05/21/2023 04:13:01"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	BasicWatch IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END BasicWatch;

-- Design Ports Information
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BasicWatch IS
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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FreqDivider|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \FreqDivider|Add0~0_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~1\ : std_logic;
SIGNAL \FreqDivider|Add0~2_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~3\ : std_logic;
SIGNAL \FreqDivider|Add0~4_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~5\ : std_logic;
SIGNAL \FreqDivider|Add0~6_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~7\ : std_logic;
SIGNAL \FreqDivider|Add0~8_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~9\ : std_logic;
SIGNAL \FreqDivider|Add0~10_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~11\ : std_logic;
SIGNAL \FreqDivider|Add0~12_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~13\ : std_logic;
SIGNAL \FreqDivider|Add0~14_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~11_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~15\ : std_logic;
SIGNAL \FreqDivider|Add0~16_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~17\ : std_logic;
SIGNAL \FreqDivider|Add0~18_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~19\ : std_logic;
SIGNAL \FreqDivider|Add0~20_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~21\ : std_logic;
SIGNAL \FreqDivider|Add0~22_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~23\ : std_logic;
SIGNAL \FreqDivider|Add0~24_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~10_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~25\ : std_logic;
SIGNAL \FreqDivider|Add0~26_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~9_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~27\ : std_logic;
SIGNAL \FreqDivider|Add0~28_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~8_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~37\ : std_logic;
SIGNAL \FreqDivider|Add0~38_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~7_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~39\ : std_logic;
SIGNAL \FreqDivider|Add0~40_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~6_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~7_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~41\ : std_logic;
SIGNAL \FreqDivider|Add0~42_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~5_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~43\ : std_logic;
SIGNAL \FreqDivider|Add0~44_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~4_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~45\ : std_logic;
SIGNAL \FreqDivider|Add0~46_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~1_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~47\ : std_logic;
SIGNAL \FreqDivider|Add0~48_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~49\ : std_logic;
SIGNAL \FreqDivider|Add0~50_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~0_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~51\ : std_logic;
SIGNAL \FreqDivider|Add0~52_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~53\ : std_logic;
SIGNAL \FreqDivider|Add0~54_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~6_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~8_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~55\ : std_logic;
SIGNAL \FreqDivider|Add0~56_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~57\ : std_logic;
SIGNAL \FreqDivider|Add0~58_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~59\ : std_logic;
SIGNAL \FreqDivider|Add0~60_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~61\ : std_logic;
SIGNAL \FreqDivider|Add0~62_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~5_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~9_combout\ : std_logic;
SIGNAL \FreqDivider|Equal1~5_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~29\ : std_logic;
SIGNAL \FreqDivider|Add0~30_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~3_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~31\ : std_logic;
SIGNAL \FreqDivider|Add0~32_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~33\ : std_logic;
SIGNAL \FreqDivider|Add0~34_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~2_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~35\ : std_logic;
SIGNAL \FreqDivider|Add0~36_combout\ : std_logic;
SIGNAL \FreqDivider|Equal1~0_combout\ : std_logic;
SIGNAL \FreqDivider|Equal1~3_combout\ : std_logic;
SIGNAL \FreqDivider|Equal1~1_combout\ : std_logic;
SIGNAL \FreqDivider|Equal1~2_combout\ : std_logic;
SIGNAL \FreqDivider|Equal1~4_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~3_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~0_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~1_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~2_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~4_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~10_combout\ : std_logic;
SIGNAL \FreqDivider|clkOut~0_combout\ : std_logic;
SIGNAL \FreqDivider|clkOut~feeder_combout\ : std_logic;
SIGNAL \FreqDivider|clkOut~q\ : std_logic;
SIGNAL \FreqDivider|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \sec_count[0]~6_combout\ : std_logic;
SIGNAL \sec_count[1]~9\ : std_logic;
SIGNAL \sec_count[2]~10_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \sec_count[2]~11\ : std_logic;
SIGNAL \sec_count[3]~12_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \sec_count[3]~13\ : std_logic;
SIGNAL \sec_count[4]~14_combout\ : std_logic;
SIGNAL \sec_count[4]~15\ : std_logic;
SIGNAL \sec_count[5]~16_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \sec_count[0]~7\ : std_logic;
SIGNAL \sec_count[1]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~37_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ : std_logic;
SIGNAL \BIN0|decOut_n~0_combout\ : std_logic;
SIGNAL \BIN0|decOut_n~1_combout\ : std_logic;
SIGNAL \BIN0|decOut_n~2_combout\ : std_logic;
SIGNAL \BIN0|decOut_n~3_combout\ : std_logic;
SIGNAL \BIN0|decOut_n~4_combout\ : std_logic;
SIGNAL \BIN0|decOut_n~5_combout\ : std_logic;
SIGNAL \BIN0|decOut_n~6_combout\ : std_logic;
SIGNAL \BIN0|decOut_n[3]~7_combout\ : std_logic;
SIGNAL \BIN0|Equal0~0_combout\ : std_logic;
SIGNAL \BIN0|decOut_n[3]~8_combout\ : std_logic;
SIGNAL \BIN0|decOut_n[3]~9_combout\ : std_logic;
SIGNAL \BIN0|decOut_n[6]~10_combout\ : std_logic;
SIGNAL \BIN0|decOut_n[6]~11_combout\ : std_logic;
SIGNAL \BIN0|decOut_n[3]~12_combout\ : std_logic;
SIGNAL \BIN0|decOut_n~13_combout\ : std_logic;
SIGNAL \BIN0|decOut_n~14_combout\ : std_logic;
SIGNAL \BIN0|decOut_n~15_combout\ : std_logic;
SIGNAL \BIN0|decOut_n~16_combout\ : std_logic;
SIGNAL \BIN0|decOut_n[6]~17_combout\ : std_logic;
SIGNAL \BIN0|decOut_n[6]~18_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~15_combout\ : std_logic;
SIGNAL \BIN1|decOut_n[3]~14_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~16_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~13_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~17_combout\ : std_logic;
SIGNAL \BIN1|decOut_n[1]~18_combout\ : std_logic;
SIGNAL \BIN1|decOut_n[1]~28_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~8_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~30_combout\ : std_logic;
SIGNAL \BIN1|decOut_n[3]~20_combout\ : std_logic;
SIGNAL \BIN1|decOut_n[3]~19_combout\ : std_logic;
SIGNAL \BIN1|decOut_n[3]~21_combout\ : std_logic;
SIGNAL \BIN1|decOut_n[4]~23_combout\ : std_logic;
SIGNAL \BIN1|decOut_n[4]~22_combout\ : std_logic;
SIGNAL \BIN1|decOut_n[4]~24_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~25_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~29_combout\ : std_logic;
SIGNAL \BIN1|decOut_n[6]~26_combout\ : std_logic;
SIGNAL \BIN1|decOut_n[6]~27_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \min_count~50_combout\ : std_logic;
SIGNAL \min_count~49_combout\ : std_logic;
SIGNAL \min_count[1]~9_combout\ : std_logic;
SIGNAL \min_count~42_combout\ : std_logic;
SIGNAL \min_count~45_combout\ : std_logic;
SIGNAL \min_count[3]~1_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \min_count[3]~44_combout\ : std_logic;
SIGNAL \min_count[3]~3_combout\ : std_logic;
SIGNAL \min_count[3]~_emulated_q\ : std_logic;
SIGNAL \min_count[3]~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \min_count~43_combout\ : std_logic;
SIGNAL \min_count[4]~21_combout\ : std_logic;
SIGNAL \min_count[4]~41_combout\ : std_logic;
SIGNAL \min_count[4]~23_combout\ : std_logic;
SIGNAL \min_count[4]~_emulated_q\ : std_logic;
SIGNAL \min_count[4]~22_combout\ : std_logic;
SIGNAL \min_count[1]~51_combout\ : std_logic;
SIGNAL \min_count[1]~52_combout\ : std_logic;
SIGNAL \min_count[5]~39_combout\ : std_logic;
SIGNAL \min_count~40_combout\ : std_logic;
SIGNAL \min_count[5]~17_combout\ : std_logic;
SIGNAL \min_count[5]~19_combout\ : std_logic;
SIGNAL \min_count[5]~_emulated_q\ : std_logic;
SIGNAL \min_count[5]~18_combout\ : std_logic;
SIGNAL \min_count[2]~38_combout\ : std_logic;
SIGNAL \min_count[1]~48_combout\ : std_logic;
SIGNAL \min_count[1]~11_combout\ : std_logic;
SIGNAL \min_count[1]~_emulated_q\ : std_logic;
SIGNAL \min_count[1]~10_combout\ : std_logic;
SIGNAL \min_count~47_combout\ : std_logic;
SIGNAL \min_count[2]~13_combout\ : std_logic;
SIGNAL \min_count[2]~46_combout\ : std_logic;
SIGNAL \min_count[2]~15_combout\ : std_logic;
SIGNAL \min_count[2]~_emulated_q\ : std_logic;
SIGNAL \min_count[2]~14_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \min_count[0]~5_combout\ : std_logic;
SIGNAL \min_count[0]~7_combout\ : std_logic;
SIGNAL \min_count[0]~_emulated_q\ : std_logic;
SIGNAL \min_count[0]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~37_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~43_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~38_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~44_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~33_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~35_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~36_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\ : std_logic;
SIGNAL \BIN2|decOut_n~0_combout\ : std_logic;
SIGNAL \BIN2|decOut_n~1_combout\ : std_logic;
SIGNAL \BIN2|decOut_n~3_combout\ : std_logic;
SIGNAL \BIN2|decOut_n~4_combout\ : std_logic;
SIGNAL \BIN2|decOut_n~2_combout\ : std_logic;
SIGNAL \BIN2|decOut_n~5_combout\ : std_logic;
SIGNAL \BIN2|decOut_n~6_combout\ : std_logic;
SIGNAL \BIN2|decOut_n~7_combout\ : std_logic;
SIGNAL \BIN2|Equal0~0_combout\ : std_logic;
SIGNAL \BIN2|decOut_n[3]~8_combout\ : std_logic;
SIGNAL \BIN2|decOut_n[3]~9_combout\ : std_logic;
SIGNAL \BIN2|decOut_n[3]~10_combout\ : std_logic;
SIGNAL \BIN2|decOut_n[6]~11_combout\ : std_logic;
SIGNAL \BIN2|decOut_n[6]~12_combout\ : std_logic;
SIGNAL \BIN2|decOut_n[3]~13_combout\ : std_logic;
SIGNAL \BIN2|decOut_n~14_combout\ : std_logic;
SIGNAL \BIN2|decOut_n~15_combout\ : std_logic;
SIGNAL \BIN2|decOut_n~16_combout\ : std_logic;
SIGNAL \BIN2|decOut_n~17_combout\ : std_logic;
SIGNAL \BIN2|decOut_n[6]~18_combout\ : std_logic;
SIGNAL \BIN2|decOut_n[6]~19_combout\ : std_logic;
SIGNAL \BIN3|decOut_n~13_combout\ : std_logic;
SIGNAL \BIN3|decOut_n[3]~14_combout\ : std_logic;
SIGNAL \BIN3|decOut_n~15_combout\ : std_logic;
SIGNAL \BIN3|decOut_n~16_combout\ : std_logic;
SIGNAL \BIN3|decOut_n~17_combout\ : std_logic;
SIGNAL \BIN3|decOut_n[1]~18_combout\ : std_logic;
SIGNAL \BIN3|decOut_n[1]~28_combout\ : std_logic;
SIGNAL \BIN3|decOut_n~8_combout\ : std_logic;
SIGNAL \BIN3|decOut_n~30_combout\ : std_logic;
SIGNAL \BIN3|decOut_n[3]~20_combout\ : std_logic;
SIGNAL \BIN3|decOut_n[3]~19_combout\ : std_logic;
SIGNAL \BIN3|decOut_n[3]~21_combout\ : std_logic;
SIGNAL \BIN3|decOut_n[3]~23_combout\ : std_logic;
SIGNAL \BIN3|decOut_n[4]~22_combout\ : std_logic;
SIGNAL \BIN3|decOut_n[4]~24_combout\ : std_logic;
SIGNAL \BIN3|decOut_n~25_combout\ : std_logic;
SIGNAL \BIN3|decOut_n~29_combout\ : std_logic;
SIGNAL \BIN3|decOut_n[6]~26_combout\ : std_logic;
SIGNAL \BIN3|decOut_n[6]~27_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \hor_count~42_combout\ : std_logic;
SIGNAL \hor_count~41_combout\ : std_logic;
SIGNAL \hor_count[1]~9_combout\ : std_logic;
SIGNAL \hor_count[1]~40_combout\ : std_logic;
SIGNAL \hor_count[1]~11_combout\ : std_logic;
SIGNAL \hor_count[1]~_emulated_q\ : std_logic;
SIGNAL \hor_count[1]~10_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \hor_count~35_combout\ : std_logic;
SIGNAL \hor_count[4]~17_combout\ : std_logic;
SIGNAL \hor_count[4]~34_combout\ : std_logic;
SIGNAL \hor_count[4]~19_combout\ : std_logic;
SIGNAL \hor_count[4]~_emulated_q\ : std_logic;
SIGNAL \hor_count[4]~18_combout\ : std_logic;
SIGNAL \hor_count[1]~32_combout\ : std_logic;
SIGNAL \hor_count[1]~33_combout\ : std_logic;
SIGNAL \hor_count[3]~36_combout\ : std_logic;
SIGNAL \hor_count~37_combout\ : std_logic;
SIGNAL \hor_count~38_combout\ : std_logic;
SIGNAL \hor_count[3]~1_combout\ : std_logic;
SIGNAL \hor_count[3]~3_combout\ : std_logic;
SIGNAL \hor_count[3]~_emulated_q\ : std_logic;
SIGNAL \hor_count[3]~2_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \hor_count[0]~5_combout\ : std_logic;
SIGNAL \hor_count[0]~7_combout\ : std_logic;
SIGNAL \hor_count[0]~_emulated_q\ : std_logic;
SIGNAL \hor_count[0]~6_combout\ : std_logic;
SIGNAL \hor_count~39_combout\ : std_logic;
SIGNAL \hor_count[2]~13_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \hor_count[2]~43_combout\ : std_logic;
SIGNAL \hor_count[2]~15_combout\ : std_logic;
SIGNAL \hor_count[2]~_emulated_q\ : std_logic;
SIGNAL \hor_count[2]~14_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[16]~3_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[16]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[15]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[15]~5_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[18]~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[18]~7_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[17]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[17]~1_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\ : std_logic;
SIGNAL \BIN4|decOut_n~0_combout\ : std_logic;
SIGNAL \BIN4|decOut_n~1_combout\ : std_logic;
SIGNAL \BIN4|decOut_n~2_combout\ : std_logic;
SIGNAL \BIN4|decOut_n~3_combout\ : std_logic;
SIGNAL \BIN4|decOut_n~4_combout\ : std_logic;
SIGNAL \BIN4|decOut_n~5_combout\ : std_logic;
SIGNAL \BIN4|Equal0~0_combout\ : std_logic;
SIGNAL \BIN4|decOut_n[3]~7_combout\ : std_logic;
SIGNAL \BIN4|decOut_n[3]~6_combout\ : std_logic;
SIGNAL \BIN4|decOut_n[3]~8_combout\ : std_logic;
SIGNAL \BIN4|decOut_n~9_combout\ : std_logic;
SIGNAL \BIN4|decOut_n~10_combout\ : std_logic;
SIGNAL \BIN4|decOut_n~11_combout\ : std_logic;
SIGNAL \BIN4|decOut_n~12_combout\ : std_logic;
SIGNAL \BIN4|decOut_n[6]~13_combout\ : std_logic;
SIGNAL \BIN4|decOut_n[6]~14_combout\ : std_logic;
SIGNAL \BIN5|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \BIN5|decOut_n[4]~1_combout\ : std_logic;
SIGNAL \BIN5|decOut_n[0]~2_combout\ : std_logic;
SIGNAL \BIN5|decOut_n[2]~3_combout\ : std_logic;
SIGNAL \BIN5|decOut_n[2]~4_combout\ : std_logic;
SIGNAL \BIN5|decOut_n[4]~5_combout\ : std_logic;
SIGNAL \BIN5|decOut_n[4]~6_combout\ : std_logic;
SIGNAL \BIN5|decOut_n~7_combout\ : std_logic;
SIGNAL \BIN5|decOut_n[5]~8_combout\ : std_logic;
SIGNAL sec_count : std_logic_vector(5 DOWNTO 0);
SIGNAL \FreqDivider|s_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \BIN5|ALT_INV_decOut_n[4]~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\FreqDivider|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FreqDivider|clkOut~q\);
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\BIN5|ALT_INV_decOut_n[4]~1_combout\ <= NOT \BIN5|decOut_n[4]~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN0|decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN0|decOut_n~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN0|decOut_n~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN0|decOut_n[3]~12_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN0|decOut_n~14_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN0|decOut_n~16_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN0|decOut_n[6]~18_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN1|decOut_n~17_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN1|decOut_n[1]~28_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN1|decOut_n~30_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN1|decOut_n[3]~21_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN1|decOut_n[4]~24_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN1|decOut_n~29_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN1|decOut_n[6]~27_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN2|decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN2|decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN2|decOut_n~7_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN2|decOut_n[3]~13_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN2|decOut_n~15_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN2|decOut_n~17_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN2|decOut_n[6]~19_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN3|decOut_n~17_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN3|decOut_n[1]~28_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN3|decOut_n~30_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN3|decOut_n[3]~21_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN3|decOut_n[4]~24_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN3|decOut_n~29_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN3|decOut_n[6]~27_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN4|decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN4|decOut_n~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN4|decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN4|decOut_n[3]~8_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN4|decOut_n~10_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN4|decOut_n~12_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN4|decOut_n[6]~14_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN5|decOut_n[0]~2_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_KEY[3]~input_o\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN5|decOut_n[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN5|decOut_n[0]~2_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN5|decOut_n[4]~6_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN5|decOut_n[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN5|ALT_INV_decOut_n[4]~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X55_Y72_N0
\FreqDivider|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~0_combout\ = \FreqDivider|s_counter\(0) $ (VCC)
-- \FreqDivider|Add0~1\ = CARRY(\FreqDivider|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(0),
	datad => VCC,
	combout => \FreqDivider|Add0~0_combout\,
	cout => \FreqDivider|Add0~1\);

-- Location: FF_X55_Y72_N1
\FreqDivider|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(0));

-- Location: LCCOMB_X55_Y72_N2
\FreqDivider|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~2_combout\ = (\FreqDivider|s_counter\(1) & (!\FreqDivider|Add0~1\)) # (!\FreqDivider|s_counter\(1) & ((\FreqDivider|Add0~1\) # (GND)))
-- \FreqDivider|Add0~3\ = CARRY((!\FreqDivider|Add0~1\) # (!\FreqDivider|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(1),
	datad => VCC,
	cin => \FreqDivider|Add0~1\,
	combout => \FreqDivider|Add0~2_combout\,
	cout => \FreqDivider|Add0~3\);

-- Location: FF_X55_Y72_N3
\FreqDivider|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(1));

-- Location: LCCOMB_X55_Y72_N4
\FreqDivider|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~4_combout\ = (\FreqDivider|s_counter\(2) & (\FreqDivider|Add0~3\ $ (GND))) # (!\FreqDivider|s_counter\(2) & (!\FreqDivider|Add0~3\ & VCC))
-- \FreqDivider|Add0~5\ = CARRY((\FreqDivider|s_counter\(2) & !\FreqDivider|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(2),
	datad => VCC,
	cin => \FreqDivider|Add0~3\,
	combout => \FreqDivider|Add0~4_combout\,
	cout => \FreqDivider|Add0~5\);

-- Location: FF_X55_Y72_N5
\FreqDivider|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(2));

-- Location: LCCOMB_X55_Y72_N6
\FreqDivider|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~6_combout\ = (\FreqDivider|s_counter\(3) & (!\FreqDivider|Add0~5\)) # (!\FreqDivider|s_counter\(3) & ((\FreqDivider|Add0~5\) # (GND)))
-- \FreqDivider|Add0~7\ = CARRY((!\FreqDivider|Add0~5\) # (!\FreqDivider|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(3),
	datad => VCC,
	cin => \FreqDivider|Add0~5\,
	combout => \FreqDivider|Add0~6_combout\,
	cout => \FreqDivider|Add0~7\);

-- Location: FF_X55_Y72_N7
\FreqDivider|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(3));

-- Location: LCCOMB_X55_Y72_N8
\FreqDivider|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~8_combout\ = (\FreqDivider|s_counter\(4) & (\FreqDivider|Add0~7\ $ (GND))) # (!\FreqDivider|s_counter\(4) & (!\FreqDivider|Add0~7\ & VCC))
-- \FreqDivider|Add0~9\ = CARRY((\FreqDivider|s_counter\(4) & !\FreqDivider|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(4),
	datad => VCC,
	cin => \FreqDivider|Add0~7\,
	combout => \FreqDivider|Add0~8_combout\,
	cout => \FreqDivider|Add0~9\);

-- Location: FF_X55_Y72_N9
\FreqDivider|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(4));

-- Location: LCCOMB_X55_Y72_N10
\FreqDivider|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~10_combout\ = (\FreqDivider|s_counter\(5) & (!\FreqDivider|Add0~9\)) # (!\FreqDivider|s_counter\(5) & ((\FreqDivider|Add0~9\) # (GND)))
-- \FreqDivider|Add0~11\ = CARRY((!\FreqDivider|Add0~9\) # (!\FreqDivider|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(5),
	datad => VCC,
	cin => \FreqDivider|Add0~9\,
	combout => \FreqDivider|Add0~10_combout\,
	cout => \FreqDivider|Add0~11\);

-- Location: FF_X55_Y72_N11
\FreqDivider|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(5));

-- Location: LCCOMB_X55_Y72_N12
\FreqDivider|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~12_combout\ = (\FreqDivider|s_counter\(6) & (\FreqDivider|Add0~11\ $ (GND))) # (!\FreqDivider|s_counter\(6) & (!\FreqDivider|Add0~11\ & VCC))
-- \FreqDivider|Add0~13\ = CARRY((\FreqDivider|s_counter\(6) & !\FreqDivider|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(6),
	datad => VCC,
	cin => \FreqDivider|Add0~11\,
	combout => \FreqDivider|Add0~12_combout\,
	cout => \FreqDivider|Add0~13\);

-- Location: FF_X55_Y72_N13
\FreqDivider|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(6));

-- Location: LCCOMB_X55_Y72_N14
\FreqDivider|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~14_combout\ = (\FreqDivider|s_counter\(7) & (!\FreqDivider|Add0~13\)) # (!\FreqDivider|s_counter\(7) & ((\FreqDivider|Add0~13\) # (GND)))
-- \FreqDivider|Add0~15\ = CARRY((!\FreqDivider|Add0~13\) # (!\FreqDivider|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(7),
	datad => VCC,
	cin => \FreqDivider|Add0~13\,
	combout => \FreqDivider|Add0~14_combout\,
	cout => \FreqDivider|Add0~15\);

-- Location: LCCOMB_X56_Y71_N2
\FreqDivider|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~11_combout\ = (!\FreqDivider|Equal1~5_combout\ & \FreqDivider|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|Equal1~5_combout\,
	datad => \FreqDivider|Add0~14_combout\,
	combout => \FreqDivider|s_counter~11_combout\);

-- Location: FF_X56_Y71_N3
\FreqDivider|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(7));

-- Location: LCCOMB_X55_Y72_N16
\FreqDivider|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~16_combout\ = (\FreqDivider|s_counter\(8) & (\FreqDivider|Add0~15\ $ (GND))) # (!\FreqDivider|s_counter\(8) & (!\FreqDivider|Add0~15\ & VCC))
-- \FreqDivider|Add0~17\ = CARRY((\FreqDivider|s_counter\(8) & !\FreqDivider|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(8),
	datad => VCC,
	cin => \FreqDivider|Add0~15\,
	combout => \FreqDivider|Add0~16_combout\,
	cout => \FreqDivider|Add0~17\);

-- Location: FF_X55_Y72_N17
\FreqDivider|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(8));

-- Location: LCCOMB_X55_Y72_N18
\FreqDivider|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~18_combout\ = (\FreqDivider|s_counter\(9) & (!\FreqDivider|Add0~17\)) # (!\FreqDivider|s_counter\(9) & ((\FreqDivider|Add0~17\) # (GND)))
-- \FreqDivider|Add0~19\ = CARRY((!\FreqDivider|Add0~17\) # (!\FreqDivider|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(9),
	datad => VCC,
	cin => \FreqDivider|Add0~17\,
	combout => \FreqDivider|Add0~18_combout\,
	cout => \FreqDivider|Add0~19\);

-- Location: FF_X55_Y72_N19
\FreqDivider|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(9));

-- Location: LCCOMB_X55_Y72_N20
\FreqDivider|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~20_combout\ = (\FreqDivider|s_counter\(10) & (\FreqDivider|Add0~19\ $ (GND))) # (!\FreqDivider|s_counter\(10) & (!\FreqDivider|Add0~19\ & VCC))
-- \FreqDivider|Add0~21\ = CARRY((\FreqDivider|s_counter\(10) & !\FreqDivider|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(10),
	datad => VCC,
	cin => \FreqDivider|Add0~19\,
	combout => \FreqDivider|Add0~20_combout\,
	cout => \FreqDivider|Add0~21\);

-- Location: FF_X55_Y72_N21
\FreqDivider|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(10));

-- Location: LCCOMB_X55_Y72_N22
\FreqDivider|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~22_combout\ = (\FreqDivider|s_counter\(11) & (!\FreqDivider|Add0~21\)) # (!\FreqDivider|s_counter\(11) & ((\FreqDivider|Add0~21\) # (GND)))
-- \FreqDivider|Add0~23\ = CARRY((!\FreqDivider|Add0~21\) # (!\FreqDivider|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(11),
	datad => VCC,
	cin => \FreqDivider|Add0~21\,
	combout => \FreqDivider|Add0~22_combout\,
	cout => \FreqDivider|Add0~23\);

-- Location: FF_X55_Y72_N23
\FreqDivider|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(11));

-- Location: LCCOMB_X55_Y72_N24
\FreqDivider|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~24_combout\ = (\FreqDivider|s_counter\(12) & (\FreqDivider|Add0~23\ $ (GND))) # (!\FreqDivider|s_counter\(12) & (!\FreqDivider|Add0~23\ & VCC))
-- \FreqDivider|Add0~25\ = CARRY((\FreqDivider|s_counter\(12) & !\FreqDivider|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(12),
	datad => VCC,
	cin => \FreqDivider|Add0~23\,
	combout => \FreqDivider|Add0~24_combout\,
	cout => \FreqDivider|Add0~25\);

-- Location: LCCOMB_X56_Y71_N0
\FreqDivider|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~10_combout\ = (\FreqDivider|Add0~24_combout\ & !\FreqDivider|Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|Add0~24_combout\,
	datad => \FreqDivider|Equal1~5_combout\,
	combout => \FreqDivider|s_counter~10_combout\);

-- Location: FF_X56_Y71_N1
\FreqDivider|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(12));

-- Location: LCCOMB_X55_Y72_N26
\FreqDivider|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~26_combout\ = (\FreqDivider|s_counter\(13) & (!\FreqDivider|Add0~25\)) # (!\FreqDivider|s_counter\(13) & ((\FreqDivider|Add0~25\) # (GND)))
-- \FreqDivider|Add0~27\ = CARRY((!\FreqDivider|Add0~25\) # (!\FreqDivider|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(13),
	datad => VCC,
	cin => \FreqDivider|Add0~25\,
	combout => \FreqDivider|Add0~26_combout\,
	cout => \FreqDivider|Add0~27\);

-- Location: LCCOMB_X56_Y71_N12
\FreqDivider|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~9_combout\ = (\FreqDivider|Add0~26_combout\ & !\FreqDivider|Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|Add0~26_combout\,
	datad => \FreqDivider|Equal1~5_combout\,
	combout => \FreqDivider|s_counter~9_combout\);

-- Location: FF_X56_Y71_N13
\FreqDivider|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(13));

-- Location: LCCOMB_X55_Y72_N28
\FreqDivider|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~28_combout\ = (\FreqDivider|s_counter\(14) & (\FreqDivider|Add0~27\ $ (GND))) # (!\FreqDivider|s_counter\(14) & (!\FreqDivider|Add0~27\ & VCC))
-- \FreqDivider|Add0~29\ = CARRY((\FreqDivider|s_counter\(14) & !\FreqDivider|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(14),
	datad => VCC,
	cin => \FreqDivider|Add0~27\,
	combout => \FreqDivider|Add0~28_combout\,
	cout => \FreqDivider|Add0~29\);

-- Location: LCCOMB_X56_Y71_N18
\FreqDivider|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~8_combout\ = (\FreqDivider|Add0~28_combout\ & !\FreqDivider|Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|Add0~28_combout\,
	datad => \FreqDivider|Equal1~5_combout\,
	combout => \FreqDivider|s_counter~8_combout\);

-- Location: FF_X56_Y71_N19
\FreqDivider|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(14));

-- Location: LCCOMB_X55_Y71_N4
\FreqDivider|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~36_combout\ = (\FreqDivider|s_counter\(18) & (\FreqDivider|Add0~35\ $ (GND))) # (!\FreqDivider|s_counter\(18) & (!\FreqDivider|Add0~35\ & VCC))
-- \FreqDivider|Add0~37\ = CARRY((\FreqDivider|s_counter\(18) & !\FreqDivider|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(18),
	datad => VCC,
	cin => \FreqDivider|Add0~35\,
	combout => \FreqDivider|Add0~36_combout\,
	cout => \FreqDivider|Add0~37\);

-- Location: LCCOMB_X55_Y71_N6
\FreqDivider|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~38_combout\ = (\FreqDivider|s_counter\(19) & (!\FreqDivider|Add0~37\)) # (!\FreqDivider|s_counter\(19) & ((\FreqDivider|Add0~37\) # (GND)))
-- \FreqDivider|Add0~39\ = CARRY((!\FreqDivider|Add0~37\) # (!\FreqDivider|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(19),
	datad => VCC,
	cin => \FreqDivider|Add0~37\,
	combout => \FreqDivider|Add0~38_combout\,
	cout => \FreqDivider|Add0~39\);

-- Location: LCCOMB_X56_Y71_N8
\FreqDivider|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~7_combout\ = (!\FreqDivider|Equal1~5_combout\ & \FreqDivider|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|Equal1~5_combout\,
	datad => \FreqDivider|Add0~38_combout\,
	combout => \FreqDivider|s_counter~7_combout\);

-- Location: FF_X56_Y71_N9
\FreqDivider|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(19));

-- Location: LCCOMB_X55_Y71_N8
\FreqDivider|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~40_combout\ = (\FreqDivider|s_counter\(20) & (\FreqDivider|Add0~39\ $ (GND))) # (!\FreqDivider|s_counter\(20) & (!\FreqDivider|Add0~39\ & VCC))
-- \FreqDivider|Add0~41\ = CARRY((\FreqDivider|s_counter\(20) & !\FreqDivider|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(20),
	datad => VCC,
	cin => \FreqDivider|Add0~39\,
	combout => \FreqDivider|Add0~40_combout\,
	cout => \FreqDivider|Add0~41\);

-- Location: LCCOMB_X56_Y71_N4
\FreqDivider|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~6_combout\ = (!\FreqDivider|Equal1~5_combout\ & \FreqDivider|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|Equal1~5_combout\,
	datad => \FreqDivider|Add0~40_combout\,
	combout => \FreqDivider|s_counter~6_combout\);

-- Location: FF_X56_Y71_N5
\FreqDivider|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(20));

-- Location: LCCOMB_X56_Y71_N6
\FreqDivider|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~7_combout\ = (\FreqDivider|s_counter\(13) & (\FreqDivider|s_counter\(14) & (\FreqDivider|s_counter\(19) & \FreqDivider|s_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(13),
	datab => \FreqDivider|s_counter\(14),
	datac => \FreqDivider|s_counter\(19),
	datad => \FreqDivider|s_counter\(20),
	combout => \FreqDivider|Equal0~7_combout\);

-- Location: LCCOMB_X55_Y71_N10
\FreqDivider|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~42_combout\ = (\FreqDivider|s_counter\(21) & (!\FreqDivider|Add0~41\)) # (!\FreqDivider|s_counter\(21) & ((\FreqDivider|Add0~41\) # (GND)))
-- \FreqDivider|Add0~43\ = CARRY((!\FreqDivider|Add0~41\) # (!\FreqDivider|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(21),
	datad => VCC,
	cin => \FreqDivider|Add0~41\,
	combout => \FreqDivider|Add0~42_combout\,
	cout => \FreqDivider|Add0~43\);

-- Location: LCCOMB_X56_Y71_N26
\FreqDivider|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~5_combout\ = (!\FreqDivider|Equal1~5_combout\ & \FreqDivider|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|Equal1~5_combout\,
	datad => \FreqDivider|Add0~42_combout\,
	combout => \FreqDivider|s_counter~5_combout\);

-- Location: FF_X56_Y71_N27
\FreqDivider|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(21));

-- Location: LCCOMB_X55_Y71_N12
\FreqDivider|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~44_combout\ = (\FreqDivider|s_counter\(22) & (\FreqDivider|Add0~43\ $ (GND))) # (!\FreqDivider|s_counter\(22) & (!\FreqDivider|Add0~43\ & VCC))
-- \FreqDivider|Add0~45\ = CARRY((\FreqDivider|s_counter\(22) & !\FreqDivider|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(22),
	datad => VCC,
	cin => \FreqDivider|Add0~43\,
	combout => \FreqDivider|Add0~44_combout\,
	cout => \FreqDivider|Add0~45\);

-- Location: LCCOMB_X56_Y71_N30
\FreqDivider|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~4_combout\ = (!\FreqDivider|Equal1~5_combout\ & \FreqDivider|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|Equal1~5_combout\,
	datad => \FreqDivider|Add0~44_combout\,
	combout => \FreqDivider|s_counter~4_combout\);

-- Location: FF_X56_Y71_N31
\FreqDivider|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(22));

-- Location: LCCOMB_X55_Y71_N14
\FreqDivider|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~46_combout\ = (\FreqDivider|s_counter\(23) & (!\FreqDivider|Add0~45\)) # (!\FreqDivider|s_counter\(23) & ((\FreqDivider|Add0~45\) # (GND)))
-- \FreqDivider|Add0~47\ = CARRY((!\FreqDivider|Add0~45\) # (!\FreqDivider|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(23),
	datad => VCC,
	cin => \FreqDivider|Add0~45\,
	combout => \FreqDivider|Add0~46_combout\,
	cout => \FreqDivider|Add0~47\);

-- Location: LCCOMB_X54_Y71_N14
\FreqDivider|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~1_combout\ = (\FreqDivider|Add0~46_combout\ & !\FreqDivider|Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|Add0~46_combout\,
	datad => \FreqDivider|Equal1~5_combout\,
	combout => \FreqDivider|s_counter~1_combout\);

-- Location: FF_X54_Y71_N15
\FreqDivider|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(23));

-- Location: LCCOMB_X55_Y71_N16
\FreqDivider|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~48_combout\ = (\FreqDivider|s_counter\(24) & (\FreqDivider|Add0~47\ $ (GND))) # (!\FreqDivider|s_counter\(24) & (!\FreqDivider|Add0~47\ & VCC))
-- \FreqDivider|Add0~49\ = CARRY((\FreqDivider|s_counter\(24) & !\FreqDivider|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(24),
	datad => VCC,
	cin => \FreqDivider|Add0~47\,
	combout => \FreqDivider|Add0~48_combout\,
	cout => \FreqDivider|Add0~49\);

-- Location: FF_X55_Y71_N17
\FreqDivider|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(24));

-- Location: LCCOMB_X55_Y71_N18
\FreqDivider|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~50_combout\ = (\FreqDivider|s_counter\(25) & (!\FreqDivider|Add0~49\)) # (!\FreqDivider|s_counter\(25) & ((\FreqDivider|Add0~49\) # (GND)))
-- \FreqDivider|Add0~51\ = CARRY((!\FreqDivider|Add0~49\) # (!\FreqDivider|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(25),
	datad => VCC,
	cin => \FreqDivider|Add0~49\,
	combout => \FreqDivider|Add0~50_combout\,
	cout => \FreqDivider|Add0~51\);

-- Location: LCCOMB_X54_Y71_N16
\FreqDivider|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~0_combout\ = (!\FreqDivider|Equal1~5_combout\ & \FreqDivider|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|Equal1~5_combout\,
	datad => \FreqDivider|Add0~50_combout\,
	combout => \FreqDivider|s_counter~0_combout\);

-- Location: FF_X54_Y71_N17
\FreqDivider|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(25));

-- Location: LCCOMB_X55_Y71_N20
\FreqDivider|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~52_combout\ = (\FreqDivider|s_counter\(26) & (\FreqDivider|Add0~51\ $ (GND))) # (!\FreqDivider|s_counter\(26) & (!\FreqDivider|Add0~51\ & VCC))
-- \FreqDivider|Add0~53\ = CARRY((\FreqDivider|s_counter\(26) & !\FreqDivider|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(26),
	datad => VCC,
	cin => \FreqDivider|Add0~51\,
	combout => \FreqDivider|Add0~52_combout\,
	cout => \FreqDivider|Add0~53\);

-- Location: FF_X55_Y71_N21
\FreqDivider|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(26));

-- Location: LCCOMB_X55_Y71_N22
\FreqDivider|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~54_combout\ = (\FreqDivider|s_counter\(27) & (!\FreqDivider|Add0~53\)) # (!\FreqDivider|s_counter\(27) & ((\FreqDivider|Add0~53\) # (GND)))
-- \FreqDivider|Add0~55\ = CARRY((!\FreqDivider|Add0~53\) # (!\FreqDivider|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(27),
	datad => VCC,
	cin => \FreqDivider|Add0~53\,
	combout => \FreqDivider|Add0~54_combout\,
	cout => \FreqDivider|Add0~55\);

-- Location: FF_X55_Y71_N23
\FreqDivider|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(27));

-- Location: LCCOMB_X56_Y71_N14
\FreqDivider|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~6_combout\ = (\FreqDivider|s_counter\(21) & (\FreqDivider|s_counter\(22) & (!\FreqDivider|s_counter\(26) & !\FreqDivider|s_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(21),
	datab => \FreqDivider|s_counter\(22),
	datac => \FreqDivider|s_counter\(26),
	datad => \FreqDivider|s_counter\(27),
	combout => \FreqDivider|Equal0~6_combout\);

-- Location: LCCOMB_X56_Y71_N22
\FreqDivider|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~8_combout\ = (!\FreqDivider|s_counter\(9) & (\FreqDivider|s_counter\(12) & (!\FreqDivider|s_counter\(8) & !\FreqDivider|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(9),
	datab => \FreqDivider|s_counter\(12),
	datac => \FreqDivider|s_counter\(8),
	datad => \FreqDivider|s_counter\(10),
	combout => \FreqDivider|Equal0~8_combout\);

-- Location: LCCOMB_X55_Y71_N24
\FreqDivider|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~56_combout\ = (\FreqDivider|s_counter\(28) & (\FreqDivider|Add0~55\ $ (GND))) # (!\FreqDivider|s_counter\(28) & (!\FreqDivider|Add0~55\ & VCC))
-- \FreqDivider|Add0~57\ = CARRY((\FreqDivider|s_counter\(28) & !\FreqDivider|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(28),
	datad => VCC,
	cin => \FreqDivider|Add0~55\,
	combout => \FreqDivider|Add0~56_combout\,
	cout => \FreqDivider|Add0~57\);

-- Location: FF_X55_Y71_N25
\FreqDivider|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(28));

-- Location: LCCOMB_X55_Y71_N26
\FreqDivider|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~58_combout\ = (\FreqDivider|s_counter\(29) & (!\FreqDivider|Add0~57\)) # (!\FreqDivider|s_counter\(29) & ((\FreqDivider|Add0~57\) # (GND)))
-- \FreqDivider|Add0~59\ = CARRY((!\FreqDivider|Add0~57\) # (!\FreqDivider|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(29),
	datad => VCC,
	cin => \FreqDivider|Add0~57\,
	combout => \FreqDivider|Add0~58_combout\,
	cout => \FreqDivider|Add0~59\);

-- Location: FF_X55_Y71_N27
\FreqDivider|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(29));

-- Location: LCCOMB_X55_Y71_N28
\FreqDivider|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~60_combout\ = (\FreqDivider|s_counter\(30) & (\FreqDivider|Add0~59\ $ (GND))) # (!\FreqDivider|s_counter\(30) & (!\FreqDivider|Add0~59\ & VCC))
-- \FreqDivider|Add0~61\ = CARRY((\FreqDivider|s_counter\(30) & !\FreqDivider|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(30),
	datad => VCC,
	cin => \FreqDivider|Add0~59\,
	combout => \FreqDivider|Add0~60_combout\,
	cout => \FreqDivider|Add0~61\);

-- Location: FF_X55_Y71_N29
\FreqDivider|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(30));

-- Location: LCCOMB_X55_Y71_N30
\FreqDivider|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~62_combout\ = \FreqDivider|s_counter\(31) $ (\FreqDivider|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(31),
	cin => \FreqDivider|Add0~61\,
	combout => \FreqDivider|Add0~62_combout\);

-- Location: FF_X55_Y71_N31
\FreqDivider|s_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(31));

-- Location: LCCOMB_X57_Y71_N24
\FreqDivider|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~5_combout\ = (!\FreqDivider|s_counter\(30) & (!\FreqDivider|s_counter\(29) & (!\FreqDivider|s_counter\(28) & !\FreqDivider|s_counter\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(30),
	datab => \FreqDivider|s_counter\(29),
	datac => \FreqDivider|s_counter\(28),
	datad => \FreqDivider|s_counter\(31),
	combout => \FreqDivider|Equal0~5_combout\);

-- Location: LCCOMB_X56_Y71_N20
\FreqDivider|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~9_combout\ = (\FreqDivider|Equal0~7_combout\ & (\FreqDivider|Equal0~6_combout\ & (\FreqDivider|Equal0~8_combout\ & \FreqDivider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|Equal0~7_combout\,
	datab => \FreqDivider|Equal0~6_combout\,
	datac => \FreqDivider|Equal0~8_combout\,
	datad => \FreqDivider|Equal0~5_combout\,
	combout => \FreqDivider|Equal0~9_combout\);

-- Location: LCCOMB_X56_Y71_N28
\FreqDivider|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal1~5_combout\ = (\FreqDivider|s_counter\(6) & (!\FreqDivider|s_counter\(7) & (\FreqDivider|Equal1~4_combout\ & \FreqDivider|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(6),
	datab => \FreqDivider|s_counter\(7),
	datac => \FreqDivider|Equal1~4_combout\,
	datad => \FreqDivider|Equal0~9_combout\,
	combout => \FreqDivider|Equal1~5_combout\);

-- Location: LCCOMB_X55_Y72_N30
\FreqDivider|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~30_combout\ = (\FreqDivider|s_counter\(15) & (!\FreqDivider|Add0~29\)) # (!\FreqDivider|s_counter\(15) & ((\FreqDivider|Add0~29\) # (GND)))
-- \FreqDivider|Add0~31\ = CARRY((!\FreqDivider|Add0~29\) # (!\FreqDivider|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(15),
	datad => VCC,
	cin => \FreqDivider|Add0~29\,
	combout => \FreqDivider|Add0~30_combout\,
	cout => \FreqDivider|Add0~31\);

-- Location: LCCOMB_X54_Y71_N24
\FreqDivider|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~3_combout\ = (!\FreqDivider|Equal1~5_combout\ & \FreqDivider|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|Equal1~5_combout\,
	datad => \FreqDivider|Add0~30_combout\,
	combout => \FreqDivider|s_counter~3_combout\);

-- Location: FF_X54_Y71_N25
\FreqDivider|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(15));

-- Location: LCCOMB_X55_Y71_N0
\FreqDivider|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~32_combout\ = (\FreqDivider|s_counter\(16) & (\FreqDivider|Add0~31\ $ (GND))) # (!\FreqDivider|s_counter\(16) & (!\FreqDivider|Add0~31\ & VCC))
-- \FreqDivider|Add0~33\ = CARRY((\FreqDivider|s_counter\(16) & !\FreqDivider|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(16),
	datad => VCC,
	cin => \FreqDivider|Add0~31\,
	combout => \FreqDivider|Add0~32_combout\,
	cout => \FreqDivider|Add0~33\);

-- Location: FF_X55_Y71_N1
\FreqDivider|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(16));

-- Location: LCCOMB_X55_Y71_N2
\FreqDivider|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~34_combout\ = (\FreqDivider|s_counter\(17) & (!\FreqDivider|Add0~33\)) # (!\FreqDivider|s_counter\(17) & ((\FreqDivider|Add0~33\) # (GND)))
-- \FreqDivider|Add0~35\ = CARRY((!\FreqDivider|Add0~33\) # (!\FreqDivider|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(17),
	datad => VCC,
	cin => \FreqDivider|Add0~33\,
	combout => \FreqDivider|Add0~34_combout\,
	cout => \FreqDivider|Add0~35\);

-- Location: LCCOMB_X54_Y71_N6
\FreqDivider|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~2_combout\ = (!\FreqDivider|Equal1~5_combout\ & \FreqDivider|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|Equal1~5_combout\,
	datad => \FreqDivider|Add0~34_combout\,
	combout => \FreqDivider|s_counter~2_combout\);

-- Location: FF_X54_Y71_N7
\FreqDivider|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(17));

-- Location: FF_X55_Y71_N5
\FreqDivider|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(18));

-- Location: LCCOMB_X54_Y71_N26
\FreqDivider|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal1~0_combout\ = (!\FreqDivider|s_counter\(18) & (\FreqDivider|s_counter\(23) & (!\FreqDivider|s_counter\(24) & \FreqDivider|s_counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(18),
	datab => \FreqDivider|s_counter\(23),
	datac => \FreqDivider|s_counter\(24),
	datad => \FreqDivider|s_counter\(25),
	combout => \FreqDivider|Equal1~0_combout\);

-- Location: LCCOMB_X54_Y71_N8
\FreqDivider|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal1~3_combout\ = (\FreqDivider|s_counter\(1) & \FreqDivider|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|s_counter\(1),
	datad => \FreqDivider|s_counter\(0),
	combout => \FreqDivider|Equal1~3_combout\);

-- Location: LCCOMB_X54_Y71_N4
\FreqDivider|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal1~1_combout\ = (\FreqDivider|s_counter\(17) & (!\FreqDivider|s_counter\(16) & (!\FreqDivider|s_counter\(11) & \FreqDivider|s_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(17),
	datab => \FreqDivider|s_counter\(16),
	datac => \FreqDivider|s_counter\(11),
	datad => \FreqDivider|s_counter\(15),
	combout => \FreqDivider|Equal1~1_combout\);

-- Location: LCCOMB_X54_Y71_N10
\FreqDivider|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal1~2_combout\ = (\FreqDivider|s_counter\(3) & (\FreqDivider|s_counter\(2) & (\FreqDivider|s_counter\(5) & \FreqDivider|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(3),
	datab => \FreqDivider|s_counter\(2),
	datac => \FreqDivider|s_counter\(5),
	datad => \FreqDivider|s_counter\(4),
	combout => \FreqDivider|Equal1~2_combout\);

-- Location: LCCOMB_X54_Y71_N18
\FreqDivider|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal1~4_combout\ = (\FreqDivider|Equal1~0_combout\ & (\FreqDivider|Equal1~3_combout\ & (\FreqDivider|Equal1~1_combout\ & \FreqDivider|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|Equal1~0_combout\,
	datab => \FreqDivider|Equal1~3_combout\,
	datac => \FreqDivider|Equal1~1_combout\,
	datad => \FreqDivider|Equal1~2_combout\,
	combout => \FreqDivider|Equal1~4_combout\);

-- Location: LCCOMB_X54_Y71_N30
\FreqDivider|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~3_combout\ = (!\FreqDivider|s_counter\(0) & !\FreqDivider|s_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(0),
	datac => \FreqDivider|s_counter\(1),
	combout => \FreqDivider|Equal0~3_combout\);

-- Location: LCCOMB_X54_Y71_N20
\FreqDivider|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~0_combout\ = (\FreqDivider|s_counter\(18) & (!\FreqDivider|s_counter\(23) & (\FreqDivider|s_counter\(24) & !\FreqDivider|s_counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(18),
	datab => \FreqDivider|s_counter\(23),
	datac => \FreqDivider|s_counter\(24),
	datad => \FreqDivider|s_counter\(25),
	combout => \FreqDivider|Equal0~0_combout\);

-- Location: LCCOMB_X54_Y71_N22
\FreqDivider|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~1_combout\ = (\FreqDivider|s_counter\(11) & (!\FreqDivider|s_counter\(15) & (\FreqDivider|s_counter\(16) & !\FreqDivider|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(11),
	datab => \FreqDivider|s_counter\(15),
	datac => \FreqDivider|s_counter\(16),
	datad => \FreqDivider|s_counter\(17),
	combout => \FreqDivider|Equal0~1_combout\);

-- Location: LCCOMB_X54_Y71_N28
\FreqDivider|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~2_combout\ = (!\FreqDivider|s_counter\(3) & (!\FreqDivider|s_counter\(2) & (!\FreqDivider|s_counter\(5) & !\FreqDivider|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(3),
	datab => \FreqDivider|s_counter\(2),
	datac => \FreqDivider|s_counter\(5),
	datad => \FreqDivider|s_counter\(4),
	combout => \FreqDivider|Equal0~2_combout\);

-- Location: LCCOMB_X54_Y71_N12
\FreqDivider|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~4_combout\ = (\FreqDivider|Equal0~3_combout\ & (\FreqDivider|Equal0~0_combout\ & (\FreqDivider|Equal0~1_combout\ & \FreqDivider|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|Equal0~3_combout\,
	datab => \FreqDivider|Equal0~0_combout\,
	datac => \FreqDivider|Equal0~1_combout\,
	datad => \FreqDivider|Equal0~2_combout\,
	combout => \FreqDivider|Equal0~4_combout\);

-- Location: LCCOMB_X56_Y71_N10
\FreqDivider|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~10_combout\ = (!\FreqDivider|s_counter\(7) & (\FreqDivider|s_counter\(6) & \FreqDivider|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(7),
	datac => \FreqDivider|s_counter\(6),
	datad => \FreqDivider|Equal0~9_combout\,
	combout => \FreqDivider|Equal0~10_combout\);

-- Location: LCCOMB_X56_Y71_N16
\FreqDivider|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|clkOut~0_combout\ = (\FreqDivider|Equal0~10_combout\ & ((\FreqDivider|Equal0~4_combout\) # ((!\FreqDivider|Equal1~4_combout\ & \FreqDivider|clkOut~q\)))) # (!\FreqDivider|Equal0~10_combout\ & (((\FreqDivider|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|Equal1~4_combout\,
	datab => \FreqDivider|Equal0~4_combout\,
	datac => \FreqDivider|clkOut~q\,
	datad => \FreqDivider|Equal0~10_combout\,
	combout => \FreqDivider|clkOut~0_combout\);

-- Location: LCCOMB_X56_Y71_N24
\FreqDivider|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|clkOut~feeder_combout\ = \FreqDivider|clkOut~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|clkOut~0_combout\,
	combout => \FreqDivider|clkOut~feeder_combout\);

-- Location: FF_X56_Y71_N25
\FreqDivider|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|clkOut~q\);

-- Location: CLKCTRL_G10
\FreqDivider|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FreqDivider|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FreqDivider|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X109_Y31_N14
\sec_count[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec_count[0]~6_combout\ = sec_count(0) $ (VCC)
-- \sec_count[0]~7\ = CARRY(sec_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec_count(0),
	datad => VCC,
	combout => \sec_count[0]~6_combout\,
	cout => \sec_count[0]~7\);

-- Location: LCCOMB_X109_Y31_N16
\sec_count[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec_count[1]~8_combout\ = (sec_count(1) & (!\sec_count[0]~7\)) # (!sec_count(1) & ((\sec_count[0]~7\) # (GND)))
-- \sec_count[1]~9\ = CARRY((!\sec_count[0]~7\) # (!sec_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec_count(1),
	datad => VCC,
	cin => \sec_count[0]~7\,
	combout => \sec_count[1]~8_combout\,
	cout => \sec_count[1]~9\);

-- Location: LCCOMB_X109_Y31_N18
\sec_count[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec_count[2]~10_combout\ = (sec_count(2) & (\sec_count[1]~9\ $ (GND))) # (!sec_count(2) & (!\sec_count[1]~9\ & VCC))
-- \sec_count[2]~11\ = CARRY((sec_count(2) & !\sec_count[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec_count(2),
	datad => VCC,
	cin => \sec_count[1]~9\,
	combout => \sec_count[2]~10_combout\,
	cout => \sec_count[2]~11\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: FF_X109_Y31_N19
\sec_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \sec_count[2]~10_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec_count(2));

-- Location: LCCOMB_X109_Y31_N20
\sec_count[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec_count[3]~12_combout\ = (sec_count(3) & (!\sec_count[2]~11\)) # (!sec_count(3) & ((\sec_count[2]~11\) # (GND)))
-- \sec_count[3]~13\ = CARRY((!\sec_count[2]~11\) # (!sec_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec_count(3),
	datad => VCC,
	cin => \sec_count[2]~11\,
	combout => \sec_count[3]~12_combout\,
	cout => \sec_count[3]~13\);

-- Location: FF_X109_Y31_N21
\sec_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \sec_count[3]~12_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec_count(3));

-- Location: LCCOMB_X109_Y31_N6
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((!sec_count(2) & ((!sec_count(1)) # (!sec_count(0))))) # (!sec_count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_count(2),
	datab => sec_count(3),
	datac => sec_count(0),
	datad => sec_count(1),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X109_Y31_N22
\sec_count[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec_count[4]~14_combout\ = (sec_count(4) & (\sec_count[3]~13\ $ (GND))) # (!sec_count(4) & (!\sec_count[3]~13\ & VCC))
-- \sec_count[4]~15\ = CARRY((sec_count(4) & !\sec_count[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec_count(4),
	datad => VCC,
	cin => \sec_count[3]~13\,
	combout => \sec_count[4]~14_combout\,
	cout => \sec_count[4]~15\);

-- Location: FF_X109_Y31_N23
\sec_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \sec_count[4]~14_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec_count(4));

-- Location: LCCOMB_X109_Y31_N24
\sec_count[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec_count[5]~16_combout\ = \sec_count[4]~15\ $ (sec_count(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sec_count(5),
	cin => \sec_count[4]~15\,
	combout => \sec_count[5]~16_combout\);

-- Location: FF_X109_Y31_N25
\sec_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \sec_count[5]~16_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec_count(5));

-- Location: LCCOMB_X109_Y31_N2
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!\LessThan0~2_combout\ & (sec_count(4) & sec_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datac => sec_count(4),
	datad => sec_count(5),
	combout => \LessThan0~3_combout\);

-- Location: FF_X109_Y31_N15
\sec_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \sec_count[0]~6_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec_count(0));

-- Location: FF_X109_Y31_N17
\sec_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \sec_count[1]~8_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec_count(1));

-- Location: LCCOMB_X108_Y30_N12
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = sec_count(3) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(sec_count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec_count(3),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X108_Y30_N14
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (sec_count(4) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!sec_count(4) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!sec_count(4) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec_count(4),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X108_Y30_N16
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (sec_count(5) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!sec_count(5) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & 
-- VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((sec_count(5) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec_count(5),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X108_Y30_N18
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X109_Y31_N28
\Mod0|auto_generated|divider|divider|StageOut[21]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & sec_count(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => sec_count(5),
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X108_Y30_N0
\Mod0|auto_generated|divider|divider|StageOut[21]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X108_Y30_N24
\Mod0|auto_generated|divider|divider|StageOut[20]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X109_Y31_N30
\Mod0|auto_generated|divider|divider|StageOut[20]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ = (sec_count(4) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec_count(4),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X108_Y30_N22
\Mod0|auto_generated|divider|divider|StageOut[19]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ = (sec_count(3) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec_count(3),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X108_Y30_N20
\Mod0|auto_generated|divider|divider|StageOut[19]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X109_Y31_N0
\Mod0|auto_generated|divider|divider|StageOut[18]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & sec_count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => sec_count(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X109_Y31_N26
\Mod0|auto_generated|divider|divider|StageOut[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & sec_count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => sec_count(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X108_Y30_N2
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X108_Y30_N4
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X108_Y30_N6
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X108_Y30_N8
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X108_Y30_N10
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X109_Y30_N22
\Mod0|auto_generated|divider|divider|StageOut[24]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\ = (sec_count(1) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec_count(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\);

-- Location: LCCOMB_X109_Y30_N28
\Mod0|auto_generated|divider|divider|StageOut[24]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\ = (sec_count(1) & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec_count(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\);

-- Location: LCCOMB_X109_Y30_N10
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X109_Y30_N6
\Mod0|auto_generated|divider|divider|StageOut[28]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~37_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~37_combout\);

-- Location: LCCOMB_X108_Y30_N28
\Mod0|auto_generated|divider|divider|StageOut[28]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((sec_count(5)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => sec_count(5),
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\);

-- Location: LCCOMB_X108_Y30_N30
\Mod0|auto_generated|divider|divider|StageOut[27]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (sec_count(4))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_count(4),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\);

-- Location: LCCOMB_X109_Y30_N0
\Mod0|auto_generated|divider|divider|StageOut[27]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~38_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~38_combout\);

-- Location: LCCOMB_X108_Y30_N26
\Mod0|auto_generated|divider|divider|StageOut[26]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (sec_count(3))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => sec_count(3),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: LCCOMB_X109_Y30_N8
\Mod0|auto_generated|divider|divider|StageOut[26]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\);

-- Location: LCCOMB_X109_Y30_N4
\Mod0|auto_generated|divider|divider|StageOut[25]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\);

-- Location: LCCOMB_X109_Y30_N2
\Mod0|auto_generated|divider|divider|StageOut[25]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & sec_count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => sec_count(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\);

-- Location: LCCOMB_X109_Y30_N12
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X109_Y30_N14
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X109_Y30_N16
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[27]~38_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[27]~38_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X109_Y30_N18
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[28]~37_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[28]~37_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X109_Y30_N20
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X109_Y30_N24
\Mod0|auto_generated|divider|divider|StageOut[31]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((sec_count(1)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => sec_count(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\);

-- Location: LCCOMB_X109_Y30_N26
\Mod0|auto_generated|divider|divider|StageOut[33]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\);

-- Location: LCCOMB_X109_Y30_N30
\Mod0|auto_generated|divider|divider|StageOut[32]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\);

-- Location: LCCOMB_X113_Y20_N8
\BIN0|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (sec_count(0) & (\Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ $ (\Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ $ (sec_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => sec_count(0),
	combout => \BIN0|decOut_n~0_combout\);

-- Location: LCCOMB_X114_Y20_N28
\BIN0|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n~1_combout\ = (\BIN0|decOut_n~0_combout\) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	datad => \BIN0|decOut_n~0_combout\,
	combout => \BIN0|decOut_n~1_combout\);

-- Location: LCCOMB_X113_Y20_N30
\BIN0|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\) # (!sec_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => sec_count(0),
	combout => \BIN0|decOut_n~2_combout\);

-- Location: LCCOMB_X113_Y20_N24
\BIN0|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n~3_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & sec_count(0)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ $ (sec_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => sec_count(0),
	combout => \BIN0|decOut_n~3_combout\);

-- Location: LCCOMB_X114_Y20_N14
\BIN0|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n~4_combout\ = (\BIN0|decOut_n~2_combout\) # ((\BIN0|decOut_n~3_combout\) # (!\KEY[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BIN0|decOut_n~2_combout\,
	datac => \KEY[3]~input_o\,
	datad => \BIN0|decOut_n~3_combout\,
	combout => \BIN0|decOut_n~4_combout\);

-- Location: LCCOMB_X113_Y20_N26
\BIN0|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n~5_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & !sec_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => sec_count(0),
	combout => \BIN0|decOut_n~5_combout\);

-- Location: LCCOMB_X114_Y20_N8
\BIN0|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n~6_combout\ = (\BIN0|decOut_n~5_combout\) # ((\BIN0|decOut_n~2_combout\) # (!\KEY[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN0|decOut_n~5_combout\,
	datac => \KEY[3]~input_o\,
	datad => \BIN0|decOut_n~2_combout\,
	combout => \BIN0|decOut_n~6_combout\);

-- Location: LCCOMB_X113_Y20_N10
\BIN0|decOut_n[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n[3]~7_combout\ = (!sec_count(0) & ((\Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => sec_count(0),
	combout => \BIN0|decOut_n[3]~7_combout\);

-- Location: LCCOMB_X113_Y20_N16
\BIN0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|Equal0~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & sec_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => sec_count(0),
	combout => \BIN0|Equal0~0_combout\);

-- Location: LCCOMB_X113_Y20_N20
\BIN0|decOut_n[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n[3]~8_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (sec_count(0) & (\Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ $ (!\Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => sec_count(0),
	combout => \BIN0|decOut_n[3]~8_combout\);

-- Location: LCCOMB_X113_Y20_N22
\BIN0|decOut_n[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n[3]~9_combout\ = (\KEY[3]~input_o\ & !\BIN0|decOut_n[3]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	datad => \BIN0|decOut_n[3]~8_combout\,
	combout => \BIN0|decOut_n[3]~9_combout\);

-- Location: LCCOMB_X113_Y20_N12
\BIN0|decOut_n[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & sec_count(0)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & !sec_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => sec_count(0),
	combout => \BIN0|decOut_n[6]~10_combout\);

-- Location: LCCOMB_X113_Y20_N6
\BIN0|decOut_n[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n[6]~11_combout\ = (\KEY[3]~input_o\ & \BIN0|decOut_n[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	datad => \BIN0|decOut_n[6]~10_combout\,
	combout => \BIN0|decOut_n[6]~11_combout\);

-- Location: LCCOMB_X113_Y20_N4
\BIN0|decOut_n[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n[3]~12_combout\ = (\BIN0|decOut_n[6]~11_combout\ & (((\BIN0|Equal0~0_combout\)))) # (!\BIN0|decOut_n[6]~11_combout\ & ((\BIN0|decOut_n[3]~7_combout\) # ((!\BIN0|decOut_n[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN0|decOut_n[3]~7_combout\,
	datab => \BIN0|Equal0~0_combout\,
	datac => \BIN0|decOut_n[3]~9_combout\,
	datad => \BIN0|decOut_n[6]~11_combout\,
	combout => \BIN0|decOut_n[3]~12_combout\);

-- Location: LCCOMB_X113_Y20_N14
\BIN0|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n~13_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & ((sec_count(0))))) # (!\Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\)) # (!\Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & ((sec_count(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => sec_count(0),
	combout => \BIN0|decOut_n~13_combout\);

-- Location: LCCOMB_X114_Y20_N18
\BIN0|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n~14_combout\ = (\BIN0|decOut_n~13_combout\) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	datad => \BIN0|decOut_n~13_combout\,
	combout => \BIN0|decOut_n~14_combout\);

-- Location: LCCOMB_X113_Y20_N28
\BIN0|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n~15_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & ((sec_count(0)) # (!\Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & (sec_count(0) & (\Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ $ (!\Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => sec_count(0),
	combout => \BIN0|decOut_n~15_combout\);

-- Location: LCCOMB_X114_Y20_N12
\BIN0|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n~16_combout\ = (\BIN0|decOut_n~15_combout\) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	datad => \BIN0|decOut_n~15_combout\,
	combout => \BIN0|decOut_n~16_combout\);

-- Location: LCCOMB_X113_Y20_N18
\BIN0|decOut_n[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n[6]~17_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & !sec_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => sec_count(0),
	combout => \BIN0|decOut_n[6]~17_combout\);

-- Location: LCCOMB_X113_Y20_N0
\BIN0|decOut_n[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n[6]~18_combout\ = (\BIN0|decOut_n[6]~11_combout\ & (((!\BIN0|Equal0~0_combout\)))) # (!\BIN0|decOut_n[6]~11_combout\ & ((\BIN0|decOut_n[6]~17_combout\) # ((!\BIN0|decOut_n[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN0|decOut_n[6]~11_combout\,
	datab => \BIN0|decOut_n[6]~17_combout\,
	datac => \BIN0|decOut_n[3]~9_combout\,
	datad => \BIN0|Equal0~0_combout\,
	combout => \BIN0|decOut_n[6]~18_combout\);

-- Location: LCCOMB_X107_Y27_N16
\BIN1|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~15_combout\ = (sec_count(3) & ((sec_count(1)) # (sec_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_count(3),
	datac => sec_count(1),
	datad => sec_count(2),
	combout => \BIN1|decOut_n~15_combout\);

-- Location: LCCOMB_X107_Y27_N14
\BIN1|decOut_n[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n[3]~14_combout\ = (!sec_count(3) & !sec_count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec_count(3),
	datad => sec_count(2),
	combout => \BIN1|decOut_n[3]~14_combout\);

-- Location: LCCOMB_X107_Y27_N22
\BIN1|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~16_combout\ = (sec_count(5) & (((sec_count(4))))) # (!sec_count(5) & ((sec_count(4) & ((\BIN1|decOut_n[3]~14_combout\))) # (!sec_count(4) & (\BIN1|decOut_n~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_count(5),
	datab => \BIN1|decOut_n~15_combout\,
	datac => \BIN1|decOut_n[3]~14_combout\,
	datad => sec_count(4),
	combout => \BIN1|decOut_n~16_combout\);

-- Location: LCCOMB_X107_Y27_N20
\BIN1|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~13_combout\ = (sec_count(3)) # ((sec_count(4) & ((sec_count(2)) # (sec_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_count(3),
	datab => sec_count(2),
	datac => sec_count(1),
	datad => sec_count(4),
	combout => \BIN1|decOut_n~13_combout\);

-- Location: LCCOMB_X107_Y27_N4
\BIN1|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~17_combout\ = (\BIN1|decOut_n~16_combout\ $ (((sec_count(5) & \BIN1|decOut_n~13_combout\)))) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN1|decOut_n~16_combout\,
	datab => \KEY[3]~input_o\,
	datac => sec_count(5),
	datad => \BIN1|decOut_n~13_combout\,
	combout => \BIN1|decOut_n~17_combout\);

-- Location: LCCOMB_X109_Y31_N12
\BIN1|decOut_n[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n[1]~18_combout\ = (sec_count(1)) # ((sec_count(3)) # (sec_count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_count(1),
	datab => sec_count(3),
	datad => sec_count(2),
	combout => \BIN1|decOut_n[1]~18_combout\);

-- Location: LCCOMB_X109_Y31_N4
\BIN1|decOut_n[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n[1]~28_combout\ = ((\BIN1|decOut_n[1]~18_combout\ & (sec_count(4) & sec_count(5)))) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN1|decOut_n[1]~18_combout\,
	datab => \KEY[3]~input_o\,
	datac => sec_count(4),
	datad => sec_count(5),
	combout => \BIN1|decOut_n[1]~28_combout\);

-- Location: LCCOMB_X107_Y27_N24
\BIN1|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~8_combout\ = (sec_count(3) & ((!sec_count(2)) # (!sec_count(1)))) # (!sec_count(3) & ((sec_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_count(3),
	datac => sec_count(1),
	datad => sec_count(2),
	combout => \BIN1|decOut_n~8_combout\);

-- Location: LCCOMB_X107_Y27_N18
\BIN1|decOut_n~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~30_combout\ = ((!sec_count(5) & (\BIN1|decOut_n~8_combout\ & sec_count(4)))) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_count(5),
	datab => \BIN1|decOut_n~8_combout\,
	datac => \KEY[3]~input_o\,
	datad => sec_count(4),
	combout => \BIN1|decOut_n~30_combout\);

-- Location: LCCOMB_X107_Y27_N12
\BIN1|decOut_n[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n[3]~20_combout\ = (!sec_count(4) & ((sec_count(5)) # ((sec_count(2)) # (sec_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_count(5),
	datab => sec_count(2),
	datac => sec_count(1),
	datad => sec_count(4),
	combout => \BIN1|decOut_n[3]~20_combout\);

-- Location: LCCOMB_X107_Y27_N2
\BIN1|decOut_n[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n[3]~19_combout\ = (\BIN1|decOut_n[3]~14_combout\ & (sec_count(4) & ((!sec_count(1)) # (!sec_count(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_count(5),
	datab => sec_count(1),
	datac => \BIN1|decOut_n[3]~14_combout\,
	datad => sec_count(4),
	combout => \BIN1|decOut_n[3]~19_combout\);

-- Location: LCCOMB_X107_Y27_N10
\BIN1|decOut_n[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n[3]~21_combout\ = ((\BIN1|decOut_n[3]~19_combout\) # ((\BIN1|decOut_n[3]~20_combout\ & sec_count(3)))) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN1|decOut_n[3]~20_combout\,
	datab => \KEY[3]~input_o\,
	datac => sec_count(3),
	datad => \BIN1|decOut_n[3]~19_combout\,
	combout => \BIN1|decOut_n[3]~21_combout\);

-- Location: LCCOMB_X107_Y27_N6
\BIN1|decOut_n[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n[4]~23_combout\ = (!sec_count(5) & (!\BIN1|decOut_n~15_combout\ & (\KEY[3]~input_o\ & !sec_count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_count(5),
	datab => \BIN1|decOut_n~15_combout\,
	datac => \KEY[3]~input_o\,
	datad => sec_count(4),
	combout => \BIN1|decOut_n[4]~23_combout\);

-- Location: LCCOMB_X107_Y27_N28
\BIN1|decOut_n[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n[4]~22_combout\ = (sec_count(3) & ((sec_count(5) & ((!sec_count(2)))) # (!sec_count(5) & (sec_count(1) & sec_count(2))))) # (!sec_count(3) & (((sec_count(5)) # (!sec_count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_count(3),
	datab => sec_count(1),
	datac => sec_count(5),
	datad => sec_count(2),
	combout => \BIN1|decOut_n[4]~22_combout\);

-- Location: LCCOMB_X107_Y27_N0
\BIN1|decOut_n[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n[4]~24_combout\ = (!\BIN1|decOut_n[4]~23_combout\ & ((\BIN1|decOut_n[4]~22_combout\) # ((!sec_count(4)) # (!\KEY[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN1|decOut_n[4]~23_combout\,
	datab => \BIN1|decOut_n[4]~22_combout\,
	datac => \KEY[3]~input_o\,
	datad => sec_count(4),
	combout => \BIN1|decOut_n[4]~24_combout\);

-- Location: LCCOMB_X107_Y27_N26
\BIN1|decOut_n~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~25_combout\ = (!sec_count(4) & ((sec_count(5) & (!sec_count(3))) # (!sec_count(5) & ((\BIN1|decOut_n~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_count(3),
	datab => \BIN1|decOut_n~15_combout\,
	datac => sec_count(5),
	datad => sec_count(4),
	combout => \BIN1|decOut_n~25_combout\);

-- Location: LCCOMB_X107_Y27_N30
\BIN1|decOut_n~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~29_combout\ = (\BIN1|decOut_n~25_combout\) # (((!sec_count(5) & sec_count(4))) # (!\KEY[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN1|decOut_n~25_combout\,
	datab => \KEY[3]~input_o\,
	datac => sec_count(5),
	datad => sec_count(4),
	combout => \BIN1|decOut_n~29_combout\);

-- Location: LCCOMB_X107_Y27_N8
\BIN1|decOut_n[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n[6]~26_combout\ = (!sec_count(5) & (((!sec_count(3) & !sec_count(2))) # (!sec_count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_count(3),
	datab => sec_count(2),
	datac => sec_count(5),
	datad => sec_count(4),
	combout => \BIN1|decOut_n[6]~26_combout\);

-- Location: LCCOMB_X105_Y27_N20
\BIN1|decOut_n[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n[6]~27_combout\ = ((\BIN1|decOut_n[6]~26_combout\) # (\BIN1|decOut_n[4]~23_combout\)) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datac => \BIN1|decOut_n[6]~26_combout\,
	datad => \BIN1|decOut_n[4]~23_combout\,
	combout => \BIN1|decOut_n[6]~27_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X110_Y50_N16
\min_count~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count~50_combout\ = \KEY[0]~input_o\ $ (\min_count[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \min_count[0]~6_combout\,
	combout => \min_count~50_combout\);

-- Location: LCCOMB_X114_Y50_N6
\min_count~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count~49_combout\ = \min_count[1]~10_combout\ $ (((!\KEY[0]~input_o\ & \min_count[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \min_count[1]~10_combout\,
	datad => \min_count[0]~6_combout\,
	combout => \min_count~49_combout\);

-- Location: LCCOMB_X114_Y50_N4
\min_count[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[1]~9_combout\ = (\KEY[1]~input_o\ & ((\min_count[1]~9_combout\))) # (!\KEY[1]~input_o\ & (\min_count~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count~49_combout\,
	datac => \min_count[1]~9_combout\,
	datad => \KEY[1]~input_o\,
	combout => \min_count[1]~9_combout\);

-- Location: LCCOMB_X114_Y50_N30
\min_count~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count~42_combout\ = (\KEY[0]~input_o\) # ((!\min_count[1]~10_combout\) # (!\min_count[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \min_count[0]~6_combout\,
	datad => \min_count[1]~10_combout\,
	combout => \min_count~42_combout\);

-- Location: LCCOMB_X114_Y50_N14
\min_count~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count~45_combout\ = \min_count[3]~2_combout\ $ (((!\min_count~42_combout\ & \min_count[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \min_count[3]~2_combout\,
	datac => \min_count~42_combout\,
	datad => \min_count[2]~14_combout\,
	combout => \min_count~45_combout\);

-- Location: LCCOMB_X114_Y50_N16
\min_count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[3]~1_combout\ = (\KEY[1]~input_o\ & ((\min_count[3]~1_combout\))) # (!\KEY[1]~input_o\ & (\min_count~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \min_count~45_combout\,
	datad => \min_count[3]~1_combout\,
	combout => \min_count[3]~1_combout\);

-- Location: LCCOMB_X110_Y50_N26
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (\min_count[0]~6_combout\ & (\min_count[1]~10_combout\ & \min_count[2]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[0]~6_combout\,
	datac => \min_count[1]~10_combout\,
	datad => \min_count[2]~14_combout\,
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X109_Y50_N18
\min_count[3]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[3]~44_combout\ = (!\min_count[2]~38_combout\ & (\LessThan1~1_combout\ & (\min_count[3]~2_combout\ $ (\Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[3]~2_combout\,
	datab => \Add1~1_combout\,
	datac => \min_count[2]~38_combout\,
	datad => \LessThan1~1_combout\,
	combout => \min_count[3]~44_combout\);

-- Location: LCCOMB_X109_Y50_N4
\min_count[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[3]~3_combout\ = \min_count[3]~1_combout\ $ (((\min_count[3]~44_combout\) # ((\min_count[2]~38_combout\ & \min_count[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[3]~1_combout\,
	datab => \min_count[2]~38_combout\,
	datac => \min_count[3]~2_combout\,
	datad => \min_count[3]~44_combout\,
	combout => \min_count[3]~3_combout\);

-- Location: FF_X109_Y50_N5
\min_count[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \min_count[3]~3_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_count[3]~_emulated_q\);

-- Location: LCCOMB_X114_Y50_N20
\min_count[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[3]~2_combout\ = (\KEY[1]~input_o\ & (\min_count[3]~1_combout\ $ (((\min_count[3]~_emulated_q\))))) # (!\KEY[1]~input_o\ & (((\min_count~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \min_count[3]~1_combout\,
	datac => \min_count~45_combout\,
	datad => \min_count[3]~_emulated_q\,
	combout => \min_count[3]~2_combout\);

-- Location: LCCOMB_X113_Y50_N16
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\min_count[1]~10_combout\ & (\min_count[0]~6_combout\ & (\min_count[3]~2_combout\ & \min_count[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[1]~10_combout\,
	datab => \min_count[0]~6_combout\,
	datac => \min_count[3]~2_combout\,
	datad => \min_count[2]~14_combout\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X114_Y50_N24
\min_count~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count~43_combout\ = \min_count[4]~22_combout\ $ (((!\min_count~42_combout\ & (\min_count[2]~14_combout\ & \min_count[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count~42_combout\,
	datab => \min_count[2]~14_combout\,
	datac => \min_count[4]~22_combout\,
	datad => \min_count[3]~2_combout\,
	combout => \min_count~43_combout\);

-- Location: LCCOMB_X113_Y50_N2
\min_count[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[4]~21_combout\ = (\KEY[1]~input_o\ & (\min_count[4]~21_combout\)) # (!\KEY[1]~input_o\ & ((\min_count~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[4]~21_combout\,
	datab => \min_count~43_combout\,
	datad => \KEY[1]~input_o\,
	combout => \min_count[4]~21_combout\);

-- Location: LCCOMB_X113_Y50_N8
\min_count[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[4]~41_combout\ = (!\min_count[2]~38_combout\ & (\LessThan1~1_combout\ & (\Add1~0_combout\ $ (\min_count[4]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \min_count[4]~22_combout\,
	datac => \min_count[2]~38_combout\,
	datad => \LessThan1~1_combout\,
	combout => \min_count[4]~41_combout\);

-- Location: LCCOMB_X113_Y50_N4
\min_count[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[4]~23_combout\ = \min_count[4]~21_combout\ $ (((\min_count[4]~41_combout\) # ((\min_count[4]~22_combout\ & \min_count[2]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[4]~22_combout\,
	datab => \min_count[2]~38_combout\,
	datac => \min_count[4]~21_combout\,
	datad => \min_count[4]~41_combout\,
	combout => \min_count[4]~23_combout\);

-- Location: FF_X113_Y50_N5
\min_count[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \min_count[4]~23_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_count[4]~_emulated_q\);

-- Location: LCCOMB_X113_Y50_N18
\min_count[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[4]~22_combout\ = (\KEY[1]~input_o\ & ((\min_count[4]~_emulated_q\ $ (\min_count[4]~21_combout\)))) # (!\KEY[1]~input_o\ & (\min_count~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \min_count~43_combout\,
	datac => \min_count[4]~_emulated_q\,
	datad => \min_count[4]~21_combout\,
	combout => \min_count[4]~22_combout\);

-- Location: LCCOMB_X109_Y31_N8
\min_count[1]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[1]~51_combout\ = (!\LessThan0~2_combout\ & (sec_count(4) & sec_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datac => sec_count(4),
	datad => sec_count(5),
	combout => \min_count[1]~51_combout\);

-- Location: LCCOMB_X113_Y50_N30
\min_count[1]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[1]~52_combout\ = (\min_count[1]~51_combout\ & ((\LessThan1~0_combout\) # ((!\min_count[4]~22_combout\) # (!\min_count[5]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[1]~51_combout\,
	datab => \LessThan1~0_combout\,
	datac => \min_count[5]~18_combout\,
	datad => \min_count[4]~22_combout\,
	combout => \min_count[1]~52_combout\);

-- Location: LCCOMB_X113_Y50_N10
\min_count[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[5]~39_combout\ = (\min_count[1]~52_combout\ & (\min_count[5]~18_combout\ $ (((\Add1~0_combout\ & \min_count[4]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \min_count[4]~22_combout\,
	datac => \min_count[1]~52_combout\,
	datad => \min_count[5]~18_combout\,
	combout => \min_count[5]~39_combout\);

-- Location: LCCOMB_X113_Y50_N12
\min_count~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count~40_combout\ = \min_count[5]~18_combout\ $ (((\Add1~0_combout\ & (!\KEY[0]~input_o\ & \min_count[4]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[5]~18_combout\,
	datab => \Add1~0_combout\,
	datac => \KEY[0]~input_o\,
	datad => \min_count[4]~22_combout\,
	combout => \min_count~40_combout\);

-- Location: LCCOMB_X113_Y50_N0
\min_count[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[5]~17_combout\ = (\KEY[1]~input_o\ & (\min_count[5]~17_combout\)) # (!\KEY[1]~input_o\ & ((\min_count~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \min_count[5]~17_combout\,
	datac => \KEY[1]~input_o\,
	datad => \min_count~40_combout\,
	combout => \min_count[5]~17_combout\);

-- Location: LCCOMB_X113_Y50_N20
\min_count[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[5]~19_combout\ = \min_count[5]~17_combout\ $ (((\min_count[5]~39_combout\) # ((\min_count[5]~18_combout\ & \min_count[2]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[5]~39_combout\,
	datab => \min_count[5]~18_combout\,
	datac => \min_count[5]~17_combout\,
	datad => \min_count[2]~38_combout\,
	combout => \min_count[5]~19_combout\);

-- Location: FF_X113_Y50_N21
\min_count[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \min_count[5]~19_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_count[5]~_emulated_q\);

-- Location: LCCOMB_X113_Y50_N22
\min_count[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[5]~18_combout\ = (\KEY[1]~input_o\ & (\min_count[5]~_emulated_q\ $ ((\min_count[5]~17_combout\)))) # (!\KEY[1]~input_o\ & (((\min_count~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \min_count[5]~_emulated_q\,
	datac => \min_count[5]~17_combout\,
	datad => \min_count~40_combout\,
	combout => \min_count[5]~18_combout\);

-- Location: LCCOMB_X113_Y50_N14
\min_count[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[2]~38_combout\ = (!\LessThan0~3_combout\ & ((\LessThan1~0_combout\) # ((!\min_count[4]~22_combout\) # (!\min_count[5]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \LessThan1~0_combout\,
	datac => \min_count[5]~18_combout\,
	datad => \min_count[4]~22_combout\,
	combout => \min_count[2]~38_combout\);

-- Location: LCCOMB_X113_Y50_N28
\min_count[1]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[1]~48_combout\ = (!\min_count[2]~38_combout\ & (\LessThan1~1_combout\ & (\min_count[0]~6_combout\ $ (\min_count[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[0]~6_combout\,
	datab => \min_count[1]~10_combout\,
	datac => \min_count[2]~38_combout\,
	datad => \LessThan1~1_combout\,
	combout => \min_count[1]~48_combout\);

-- Location: LCCOMB_X113_Y50_N24
\min_count[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[1]~11_combout\ = \min_count[1]~9_combout\ $ (((\min_count[1]~48_combout\) # ((\min_count[2]~38_combout\ & \min_count[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[1]~9_combout\,
	datab => \min_count[2]~38_combout\,
	datac => \min_count[1]~10_combout\,
	datad => \min_count[1]~48_combout\,
	combout => \min_count[1]~11_combout\);

-- Location: FF_X113_Y50_N25
\min_count[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \min_count[1]~11_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_count[1]~_emulated_q\);

-- Location: LCCOMB_X114_Y50_N2
\min_count[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[1]~10_combout\ = (\KEY[1]~input_o\ & ((\min_count[1]~9_combout\ $ (\min_count[1]~_emulated_q\)))) # (!\KEY[1]~input_o\ & (\min_count~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count~49_combout\,
	datab => \min_count[1]~9_combout\,
	datac => \KEY[1]~input_o\,
	datad => \min_count[1]~_emulated_q\,
	combout => \min_count[1]~10_combout\);

-- Location: LCCOMB_X114_Y50_N12
\min_count~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count~47_combout\ = \min_count[2]~14_combout\ $ (((!\KEY[0]~input_o\ & (\min_count[0]~6_combout\ & \min_count[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \min_count[2]~14_combout\,
	datac => \min_count[0]~6_combout\,
	datad => \min_count[1]~10_combout\,
	combout => \min_count~47_combout\);

-- Location: LCCOMB_X114_Y50_N22
\min_count[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[2]~13_combout\ = (\KEY[1]~input_o\ & ((\min_count[2]~13_combout\))) # (!\KEY[1]~input_o\ & (\min_count~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count~47_combout\,
	datab => \KEY[1]~input_o\,
	datad => \min_count[2]~13_combout\,
	combout => \min_count[2]~13_combout\);

-- Location: LCCOMB_X113_Y50_N6
\min_count[2]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[2]~46_combout\ = (\min_count[1]~52_combout\ & (\min_count[2]~14_combout\ $ (((\min_count[0]~6_combout\ & \min_count[1]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[0]~6_combout\,
	datab => \min_count[1]~10_combout\,
	datac => \min_count[1]~52_combout\,
	datad => \min_count[2]~14_combout\,
	combout => \min_count[2]~46_combout\);

-- Location: LCCOMB_X114_Y50_N26
\min_count[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[2]~15_combout\ = \min_count[2]~13_combout\ $ (((\min_count[2]~46_combout\) # ((\min_count[2]~38_combout\ & \min_count[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[2]~38_combout\,
	datab => \min_count[2]~14_combout\,
	datac => \min_count[2]~13_combout\,
	datad => \min_count[2]~46_combout\,
	combout => \min_count[2]~15_combout\);

-- Location: FF_X114_Y50_N27
\min_count[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \min_count[2]~15_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_count[2]~_emulated_q\);

-- Location: LCCOMB_X114_Y50_N28
\min_count[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[2]~14_combout\ = (\KEY[1]~input_o\ & (\min_count[2]~13_combout\ $ ((\min_count[2]~_emulated_q\)))) # (!\KEY[1]~input_o\ & (((\min_count~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \min_count[2]~13_combout\,
	datac => \min_count[2]~_emulated_q\,
	datad => \min_count~47_combout\,
	combout => \min_count[2]~14_combout\);

-- Location: LCCOMB_X114_Y50_N0
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ((!\min_count[2]~14_combout\ & ((!\min_count[1]~10_combout\) # (!\min_count[0]~6_combout\)))) # (!\min_count[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[0]~6_combout\,
	datab => \min_count[2]~14_combout\,
	datac => \min_count[1]~10_combout\,
	datad => \min_count[3]~2_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X113_Y50_N26
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\LessThan1~0_combout\) # ((!\min_count[4]~22_combout\) # (!\min_count[5]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~0_combout\,
	datac => \min_count[5]~18_combout\,
	datad => \min_count[4]~22_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X114_Y50_N18
\min_count[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[0]~5_combout\ = (\KEY[1]~input_o\ & ((\min_count[0]~5_combout\))) # (!\KEY[1]~input_o\ & (!\min_count~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count~50_combout\,
	datab => \min_count[0]~5_combout\,
	datad => \KEY[1]~input_o\,
	combout => \min_count[0]~5_combout\);

-- Location: LCCOMB_X114_Y50_N8
\min_count[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[0]~7_combout\ = \min_count[0]~5_combout\ $ (((\LessThan1~1_combout\ & (\LessThan0~3_combout\ $ (\min_count[0]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \LessThan1~1_combout\,
	datac => \min_count[0]~6_combout\,
	datad => \min_count[0]~5_combout\,
	combout => \min_count[0]~7_combout\);

-- Location: FF_X114_Y50_N9
\min_count[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \min_count[0]~7_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_count[0]~_emulated_q\);

-- Location: LCCOMB_X114_Y50_N10
\min_count[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_count[0]~6_combout\ = (\KEY[1]~input_o\ & ((\min_count[0]~_emulated_q\ $ (\min_count[0]~5_combout\)))) # (!\KEY[1]~input_o\ & (!\min_count~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count~50_combout\,
	datab => \KEY[1]~input_o\,
	datac => \min_count[0]~_emulated_q\,
	datad => \min_count[0]~5_combout\,
	combout => \min_count[0]~6_combout\);

-- Location: LCCOMB_X111_Y45_N16
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \min_count[3]~2_combout\ $ (VCC)
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\min_count[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[3]~2_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X111_Y45_N18
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\min_count[4]~22_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\min_count[4]~22_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\min_count[4]~22_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \min_count[4]~22_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X111_Y45_N20
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\min_count[5]~18_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\min_count[5]~18_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\min_count[5]~18_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \min_count[5]~18_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X111_Y45_N22
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X111_Y45_N26
\Mod1|auto_generated|divider|divider|StageOut[21]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ = (\min_count[5]~18_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \min_count[5]~18_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X111_Y45_N28
\Mod1|auto_generated|divider|divider|StageOut[21]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X112_Y45_N4
\Mod1|auto_generated|divider|divider|StageOut[20]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X111_Y45_N14
\Mod1|auto_generated|divider|divider|StageOut[20]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\ = (\min_count[4]~22_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \min_count[4]~22_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X112_Y45_N2
\Mod1|auto_generated|divider|divider|StageOut[19]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X111_Y45_N24
\Mod1|auto_generated|divider|divider|StageOut[19]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ = (\min_count[3]~2_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[3]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X112_Y45_N20
\Mod1|auto_generated|divider|divider|StageOut[18]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\ = (\min_count[2]~14_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \min_count[2]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X112_Y45_N10
\Mod1|auto_generated|divider|divider|StageOut[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\ = (\min_count[2]~14_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \min_count[2]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X111_Y45_N0
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X111_Y45_N2
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X111_Y45_N4
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X111_Y45_N6
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X111_Y45_N8
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X110_Y45_N10
\Mod1|auto_generated|divider|divider|StageOut[28]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~37_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~37_combout\);

-- Location: LCCOMB_X111_Y45_N12
\Mod1|auto_generated|divider|divider|StageOut[28]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~43_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\min_count[5]~18_combout\)) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \min_count[5]~18_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~43_combout\);

-- Location: LCCOMB_X110_Y45_N12
\Mod1|auto_generated|divider|divider|StageOut[27]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~38_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~38_combout\);

-- Location: LCCOMB_X111_Y45_N10
\Mod1|auto_generated|divider|divider|StageOut[27]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~44_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\min_count[4]~22_combout\)) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \min_count[4]~22_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~44_combout\);

-- Location: LCCOMB_X111_Y45_N30
\Mod1|auto_generated|divider|divider|StageOut[26]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~42_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\min_count[3]~2_combout\)) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[3]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: LCCOMB_X110_Y45_N16
\Mod1|auto_generated|divider|divider|StageOut[26]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\);

-- Location: LCCOMB_X110_Y45_N0
\Mod1|auto_generated|divider|divider|StageOut[25]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\);

-- Location: LCCOMB_X110_Y45_N2
\Mod1|auto_generated|divider|divider|StageOut[25]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~33_combout\ = (\min_count[2]~14_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \min_count[2]~14_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~33_combout\);

-- Location: LCCOMB_X110_Y45_N6
\Mod1|auto_generated|divider|divider|StageOut[24]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~35_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \min_count[1]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \min_count[1]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~35_combout\);

-- Location: LCCOMB_X110_Y45_N8
\Mod1|auto_generated|divider|divider|StageOut[24]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~36_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \min_count[1]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \min_count[1]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~36_combout\);

-- Location: LCCOMB_X110_Y45_N20
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[24]~35_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[24]~36_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[24]~35_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[24]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[24]~35_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[24]~36_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X110_Y45_N22
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[25]~33_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[25]~33_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[25]~33_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[25]~33_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X110_Y45_N24
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[26]~42_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[26]~42_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[26]~42_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X110_Y45_N26
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[27]~38_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[27]~44_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[27]~38_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[27]~44_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X110_Y45_N28
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[28]~37_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[28]~43_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[28]~37_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[28]~43_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X110_Y45_N30
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X110_Y45_N4
\Mod1|auto_generated|divider|divider|StageOut[31]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\min_count[1]~10_combout\)) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \min_count[1]~10_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\);

-- Location: LCCOMB_X110_Y45_N14
\Mod1|auto_generated|divider|divider|StageOut[33]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[26]~42_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\);

-- Location: LCCOMB_X109_Y45_N8
\Mod1|auto_generated|divider|divider|StageOut[32]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[25]~33_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[25]~33_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\);

-- Location: LCCOMB_X103_Y32_N28
\BIN2|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN2|decOut_n~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\ & (\min_count[0]~6_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ $ (\Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ & (\min_count[0]~6_combout\ $ (\Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[0]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\,
	combout => \BIN2|decOut_n~0_combout\);

-- Location: LCCOMB_X99_Y28_N24
\BIN2|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN2|decOut_n~1_combout\ = (\BIN2|decOut_n~0_combout\) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	datad => \BIN2|decOut_n~0_combout\,
	combout => \BIN2|decOut_n~1_combout\);

-- Location: LCCOMB_X110_Y45_N18
\BIN2|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN2|decOut_n~3_combout\ = (\min_count[0]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((!\min_count[1]~10_combout\))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[0]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \min_count[1]~10_combout\,
	combout => \BIN2|decOut_n~3_combout\);

-- Location: LCCOMB_X103_Y32_N0
\BIN2|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN2|decOut_n~4_combout\ = (\KEY[3]~input_o\ & (((\BIN2|decOut_n~3_combout\) # (!\Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\)) # (!\Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datac => \BIN2|decOut_n~3_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\,
	combout => \BIN2|decOut_n~4_combout\);

-- Location: LCCOMB_X103_Y32_N14
\BIN2|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN2|decOut_n~2_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\ & (\min_count[0]~6_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ & !\Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\ & (\min_count[0]~6_combout\ $ (\Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[0]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\,
	combout => \BIN2|decOut_n~2_combout\);

-- Location: LCCOMB_X103_Y28_N28
\BIN2|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN2|decOut_n~5_combout\ = (\BIN2|decOut_n~2_combout\) # (!\BIN2|decOut_n~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BIN2|decOut_n~4_combout\,
	datad => \BIN2|decOut_n~2_combout\,
	combout => \BIN2|decOut_n~5_combout\);

-- Location: LCCOMB_X103_Y32_N22
\BIN2|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN2|decOut_n~6_combout\ = (!\min_count[0]~6_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\ & !\Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[0]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\,
	combout => \BIN2|decOut_n~6_combout\);

-- Location: LCCOMB_X103_Y32_N20
\BIN2|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN2|decOut_n~7_combout\ = (\BIN2|decOut_n~6_combout\) # (!\BIN2|decOut_n~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BIN2|decOut_n~6_combout\,
	datad => \BIN2|decOut_n~4_combout\,
	combout => \BIN2|decOut_n~7_combout\);

-- Location: LCCOMB_X103_Y32_N10
\BIN2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN2|Equal0~0_combout\ = (\min_count[0]~6_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\ & \Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[0]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\,
	combout => \BIN2|Equal0~0_combout\);

-- Location: LCCOMB_X103_Y32_N24
\BIN2|decOut_n[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN2|decOut_n[3]~8_combout\ = (!\min_count[0]~6_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\ & !\Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\)) 
-- # (!\Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[0]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\,
	combout => \BIN2|decOut_n[3]~8_combout\);

-- Location: LCCOMB_X103_Y32_N18
\BIN2|decOut_n[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN2|decOut_n[3]~9_combout\ = (\min_count[0]~6_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ $ 
-- (!\Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[0]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\,
	combout => \BIN2|decOut_n[3]~9_combout\);

-- Location: LCCOMB_X103_Y32_N8
\BIN2|decOut_n[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN2|decOut_n[3]~10_combout\ = (\KEY[3]~input_o\ & !\BIN2|decOut_n[3]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	datad => \BIN2|decOut_n[3]~9_combout\,
	combout => \BIN2|decOut_n[3]~10_combout\);

-- Location: LCCOMB_X103_Y32_N6
\BIN2|decOut_n[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN2|decOut_n[6]~11_combout\ = (\min_count[0]~6_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\ & \Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\))) 
-- # (!\min_count[0]~6_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\ & !\Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[0]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\,
	combout => \BIN2|decOut_n[6]~11_combout\);

-- Location: LCCOMB_X103_Y32_N12
\BIN2|decOut_n[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN2|decOut_n[6]~12_combout\ = (\KEY[3]~input_o\ & \BIN2|decOut_n[6]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	datad => \BIN2|decOut_n[6]~11_combout\,
	combout => \BIN2|decOut_n[6]~12_combout\);

-- Location: LCCOMB_X103_Y32_N26
\BIN2|decOut_n[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN2|decOut_n[3]~13_combout\ = (\BIN2|decOut_n[6]~12_combout\ & (\BIN2|Equal0~0_combout\)) # (!\BIN2|decOut_n[6]~12_combout\ & (((\BIN2|decOut_n[3]~8_combout\) # (!\BIN2|decOut_n[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN2|Equal0~0_combout\,
	datab => \BIN2|decOut_n[3]~8_combout\,
	datac => \BIN2|decOut_n[3]~10_combout\,
	datad => \BIN2|decOut_n[6]~12_combout\,
	combout => \BIN2|decOut_n[3]~13_combout\);

-- Location: LCCOMB_X103_Y32_N4
\BIN2|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN2|decOut_n~14_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ & (\min_count[0]~6_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\))) # (!\Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ 
-- & ((\Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\ & ((!\Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\))) # (!\Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\ & (\min_count[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[0]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\,
	combout => \BIN2|decOut_n~14_combout\);

-- Location: LCCOMB_X99_Y28_N30
\BIN2|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN2|decOut_n~15_combout\ = (\BIN2|decOut_n~14_combout\) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	datad => \BIN2|decOut_n~14_combout\,
	combout => \BIN2|decOut_n~15_combout\);

-- Location: LCCOMB_X103_Y32_N2
\BIN2|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN2|decOut_n~16_combout\ = (\min_count[0]~6_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\ $ (((\Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\))))) # (!\min_count[0]~6_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\ & 
-- !\Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[0]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\,
	combout => \BIN2|decOut_n~16_combout\);

-- Location: LCCOMB_X99_Y28_N4
\BIN2|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN2|decOut_n~17_combout\ = (\BIN2|decOut_n~16_combout\) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	datad => \BIN2|decOut_n~16_combout\,
	combout => \BIN2|decOut_n~17_combout\);

-- Location: LCCOMB_X103_Y32_N16
\BIN2|decOut_n[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN2|decOut_n[6]~18_combout\ = (!\min_count[0]~6_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\ & 
-- \Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[0]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[32]~41_combout\,
	combout => \BIN2|decOut_n[6]~18_combout\);

-- Location: LCCOMB_X103_Y32_N30
\BIN2|decOut_n[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN2|decOut_n[6]~19_combout\ = (\BIN2|decOut_n[6]~12_combout\ & (!\BIN2|Equal0~0_combout\)) # (!\BIN2|decOut_n[6]~12_combout\ & (((\BIN2|decOut_n[6]~18_combout\) # (!\BIN2|decOut_n[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN2|Equal0~0_combout\,
	datab => \BIN2|decOut_n[6]~18_combout\,
	datac => \BIN2|decOut_n[3]~10_combout\,
	datad => \BIN2|decOut_n[6]~12_combout\,
	combout => \BIN2|decOut_n[6]~19_combout\);

-- Location: LCCOMB_X110_Y42_N12
\BIN3|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN3|decOut_n~13_combout\ = (\min_count[3]~2_combout\) # ((\min_count[4]~22_combout\ & ((\min_count[1]~10_combout\) # (\min_count[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[1]~10_combout\,
	datab => \min_count[3]~2_combout\,
	datac => \min_count[4]~22_combout\,
	datad => \min_count[2]~14_combout\,
	combout => \BIN3|decOut_n~13_combout\);

-- Location: LCCOMB_X110_Y42_N26
\BIN3|decOut_n[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN3|decOut_n[3]~14_combout\ = (!\min_count[3]~2_combout\ & !\min_count[2]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \min_count[3]~2_combout\,
	datad => \min_count[2]~14_combout\,
	combout => \BIN3|decOut_n[3]~14_combout\);

-- Location: LCCOMB_X110_Y42_N16
\BIN3|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN3|decOut_n~15_combout\ = (\min_count[3]~2_combout\ & ((\min_count[1]~10_combout\) # (\min_count[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[1]~10_combout\,
	datac => \min_count[3]~2_combout\,
	datad => \min_count[2]~14_combout\,
	combout => \BIN3|decOut_n~15_combout\);

-- Location: LCCOMB_X110_Y42_N10
\BIN3|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN3|decOut_n~16_combout\ = (\min_count[4]~22_combout\ & ((\min_count[5]~18_combout\) # ((\BIN3|decOut_n[3]~14_combout\)))) # (!\min_count[4]~22_combout\ & (!\min_count[5]~18_combout\ & ((\BIN3|decOut_n~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[4]~22_combout\,
	datab => \min_count[5]~18_combout\,
	datac => \BIN3|decOut_n[3]~14_combout\,
	datad => \BIN3|decOut_n~15_combout\,
	combout => \BIN3|decOut_n~16_combout\);

-- Location: LCCOMB_X110_Y42_N24
\BIN3|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN3|decOut_n~17_combout\ = (\BIN3|decOut_n~16_combout\ $ (((\BIN3|decOut_n~13_combout\ & \min_count[5]~18_combout\)))) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN3|decOut_n~13_combout\,
	datab => \min_count[5]~18_combout\,
	datac => \KEY[3]~input_o\,
	datad => \BIN3|decOut_n~16_combout\,
	combout => \BIN3|decOut_n~17_combout\);

-- Location: LCCOMB_X110_Y50_N28
\BIN3|decOut_n[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN3|decOut_n[1]~18_combout\ = (\min_count[1]~10_combout\) # ((\min_count[3]~2_combout\) # (\min_count[2]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \min_count[1]~10_combout\,
	datac => \min_count[3]~2_combout\,
	datad => \min_count[2]~14_combout\,
	combout => \BIN3|decOut_n[1]~18_combout\);

-- Location: LCCOMB_X110_Y50_N6
\BIN3|decOut_n[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN3|decOut_n[1]~28_combout\ = ((\min_count[5]~18_combout\ & (\min_count[4]~22_combout\ & \BIN3|decOut_n[1]~18_combout\))) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[5]~18_combout\,
	datab => \KEY[3]~input_o\,
	datac => \min_count[4]~22_combout\,
	datad => \BIN3|decOut_n[1]~18_combout\,
	combout => \BIN3|decOut_n[1]~28_combout\);

-- Location: LCCOMB_X110_Y50_N12
\BIN3|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN3|decOut_n~8_combout\ = (\min_count[3]~2_combout\ & ((!\min_count[2]~14_combout\) # (!\min_count[1]~10_combout\))) # (!\min_count[3]~2_combout\ & ((\min_count[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \min_count[1]~10_combout\,
	datac => \min_count[3]~2_combout\,
	datad => \min_count[2]~14_combout\,
	combout => \BIN3|decOut_n~8_combout\);

-- Location: LCCOMB_X110_Y50_N10
\BIN3|decOut_n~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN3|decOut_n~30_combout\ = ((!\min_count[5]~18_combout\ & (\min_count[4]~22_combout\ & \BIN3|decOut_n~8_combout\))) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[5]~18_combout\,
	datab => \KEY[3]~input_o\,
	datac => \min_count[4]~22_combout\,
	datad => \BIN3|decOut_n~8_combout\,
	combout => \BIN3|decOut_n~30_combout\);

-- Location: LCCOMB_X110_Y42_N8
\BIN3|decOut_n[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN3|decOut_n[3]~20_combout\ = (\min_count[3]~2_combout\ & ((\min_count[1]~10_combout\) # ((\min_count[5]~18_combout\) # (\min_count[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[1]~10_combout\,
	datab => \min_count[5]~18_combout\,
	datac => \min_count[3]~2_combout\,
	datad => \min_count[2]~14_combout\,
	combout => \BIN3|decOut_n[3]~20_combout\);

-- Location: LCCOMB_X110_Y42_N2
\BIN3|decOut_n[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN3|decOut_n[3]~19_combout\ = (\min_count[4]~22_combout\ & (\BIN3|decOut_n[3]~14_combout\ & ((!\min_count[5]~18_combout\) # (!\min_count[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[1]~10_combout\,
	datab => \min_count[5]~18_combout\,
	datac => \min_count[4]~22_combout\,
	datad => \BIN3|decOut_n[3]~14_combout\,
	combout => \BIN3|decOut_n[3]~19_combout\);

-- Location: LCCOMB_X110_Y42_N30
\BIN3|decOut_n[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN3|decOut_n[3]~21_combout\ = ((\BIN3|decOut_n[3]~19_combout\) # ((\BIN3|decOut_n[3]~20_combout\ & !\min_count[4]~22_combout\))) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \BIN3|decOut_n[3]~20_combout\,
	datac => \min_count[4]~22_combout\,
	datad => \BIN3|decOut_n[3]~19_combout\,
	combout => \BIN3|decOut_n[3]~21_combout\);

-- Location: LCCOMB_X110_Y42_N14
\BIN3|decOut_n[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN3|decOut_n[3]~23_combout\ = (!\min_count[4]~22_combout\ & (!\min_count[5]~18_combout\ & (\KEY[3]~input_o\ & !\BIN3|decOut_n~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[4]~22_combout\,
	datab => \min_count[5]~18_combout\,
	datac => \KEY[3]~input_o\,
	datad => \BIN3|decOut_n~15_combout\,
	combout => \BIN3|decOut_n[3]~23_combout\);

-- Location: LCCOMB_X110_Y42_N0
\BIN3|decOut_n[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN3|decOut_n[4]~22_combout\ = (\min_count[5]~18_combout\ & (((!\min_count[2]~14_combout\) # (!\min_count[3]~2_combout\)))) # (!\min_count[5]~18_combout\ & ((\min_count[3]~2_combout\ & (\min_count[1]~10_combout\ & \min_count[2]~14_combout\)) # 
-- (!\min_count[3]~2_combout\ & ((!\min_count[2]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[1]~10_combout\,
	datab => \min_count[5]~18_combout\,
	datac => \min_count[3]~2_combout\,
	datad => \min_count[2]~14_combout\,
	combout => \BIN3|decOut_n[4]~22_combout\);

-- Location: LCCOMB_X110_Y42_N4
\BIN3|decOut_n[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN3|decOut_n[4]~24_combout\ = (!\BIN3|decOut_n[3]~23_combout\ & (((\BIN3|decOut_n[4]~22_combout\) # (!\KEY[3]~input_o\)) # (!\min_count[4]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[4]~22_combout\,
	datab => \BIN3|decOut_n[3]~23_combout\,
	datac => \KEY[3]~input_o\,
	datad => \BIN3|decOut_n[4]~22_combout\,
	combout => \BIN3|decOut_n[4]~24_combout\);

-- Location: LCCOMB_X110_Y42_N6
\BIN3|decOut_n~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN3|decOut_n~25_combout\ = (!\min_count[4]~22_combout\ & ((\min_count[5]~18_combout\ & (!\min_count[3]~2_combout\)) # (!\min_count[5]~18_combout\ & ((\BIN3|decOut_n~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[4]~22_combout\,
	datab => \min_count[5]~18_combout\,
	datac => \min_count[3]~2_combout\,
	datad => \BIN3|decOut_n~15_combout\,
	combout => \BIN3|decOut_n~25_combout\);

-- Location: LCCOMB_X110_Y42_N28
\BIN3|decOut_n~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN3|decOut_n~29_combout\ = ((\BIN3|decOut_n~25_combout\) # ((\min_count[4]~22_combout\ & !\min_count[5]~18_combout\))) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[4]~22_combout\,
	datab => \min_count[5]~18_combout\,
	datac => \KEY[3]~input_o\,
	datad => \BIN3|decOut_n~25_combout\,
	combout => \BIN3|decOut_n~29_combout\);

-- Location: LCCOMB_X110_Y42_N20
\BIN3|decOut_n[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN3|decOut_n[6]~26_combout\ = ((!\min_count[3]~2_combout\ & !\min_count[2]~14_combout\)) # (!\min_count[4]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[4]~22_combout\,
	datac => \min_count[3]~2_combout\,
	datad => \min_count[2]~14_combout\,
	combout => \BIN3|decOut_n[6]~26_combout\);

-- Location: LCCOMB_X110_Y42_N18
\BIN3|decOut_n[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN3|decOut_n[6]~27_combout\ = ((\BIN3|decOut_n[3]~23_combout\) # ((!\min_count[5]~18_combout\ & \BIN3|decOut_n[6]~26_combout\))) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \min_count[5]~18_combout\,
	datac => \BIN3|decOut_n[3]~23_combout\,
	datad => \BIN3|decOut_n[6]~26_combout\,
	combout => \BIN3|decOut_n[6]~27_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X111_Y50_N2
\hor_count~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count~42_combout\ = \KEY[2]~input_o\ $ (\hor_count[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[2]~input_o\,
	datad => \hor_count[0]~6_combout\,
	combout => \hor_count~42_combout\);

-- Location: LCCOMB_X111_Y50_N8
\hor_count~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count~41_combout\ = \hor_count[1]~10_combout\ $ (((!\KEY[2]~input_o\ & \hor_count[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hor_count[1]~10_combout\,
	datac => \KEY[2]~input_o\,
	datad => \hor_count[0]~6_combout\,
	combout => \hor_count~41_combout\);

-- Location: LCCOMB_X111_Y50_N24
\hor_count[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count[1]~9_combout\ = (\KEY[1]~input_o\ & ((\hor_count[1]~9_combout\))) # (!\KEY[1]~input_o\ & (\hor_count~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hor_count~41_combout\,
	datac => \KEY[1]~input_o\,
	datad => \hor_count[1]~9_combout\,
	combout => \hor_count[1]~9_combout\);

-- Location: LCCOMB_X111_Y50_N10
\hor_count[1]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count[1]~40_combout\ = (\LessThan2~2_combout\ & (!\hor_count[1]~33_combout\ & (\hor_count[0]~6_combout\ $ (\hor_count[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hor_count[0]~6_combout\,
	datab => \hor_count[1]~10_combout\,
	datac => \LessThan2~2_combout\,
	datad => \hor_count[1]~33_combout\,
	combout => \hor_count[1]~40_combout\);

-- Location: LCCOMB_X111_Y50_N30
\hor_count[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count[1]~11_combout\ = \hor_count[1]~9_combout\ $ (((\hor_count[1]~40_combout\) # ((\hor_count[1]~33_combout\ & \hor_count[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hor_count[1]~9_combout\,
	datab => \hor_count[1]~33_combout\,
	datac => \hor_count[1]~10_combout\,
	datad => \hor_count[1]~40_combout\,
	combout => \hor_count[1]~11_combout\);

-- Location: FF_X111_Y50_N31
\hor_count[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \hor_count[1]~11_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hor_count[1]~_emulated_q\);

-- Location: LCCOMB_X111_Y50_N12
\hor_count[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count[1]~10_combout\ = (\KEY[1]~input_o\ & (\hor_count[1]~9_combout\ $ (((\hor_count[1]~_emulated_q\))))) # (!\KEY[1]~input_o\ & (((\hor_count~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \hor_count[1]~9_combout\,
	datac => \hor_count~41_combout\,
	datad => \hor_count[1]~_emulated_q\,
	combout => \hor_count[1]~10_combout\);

-- Location: LCCOMB_X111_Y50_N26
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\hor_count[2]~14_combout\ & (\hor_count[0]~6_combout\ & \hor_count[1]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hor_count[2]~14_combout\,
	datac => \hor_count[0]~6_combout\,
	datad => \hor_count[1]~10_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X112_Y50_N10
\hor_count~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count~35_combout\ = \hor_count[4]~18_combout\ $ (((!\KEY[2]~input_o\ & (\LessThan2~1_combout\ & \hor_count[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hor_count[4]~18_combout\,
	datab => \KEY[2]~input_o\,
	datac => \LessThan2~1_combout\,
	datad => \hor_count[3]~2_combout\,
	combout => \hor_count~35_combout\);

-- Location: LCCOMB_X112_Y50_N28
\hor_count[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count[4]~17_combout\ = (\KEY[1]~input_o\ & (\hor_count[4]~17_combout\)) # (!\KEY[1]~input_o\ & ((\hor_count~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hor_count[4]~17_combout\,
	datac => \KEY[1]~input_o\,
	datad => \hor_count~35_combout\,
	combout => \hor_count[4]~17_combout\);

-- Location: LCCOMB_X112_Y50_N8
\hor_count[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count[4]~34_combout\ = (!\hor_count[1]~33_combout\ & ((\LessThan2~1_combout\ & (\hor_count[3]~2_combout\ & !\hor_count[4]~18_combout\)) # (!\LessThan2~1_combout\ & (!\hor_count[3]~2_combout\ & \hor_count[4]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => \hor_count[3]~2_combout\,
	datac => \hor_count[4]~18_combout\,
	datad => \hor_count[1]~33_combout\,
	combout => \hor_count[4]~34_combout\);

-- Location: LCCOMB_X112_Y50_N0
\hor_count[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count[4]~19_combout\ = \hor_count[4]~17_combout\ $ (((\hor_count[4]~34_combout\) # ((\hor_count[1]~33_combout\ & \hor_count[4]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hor_count[1]~33_combout\,
	datab => \hor_count[4]~17_combout\,
	datac => \hor_count[4]~34_combout\,
	datad => \hor_count[4]~18_combout\,
	combout => \hor_count[4]~19_combout\);

-- Location: FF_X112_Y50_N1
\hor_count[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \hor_count[4]~19_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hor_count[4]~_emulated_q\);

-- Location: LCCOMB_X112_Y50_N30
\hor_count[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count[4]~18_combout\ = (\KEY[1]~input_o\ & (\hor_count[4]~17_combout\ $ ((\hor_count[4]~_emulated_q\)))) # (!\KEY[1]~input_o\ & (((\hor_count~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hor_count[4]~17_combout\,
	datab => \hor_count[4]~_emulated_q\,
	datac => \KEY[1]~input_o\,
	datad => \hor_count~35_combout\,
	combout => \hor_count[4]~18_combout\);

-- Location: LCCOMB_X112_Y50_N4
\hor_count[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count[1]~32_combout\ = (\LessThan2~0_combout\) # (!\hor_count[4]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hor_count[4]~18_combout\,
	datad => \LessThan2~0_combout\,
	combout => \hor_count[1]~32_combout\);

-- Location: LCCOMB_X112_Y50_N18
\hor_count[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count[1]~33_combout\ = (\hor_count[1]~32_combout\ & (((\LessThan1~0_combout\) # (!\min_count[5]~18_combout\)) # (!\min_count[4]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count[4]~22_combout\,
	datab => \LessThan1~0_combout\,
	datac => \hor_count[1]~32_combout\,
	datad => \min_count[5]~18_combout\,
	combout => \hor_count[1]~33_combout\);

-- Location: LCCOMB_X112_Y50_N14
\hor_count[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count[3]~36_combout\ = (\LessThan2~2_combout\ & (!\hor_count[1]~33_combout\ & (\LessThan2~1_combout\ $ (\hor_count[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => \LessThan2~2_combout\,
	datac => \hor_count[3]~2_combout\,
	datad => \hor_count[1]~33_combout\,
	combout => \hor_count[3]~36_combout\);

-- Location: LCCOMB_X111_Y50_N4
\hor_count~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count~37_combout\ = (\KEY[2]~input_o\) # ((!\hor_count[1]~10_combout\) # (!\hor_count[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datac => \hor_count[0]~6_combout\,
	datad => \hor_count[1]~10_combout\,
	combout => \hor_count~37_combout\);

-- Location: LCCOMB_X111_Y50_N18
\hor_count~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count~38_combout\ = \hor_count[3]~2_combout\ $ (((!\hor_count~37_combout\ & \hor_count[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hor_count[3]~2_combout\,
	datac => \hor_count~37_combout\,
	datad => \hor_count[2]~14_combout\,
	combout => \hor_count~38_combout\);

-- Location: LCCOMB_X111_Y50_N16
\hor_count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count[3]~1_combout\ = (\KEY[1]~input_o\ & ((\hor_count[3]~1_combout\))) # (!\KEY[1]~input_o\ & (\hor_count~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hor_count~38_combout\,
	datac => \KEY[1]~input_o\,
	datad => \hor_count[3]~1_combout\,
	combout => \hor_count[3]~1_combout\);

-- Location: LCCOMB_X112_Y50_N16
\hor_count[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count[3]~3_combout\ = \hor_count[3]~1_combout\ $ (((\hor_count[3]~36_combout\) # ((\hor_count[1]~33_combout\ & \hor_count[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hor_count[1]~33_combout\,
	datab => \hor_count[3]~2_combout\,
	datac => \hor_count[3]~36_combout\,
	datad => \hor_count[3]~1_combout\,
	combout => \hor_count[3]~3_combout\);

-- Location: FF_X112_Y50_N17
\hor_count[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \hor_count[3]~3_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hor_count[3]~_emulated_q\);

-- Location: LCCOMB_X112_Y50_N2
\hor_count[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count[3]~2_combout\ = (\KEY[1]~input_o\ & (\hor_count[3]~_emulated_q\ $ ((\hor_count[3]~1_combout\)))) # (!\KEY[1]~input_o\ & (((\hor_count~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \hor_count[3]~_emulated_q\,
	datac => \hor_count[3]~1_combout\,
	datad => \hor_count~38_combout\,
	combout => \hor_count[3]~2_combout\);

-- Location: LCCOMB_X112_Y50_N26
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!\hor_count[3]~2_combout\ & (((!\hor_count[1]~10_combout\) # (!\hor_count[0]~6_combout\)) # (!\hor_count[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hor_count[2]~14_combout\,
	datab => \hor_count[3]~2_combout\,
	datac => \hor_count[0]~6_combout\,
	datad => \hor_count[1]~10_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X112_Y50_N20
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (\LessThan2~0_combout\) # (!\hor_count[4]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datad => \hor_count[4]~18_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X111_Y50_N6
\hor_count[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count[0]~5_combout\ = (\KEY[1]~input_o\ & (\hor_count[0]~5_combout\)) # (!\KEY[1]~input_o\ & ((!\hor_count~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hor_count[0]~5_combout\,
	datac => \hor_count~42_combout\,
	datad => \KEY[1]~input_o\,
	combout => \hor_count[0]~5_combout\);

-- Location: LCCOMB_X111_Y50_N14
\hor_count[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count[0]~7_combout\ = \hor_count[0]~5_combout\ $ (((\LessThan2~2_combout\ & (\LessThan1~1_combout\ $ (!\hor_count[0]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~2_combout\,
	datab => \LessThan1~1_combout\,
	datac => \hor_count[0]~5_combout\,
	datad => \hor_count[0]~6_combout\,
	combout => \hor_count[0]~7_combout\);

-- Location: FF_X111_Y50_N15
\hor_count[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \hor_count[0]~7_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hor_count[0]~_emulated_q\);

-- Location: LCCOMB_X111_Y50_N28
\hor_count[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count[0]~6_combout\ = (\KEY[1]~input_o\ & ((\hor_count[0]~_emulated_q\ $ (\hor_count[0]~5_combout\)))) # (!\KEY[1]~input_o\ & (!\hor_count~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \hor_count~42_combout\,
	datac => \hor_count[0]~_emulated_q\,
	datad => \hor_count[0]~5_combout\,
	combout => \hor_count[0]~6_combout\);

-- Location: LCCOMB_X111_Y50_N20
\hor_count~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count~39_combout\ = \hor_count[2]~14_combout\ $ (((!\KEY[2]~input_o\ & (\hor_count[0]~6_combout\ & \hor_count[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \hor_count[2]~14_combout\,
	datac => \hor_count[0]~6_combout\,
	datad => \hor_count[1]~10_combout\,
	combout => \hor_count~39_combout\);

-- Location: LCCOMB_X111_Y50_N22
\hor_count[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count[2]~13_combout\ = (\KEY[1]~input_o\ & ((\hor_count[2]~13_combout\))) # (!\KEY[1]~input_o\ & (\hor_count~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hor_count~39_combout\,
	datac => \hor_count[2]~13_combout\,
	datad => \KEY[1]~input_o\,
	combout => \hor_count[2]~13_combout\);

-- Location: LCCOMB_X112_Y50_N12
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \hor_count[2]~14_combout\ $ (((\hor_count[0]~6_combout\ & \hor_count[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hor_count[2]~14_combout\,
	datab => \hor_count[0]~6_combout\,
	datad => \hor_count[1]~10_combout\,
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X112_Y50_N22
\hor_count[2]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count[2]~43_combout\ = (\Add2~0_combout\ & (!\hor_count[1]~33_combout\ & ((\LessThan2~0_combout\) # (!\hor_count[4]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \hor_count[1]~33_combout\,
	datac => \hor_count[4]~18_combout\,
	datad => \LessThan2~0_combout\,
	combout => \hor_count[2]~43_combout\);

-- Location: LCCOMB_X112_Y50_N24
\hor_count[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count[2]~15_combout\ = \hor_count[2]~13_combout\ $ (((\hor_count[2]~43_combout\) # ((\hor_count[1]~33_combout\ & \hor_count[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hor_count[1]~33_combout\,
	datab => \hor_count[2]~13_combout\,
	datac => \hor_count[2]~43_combout\,
	datad => \hor_count[2]~14_combout\,
	combout => \hor_count[2]~15_combout\);

-- Location: FF_X112_Y50_N25
\hor_count[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \hor_count[2]~15_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hor_count[2]~_emulated_q\);

-- Location: LCCOMB_X111_Y50_N0
\hor_count[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \hor_count[2]~14_combout\ = (\KEY[1]~input_o\ & (\hor_count[2]~13_combout\ $ (((\hor_count[2]~_emulated_q\))))) # (!\KEY[1]~input_o\ & (((\hor_count~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hor_count[2]~13_combout\,
	datab => \hor_count~39_combout\,
	datac => \KEY[1]~input_o\,
	datad => \hor_count[2]~_emulated_q\,
	combout => \hor_count[2]~14_combout\);

-- Location: LCCOMB_X106_Y27_N4
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \hor_count[2]~14_combout\ $ (VCC)
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\hor_count[2]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hor_count[2]~14_combout\,
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X106_Y27_N6
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\hor_count[3]~2_combout\ & (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\hor_count[3]~2_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\hor_count[3]~2_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hor_count[3]~2_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X106_Y27_N8
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\hor_count[4]~18_combout\ & (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\hor_count[4]~18_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\hor_count[4]~18_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hor_count[4]~18_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X106_Y27_N10
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X106_Y27_N12
\Mod2|auto_generated|divider|divider|StageOut[16]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[16]~3_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[16]~3_combout\);

-- Location: LCCOMB_X106_Y27_N30
\Mod2|auto_generated|divider|divider|StageOut[16]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[16]~2_combout\ = (\hor_count[2]~14_combout\ & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hor_count[2]~14_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[16]~2_combout\);

-- Location: LCCOMB_X105_Y27_N16
\Mod2|auto_generated|divider|divider|StageOut[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[15]~4_combout\ = (\hor_count[1]~10_combout\ & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hor_count[1]~10_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[15]~4_combout\);

-- Location: LCCOMB_X105_Y27_N30
\Mod2|auto_generated|divider|divider|StageOut[15]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[15]~5_combout\ = (\hor_count[1]~10_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hor_count[1]~10_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[15]~5_combout\);

-- Location: LCCOMB_X106_Y27_N16
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod2|auto_generated|divider|divider|StageOut[15]~4_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[15]~5_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[15]~4_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[15]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[15]~4_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[15]~5_combout\,
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X106_Y27_N18
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod2|auto_generated|divider|divider|StageOut[16]~2_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[16]~3_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod2|auto_generated|divider|divider|StageOut[16]~2_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[16]~3_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[16]~2_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[16]~3_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[16]~2_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[16]~3_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X106_Y27_N26
\Mod2|auto_generated|divider|divider|StageOut[18]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[18]~6_combout\ = (\hor_count[4]~18_combout\ & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hor_count[4]~18_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[18]~6_combout\);

-- Location: LCCOMB_X106_Y27_N14
\Mod2|auto_generated|divider|divider|StageOut[18]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[18]~7_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[18]~7_combout\);

-- Location: LCCOMB_X105_Y27_N14
\Mod2|auto_generated|divider|divider|StageOut[17]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[17]~0_combout\ = (\hor_count[3]~2_combout\ & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hor_count[3]~2_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[17]~0_combout\);

-- Location: LCCOMB_X106_Y27_N0
\Mod2|auto_generated|divider|divider|StageOut[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[17]~1_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[17]~1_combout\);

-- Location: LCCOMB_X106_Y27_N20
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod2|auto_generated|divider|divider|StageOut[17]~0_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[17]~1_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod2|auto_generated|divider|divider|StageOut[17]~0_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[17]~1_combout\)))))
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod2|auto_generated|divider|divider|StageOut[17]~0_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[17]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[17]~0_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[17]~1_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X106_Y27_N22
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[18]~6_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[18]~7_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[18]~6_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[18]~7_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X106_Y27_N24
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X106_Y27_N2
\Mod2|auto_generated|divider|divider|StageOut[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[16]~3_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|StageOut[16]~2_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[16]~3_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Mod2|auto_generated|divider|divider|StageOut[16]~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\);

-- Location: LCCOMB_X105_Y27_N8
\Mod2|auto_generated|divider|divider|StageOut[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\hor_count[1]~10_combout\))) # (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \hor_count[1]~10_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\);

-- Location: LCCOMB_X106_Y27_N28
\Mod2|auto_generated|divider|divider|StageOut[23]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[17]~0_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|StageOut[17]~1_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[17]~0_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[17]~1_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\);

-- Location: LCCOMB_X90_Y4_N24
\BIN4|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN4|decOut_n~0_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\ & (\hor_count[0]~6_combout\ $ (!\Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\)))) # 
-- (!\Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\ & (\hor_count[0]~6_combout\ & (\Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\ $ (!\Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\,
	datac => \hor_count[0]~6_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\,
	combout => \BIN4|decOut_n~0_combout\);

-- Location: LCCOMB_X90_Y4_N26
\BIN4|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN4|decOut_n~1_combout\ = (\BIN4|decOut_n~0_combout\) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	datad => \BIN4|decOut_n~0_combout\,
	combout => \BIN4|decOut_n~1_combout\);

-- Location: LCCOMB_X90_Y4_N20
\BIN4|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN4|decOut_n~2_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\ & ((\hor_count[0]~6_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\))) # (!\hor_count[0]~6_combout\ & 
-- (\Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\)))) # (!\Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\ & (\Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\ & (\hor_count[0]~6_combout\ $ 
-- (\Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\,
	datac => \hor_count[0]~6_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\,
	combout => \BIN4|decOut_n~2_combout\);

-- Location: LCCOMB_X90_Y4_N6
\BIN4|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN4|decOut_n~3_combout\ = (\BIN4|decOut_n~2_combout\) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	datad => \BIN4|decOut_n~2_combout\,
	combout => \BIN4|decOut_n~3_combout\);

-- Location: LCCOMB_X90_Y4_N0
\BIN4|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN4|decOut_n~4_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\ & (\Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\) # (!\hor_count[0]~6_combout\)))) # 
-- (!\Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\ & (\Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\ & (!\hor_count[0]~6_combout\ & !\Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\,
	datac => \hor_count[0]~6_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\,
	combout => \BIN4|decOut_n~4_combout\);

-- Location: LCCOMB_X90_Y4_N10
\BIN4|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN4|decOut_n~5_combout\ = (\BIN4|decOut_n~4_combout\) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	datad => \BIN4|decOut_n~4_combout\,
	combout => \BIN4|decOut_n~5_combout\);

-- Location: LCCOMB_X90_Y4_N12
\BIN4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN4|Equal0~0_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\ & (\Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\ & (\hor_count[0]~6_combout\ & \Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\,
	datac => \hor_count[0]~6_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\,
	combout => \BIN4|Equal0~0_combout\);

-- Location: LCCOMB_X90_Y4_N16
\BIN4|decOut_n[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN4|decOut_n[3]~7_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\ & (\Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\ & (\hor_count[0]~6_combout\ & \Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\))) # 
-- (!\Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\ & (!\hor_count[0]~6_combout\ & !\Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\,
	datac => \hor_count[0]~6_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\,
	combout => \BIN4|decOut_n[3]~7_combout\);

-- Location: LCCOMB_X90_Y4_N18
\BIN4|decOut_n[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN4|decOut_n[3]~6_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\ & (\Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\ & !\hor_count[0]~6_combout\))) # 
-- (!\Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\ & (\Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\ $ (((!\hor_count[0]~6_combout\) # (!\Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\,
	datac => \hor_count[0]~6_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\,
	combout => \BIN4|decOut_n[3]~6_combout\);

-- Location: LCCOMB_X90_Y4_N14
\BIN4|decOut_n[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN4|decOut_n[3]~8_combout\ = ((\BIN4|decOut_n[3]~7_combout\ & (\BIN4|Equal0~0_combout\)) # (!\BIN4|decOut_n[3]~7_combout\ & ((\BIN4|decOut_n[3]~6_combout\)))) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN4|Equal0~0_combout\,
	datab => \BIN4|decOut_n[3]~7_combout\,
	datac => \KEY[3]~input_o\,
	datad => \BIN4|decOut_n[3]~6_combout\,
	combout => \BIN4|decOut_n[3]~8_combout\);

-- Location: LCCOMB_X90_Y4_N8
\BIN4|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN4|decOut_n~9_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\ & (((\hor_count[0]~6_combout\ & !\Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\)))) # (!\Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\ & 
-- ((\Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\ & ((!\Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\))) # (!\Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\ & (\hor_count[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\,
	datac => \hor_count[0]~6_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\,
	combout => \BIN4|decOut_n~9_combout\);

-- Location: LCCOMB_X90_Y4_N2
\BIN4|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN4|decOut_n~10_combout\ = (\BIN4|decOut_n~9_combout\) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BIN4|decOut_n~9_combout\,
	datac => \KEY[3]~input_o\,
	combout => \BIN4|decOut_n~10_combout\);

-- Location: LCCOMB_X90_Y4_N4
\BIN4|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN4|decOut_n~11_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\ & (\hor_count[0]~6_combout\ & (\Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\ $ (\Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\)))) # 
-- (!\Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\) # (\hor_count[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\,
	datac => \hor_count[0]~6_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\,
	combout => \BIN4|decOut_n~11_combout\);

-- Location: LCCOMB_X90_Y4_N30
\BIN4|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN4|decOut_n~12_combout\ = (\BIN4|decOut_n~11_combout\) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BIN4|decOut_n~11_combout\,
	datac => \KEY[3]~input_o\,
	combout => \BIN4|decOut_n~12_combout\);

-- Location: LCCOMB_X90_Y4_N28
\BIN4|decOut_n[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN4|decOut_n[6]~13_combout\ = (\hor_count[0]~6_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\ & (\Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\ $ 
-- (!\Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\)))) # (!\hor_count[0]~6_combout\ & (\Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\ & 
-- \Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[22]~10_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[21]~9_combout\,
	datac => \hor_count[0]~6_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\,
	combout => \BIN4|decOut_n[6]~13_combout\);

-- Location: LCCOMB_X90_Y4_N22
\BIN4|decOut_n[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN4|decOut_n[6]~14_combout\ = ((\BIN4|decOut_n[3]~7_combout\ & (!\BIN4|Equal0~0_combout\)) # (!\BIN4|decOut_n[3]~7_combout\ & ((\BIN4|decOut_n[6]~13_combout\)))) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN4|Equal0~0_combout\,
	datab => \BIN4|decOut_n[3]~7_combout\,
	datac => \KEY[3]~input_o\,
	datad => \BIN4|decOut_n[6]~13_combout\,
	combout => \BIN4|decOut_n[6]~14_combout\);

-- Location: LCCOMB_X105_Y27_N18
\BIN5|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN5|decOut_n[6]~0_combout\ = (\KEY[3]~input_o\ & (((!\hor_count[1]~10_combout\ & !\hor_count[2]~14_combout\)) # (!\hor_count[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \hor_count[3]~2_combout\,
	datac => \hor_count[1]~10_combout\,
	datad => \hor_count[2]~14_combout\,
	combout => \BIN5|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X105_Y27_N24
\BIN5|decOut_n[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN5|decOut_n[4]~1_combout\ = (\KEY[3]~input_o\ & (\hor_count[4]~18_combout\ & ((\hor_count[3]~2_combout\) # (\hor_count[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \hor_count[3]~2_combout\,
	datac => \hor_count[4]~18_combout\,
	datad => \hor_count[2]~14_combout\,
	combout => \BIN5|decOut_n[4]~1_combout\);

-- Location: LCCOMB_X105_Y27_N10
\BIN5|decOut_n[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN5|decOut_n[0]~2_combout\ = (!\BIN5|decOut_n[4]~1_combout\ & ((\hor_count[4]~18_combout\) # (!\BIN5|decOut_n[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BIN5|decOut_n[6]~0_combout\,
	datac => \hor_count[4]~18_combout\,
	datad => \BIN5|decOut_n[4]~1_combout\,
	combout => \BIN5|decOut_n[0]~2_combout\);

-- Location: LCCOMB_X105_Y27_N4
\BIN5|decOut_n[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN5|decOut_n[2]~3_combout\ = (\hor_count[4]~18_combout\ & ((\hor_count[3]~2_combout\ & ((!\hor_count[2]~14_combout\) # (!\hor_count[1]~10_combout\))) # (!\hor_count[3]~2_combout\ & ((\hor_count[2]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hor_count[1]~10_combout\,
	datab => \hor_count[3]~2_combout\,
	datac => \hor_count[4]~18_combout\,
	datad => \hor_count[2]~14_combout\,
	combout => \BIN5|decOut_n[2]~3_combout\);

-- Location: LCCOMB_X105_Y27_N6
\BIN5|decOut_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN5|decOut_n[2]~4_combout\ = (\BIN5|decOut_n[2]~3_combout\) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BIN5|decOut_n[2]~3_combout\,
	datad => \KEY[3]~input_o\,
	combout => \BIN5|decOut_n[2]~4_combout\);

-- Location: LCCOMB_X105_Y27_N12
\BIN5|decOut_n[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN5|decOut_n[4]~5_combout\ = (\hor_count[1]~10_combout\ & (\hor_count[3]~2_combout\ & \hor_count[2]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hor_count[1]~10_combout\,
	datac => \hor_count[3]~2_combout\,
	datad => \hor_count[2]~14_combout\,
	combout => \BIN5|decOut_n[4]~5_combout\);

-- Location: LCCOMB_X105_Y27_N22
\BIN5|decOut_n[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN5|decOut_n[4]~6_combout\ = (\BIN5|decOut_n[4]~5_combout\ & (((\hor_count[4]~18_combout\)) # (!\BIN5|decOut_n[6]~0_combout\))) # (!\BIN5|decOut_n[4]~5_combout\ & (!\BIN5|decOut_n[4]~1_combout\ & ((\hor_count[4]~18_combout\) # 
-- (!\BIN5|decOut_n[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN5|decOut_n[4]~5_combout\,
	datab => \BIN5|decOut_n[6]~0_combout\,
	datac => \hor_count[4]~18_combout\,
	datad => \BIN5|decOut_n[4]~1_combout\,
	combout => \BIN5|decOut_n[4]~6_combout\);

-- Location: LCCOMB_X105_Y27_N28
\BIN5|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN5|decOut_n~7_combout\ = (\hor_count[4]~18_combout\) # ((\hor_count[3]~2_combout\ & ((\hor_count[1]~10_combout\) # (\hor_count[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hor_count[1]~10_combout\,
	datab => \hor_count[3]~2_combout\,
	datac => \hor_count[4]~18_combout\,
	datad => \hor_count[2]~14_combout\,
	combout => \BIN5|decOut_n~7_combout\);

-- Location: LCCOMB_X105_Y27_N26
\BIN5|decOut_n[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN5|decOut_n[5]~8_combout\ = (\BIN5|decOut_n~7_combout\) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datad => \BIN5|decOut_n~7_combout\,
	combout => \BIN5|decOut_n[5]~8_combout\);

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;
END structure;


