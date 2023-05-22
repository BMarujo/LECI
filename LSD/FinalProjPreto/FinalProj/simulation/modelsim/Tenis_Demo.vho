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

-- DATE "05/22/2023 21:19:12"

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

ENTITY 	Tenis_Demo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0)
	);
END Tenis_Demo;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Tenis_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Hex420|decOut_0[2]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \puls|pulse~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Game|Selector1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \set|PS~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \match|s_set1[0]~feeder_combout\ : std_logic;
SIGNAL \DU1|Add0~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \DU1|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \DU1|s_dirtyIn~q\ : std_logic;
SIGNAL \DU1|s_previousIn~q\ : std_logic;
SIGNAL \DU1|Add0~11\ : std_logic;
SIGNAL \DU1|Add0~12_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt~29_combout\ : std_logic;
SIGNAL \DU1|Add0~13\ : std_logic;
SIGNAL \DU1|Add0~14_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \DU1|Add0~15\ : std_logic;
SIGNAL \DU1|Add0~16_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \DU1|Add0~17\ : std_logic;
SIGNAL \DU1|Add0~18_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \DU1|Add0~19\ : std_logic;
SIGNAL \DU1|Add0~20_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \DU1|Add0~21\ : std_logic;
SIGNAL \DU1|Add0~22_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \DU1|Add0~23\ : std_logic;
SIGNAL \DU1|Add0~24_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \DU1|Add0~25\ : std_logic;
SIGNAL \DU1|Add0~26_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \DU1|Add0~27\ : std_logic;
SIGNAL \DU1|Add0~28_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \DU1|Add0~29\ : std_logic;
SIGNAL \DU1|Add0~30_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \DU1|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \DU1|Add0~31\ : std_logic;
SIGNAL \DU1|Add0~32_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \DU1|Add0~33\ : std_logic;
SIGNAL \DU1|Add0~34_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \DU1|Add0~35\ : std_logic;
SIGNAL \DU1|Add0~36_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt~10_combout\ : std_logic;
SIGNAL \DU1|Add0~37\ : std_logic;
SIGNAL \DU1|Add0~38_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \DU1|Add0~39\ : std_logic;
SIGNAL \DU1|Add0~40_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt[20]~3_combout\ : std_logic;
SIGNAL \DU1|Add0~41\ : std_logic;
SIGNAL \DU1|Add0~42_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt[21]~4_combout\ : std_logic;
SIGNAL \DU1|Add0~43\ : std_logic;
SIGNAL \DU1|Add0~44_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt[22]~5_combout\ : std_logic;
SIGNAL \DU1|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \DU1|Add0~49\ : std_logic;
SIGNAL \DU1|Add0~50_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt[25]~18_combout\ : std_logic;
SIGNAL \DU1|Add0~51\ : std_logic;
SIGNAL \DU1|Add0~52_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt[26]~19_combout\ : std_logic;
SIGNAL \DU1|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \DU1|LessThan0~1_combout\ : std_logic;
SIGNAL \DU1|LessThan0~0_combout\ : std_logic;
SIGNAL \DU1|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \DU1|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \DU1|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \DU1|LessThan0~3_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt[19]~1_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt[19]~2_combout\ : std_logic;
SIGNAL \DU1|Add0~45\ : std_logic;
SIGNAL \DU1|Add0~46_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt[23]~6_combout\ : std_logic;
SIGNAL \DU1|Add0~47\ : std_logic;
SIGNAL \DU1|Add0~48_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt[24]~17_combout\ : std_logic;
SIGNAL \DU1|LessThan0~2_combout\ : std_logic;
SIGNAL \DU1|LessThan0~4_combout\ : std_logic;
SIGNAL \DU1|LessThan0~5_combout\ : std_logic;
SIGNAL \DU1|LessThan0~6_combout\ : std_logic;
SIGNAL \DU1|LessThan0~7_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt[19]~0_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt[27]~31_combout\ : std_logic;
SIGNAL \DU1|Add0~53\ : std_logic;
SIGNAL \DU1|Add0~54_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt[27]~32_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt[19]~7_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt~30_combout\ : std_logic;
SIGNAL \DU1|Add0~1\ : std_logic;
SIGNAL \DU1|Add0~2_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \DU1|Add0~3\ : std_logic;
SIGNAL \DU1|Add0~4_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \DU1|Add0~5\ : std_logic;
SIGNAL \DU1|Add0~6_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \DU1|Add0~7\ : std_logic;
SIGNAL \DU1|Add0~8_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \DU1|Add0~9\ : std_logic;
SIGNAL \DU1|Add0~10_combout\ : std_logic;
SIGNAL \DU1|s_debounceCnt~28_combout\ : std_logic;
SIGNAL \DU1|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \DU1|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \DU1|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \DU1|s_pulsedOut~q\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \DU|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \DU|s_dirtyIn~q\ : std_logic;
SIGNAL \DU|s_previousIn~q\ : std_logic;
SIGNAL \DU|Add0~0_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \DU|Add0~1\ : std_logic;
SIGNAL \DU|Add0~2_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \DU|Add0~3\ : std_logic;
SIGNAL \DU|Add0~4_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \DU|Add0~5\ : std_logic;
SIGNAL \DU|Add0~6_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \DU|Add0~7\ : std_logic;
SIGNAL \DU|Add0~8_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \DU|Add0~9\ : std_logic;
SIGNAL \DU|Add0~10_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \DU|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt[16]~2_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt[16]~3_combout\ : std_logic;
SIGNAL \DU|Add0~33\ : std_logic;
SIGNAL \DU|Add0~34_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \DU|Add0~35\ : std_logic;
SIGNAL \DU|Add0~36_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt[18]~17_combout\ : std_logic;
SIGNAL \DU|Add0~37\ : std_logic;
SIGNAL \DU|Add0~38_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt[19]~18_combout\ : std_logic;
SIGNAL \DU|Add0~39\ : std_logic;
SIGNAL \DU|Add0~40_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \DU|Add0~41\ : std_logic;
SIGNAL \DU|Add0~42_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \DU|LessThan0~0_combout\ : std_logic;
SIGNAL \DU|Add0~11\ : std_logic;
SIGNAL \DU|Add0~12_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \DU|Add0~13\ : std_logic;
SIGNAL \DU|Add0~14_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \DU|LessThan0~6_combout\ : std_logic;
SIGNAL \DU|Add0~15\ : std_logic;
SIGNAL \DU|Add0~16_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \DU|Add0~17\ : std_logic;
SIGNAL \DU|Add0~18_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \DU|Add0~19\ : std_logic;
SIGNAL \DU|Add0~20_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \DU|Add0~21\ : std_logic;
SIGNAL \DU|Add0~22_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \DU|Add0~23\ : std_logic;
SIGNAL \DU|Add0~24_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \DU|Add0~25\ : std_logic;
SIGNAL \DU|Add0~26_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \DU|LessThan0~1_combout\ : std_logic;
SIGNAL \DU|LessThan0~2_combout\ : std_logic;
SIGNAL \DU|LessThan0~3_combout\ : std_logic;
SIGNAL \DU|LessThan0~4_combout\ : std_logic;
SIGNAL \DU|LessThan0~5_combout\ : std_logic;
SIGNAL \DU|LessThan0~7_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt[22]~24_combout\ : std_logic;
SIGNAL \DU|Add0~43\ : std_logic;
SIGNAL \DU|Add0~44_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt[16]~0_combout\ : std_logic;
SIGNAL \DU|Add0~27\ : std_logic;
SIGNAL \DU|Add0~28_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \DU|Add0~29\ : std_logic;
SIGNAL \DU|Add0~30_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt~4_combout\ : std_logic;
SIGNAL \DU|Add0~31\ : std_logic;
SIGNAL \DU|Add0~32_combout\ : std_logic;
SIGNAL \DU|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \DU|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \DU|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \DU|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \DU|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \DU|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \DU|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \DU|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \DU|s_pulsedOut~q\ : std_logic;
SIGNAL \Game|Tcounter1~0_combout\ : std_logic;
SIGNAL \DU2|Add0~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \DU2|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \DU2|s_dirtyIn~q\ : std_logic;
SIGNAL \DU2|s_previousIn~q\ : std_logic;
SIGNAL \DU2|Add0~1\ : std_logic;
SIGNAL \DU2|Add0~2_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \DU2|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \DU2|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \DU2|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \DU2|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \DU2|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \DU2|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt[15]~2_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt[15]~3_combout\ : std_logic;
SIGNAL \DU2|Add0~3\ : std_logic;
SIGNAL \DU2|Add0~4_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \DU2|Add0~5\ : std_logic;
SIGNAL \DU2|Add0~6_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \DU2|Add0~7\ : std_logic;
SIGNAL \DU2|Add0~8_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \DU2|Add0~9\ : std_logic;
SIGNAL \DU2|Add0~10_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \DU2|Add0~11\ : std_logic;
SIGNAL \DU2|Add0~12_combout\ : std_logic;
SIGNAL \DU2|LessThan0~0_combout\ : std_logic;
SIGNAL \DU2|LessThan0~1_combout\ : std_logic;
SIGNAL \DU2|LessThan0~2_combout\ : std_logic;
SIGNAL \DU2|LessThan0~3_combout\ : std_logic;
SIGNAL \DU2|LessThan0~4_combout\ : std_logic;
SIGNAL \DU2|LessThan0~5_combout\ : std_logic;
SIGNAL \DU2|LessThan0~6_combout\ : std_logic;
SIGNAL \DU2|LessThan0~7_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt[15]~0_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \DU2|Add0~13\ : std_logic;
SIGNAL \DU2|Add0~14_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \DU2|Add0~15\ : std_logic;
SIGNAL \DU2|Add0~16_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \DU2|Add0~17\ : std_logic;
SIGNAL \DU2|Add0~18_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \DU2|Add0~19\ : std_logic;
SIGNAL \DU2|Add0~20_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \DU2|Add0~21\ : std_logic;
SIGNAL \DU2|Add0~22_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \DU2|Add0~23\ : std_logic;
SIGNAL \DU2|Add0~24_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \DU2|Add0~25\ : std_logic;
SIGNAL \DU2|Add0~26_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \DU2|Add0~27\ : std_logic;
SIGNAL \DU2|Add0~28_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \DU2|Add0~29\ : std_logic;
SIGNAL \DU2|Add0~30_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \DU2|Add0~31\ : std_logic;
SIGNAL \DU2|Add0~32_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \DU2|Add0~33\ : std_logic;
SIGNAL \DU2|Add0~34_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \DU2|Add0~35\ : std_logic;
SIGNAL \DU2|Add0~36_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \DU2|Add0~37\ : std_logic;
SIGNAL \DU2|Add0~38_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \DU2|Add0~39\ : std_logic;
SIGNAL \DU2|Add0~40_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \DU2|Add0~41\ : std_logic;
SIGNAL \DU2|Add0~42_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \DU2|Add0~43\ : std_logic;
SIGNAL \DU2|Add0~44_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt[15]~4_combout\ : std_logic;
SIGNAL \DU2|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \DU2|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \DU2|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \DU2|s_pulsedOut~q\ : std_logic;
SIGNAL \Game|Equal5~0_combout\ : std_logic;
SIGNAL \Game|counter1~3_combout\ : std_logic;
SIGNAL \Game|counter1[2]~1_combout\ : std_logic;
SIGNAL \Game|counter2[1]~2_combout\ : std_logic;
SIGNAL \Game|counter2[2]~4_combout\ : std_logic;
SIGNAL \Game|counter2[2]~5_combout\ : std_logic;
SIGNAL \Game|Equal7~0_combout\ : std_logic;
SIGNAL \Game|Equal2~0_combout\ : std_logic;
SIGNAL \Game|counter~4_combout\ : std_logic;
SIGNAL \Game|counter~5_combout\ : std_logic;
SIGNAL \Game|counter1~0_combout\ : std_logic;
SIGNAL \Game|counter1~2_combout\ : std_logic;
SIGNAL \Game|Equal8~0_combout\ : std_logic;
SIGNAL \Game|Equal5~1_combout\ : std_logic;
SIGNAL \Game|comb_proc~0_combout\ : std_logic;
SIGNAL \Game|counter2[2]~0_combout\ : std_logic;
SIGNAL \Game|counter2[2]~1_combout\ : std_logic;
SIGNAL \Game|counter2[0]~3_combout\ : std_logic;
SIGNAL \Game|Equal9~0_combout\ : std_logic;
SIGNAL \Game|Selector7~3_combout\ : std_logic;
SIGNAL \Game|Selector7~1_combout\ : std_logic;
SIGNAL \Game|Selector5~1_combout\ : std_logic;
SIGNAL \Game|NS.A1_492~combout\ : std_logic;
SIGNAL \Game|PS~6_combout\ : std_logic;
SIGNAL \Game|PS.A1~q\ : std_logic;
SIGNAL \Game|Selector7~0_combout\ : std_logic;
SIGNAL \Game|Selector7~2_combout\ : std_logic;
SIGNAL \Game|Selector7~4_combout\ : std_logic;
SIGNAL \Game|NS.D_514~combout\ : std_logic;
SIGNAL \Game|PS~9_combout\ : std_logic;
SIGNAL \Game|PS.D~q\ : std_logic;
SIGNAL \Game|Selector6~1_combout\ : std_logic;
SIGNAL \Game|NS.A2_470~combout\ : std_logic;
SIGNAL \Game|PS~8_combout\ : std_logic;
SIGNAL \Game|PS.A2~q\ : std_logic;
SIGNAL \Game|Selector4~0_combout\ : std_logic;
SIGNAL \set|counter1[0]~1_combout\ : std_logic;
SIGNAL \set|Add0~0_combout\ : std_logic;
SIGNAL \set|counter1[2]~2_combout\ : std_logic;
SIGNAL \set|NS~0_combout\ : std_logic;
SIGNAL \set|Equal5~1_combout\ : std_logic;
SIGNAL \set|NS~1_combout\ : std_logic;
SIGNAL \set|PS~q\ : std_logic;
SIGNAL \hge|decOut_0[3]~4_combout\ : std_logic;
SIGNAL \Game|Tcounter2[3]~0_combout\ : std_logic;
SIGNAL \Game|Tcounter2[0]~1_combout\ : std_logic;
SIGNAL \Game|Tcounter2[1]~2_combout\ : std_logic;
SIGNAL \Game|Add1~0_combout\ : std_logic;
SIGNAL \Game|Tcounter2[2]~3_combout\ : std_logic;
SIGNAL \Game|Add1~1_combout\ : std_logic;
SIGNAL \Game|Tcounter2[3]~4_combout\ : std_logic;
SIGNAL \Game|Equal1~0_combout\ : std_logic;
SIGNAL \Game|s_set2~0_combout\ : std_logic;
SIGNAL \Game|Equal3~0_combout\ : std_logic;
SIGNAL \Game|s_set2~1_combout\ : std_logic;
SIGNAL \Game|Tcounter1~2_combout\ : std_logic;
SIGNAL \Game|Tcounter1~3_combout\ : std_logic;
SIGNAL \Hex420|decOut_0[2]~8_combout\ : std_logic;
SIGNAL \Game|Add0~0_combout\ : std_logic;
SIGNAL \Game|Tcounter1~4_combout\ : std_logic;
SIGNAL \Game|s_set1~2_combout\ : std_logic;
SIGNAL \Game|s_set1~3_combout\ : std_logic;
SIGNAL \Game|Add2~1_cout\ : std_logic;
SIGNAL \Game|Add2~3\ : std_logic;
SIGNAL \Game|Add2~5\ : std_logic;
SIGNAL \Game|Add2~6_combout\ : std_logic;
SIGNAL \Game|Add2~4_combout\ : std_logic;
SIGNAL \Game|LessThan1~1_combout\ : std_logic;
SIGNAL \Game|LessThan1~2_combout\ : std_logic;
SIGNAL \Game|LessThan0~0_combout\ : std_logic;
SIGNAL \Game|LessThan1~0_combout\ : std_logic;
SIGNAL \Game|counter~0_combout\ : std_logic;
SIGNAL \Game|Add2~2_combout\ : std_logic;
SIGNAL \Game|counter~1_combout\ : std_logic;
SIGNAL \Game|s_set1~4_combout\ : std_logic;
SIGNAL \set|counter2[2]~2_combout\ : std_logic;
SIGNAL \Game|Selector3~0_combout\ : std_logic;
SIGNAL \set|counter2[2]~3_combout\ : std_logic;
SIGNAL \set|counter2[1]~4_combout\ : std_logic;
SIGNAL \set|Add1~0_combout\ : std_logic;
SIGNAL \set|counter2[2]~5_combout\ : std_logic;
SIGNAL \hge|decOut_0[3]~0_combout\ : std_logic;
SIGNAL \hge|decOut_0[3]~1_combout\ : std_logic;
SIGNAL \Game|Tcounter1[3]~1_combout\ : std_logic;
SIGNAL \Game|LessThan4~1_combout\ : std_logic;
SIGNAL \Game|LessThan4~0_combout\ : std_logic;
SIGNAL \Game|LessThan3~0_combout\ : std_logic;
SIGNAL \Game|counter~2_combout\ : std_logic;
SIGNAL \Game|Add3~1_cout\ : std_logic;
SIGNAL \Game|Add3~3\ : std_logic;
SIGNAL \Game|Add3~5\ : std_logic;
SIGNAL \Game|Add3~6_combout\ : std_logic;
SIGNAL \Game|Add3~2_combout\ : std_logic;
SIGNAL \Game|Add3~4_combout\ : std_logic;
SIGNAL \Game|counter~3_combout\ : std_logic;
SIGNAL \Game|counter~6_combout\ : std_logic;
SIGNAL \Game|counter~7_combout\ : std_logic;
SIGNAL \Game|Selector1~0_combout\ : std_logic;
SIGNAL \Game|Selector1~0clkctrl_outclk\ : std_logic;
SIGNAL \Game|Selector8~0_combout\ : std_logic;
SIGNAL \Game|Selector8~1_combout\ : std_logic;
SIGNAL \Game|NS.S_536~combout\ : std_logic;
SIGNAL \Game|PS~7_combout\ : std_logic;
SIGNAL \Game|PS.S~q\ : std_logic;
SIGNAL \set|counter1[2]~0_combout\ : std_logic;
SIGNAL \set|counter1[1]~3_combout\ : std_logic;
SIGNAL \set|Equal4~0_combout\ : std_logic;
SIGNAL \set|Add3~1\ : std_logic;
SIGNAL \set|Add3~2_combout\ : std_logic;
SIGNAL \set|Add3~3\ : std_logic;
SIGNAL \set|Add3~4_combout\ : std_logic;
SIGNAL \set|set_Pt2~1_combout\ : std_logic;
SIGNAL \set|Add2~1\ : std_logic;
SIGNAL \set|Add2~3\ : std_logic;
SIGNAL \set|Add2~4_combout\ : std_logic;
SIGNAL \set|Add2~2_combout\ : std_logic;
SIGNAL \set|set_Pt2~0_combout\ : std_logic;
SIGNAL \set|set_Pt2~2_combout\ : std_logic;
SIGNAL \set|counter2[0]~6_combout\ : std_logic;
SIGNAL \set|Equal5~0_combout\ : std_logic;
SIGNAL \set|LessThan2~0_combout\ : std_logic;
SIGNAL \set|Match1~0_combout\ : std_logic;
SIGNAL \set|comb_proc~0_combout\ : std_logic;
SIGNAL \set|Match2~0_combout\ : std_logic;
SIGNAL \match|s_set2[0]~feeder_combout\ : std_logic;
SIGNAL \match|s_set1~5_combout\ : std_logic;
SIGNAL \match|s_set1~7_combout\ : std_logic;
SIGNAL \match|s_set2~2_combout\ : std_logic;
SIGNAL \match|s_set2~3_combout\ : std_logic;
SIGNAL \match|s_set2~4_combout\ : std_logic;
SIGNAL \match|process_0~1_combout\ : std_logic;
SIGNAL \match|s_set1~4_combout\ : std_logic;
SIGNAL \match|s_set1~6_combout\ : std_logic;
SIGNAL \match|process_0~2_combout\ : std_logic;
SIGNAL \match|win1~0_combout\ : std_logic;
SIGNAL \match|win1~q\ : std_logic;
SIGNAL \match|win2~0_combout\ : std_logic;
SIGNAL \match|win2~feeder_combout\ : std_logic;
SIGNAL \match|win2~q\ : std_logic;
SIGNAL \Hex420|decOut_0[2]~0_combout\ : std_logic;
SIGNAL \pgl|s_counter[0]~25_combout\ : std_logic;
SIGNAL \pgl|s_counter[22]~70\ : std_logic;
SIGNAL \pgl|s_counter[23]~71_combout\ : std_logic;
SIGNAL \pgl|s_counter[23]~72\ : std_logic;
SIGNAL \pgl|s_counter[24]~73_combout\ : std_logic;
SIGNAL \pgl|LessThan0~3_combout\ : std_logic;
SIGNAL \pgl|LessThan0~0_combout\ : std_logic;
SIGNAL \pgl|LessThan1~3_combout\ : std_logic;
SIGNAL \pgl|LessThan0~1_combout\ : std_logic;
SIGNAL \pgl|LessThan0~2_combout\ : std_logic;
SIGNAL \pgl|LessThan0~4_combout\ : std_logic;
SIGNAL \pgl|LessThan1~0_combout\ : std_logic;
SIGNAL \pgl|LessThan0~5_combout\ : std_logic;
SIGNAL \pgl|LessThan0~6_combout\ : std_logic;
SIGNAL \pgl|s_counter[0]~26\ : std_logic;
SIGNAL \pgl|s_counter[1]~27_combout\ : std_logic;
SIGNAL \pgl|s_counter[1]~28\ : std_logic;
SIGNAL \pgl|s_counter[2]~29_combout\ : std_logic;
SIGNAL \pgl|s_counter[2]~30\ : std_logic;
SIGNAL \pgl|s_counter[3]~31_combout\ : std_logic;
SIGNAL \pgl|s_counter[3]~32\ : std_logic;
SIGNAL \pgl|s_counter[4]~33_combout\ : std_logic;
SIGNAL \pgl|s_counter[4]~34\ : std_logic;
SIGNAL \pgl|s_counter[5]~35_combout\ : std_logic;
SIGNAL \pgl|s_counter[5]~36\ : std_logic;
SIGNAL \pgl|s_counter[6]~37_combout\ : std_logic;
SIGNAL \pgl|s_counter[6]~38\ : std_logic;
SIGNAL \pgl|s_counter[7]~39_combout\ : std_logic;
SIGNAL \pgl|s_counter[7]~40\ : std_logic;
SIGNAL \pgl|s_counter[8]~41_combout\ : std_logic;
SIGNAL \pgl|s_counter[8]~42\ : std_logic;
SIGNAL \pgl|s_counter[9]~43_combout\ : std_logic;
SIGNAL \pgl|s_counter[9]~44\ : std_logic;
SIGNAL \pgl|s_counter[10]~45_combout\ : std_logic;
SIGNAL \pgl|s_counter[10]~46\ : std_logic;
SIGNAL \pgl|s_counter[11]~47_combout\ : std_logic;
SIGNAL \pgl|s_counter[11]~48\ : std_logic;
SIGNAL \pgl|s_counter[12]~49_combout\ : std_logic;
SIGNAL \pgl|s_counter[12]~50\ : std_logic;
SIGNAL \pgl|s_counter[13]~51_combout\ : std_logic;
SIGNAL \pgl|s_counter[13]~52\ : std_logic;
SIGNAL \pgl|s_counter[14]~53_combout\ : std_logic;
SIGNAL \pgl|s_counter[14]~54\ : std_logic;
SIGNAL \pgl|s_counter[15]~55_combout\ : std_logic;
SIGNAL \pgl|s_counter[15]~56\ : std_logic;
SIGNAL \pgl|s_counter[16]~57_combout\ : std_logic;
SIGNAL \pgl|s_counter[16]~58\ : std_logic;
SIGNAL \pgl|s_counter[17]~59_combout\ : std_logic;
SIGNAL \pgl|s_counter[17]~60\ : std_logic;
SIGNAL \pgl|s_counter[18]~61_combout\ : std_logic;
SIGNAL \pgl|s_counter[18]~62\ : std_logic;
SIGNAL \pgl|s_counter[19]~63_combout\ : std_logic;
SIGNAL \pgl|s_counter[19]~64\ : std_logic;
SIGNAL \pgl|s_counter[20]~65_combout\ : std_logic;
SIGNAL \pgl|s_counter[20]~66\ : std_logic;
SIGNAL \pgl|s_counter[21]~67_combout\ : std_logic;
SIGNAL \pgl|s_counter[21]~68\ : std_logic;
SIGNAL \pgl|s_counter[22]~69_combout\ : std_logic;
SIGNAL \pgl|LessThan1~2_combout\ : std_logic;
SIGNAL \pgl|LessThan1~4_combout\ : std_logic;
SIGNAL \pgl|LessThan1~1_combout\ : std_logic;
SIGNAL \pgl|LessThan1~5_combout\ : std_logic;
SIGNAL \pgl|LessThan1~6_combout\ : std_logic;
SIGNAL \pgl|blink~q\ : std_logic;
SIGNAL \bu1|output[3]~0_combout\ : std_logic;
SIGNAL \puls|Add0~0_combout\ : std_logic;
SIGNAL \puls|Add0~1\ : std_logic;
SIGNAL \puls|Add0~2_combout\ : std_logic;
SIGNAL \puls|Add0~3\ : std_logic;
SIGNAL \puls|Add0~4_combout\ : std_logic;
SIGNAL \puls|Add0~5\ : std_logic;
SIGNAL \puls|Add0~6_combout\ : std_logic;
SIGNAL \puls|Add0~7\ : std_logic;
SIGNAL \puls|Add0~8_combout\ : std_logic;
SIGNAL \puls|Add0~9\ : std_logic;
SIGNAL \puls|Add0~10_combout\ : std_logic;
SIGNAL \puls|Add0~11\ : std_logic;
SIGNAL \puls|Add0~12_combout\ : std_logic;
SIGNAL \puls|Add0~13\ : std_logic;
SIGNAL \puls|Add0~14_combout\ : std_logic;
SIGNAL \puls|s_cnt~5_combout\ : std_logic;
SIGNAL \puls|Add0~15\ : std_logic;
SIGNAL \puls|Add0~16_combout\ : std_logic;
SIGNAL \puls|Add0~17\ : std_logic;
SIGNAL \puls|Add0~18_combout\ : std_logic;
SIGNAL \puls|Add0~19\ : std_logic;
SIGNAL \puls|Add0~20_combout\ : std_logic;
SIGNAL \puls|Add0~21\ : std_logic;
SIGNAL \puls|Add0~22_combout\ : std_logic;
SIGNAL \puls|Add0~23\ : std_logic;
SIGNAL \puls|Add0~24_combout\ : std_logic;
SIGNAL \puls|s_cnt~4_combout\ : std_logic;
SIGNAL \puls|Add0~25\ : std_logic;
SIGNAL \puls|Add0~26_combout\ : std_logic;
SIGNAL \puls|s_cnt~3_combout\ : std_logic;
SIGNAL \puls|Add0~27\ : std_logic;
SIGNAL \puls|Add0~28_combout\ : std_logic;
SIGNAL \puls|s_cnt~2_combout\ : std_logic;
SIGNAL \puls|Add0~29\ : std_logic;
SIGNAL \puls|Add0~30_combout\ : std_logic;
SIGNAL \puls|s_cnt~1_combout\ : std_logic;
SIGNAL \puls|Add0~31\ : std_logic;
SIGNAL \puls|Add0~32_combout\ : std_logic;
SIGNAL \puls|Add0~33\ : std_logic;
SIGNAL \puls|Add0~34_combout\ : std_logic;
SIGNAL \puls|s_cnt~0_combout\ : std_logic;
SIGNAL \puls|Add0~35\ : std_logic;
SIGNAL \puls|Add0~36_combout\ : std_logic;
SIGNAL \puls|Add0~37\ : std_logic;
SIGNAL \puls|Add0~38_combout\ : std_logic;
SIGNAL \puls|s_cnt~6_combout\ : std_logic;
SIGNAL \puls|Equal0~5_combout\ : std_logic;
SIGNAL \puls|Add0~39\ : std_logic;
SIGNAL \puls|Add0~40_combout\ : std_logic;
SIGNAL \puls|s_cnt~7_combout\ : std_logic;
SIGNAL \puls|Add0~41\ : std_logic;
SIGNAL \puls|Add0~42_combout\ : std_logic;
SIGNAL \puls|s_cnt~8_combout\ : std_logic;
SIGNAL \puls|Add0~43\ : std_logic;
SIGNAL \puls|Add0~44_combout\ : std_logic;
SIGNAL \puls|s_cnt~9_combout\ : std_logic;
SIGNAL \puls|Add0~45\ : std_logic;
SIGNAL \puls|Add0~46_combout\ : std_logic;
SIGNAL \puls|s_cnt~10_combout\ : std_logic;
SIGNAL \puls|Equal0~6_combout\ : std_logic;
SIGNAL \puls|Add0~47\ : std_logic;
SIGNAL \puls|Add0~48_combout\ : std_logic;
SIGNAL \puls|Add0~49\ : std_logic;
SIGNAL \puls|Add0~50_combout\ : std_logic;
SIGNAL \puls|s_cnt~11_combout\ : std_logic;
SIGNAL \puls|Equal0~7_combout\ : std_logic;
SIGNAL \puls|Equal0~1_combout\ : std_logic;
SIGNAL \puls|Equal0~0_combout\ : std_logic;
SIGNAL \puls|Equal0~3_combout\ : std_logic;
SIGNAL \puls|Equal0~2_combout\ : std_logic;
SIGNAL \puls|Equal0~4_combout\ : std_logic;
SIGNAL \puls|Equal0~8_combout\ : std_logic;
SIGNAL \puls|pulse~feeder_combout\ : std_logic;
SIGNAL \puls|pulse~q\ : std_logic;
SIGNAL \puls|pulse~clkctrl_outclk\ : std_logic;
SIGNAL \dp|counter[0]~0_combout\ : std_logic;
SIGNAL \dp|counter[1]~1_combout\ : std_logic;
SIGNAL \hs0|Mux2~0_combout\ : std_logic;
SIGNAL \Hex420|decOut_0[2]~0clkctrl_outclk\ : std_logic;
SIGNAL \hs0|decOut[6]~1_combout\ : std_logic;
SIGNAL \hs0|decOut[6]~4_combout\ : std_logic;
SIGNAL \hs0|decOut[6]~0_combout\ : std_logic;
SIGNAL \hs0|decOut[6]~_emulated_q\ : std_logic;
SIGNAL \hs0|decOut[6]~3_combout\ : std_logic;
SIGNAL \hs0|decOut[6]~2_combout\ : std_logic;
SIGNAL \hs0|Mux3~0_combout\ : std_logic;
SIGNAL \hs0|decOut[5]~6_combout\ : std_logic;
SIGNAL \hs0|decOut[5]~9_combout\ : std_logic;
SIGNAL \hs0|decOut[5]~_emulated_q\ : std_logic;
SIGNAL \hs0|decOut[5]~8_combout\ : std_logic;
SIGNAL \hs0|decOut[5]~7_combout\ : std_logic;
SIGNAL \hs0|Mux4~0_combout\ : std_logic;
SIGNAL \hs0|decOut[4]~11_combout\ : std_logic;
SIGNAL \hs0|decOut[4]~14_combout\ : std_logic;
SIGNAL \hs0|decOut[4]~_emulated_q\ : std_logic;
SIGNAL \hs0|decOut[4]~13_combout\ : std_logic;
SIGNAL \hs0|decOut[4]~12_combout\ : std_logic;
SIGNAL \hs0|Mux5~0_combout\ : std_logic;
SIGNAL \hs0|decOut[3]~16_combout\ : std_logic;
SIGNAL \hs0|decOut[3]~19_combout\ : std_logic;
SIGNAL \hs0|decOut[3]~_emulated_q\ : std_logic;
SIGNAL \hs0|decOut[3]~18_combout\ : std_logic;
SIGNAL \hs0|decOut[3]~17_combout\ : std_logic;
SIGNAL \hs0|Mux6~0_combout\ : std_logic;
SIGNAL \hs0|decOut[2]~21_combout\ : std_logic;
SIGNAL \hs0|decOut[2]~24_combout\ : std_logic;
SIGNAL \hs0|decOut[2]~_emulated_q\ : std_logic;
SIGNAL \hs0|decOut[2]~23_combout\ : std_logic;
SIGNAL \hs0|decOut[2]~22_combout\ : std_logic;
SIGNAL \hs0|Mux7~0_combout\ : std_logic;
SIGNAL \hs0|decOut[1]~26_combout\ : std_logic;
SIGNAL \hs0|decOut[1]~29_combout\ : std_logic;
SIGNAL \hs0|decOut[1]~_emulated_q\ : std_logic;
SIGNAL \hs0|decOut[1]~28_combout\ : std_logic;
SIGNAL \hs0|decOut[1]~27_combout\ : std_logic;
SIGNAL \hs0|decOut[0]~32_combout\ : std_logic;
SIGNAL \hs0|decOut[0]~_emulated_q\ : std_logic;
SIGNAL \hs0|decOut[0]~31_combout\ : std_logic;
SIGNAL \hs0|decOut[0]~30_combout\ : std_logic;
SIGNAL \hs1|Mux1~0_combout\ : std_logic;
SIGNAL \hs1|decOut[6]~1_combout\ : std_logic;
SIGNAL \hs1|decOut[6]~41_combout\ : std_logic;
SIGNAL \hs1|decOut[6]~_emulated_q\ : std_logic;
SIGNAL \hs1|decOut[6]~3_combout\ : std_logic;
SIGNAL \hs1|decOut[6]~2_combout\ : std_logic;
SIGNAL \hs1|Mux2~0_combout\ : std_logic;
SIGNAL \hs1|decOut[5]~6_combout\ : std_logic;
SIGNAL \hs1|decOut[5]~9_combout\ : std_logic;
SIGNAL \hs1|decOut[5]~_emulated_q\ : std_logic;
SIGNAL \hs1|decOut[5]~8_combout\ : std_logic;
SIGNAL \hs1|decOut[5]~7_combout\ : std_logic;
SIGNAL \hs1|Mux3~0_combout\ : std_logic;
SIGNAL \hs1|decOut[4]~11_combout\ : std_logic;
SIGNAL \hs1|decOut[4]~14_combout\ : std_logic;
SIGNAL \hs1|decOut[4]~_emulated_q\ : std_logic;
SIGNAL \hs1|decOut[4]~13_combout\ : std_logic;
SIGNAL \hs1|decOut[4]~12_combout\ : std_logic;
SIGNAL \hs1|Mux4~0_combout\ : std_logic;
SIGNAL \hs1|decOut[3]~16_combout\ : std_logic;
SIGNAL \hs1|decOut[3]~19_combout\ : std_logic;
SIGNAL \hs1|decOut[3]~_emulated_q\ : std_logic;
SIGNAL \hs1|decOut[3]~18_combout\ : std_logic;
SIGNAL \hs1|decOut[3]~17_combout\ : std_logic;
SIGNAL \hs1|Mux5~0_combout\ : std_logic;
SIGNAL \hs1|decOut[2]~21_combout\ : std_logic;
SIGNAL \hs1|decOut[2]~24_combout\ : std_logic;
SIGNAL \hs1|decOut[2]~_emulated_q\ : std_logic;
SIGNAL \hs1|decOut[2]~23_combout\ : std_logic;
SIGNAL \hs1|decOut[2]~22_combout\ : std_logic;
SIGNAL \hs1|Mux6~0_combout\ : std_logic;
SIGNAL \hs1|decOut[1]~26_combout\ : std_logic;
SIGNAL \hs1|decOut[1]~29_combout\ : std_logic;
SIGNAL \hs1|decOut[1]~_emulated_q\ : std_logic;
SIGNAL \hs1|decOut[1]~28_combout\ : std_logic;
SIGNAL \hs1|decOut[1]~27_combout\ : std_logic;
SIGNAL \hs1|decOut[0]~_emulated_q\ : std_logic;
SIGNAL \hs1|decOut[0]~31_combout\ : std_logic;
SIGNAL \hs1|decOut[0]~30_combout\ : std_logic;
SIGNAL \set|comb_proc~3_combout\ : std_logic;
SIGNAL \Game|Equal4~0_combout\ : std_logic;
SIGNAL \Game|Selector5~0_combout\ : std_logic;
SIGNAL \set|Add2~0_combout\ : std_logic;
SIGNAL \set|comb_proc~1_combout\ : std_logic;
SIGNAL \set|comb_proc~2_combout\ : std_logic;
SIGNAL \set|comb_proc~4_combout\ : std_logic;
SIGNAL \set|set_Pt1~0_combout\ : std_logic;
SIGNAL \set|PS~clkctrl_outclk\ : std_logic;
SIGNAL \set|set_Pt1~combout\ : std_logic;
SIGNAL \match|process_0~0_combout\ : std_logic;
SIGNAL \set|LessThan5~0_combout\ : std_logic;
SIGNAL \set|Add3~0_combout\ : std_logic;
SIGNAL \set|set_Pt2~3_combout\ : std_logic;
SIGNAL \set|set_Pt2~4_combout\ : std_logic;
SIGNAL \Game|Selector6~0_combout\ : std_logic;
SIGNAL \Game|Selector6~2_combout\ : std_logic;
SIGNAL \set|set_Pt2~5_combout\ : std_logic;
SIGNAL \set|set_Pt2~combout\ : std_logic;
SIGNAL \dp|decOut_n~32_combout\ : std_logic;
SIGNAL \dp|decOut_n~33_combout\ : std_logic;
SIGNAL \dp|decOut_n[6]~1_combout\ : std_logic;
SIGNAL \dp|decOut_n[6]~_emulated_q\ : std_logic;
SIGNAL \dp|decOut_n[6]~3_combout\ : std_logic;
SIGNAL \dp|decOut_n[6]~2_combout\ : std_logic;
SIGNAL \dp|decOut_n[5]~6_combout\ : std_logic;
SIGNAL \dp|decOut_n[5]~_emulated_q\ : std_logic;
SIGNAL \dp|decOut_n[5]~8_combout\ : std_logic;
SIGNAL \dp|decOut_n[0]~24_combout\ : std_logic;
SIGNAL \dp|decOut_n~34_combout\ : std_logic;
SIGNAL \dp|decOut_n[4]~11_combout\ : std_logic;
SIGNAL \dp|decOut_n[4]~_emulated_q\ : std_logic;
SIGNAL \dp|decOut_n[4]~13_combout\ : std_logic;
SIGNAL \dp|decOut_n[4]~12_combout\ : std_logic;
SIGNAL \dp|decOut_n[3]~17_combout\ : std_logic;
SIGNAL \dp|decOut_n[3]~_emulated_q\ : std_logic;
SIGNAL \dp|decOut_n[3]~16_combout\ : std_logic;
SIGNAL \dp|decOut_n[3]~15_combout\ : std_logic;
SIGNAL \dp|decOut_n[2]~20_combout\ : std_logic;
SIGNAL \dp|decOut_n[2]~_emulated_q\ : std_logic;
SIGNAL \dp|decOut_n[2]~19_combout\ : std_logic;
SIGNAL \dp|decOut_n[2]~18_combout\ : std_logic;
SIGNAL \dp|decOut_n[1]~23_combout\ : std_logic;
SIGNAL \dp|decOut_n[1]~_emulated_q\ : std_logic;
SIGNAL \dp|decOut_n[1]~22_combout\ : std_logic;
SIGNAL \dp|decOut_n[1]~21_combout\ : std_logic;
SIGNAL \sum|Add0~0_combout\ : std_logic;
SIGNAL \sum|Add0~1_combout\ : std_logic;
SIGNAL \sum|Add0~2_combout\ : std_logic;
SIGNAL \sum|Add0~4_combout\ : std_logic;
SIGNAL \sum|Add0~3_combout\ : std_logic;
SIGNAL \sum|Mux1~0_combout\ : std_logic;
SIGNAL \sum|decOut[6]~1_combout\ : std_logic;
SIGNAL \sum|decOut[6]~4_combout\ : std_logic;
SIGNAL \sum|decOut[6]~_emulated_q\ : std_logic;
SIGNAL \sum|decOut[6]~3_combout\ : std_logic;
SIGNAL \sum|decOut[6]~2_combout\ : std_logic;
SIGNAL \sum|Mux2~0_combout\ : std_logic;
SIGNAL \sum|decOut[5]~6_combout\ : std_logic;
SIGNAL \sum|decOut[5]~_emulated_q\ : std_logic;
SIGNAL \sum|decOut[5]~8_combout\ : std_logic;
SIGNAL \sum|decOut[5]~7_combout\ : std_logic;
SIGNAL \sum|Mux3~0_combout\ : std_logic;
SIGNAL \sum|decOut[4]~11_combout\ : std_logic;
SIGNAL \sum|decOut[4]~14_combout\ : std_logic;
SIGNAL \sum|decOut[4]~_emulated_q\ : std_logic;
SIGNAL \sum|decOut[4]~13_combout\ : std_logic;
SIGNAL \sum|decOut[4]~12_combout\ : std_logic;
SIGNAL \sum|Mux4~0_combout\ : std_logic;
SIGNAL \sum|decOut[3]~16_combout\ : std_logic;
SIGNAL \sum|decOut[3]~19_combout\ : std_logic;
SIGNAL \sum|decOut[3]~_emulated_q\ : std_logic;
SIGNAL \sum|decOut[3]~18_combout\ : std_logic;
SIGNAL \sum|decOut[3]~17_combout\ : std_logic;
SIGNAL \sum|Mux5~0_combout\ : std_logic;
SIGNAL \sum|decOut[2]~21_combout\ : std_logic;
SIGNAL \sum|decOut[2]~_emulated_q\ : std_logic;
SIGNAL \sum|decOut[2]~23_combout\ : std_logic;
SIGNAL \sum|decOut[2]~22_combout\ : std_logic;
SIGNAL \sum|Mux6~0_combout\ : std_logic;
SIGNAL \sum|decOut[1]~26_combout\ : std_logic;
SIGNAL \sum|decOut[1]~29_combout\ : std_logic;
SIGNAL \sum|decOut[1]~_emulated_q\ : std_logic;
SIGNAL \sum|decOut[1]~28_combout\ : std_logic;
SIGNAL \sum|decOut[1]~27_combout\ : std_logic;
SIGNAL \sum|Mux7~0_combout\ : std_logic;
SIGNAL \sum|decOut[0]~31_combout\ : std_logic;
SIGNAL \sum|decOut[0]~_emulated_q\ : std_logic;
SIGNAL \sum|decOut[0]~33_combout\ : std_logic;
SIGNAL \sum|decOut[0]~32_combout\ : std_logic;
SIGNAL \hge|Mux0~0_combout\ : std_logic;
SIGNAL \hge|decOut_0~5_combout\ : std_logic;
SIGNAL \hge|decOut_0~2_combout\ : std_logic;
SIGNAL \Game|dOut2[0]~0_combout\ : std_logic;
SIGNAL \Game|dOut2[2]~1_combout\ : std_logic;
SIGNAL \hge|decOut_0~3_combout\ : std_logic;
SIGNAL \hge|decOut_0[6]~6_combout\ : std_logic;
SIGNAL \hge|Mux1~0_combout\ : std_logic;
SIGNAL \hge|decOut_0[5]~7_combout\ : std_logic;
SIGNAL \hge|decOut_0[5]~8_combout\ : std_logic;
SIGNAL \hge|decOut_0[4]~10_combout\ : std_logic;
SIGNAL \hge|Mux2~0_combout\ : std_logic;
SIGNAL \hge|decOut_0[4]~9_combout\ : std_logic;
SIGNAL \hge|decOut_0[4]~11_combout\ : std_logic;
SIGNAL \hge|Mux3~0_combout\ : std_logic;
SIGNAL \hge|decOut_0[3]~12_combout\ : std_logic;
SIGNAL \hge|decOut_0[2]~13_combout\ : std_logic;
SIGNAL \hge|decOut_0[2]~14_combout\ : std_logic;
SIGNAL \hge|Mux5~0_combout\ : std_logic;
SIGNAL \hge|decOut_0[1]~15_combout\ : std_logic;
SIGNAL \hge|Mux6~0_combout\ : std_logic;
SIGNAL \hge|decOut_0[0]~16_combout\ : std_logic;
SIGNAL \hge|decOut_0[0]~17_combout\ : std_logic;
SIGNAL \hge|Mux7~2_combout\ : std_logic;
SIGNAL \hge|Mux7~3_combout\ : std_logic;
SIGNAL \hge|Mux8~2_combout\ : std_logic;
SIGNAL \hge|Mux8~3_combout\ : std_logic;
SIGNAL \hge|Mux9~2_combout\ : std_logic;
SIGNAL \hge|Mux9~3_combout\ : std_logic;
SIGNAL \hge|Mux10~2_combout\ : std_logic;
SIGNAL \hge|Mux10~3_combout\ : std_logic;
SIGNAL \hge|decOut_0[4]~18_combout\ : std_logic;
SIGNAL \hge|decOut_1[2]~0_combout\ : std_logic;
SIGNAL \hge|Mux12~2_combout\ : std_logic;
SIGNAL \hge|Mux12~3_combout\ : std_logic;
SIGNAL \Game|dOut1[0]~6_combout\ : std_logic;
SIGNAL \Game|dOut1[1]~8_combout\ : std_logic;
SIGNAL \Game|dOut1[2]~7_combout\ : std_logic;
SIGNAL \Hex420|decOut_0[6]~1_combout\ : std_logic;
SIGNAL \Hex420|Mux0~0_combout\ : std_logic;
SIGNAL \Hex420|decOut_0[6]~2_combout\ : std_logic;
SIGNAL \Hex420|Mux1~0_combout\ : std_logic;
SIGNAL \Hex420|Mux13~2_combout\ : std_logic;
SIGNAL \Hex420|decOut_0[0]~3_combout\ : std_logic;
SIGNAL \Hex420|decOut_0[5]~4_combout\ : std_logic;
SIGNAL \Hex420|decOut_0[4]~5_combout\ : std_logic;
SIGNAL \Hex420|Mux2~0_combout\ : std_logic;
SIGNAL \Hex420|decOut_0[4]~6_combout\ : std_logic;
SIGNAL \Hex420|Mux3~0_combout\ : std_logic;
SIGNAL \Hex420|decOut_0[3]~7_combout\ : std_logic;
SIGNAL \Hex420|decOut_0[2]~9_combout\ : std_logic;
SIGNAL \Hex420|Mux5~0_combout\ : std_logic;
SIGNAL \Hex420|decOut_0[1]~10_combout\ : std_logic;
SIGNAL \Hex420|Mux6~0_combout\ : std_logic;
SIGNAL \Hex420|decOut_0[0]~11_combout\ : std_logic;
SIGNAL \Hex420|Mux7~0_combout\ : std_logic;
SIGNAL \Hex420|Mux7~1_combout\ : std_logic;
SIGNAL \Hex420|Mux8~0_combout\ : std_logic;
SIGNAL \Hex420|Mux8~1_combout\ : std_logic;
SIGNAL \Hex420|Mux9~0_combout\ : std_logic;
SIGNAL \Hex420|Mux9~1_combout\ : std_logic;
SIGNAL \Hex420|Mux10~0_combout\ : std_logic;
SIGNAL \Hex420|Mux10~1_combout\ : std_logic;
SIGNAL \Hex420|Mux11~0_combout\ : std_logic;
SIGNAL \Hex420|decOut_1[2]~0_combout\ : std_logic;
SIGNAL \Hex420|Mux12~0_combout\ : std_logic;
SIGNAL \Hex420|Mux12~1_combout\ : std_logic;
SIGNAL \buf|output1~0_combout\ : std_logic;
SIGNAL \buff1|output[2]~0_combout\ : std_logic;
SIGNAL \buff1|output[1]~1_combout\ : std_logic;
SIGNAL \buff1|output[0]~2_combout\ : std_logic;
SIGNAL \buff2|output[2]~0_combout\ : std_logic;
SIGNAL \buff2|output[1]~1_combout\ : std_logic;
SIGNAL \buff2|output[0]~2_combout\ : std_logic;
SIGNAL \Game|j1~0_combout\ : std_logic;
SIGNAL \Game|Add6~0_combout\ : std_logic;
SIGNAL \Game|odd~0_combout\ : std_logic;
SIGNAL \Game|odd~q\ : std_logic;
SIGNAL \Game|j1~1_combout\ : std_logic;
SIGNAL \Game|j1~2_combout\ : std_logic;
SIGNAL \Game|j1~q\ : std_logic;
SIGNAL \b0|output~0_combout\ : std_logic;
SIGNAL \pgl|s_counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \Game|counter2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DU|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \set|counter2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \match|s_set2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Game|counter1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \set|counter1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \match|s_set1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Game|Tcounter2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DU1|s_debounceCnt\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \Game|Tcounter1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dp|counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DU2|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \puls|s_cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \puls|ALT_INV_pulse~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_CLOCK_50~input_o\ : std_logic;
SIGNAL \hge|ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \hge|ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \hge|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \DU1|ALT_INV_s_pulsedOut~q\ : std_logic;
SIGNAL \hs0|ALT_INV_decOut[6]~0_combout\ : std_logic;
SIGNAL \b0|ALT_INV_output~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\Hex420|decOut_0[2]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Hex420|decOut_0[2]~0_combout\);

\puls|pulse~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \puls|pulse~q\);

\Game|Selector1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Game|Selector1~0_combout\);

\set|PS~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \set|PS~q\);
\puls|ALT_INV_pulse~clkctrl_outclk\ <= NOT \puls|pulse~clkctrl_outclk\;
\ALT_INV_CLOCK_50~inputclkctrl_outclk\ <= NOT \CLOCK_50~inputclkctrl_outclk\;
\ALT_INV_CLOCK_50~input_o\ <= NOT \CLOCK_50~input_o\;
\hge|ALT_INV_Mux12~3_combout\ <= NOT \hge|Mux12~3_combout\;
\hge|ALT_INV_Mux10~3_combout\ <= NOT \hge|Mux10~3_combout\;
\hge|ALT_INV_Mux9~3_combout\ <= NOT \hge|Mux9~3_combout\;
\DU1|ALT_INV_s_pulsedOut~q\ <= NOT \DU1|s_pulsedOut~q\;
\hs0|ALT_INV_decOut[6]~0_combout\ <= NOT \hs0|decOut[6]~0_combout\;
\b0|ALT_INV_output~0_combout\ <= NOT \b0|output~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hs0|decOut[6]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hs0|decOut[5]~7_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hs0|decOut[4]~12_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hs0|decOut[3]~17_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hs0|decOut[2]~22_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hs0|decOut[1]~27_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hs0|decOut[0]~30_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hs1|decOut[6]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hs1|decOut[5]~7_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hs1|decOut[4]~12_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hs1|decOut[3]~17_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hs1|decOut[2]~22_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hs1|decOut[1]~27_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hs1|decOut[0]~30_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|decOut_n[6]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|decOut_n[0]~24_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|decOut_n[4]~12_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|decOut_n[3]~15_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|decOut_n[2]~18_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|decOut_n[1]~21_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|decOut_n[0]~24_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum|decOut[6]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum|decOut[5]~7_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum|decOut[4]~12_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum|decOut[3]~17_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum|decOut[2]~22_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum|decOut[1]~27_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum|decOut[0]~32_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hge|decOut_0[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hge|decOut_0[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hge|decOut_0[4]~11_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hge|decOut_0[3]~12_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hge|decOut_0[2]~14_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hge|decOut_0[1]~15_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hge|decOut_0[0]~17_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hge|Mux7~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hge|Mux8~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hge|ALT_INV_Mux9~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hge|ALT_INV_Mux10~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hge|decOut_1[2]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hge|decOut_1[2]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hge|ALT_INV_Mux12~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex420|decOut_0[6]~2_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex420|decOut_0[5]~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex420|decOut_0[4]~6_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex420|decOut_0[3]~7_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex420|decOut_0[2]~9_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex420|decOut_0[1]~10_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex420|decOut_0[0]~11_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex420|Mux7~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex420|Mux8~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex420|Mux9~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex420|Mux10~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex420|decOut_1[2]~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex420|decOut_1[2]~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex420|Mux12~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \buf|output1~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \buff1|output[2]~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \buff1|output[1]~1_combout\,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \buff1|output[0]~2_combout\,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \buf|output1~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \buff2|output[2]~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \buff2|output[1]~1_combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \buff2|output[0]~2_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b0|output~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bu1|output[3]~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \buf|output1~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bu1|output[3]~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \buf|output1~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b0|ALT_INV_output~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \buf|output1~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bu1|output[3]~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \buf|output1~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bu1|output[3]~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \buf|output1~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bu1|output[3]~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \buf|output1~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bu1|output[3]~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \buf|output1~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bu1|output[3]~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \buf|output1~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bu1|output[3]~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

-- Location: LCCOMB_X75_Y36_N12
\match|s_set1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \match|s_set1[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \match|s_set1[0]~feeder_combout\);

-- Location: LCCOMB_X81_Y36_N4
\DU1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~0_combout\ = \DU1|s_debounceCnt\(0) $ (VCC)
-- \DU1|Add0~1\ = CARRY(\DU1|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU1|s_debounceCnt\(0),
	datad => VCC,
	combout => \DU1|Add0~0_combout\,
	cout => \DU1|Add0~1\);

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

-- Location: LCCOMB_X79_Y36_N16
\DU1|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_dirtyIn~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	combout => \DU1|s_dirtyIn~0_combout\);

-- Location: FF_X79_Y36_N17
\DU1|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_dirtyIn~q\);

-- Location: FF_X80_Y36_N27
\DU1|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DU1|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_previousIn~q\);

-- Location: LCCOMB_X81_Y36_N14
\DU1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~10_combout\ = (\DU1|s_debounceCnt\(5) & (\DU1|Add0~9\ & VCC)) # (!\DU1|s_debounceCnt\(5) & (!\DU1|Add0~9\))
-- \DU1|Add0~11\ = CARRY((!\DU1|s_debounceCnt\(5) & !\DU1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU1|s_debounceCnt\(5),
	datad => VCC,
	cin => \DU1|Add0~9\,
	combout => \DU1|Add0~10_combout\,
	cout => \DU1|Add0~11\);

-- Location: LCCOMB_X81_Y36_N16
\DU1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~12_combout\ = (\DU1|s_debounceCnt\(6) & ((GND) # (!\DU1|Add0~11\))) # (!\DU1|s_debounceCnt\(6) & (\DU1|Add0~11\ $ (GND)))
-- \DU1|Add0~13\ = CARRY((\DU1|s_debounceCnt\(6)) # (!\DU1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(6),
	datad => VCC,
	cin => \DU1|Add0~11\,
	combout => \DU1|Add0~12_combout\,
	cout => \DU1|Add0~13\);

-- Location: LCCOMB_X80_Y36_N16
\DU1|s_debounceCnt~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt~29_combout\ = (\DU1|Add0~12_combout\ & \DU1|s_debounceCnt[19]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU1|Add0~12_combout\,
	datad => \DU1|s_debounceCnt[19]~7_combout\,
	combout => \DU1|s_debounceCnt~29_combout\);

-- Location: FF_X80_Y36_N17
\DU1|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt~29_combout\,
	ena => \DU1|s_debounceCnt[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(6));

-- Location: LCCOMB_X81_Y36_N18
\DU1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~14_combout\ = (\DU1|s_debounceCnt\(7) & (\DU1|Add0~13\ & VCC)) # (!\DU1|s_debounceCnt\(7) & (!\DU1|Add0~13\))
-- \DU1|Add0~15\ = CARRY((!\DU1|s_debounceCnt\(7) & !\DU1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU1|s_debounceCnt\(7),
	datad => VCC,
	cin => \DU1|Add0~13\,
	combout => \DU1|Add0~14_combout\,
	cout => \DU1|Add0~15\);

-- Location: LCCOMB_X80_Y36_N18
\DU1|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt~15_combout\ = (\DU1|s_debounceCnt[19]~0_combout\ & ((\DU1|Add0~14_combout\) # (!\DU1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt[19]~0_combout\,
	datab => \DU1|Add0~14_combout\,
	datad => \DU1|s_previousIn~q\,
	combout => \DU1|s_debounceCnt~15_combout\);

-- Location: FF_X80_Y36_N19
\DU1|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt~15_combout\,
	ena => \DU1|s_debounceCnt[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(7));

-- Location: LCCOMB_X81_Y36_N20
\DU1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~16_combout\ = (\DU1|s_debounceCnt\(8) & ((GND) # (!\DU1|Add0~15\))) # (!\DU1|s_debounceCnt\(8) & (\DU1|Add0~15\ $ (GND)))
-- \DU1|Add0~17\ = CARRY((\DU1|s_debounceCnt\(8)) # (!\DU1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU1|s_debounceCnt\(8),
	datad => VCC,
	cin => \DU1|Add0~15\,
	combout => \DU1|Add0~16_combout\,
	cout => \DU1|Add0~17\);

-- Location: LCCOMB_X79_Y36_N26
\DU1|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt~16_combout\ = (\DU1|s_debounceCnt[19]~0_combout\ & ((\DU1|Add0~16_combout\) # (!\DU1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU1|s_previousIn~q\,
	datac => \DU1|Add0~16_combout\,
	datad => \DU1|s_debounceCnt[19]~0_combout\,
	combout => \DU1|s_debounceCnt~16_combout\);

-- Location: FF_X79_Y36_N27
\DU1|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt~16_combout\,
	ena => \DU1|s_debounceCnt[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(8));

-- Location: LCCOMB_X81_Y36_N22
\DU1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~18_combout\ = (\DU1|s_debounceCnt\(9) & (\DU1|Add0~17\ & VCC)) # (!\DU1|s_debounceCnt\(9) & (!\DU1|Add0~17\))
-- \DU1|Add0~19\ = CARRY((!\DU1|s_debounceCnt\(9) & !\DU1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(9),
	datad => VCC,
	cin => \DU1|Add0~17\,
	combout => \DU1|Add0~18_combout\,
	cout => \DU1|Add0~19\);

-- Location: LCCOMB_X82_Y36_N26
\DU1|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt~12_combout\ = (\DU1|Add0~18_combout\ & \DU1|s_debounceCnt[19]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU1|Add0~18_combout\,
	datad => \DU1|s_debounceCnt[19]~7_combout\,
	combout => \DU1|s_debounceCnt~12_combout\);

-- Location: FF_X82_Y36_N27
\DU1|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt~12_combout\,
	ena => \DU1|s_debounceCnt[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(9));

-- Location: LCCOMB_X81_Y36_N24
\DU1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~20_combout\ = (\DU1|s_debounceCnt\(10) & ((GND) # (!\DU1|Add0~19\))) # (!\DU1|s_debounceCnt\(10) & (\DU1|Add0~19\ $ (GND)))
-- \DU1|Add0~21\ = CARRY((\DU1|s_debounceCnt\(10)) # (!\DU1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU1|s_debounceCnt\(10),
	datad => VCC,
	cin => \DU1|Add0~19\,
	combout => \DU1|Add0~20_combout\,
	cout => \DU1|Add0~21\);

-- Location: LCCOMB_X82_Y36_N24
\DU1|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt~13_combout\ = (\DU1|Add0~20_combout\ & \DU1|s_debounceCnt[19]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU1|Add0~20_combout\,
	datad => \DU1|s_debounceCnt[19]~7_combout\,
	combout => \DU1|s_debounceCnt~13_combout\);

-- Location: FF_X82_Y36_N25
\DU1|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt~13_combout\,
	ena => \DU1|s_debounceCnt[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(10));

-- Location: LCCOMB_X81_Y36_N26
\DU1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~22_combout\ = (\DU1|s_debounceCnt\(11) & (\DU1|Add0~21\ & VCC)) # (!\DU1|s_debounceCnt\(11) & (!\DU1|Add0~21\))
-- \DU1|Add0~23\ = CARRY((!\DU1|s_debounceCnt\(11) & !\DU1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(11),
	datad => VCC,
	cin => \DU1|Add0~21\,
	combout => \DU1|Add0~22_combout\,
	cout => \DU1|Add0~23\);

-- Location: LCCOMB_X82_Y36_N6
\DU1|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt~14_combout\ = (\DU1|Add0~22_combout\ & \DU1|s_debounceCnt[19]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DU1|Add0~22_combout\,
	datad => \DU1|s_debounceCnt[19]~7_combout\,
	combout => \DU1|s_debounceCnt~14_combout\);

-- Location: FF_X82_Y36_N7
\DU1|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt~14_combout\,
	ena => \DU1|s_debounceCnt[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(11));

-- Location: LCCOMB_X81_Y36_N28
\DU1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~24_combout\ = (\DU1|s_debounceCnt\(12) & ((GND) # (!\DU1|Add0~23\))) # (!\DU1|s_debounceCnt\(12) & (\DU1|Add0~23\ $ (GND)))
-- \DU1|Add0~25\ = CARRY((\DU1|s_debounceCnt\(12)) # (!\DU1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(12),
	datad => VCC,
	cin => \DU1|Add0~23\,
	combout => \DU1|Add0~24_combout\,
	cout => \DU1|Add0~25\);

-- Location: LCCOMB_X79_Y36_N28
\DU1|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt~20_combout\ = (\DU1|s_debounceCnt[19]~0_combout\ & ((\DU1|Add0~24_combout\) # (!\DU1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU1|s_previousIn~q\,
	datac => \DU1|Add0~24_combout\,
	datad => \DU1|s_debounceCnt[19]~0_combout\,
	combout => \DU1|s_debounceCnt~20_combout\);

-- Location: FF_X79_Y36_N29
\DU1|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt~20_combout\,
	ena => \DU1|s_debounceCnt[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(12));

-- Location: LCCOMB_X81_Y36_N30
\DU1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~26_combout\ = (\DU1|s_debounceCnt\(13) & (\DU1|Add0~25\ & VCC)) # (!\DU1|s_debounceCnt\(13) & (!\DU1|Add0~25\))
-- \DU1|Add0~27\ = CARRY((!\DU1|s_debounceCnt\(13) & !\DU1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU1|s_debounceCnt\(13),
	datad => VCC,
	cin => \DU1|Add0~25\,
	combout => \DU1|Add0~26_combout\,
	cout => \DU1|Add0~27\);

-- Location: LCCOMB_X80_Y36_N22
\DU1|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt~21_combout\ = (\DU1|Add0~26_combout\ & \DU1|s_debounceCnt[19]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DU1|Add0~26_combout\,
	datad => \DU1|s_debounceCnt[19]~7_combout\,
	combout => \DU1|s_debounceCnt~21_combout\);

-- Location: FF_X80_Y36_N23
\DU1|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt~21_combout\,
	ena => \DU1|s_debounceCnt[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(13));

-- Location: LCCOMB_X81_Y35_N0
\DU1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~28_combout\ = (\DU1|s_debounceCnt\(14) & ((GND) # (!\DU1|Add0~27\))) # (!\DU1|s_debounceCnt\(14) & (\DU1|Add0~27\ $ (GND)))
-- \DU1|Add0~29\ = CARRY((\DU1|s_debounceCnt\(14)) # (!\DU1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU1|s_debounceCnt\(14),
	datad => VCC,
	cin => \DU1|Add0~27\,
	combout => \DU1|Add0~28_combout\,
	cout => \DU1|Add0~29\);

-- Location: LCCOMB_X79_Y36_N30
\DU1|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt~22_combout\ = (\DU1|s_debounceCnt[19]~0_combout\ & ((\DU1|Add0~28_combout\) # (!\DU1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU1|s_previousIn~q\,
	datac => \DU1|Add0~28_combout\,
	datad => \DU1|s_debounceCnt[19]~0_combout\,
	combout => \DU1|s_debounceCnt~22_combout\);

-- Location: FF_X79_Y36_N31
\DU1|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt~22_combout\,
	ena => \DU1|s_debounceCnt[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(14));

-- Location: LCCOMB_X81_Y35_N2
\DU1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~30_combout\ = (\DU1|s_debounceCnt\(15) & (\DU1|Add0~29\ & VCC)) # (!\DU1|s_debounceCnt\(15) & (!\DU1|Add0~29\))
-- \DU1|Add0~31\ = CARRY((!\DU1|s_debounceCnt\(15) & !\DU1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(15),
	datad => VCC,
	cin => \DU1|Add0~29\,
	combout => \DU1|Add0~30_combout\,
	cout => \DU1|Add0~31\);

-- Location: LCCOMB_X79_Y36_N0
\DU1|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt~23_combout\ = (\DU1|s_debounceCnt[19]~0_combout\ & ((\DU1|Add0~30_combout\) # (!\DU1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU1|s_previousIn~q\,
	datac => \DU1|Add0~30_combout\,
	datad => \DU1|s_debounceCnt[19]~0_combout\,
	combout => \DU1|s_debounceCnt~23_combout\);

-- Location: FF_X79_Y36_N1
\DU1|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt~23_combout\,
	ena => \DU1|s_debounceCnt[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(15));

-- Location: LCCOMB_X79_Y36_N22
\DU1|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_pulsedOut~3_combout\ = (!\DU1|s_debounceCnt\(14) & (!\DU1|s_debounceCnt\(12) & (!\DU1|s_debounceCnt\(15) & !\DU1|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(14),
	datab => \DU1|s_debounceCnt\(12),
	datac => \DU1|s_debounceCnt\(15),
	datad => \DU1|s_debounceCnt\(13),
	combout => \DU1|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X81_Y35_N4
\DU1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~32_combout\ = (\DU1|s_debounceCnt\(16) & ((GND) # (!\DU1|Add0~31\))) # (!\DU1|s_debounceCnt\(16) & (\DU1|Add0~31\ $ (GND)))
-- \DU1|Add0~33\ = CARRY((\DU1|s_debounceCnt\(16)) # (!\DU1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(16),
	datad => VCC,
	cin => \DU1|Add0~31\,
	combout => \DU1|Add0~32_combout\,
	cout => \DU1|Add0~33\);

-- Location: LCCOMB_X82_Y36_N16
\DU1|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt~8_combout\ = (\DU1|Add0~32_combout\ & \DU1|s_debounceCnt[19]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|Add0~32_combout\,
	datad => \DU1|s_debounceCnt[19]~7_combout\,
	combout => \DU1|s_debounceCnt~8_combout\);

-- Location: FF_X82_Y36_N17
\DU1|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt~8_combout\,
	ena => \DU1|s_debounceCnt[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(16));

-- Location: LCCOMB_X81_Y35_N6
\DU1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~34_combout\ = (\DU1|s_debounceCnt\(17) & (\DU1|Add0~33\ & VCC)) # (!\DU1|s_debounceCnt\(17) & (!\DU1|Add0~33\))
-- \DU1|Add0~35\ = CARRY((!\DU1|s_debounceCnt\(17) & !\DU1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU1|s_debounceCnt\(17),
	datad => VCC,
	cin => \DU1|Add0~33\,
	combout => \DU1|Add0~34_combout\,
	cout => \DU1|Add0~35\);

-- Location: LCCOMB_X82_Y36_N18
\DU1|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt~9_combout\ = (\DU1|Add0~34_combout\ & \DU1|s_debounceCnt[19]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DU1|Add0~34_combout\,
	datad => \DU1|s_debounceCnt[19]~7_combout\,
	combout => \DU1|s_debounceCnt~9_combout\);

-- Location: FF_X82_Y36_N19
\DU1|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt~9_combout\,
	ena => \DU1|s_debounceCnt[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(17));

-- Location: LCCOMB_X81_Y35_N8
\DU1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~36_combout\ = (\DU1|s_debounceCnt\(18) & ((GND) # (!\DU1|Add0~35\))) # (!\DU1|s_debounceCnt\(18) & (\DU1|Add0~35\ $ (GND)))
-- \DU1|Add0~37\ = CARRY((\DU1|s_debounceCnt\(18)) # (!\DU1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(18),
	datad => VCC,
	cin => \DU1|Add0~35\,
	combout => \DU1|Add0~36_combout\,
	cout => \DU1|Add0~37\);

-- Location: LCCOMB_X82_Y36_N12
\DU1|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt~10_combout\ = (\DU1|Add0~36_combout\ & \DU1|s_debounceCnt[19]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|Add0~36_combout\,
	datad => \DU1|s_debounceCnt[19]~7_combout\,
	combout => \DU1|s_debounceCnt~10_combout\);

-- Location: FF_X82_Y36_N13
\DU1|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt~10_combout\,
	ena => \DU1|s_debounceCnt[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(18));

-- Location: LCCOMB_X81_Y35_N10
\DU1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~38_combout\ = (\DU1|s_debounceCnt\(19) & (\DU1|Add0~37\ & VCC)) # (!\DU1|s_debounceCnt\(19) & (!\DU1|Add0~37\))
-- \DU1|Add0~39\ = CARRY((!\DU1|s_debounceCnt\(19) & !\DU1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU1|s_debounceCnt\(19),
	datad => VCC,
	cin => \DU1|Add0~37\,
	combout => \DU1|Add0~38_combout\,
	cout => \DU1|Add0~39\);

-- Location: LCCOMB_X82_Y36_N14
\DU1|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt~11_combout\ = (\DU1|Add0~38_combout\ & \DU1|s_debounceCnt[19]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DU1|Add0~38_combout\,
	datad => \DU1|s_debounceCnt[19]~7_combout\,
	combout => \DU1|s_debounceCnt~11_combout\);

-- Location: FF_X82_Y36_N15
\DU1|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt~11_combout\,
	ena => \DU1|s_debounceCnt[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(19));

-- Location: LCCOMB_X81_Y35_N12
\DU1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~40_combout\ = (\DU1|s_debounceCnt\(20) & ((GND) # (!\DU1|Add0~39\))) # (!\DU1|s_debounceCnt\(20) & (\DU1|Add0~39\ $ (GND)))
-- \DU1|Add0~41\ = CARRY((\DU1|s_debounceCnt\(20)) # (!\DU1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(20),
	datad => VCC,
	cin => \DU1|Add0~39\,
	combout => \DU1|Add0~40_combout\,
	cout => \DU1|Add0~41\);

-- Location: LCCOMB_X80_Y36_N4
\DU1|s_debounceCnt[20]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt[20]~3_combout\ = (\DU1|s_debounceCnt[19]~2_combout\ & (\DU1|s_debounceCnt[19]~0_combout\ & ((\DU1|Add0~40_combout\) # (!\DU1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt[19]~2_combout\,
	datab => \DU1|Add0~40_combout\,
	datac => \DU1|s_debounceCnt[19]~0_combout\,
	datad => \DU1|s_previousIn~q\,
	combout => \DU1|s_debounceCnt[20]~3_combout\);

-- Location: FF_X80_Y36_N5
\DU1|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(20));

-- Location: LCCOMB_X81_Y35_N14
\DU1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~42_combout\ = (\DU1|s_debounceCnt\(21) & (\DU1|Add0~41\ & VCC)) # (!\DU1|s_debounceCnt\(21) & (!\DU1|Add0~41\))
-- \DU1|Add0~43\ = CARRY((!\DU1|s_debounceCnt\(21) & !\DU1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU1|s_debounceCnt\(21),
	datad => VCC,
	cin => \DU1|Add0~41\,
	combout => \DU1|Add0~42_combout\,
	cout => \DU1|Add0~43\);

-- Location: LCCOMB_X80_Y36_N14
\DU1|s_debounceCnt[21]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt[21]~4_combout\ = (\DU1|s_debounceCnt[19]~2_combout\ & (\DU1|s_debounceCnt[19]~0_combout\ & ((\DU1|Add0~42_combout\) # (!\DU1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt[19]~2_combout\,
	datab => \DU1|Add0~42_combout\,
	datac => \DU1|s_debounceCnt[19]~0_combout\,
	datad => \DU1|s_previousIn~q\,
	combout => \DU1|s_debounceCnt[21]~4_combout\);

-- Location: FF_X80_Y36_N15
\DU1|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(21));

-- Location: LCCOMB_X81_Y35_N16
\DU1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~44_combout\ = (\DU1|s_debounceCnt\(22) & ((GND) # (!\DU1|Add0~43\))) # (!\DU1|s_debounceCnt\(22) & (\DU1|Add0~43\ $ (GND)))
-- \DU1|Add0~45\ = CARRY((\DU1|s_debounceCnt\(22)) # (!\DU1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(22),
	datad => VCC,
	cin => \DU1|Add0~43\,
	combout => \DU1|Add0~44_combout\,
	cout => \DU1|Add0~45\);

-- Location: LCCOMB_X80_Y36_N24
\DU1|s_debounceCnt[22]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt[22]~5_combout\ = (\DU1|s_debounceCnt[19]~2_combout\ & (\DU1|s_debounceCnt[19]~0_combout\ & ((\DU1|Add0~44_combout\) # (!\DU1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt[19]~2_combout\,
	datab => \DU1|s_previousIn~q\,
	datac => \DU1|s_debounceCnt[19]~0_combout\,
	datad => \DU1|Add0~44_combout\,
	combout => \DU1|s_debounceCnt[22]~5_combout\);

-- Location: FF_X80_Y36_N25
\DU1|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt[22]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(22));

-- Location: LCCOMB_X80_Y36_N0
\DU1|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_pulsedOut~0_combout\ = (!\DU1|s_debounceCnt\(23) & (!\DU1|s_debounceCnt\(20) & (!\DU1|s_debounceCnt\(21) & !\DU1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(23),
	datab => \DU1|s_debounceCnt\(20),
	datac => \DU1|s_debounceCnt\(21),
	datad => \DU1|s_debounceCnt\(22),
	combout => \DU1|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X81_Y35_N20
\DU1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~48_combout\ = (\DU1|s_debounceCnt\(24) & ((GND) # (!\DU1|Add0~47\))) # (!\DU1|s_debounceCnt\(24) & (\DU1|Add0~47\ $ (GND)))
-- \DU1|Add0~49\ = CARRY((\DU1|s_debounceCnt\(24)) # (!\DU1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU1|s_debounceCnt\(24),
	datad => VCC,
	cin => \DU1|Add0~47\,
	combout => \DU1|Add0~48_combout\,
	cout => \DU1|Add0~49\);

-- Location: LCCOMB_X81_Y35_N22
\DU1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~50_combout\ = (\DU1|s_debounceCnt\(25) & (\DU1|Add0~49\ & VCC)) # (!\DU1|s_debounceCnt\(25) & (!\DU1|Add0~49\))
-- \DU1|Add0~51\ = CARRY((!\DU1|s_debounceCnt\(25) & !\DU1|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(25),
	datad => VCC,
	cin => \DU1|Add0~49\,
	combout => \DU1|Add0~50_combout\,
	cout => \DU1|Add0~51\);

-- Location: LCCOMB_X80_Y35_N0
\DU1|s_debounceCnt[25]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt[25]~18_combout\ = (\DU1|s_debounceCnt[19]~2_combout\ & (\DU1|s_debounceCnt[19]~7_combout\ & \DU1|Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU1|s_debounceCnt[19]~2_combout\,
	datac => \DU1|s_debounceCnt[19]~7_combout\,
	datad => \DU1|Add0~50_combout\,
	combout => \DU1|s_debounceCnt[25]~18_combout\);

-- Location: FF_X80_Y35_N1
\DU1|s_debounceCnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt[25]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(25));

-- Location: LCCOMB_X81_Y35_N24
\DU1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~52_combout\ = (\DU1|s_debounceCnt\(26) & ((GND) # (!\DU1|Add0~51\))) # (!\DU1|s_debounceCnt\(26) & (\DU1|Add0~51\ $ (GND)))
-- \DU1|Add0~53\ = CARRY((\DU1|s_debounceCnt\(26)) # (!\DU1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(26),
	datad => VCC,
	cin => \DU1|Add0~51\,
	combout => \DU1|Add0~52_combout\,
	cout => \DU1|Add0~53\);

-- Location: LCCOMB_X81_Y35_N30
\DU1|s_debounceCnt[26]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt[26]~19_combout\ = (\DU1|Add0~52_combout\ & (\DU1|s_debounceCnt[19]~2_combout\ & \DU1|s_debounceCnt[19]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU1|Add0~52_combout\,
	datac => \DU1|s_debounceCnt[19]~2_combout\,
	datad => \DU1|s_debounceCnt[19]~7_combout\,
	combout => \DU1|s_debounceCnt[26]~19_combout\);

-- Location: FF_X81_Y35_N31
\DU1|s_debounceCnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt[26]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(26));

-- Location: LCCOMB_X80_Y36_N8
\DU1|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_pulsedOut~2_combout\ = (!\DU1|s_debounceCnt\(8) & (!\DU1|s_debounceCnt\(25) & (!\DU1|s_debounceCnt\(26) & !\DU1|s_debounceCnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(8),
	datab => \DU1|s_debounceCnt\(25),
	datac => \DU1|s_debounceCnt\(26),
	datad => \DU1|s_debounceCnt\(24),
	combout => \DU1|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X82_Y36_N8
\DU1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|LessThan0~1_combout\ = (!\DU1|s_debounceCnt\(10) & (!\DU1|s_debounceCnt\(9) & !\DU1|s_debounceCnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU1|s_debounceCnt\(10),
	datac => \DU1|s_debounceCnt\(9),
	datad => \DU1|s_debounceCnt\(11),
	combout => \DU1|LessThan0~1_combout\);

-- Location: LCCOMB_X82_Y36_N20
\DU1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|LessThan0~0_combout\ = (!\DU1|s_debounceCnt\(18) & (!\DU1|s_debounceCnt\(17) & (!\DU1|s_debounceCnt\(19) & !\DU1|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(18),
	datab => \DU1|s_debounceCnt\(17),
	datac => \DU1|s_debounceCnt\(19),
	datad => \DU1|s_debounceCnt\(16),
	combout => \DU1|LessThan0~0_combout\);

-- Location: LCCOMB_X79_Y36_N20
\DU1|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_pulsedOut~1_combout\ = (!\DU1|s_debounceCnt\(7) & (\DU1|LessThan0~1_combout\ & \DU1|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU1|s_debounceCnt\(7),
	datac => \DU1|LessThan0~1_combout\,
	datad => \DU1|LessThan0~0_combout\,
	combout => \DU1|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X79_Y36_N4
\DU1|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_pulsedOut~4_combout\ = (\DU1|s_pulsedOut~3_combout\ & (\DU1|s_pulsedOut~0_combout\ & (\DU1|s_pulsedOut~2_combout\ & \DU1|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_pulsedOut~3_combout\,
	datab => \DU1|s_pulsedOut~0_combout\,
	datac => \DU1|s_pulsedOut~2_combout\,
	datad => \DU1|s_pulsedOut~1_combout\,
	combout => \DU1|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X82_Y36_N22
\DU1|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_pulsedOut~5_combout\ = (!\DU1|s_debounceCnt\(1) & (!\DU1|s_debounceCnt\(4) & (!\DU1|s_debounceCnt\(2) & !\DU1|s_debounceCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(1),
	datab => \DU1|s_debounceCnt\(4),
	datac => \DU1|s_debounceCnt\(2),
	datad => \DU1|s_debounceCnt\(3),
	combout => \DU1|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X79_Y36_N6
\DU1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|LessThan0~3_combout\ = (\DU1|s_debounceCnt\(0)) # ((\DU1|s_debounceCnt\(6)) # ((\DU1|s_debounceCnt\(5)) # (!\DU1|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(0),
	datab => \DU1|s_debounceCnt\(6),
	datac => \DU1|s_debounceCnt\(5),
	datad => \DU1|s_pulsedOut~5_combout\,
	combout => \DU1|LessThan0~3_combout\);

-- Location: LCCOMB_X79_Y36_N8
\DU1|s_debounceCnt[19]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt[19]~1_combout\ = (\DU1|LessThan0~3_combout\) # (!\DU1|s_pulsedOut~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DU1|s_pulsedOut~4_combout\,
	datad => \DU1|LessThan0~3_combout\,
	combout => \DU1|s_debounceCnt[19]~1_combout\);

-- Location: LCCOMB_X79_Y36_N14
\DU1|s_debounceCnt[19]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt[19]~2_combout\ = (\DU1|s_debounceCnt\(27)) # (((\DU1|s_debounceCnt[19]~1_combout\) # (!\DU1|s_previousIn~q\)) # (!\DU1|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(27),
	datab => \DU1|s_dirtyIn~q\,
	datac => \DU1|s_debounceCnt[19]~1_combout\,
	datad => \DU1|s_previousIn~q\,
	combout => \DU1|s_debounceCnt[19]~2_combout\);

-- Location: LCCOMB_X81_Y35_N18
\DU1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~46_combout\ = (\DU1|s_debounceCnt\(23) & (\DU1|Add0~45\ & VCC)) # (!\DU1|s_debounceCnt\(23) & (!\DU1|Add0~45\))
-- \DU1|Add0~47\ = CARRY((!\DU1|s_debounceCnt\(23) & !\DU1|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU1|s_debounceCnt\(23),
	datad => VCC,
	cin => \DU1|Add0~45\,
	combout => \DU1|Add0~46_combout\,
	cout => \DU1|Add0~47\);

-- Location: LCCOMB_X80_Y36_N30
\DU1|s_debounceCnt[23]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt[23]~6_combout\ = (\DU1|s_debounceCnt[19]~2_combout\ & (\DU1|s_debounceCnt[19]~0_combout\ & ((\DU1|Add0~46_combout\) # (!\DU1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt[19]~2_combout\,
	datab => \DU1|s_previousIn~q\,
	datac => \DU1|s_debounceCnt[19]~0_combout\,
	datad => \DU1|Add0~46_combout\,
	combout => \DU1|s_debounceCnt[23]~6_combout\);

-- Location: FF_X80_Y36_N31
\DU1|s_debounceCnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt[23]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(23));

-- Location: LCCOMB_X81_Y35_N28
\DU1|s_debounceCnt[24]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt[24]~17_combout\ = (\DU1|Add0~48_combout\ & (\DU1|s_debounceCnt[19]~2_combout\ & \DU1|s_debounceCnt[19]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU1|Add0~48_combout\,
	datac => \DU1|s_debounceCnt[19]~2_combout\,
	datad => \DU1|s_debounceCnt[19]~7_combout\,
	combout => \DU1|s_debounceCnt[24]~17_combout\);

-- Location: FF_X81_Y35_N29
\DU1|s_debounceCnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt[24]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(24));

-- Location: LCCOMB_X80_Y36_N6
\DU1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|LessThan0~2_combout\ = (\DU1|s_debounceCnt\(23) & (\DU1|s_debounceCnt\(20) & (\DU1|s_debounceCnt\(21) & \DU1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(23),
	datab => \DU1|s_debounceCnt\(20),
	datac => \DU1|s_debounceCnt\(21),
	datad => \DU1|s_debounceCnt\(22),
	combout => \DU1|LessThan0~2_combout\);

-- Location: LCCOMB_X79_Y36_N12
\DU1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|LessThan0~4_combout\ = ((\DU1|s_debounceCnt\(8) & (\DU1|s_debounceCnt\(7) & \DU1|LessThan0~3_combout\))) # (!\DU1|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(8),
	datab => \DU1|s_debounceCnt\(7),
	datac => \DU1|LessThan0~1_combout\,
	datad => \DU1|LessThan0~3_combout\,
	combout => \DU1|LessThan0~4_combout\);

-- Location: LCCOMB_X79_Y36_N2
\DU1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|LessThan0~5_combout\ = (\DU1|s_debounceCnt\(14) & ((\DU1|s_debounceCnt\(13)) # ((\DU1|s_debounceCnt\(12) & \DU1|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(14),
	datab => \DU1|s_debounceCnt\(13),
	datac => \DU1|s_debounceCnt\(12),
	datad => \DU1|LessThan0~4_combout\,
	combout => \DU1|LessThan0~5_combout\);

-- Location: LCCOMB_X80_Y36_N28
\DU1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|LessThan0~6_combout\ = (\DU1|LessThan0~2_combout\ & (((\DU1|s_debounceCnt\(15) & \DU1|LessThan0~5_combout\)) # (!\DU1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|LessThan0~2_combout\,
	datab => \DU1|s_debounceCnt\(15),
	datac => \DU1|LessThan0~0_combout\,
	datad => \DU1|LessThan0~5_combout\,
	combout => \DU1|LessThan0~6_combout\);

-- Location: LCCOMB_X80_Y36_N10
\DU1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|LessThan0~7_combout\ = (\DU1|s_debounceCnt\(24)) # ((\DU1|s_debounceCnt\(25)) # ((\DU1|s_debounceCnt\(26)) # (\DU1|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(24),
	datab => \DU1|s_debounceCnt\(25),
	datac => \DU1|s_debounceCnt\(26),
	datad => \DU1|LessThan0~6_combout\,
	combout => \DU1|LessThan0~7_combout\);

-- Location: LCCOMB_X80_Y36_N26
\DU1|s_debounceCnt[19]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt[19]~0_combout\ = (\DU1|s_dirtyIn~q\ & ((!\DU1|LessThan0~7_combout\) # (!\DU1|s_debounceCnt\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(27),
	datac => \DU1|s_dirtyIn~q\,
	datad => \DU1|LessThan0~7_combout\,
	combout => \DU1|s_debounceCnt[19]~0_combout\);

-- Location: LCCOMB_X80_Y36_N2
\DU1|s_debounceCnt[27]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt[27]~31_combout\ = (\DU1|s_dirtyIn~q\ & ((\DU1|s_debounceCnt\(27) & ((!\DU1|LessThan0~7_combout\))) # (!\DU1|s_debounceCnt\(27) & (\DU1|s_debounceCnt[19]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(27),
	datab => \DU1|s_debounceCnt[19]~1_combout\,
	datac => \DU1|s_dirtyIn~q\,
	datad => \DU1|LessThan0~7_combout\,
	combout => \DU1|s_debounceCnt[27]~31_combout\);

-- Location: LCCOMB_X81_Y35_N26
\DU1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~54_combout\ = \DU1|Add0~53\ $ (!\DU1|s_debounceCnt\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DU1|s_debounceCnt\(27),
	cin => \DU1|Add0~53\,
	combout => \DU1|Add0~54_combout\);

-- Location: LCCOMB_X80_Y36_N12
\DU1|s_debounceCnt[27]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt[27]~32_combout\ = (\DU1|s_previousIn~q\ & (((\DU1|s_debounceCnt[27]~31_combout\ & \DU1|Add0~54_combout\)))) # (!\DU1|s_previousIn~q\ & (\DU1|s_debounceCnt[19]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt[19]~0_combout\,
	datab => \DU1|s_debounceCnt[27]~31_combout\,
	datac => \DU1|Add0~54_combout\,
	datad => \DU1|s_previousIn~q\,
	combout => \DU1|s_debounceCnt[27]~32_combout\);

-- Location: FF_X80_Y36_N13
\DU1|s_debounceCnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt[27]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(27));

-- Location: LCCOMB_X80_Y36_N20
\DU1|s_debounceCnt[19]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt[19]~7_combout\ = (\DU1|s_previousIn~q\ & (\DU1|s_dirtyIn~q\ & ((!\DU1|LessThan0~7_combout\) # (!\DU1|s_debounceCnt\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(27),
	datab => \DU1|s_previousIn~q\,
	datac => \DU1|s_dirtyIn~q\,
	datad => \DU1|LessThan0~7_combout\,
	combout => \DU1|s_debounceCnt[19]~7_combout\);

-- Location: LCCOMB_X81_Y36_N2
\DU1|s_debounceCnt~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt~30_combout\ = (\DU1|Add0~0_combout\ & \DU1|s_debounceCnt[19]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DU1|Add0~0_combout\,
	datad => \DU1|s_debounceCnt[19]~7_combout\,
	combout => \DU1|s_debounceCnt~30_combout\);

-- Location: FF_X81_Y36_N3
\DU1|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt~30_combout\,
	ena => \DU1|s_debounceCnt[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(0));

-- Location: LCCOMB_X81_Y36_N6
\DU1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~2_combout\ = (\DU1|s_debounceCnt\(1) & (\DU1|Add0~1\ & VCC)) # (!\DU1|s_debounceCnt\(1) & (!\DU1|Add0~1\))
-- \DU1|Add0~3\ = CARRY((!\DU1|s_debounceCnt\(1) & !\DU1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(1),
	datad => VCC,
	cin => \DU1|Add0~1\,
	combout => \DU1|Add0~2_combout\,
	cout => \DU1|Add0~3\);

-- Location: LCCOMB_X82_Y36_N30
\DU1|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt~24_combout\ = (\DU1|Add0~2_combout\ & \DU1|s_debounceCnt[19]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DU1|Add0~2_combout\,
	datad => \DU1|s_debounceCnt[19]~7_combout\,
	combout => \DU1|s_debounceCnt~24_combout\);

-- Location: FF_X82_Y36_N31
\DU1|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt~24_combout\,
	ena => \DU1|s_debounceCnt[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(1));

-- Location: LCCOMB_X81_Y36_N8
\DU1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~4_combout\ = (\DU1|s_debounceCnt\(2) & ((GND) # (!\DU1|Add0~3\))) # (!\DU1|s_debounceCnt\(2) & (\DU1|Add0~3\ $ (GND)))
-- \DU1|Add0~5\ = CARRY((\DU1|s_debounceCnt\(2)) # (!\DU1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(2),
	datad => VCC,
	cin => \DU1|Add0~3\,
	combout => \DU1|Add0~4_combout\,
	cout => \DU1|Add0~5\);

-- Location: LCCOMB_X82_Y36_N4
\DU1|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt~25_combout\ = (\DU1|Add0~4_combout\ & \DU1|s_debounceCnt[19]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|Add0~4_combout\,
	datad => \DU1|s_debounceCnt[19]~7_combout\,
	combout => \DU1|s_debounceCnt~25_combout\);

-- Location: FF_X82_Y36_N5
\DU1|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt~25_combout\,
	ena => \DU1|s_debounceCnt[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(2));

-- Location: LCCOMB_X81_Y36_N10
\DU1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~6_combout\ = (\DU1|s_debounceCnt\(3) & (\DU1|Add0~5\ & VCC)) # (!\DU1|s_debounceCnt\(3) & (!\DU1|Add0~5\))
-- \DU1|Add0~7\ = CARRY((!\DU1|s_debounceCnt\(3) & !\DU1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU1|s_debounceCnt\(3),
	datad => VCC,
	cin => \DU1|Add0~5\,
	combout => \DU1|Add0~6_combout\,
	cout => \DU1|Add0~7\);

-- Location: LCCOMB_X82_Y36_N10
\DU1|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt~26_combout\ = (\DU1|Add0~6_combout\ & \DU1|s_debounceCnt[19]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|Add0~6_combout\,
	datad => \DU1|s_debounceCnt[19]~7_combout\,
	combout => \DU1|s_debounceCnt~26_combout\);

-- Location: FF_X82_Y36_N11
\DU1|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt~26_combout\,
	ena => \DU1|s_debounceCnt[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(3));

-- Location: LCCOMB_X81_Y36_N12
\DU1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|Add0~8_combout\ = (\DU1|s_debounceCnt\(4) & ((GND) # (!\DU1|Add0~7\))) # (!\DU1|s_debounceCnt\(4) & (\DU1|Add0~7\ $ (GND)))
-- \DU1|Add0~9\ = CARRY((\DU1|s_debounceCnt\(4)) # (!\DU1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU1|s_debounceCnt\(4),
	datad => VCC,
	cin => \DU1|Add0~7\,
	combout => \DU1|Add0~8_combout\,
	cout => \DU1|Add0~9\);

-- Location: LCCOMB_X82_Y36_N28
\DU1|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt~27_combout\ = (\DU1|Add0~8_combout\ & \DU1|s_debounceCnt[19]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|Add0~8_combout\,
	datad => \DU1|s_debounceCnt[19]~7_combout\,
	combout => \DU1|s_debounceCnt~27_combout\);

-- Location: FF_X82_Y36_N29
\DU1|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt~27_combout\,
	ena => \DU1|s_debounceCnt[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(4));

-- Location: LCCOMB_X81_Y36_N0
\DU1|s_debounceCnt~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_debounceCnt~28_combout\ = (\DU1|Add0~10_combout\ & \DU1|s_debounceCnt[19]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DU1|Add0~10_combout\,
	datad => \DU1|s_debounceCnt[19]~7_combout\,
	combout => \DU1|s_debounceCnt~28_combout\);

-- Location: FF_X81_Y36_N1
\DU1|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU1|s_debounceCnt~28_combout\,
	ena => \DU1|s_debounceCnt[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_debounceCnt\(5));

-- Location: LCCOMB_X79_Y36_N10
\DU1|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_pulsedOut~6_combout\ = (!\DU1|s_debounceCnt\(5) & !\DU1|s_debounceCnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DU1|s_debounceCnt\(5),
	datad => \DU1|s_debounceCnt\(6),
	combout => \DU1|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X79_Y36_N18
\DU1|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_pulsedOut~7_combout\ = (!\DU1|s_debounceCnt\(27) & (\DU1|s_dirtyIn~q\ & (\DU1|s_debounceCnt\(0) & \DU1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_debounceCnt\(27),
	datab => \DU1|s_dirtyIn~q\,
	datac => \DU1|s_debounceCnt\(0),
	datad => \DU1|s_previousIn~q\,
	combout => \DU1|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X79_Y36_N24
\DU1|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU1|s_pulsedOut~8_combout\ = (\DU1|s_pulsedOut~6_combout\ & (\DU1|s_pulsedOut~7_combout\ & (\DU1|s_pulsedOut~4_combout\ & \DU1|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_pulsedOut~6_combout\,
	datab => \DU1|s_pulsedOut~7_combout\,
	datac => \DU1|s_pulsedOut~4_combout\,
	datad => \DU1|s_pulsedOut~5_combout\,
	combout => \DU1|s_pulsedOut~8_combout\);

-- Location: FF_X76_Y36_N29
\DU1|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DU1|s_pulsedOut~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU1|s_pulsedOut~q\);

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

-- Location: LCCOMB_X70_Y35_N20
\DU|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_dirtyIn~0_combout\ = !\KEY[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[3]~input_o\,
	combout => \DU|s_dirtyIn~0_combout\);

-- Location: FF_X70_Y35_N21
\DU|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_dirtyIn~q\);

-- Location: FF_X69_Y34_N9
\DU|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DU|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_previousIn~q\);

-- Location: LCCOMB_X68_Y35_N10
\DU|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|Add0~0_combout\ = \DU|s_debounceCnt\(0) $ (VCC)
-- \DU|Add0~1\ = CARRY(\DU|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(0),
	datad => VCC,
	combout => \DU|Add0~0_combout\,
	cout => \DU|Add0~1\);

-- Location: LCCOMB_X69_Y34_N14
\DU|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt~23_combout\ = (\DU|Add0~0_combout\ & (\DU|s_previousIn~q\ & \DU|s_debounceCnt[16]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU|Add0~0_combout\,
	datac => \DU|s_previousIn~q\,
	datad => \DU|s_debounceCnt[16]~0_combout\,
	combout => \DU|s_debounceCnt~23_combout\);

-- Location: FF_X69_Y34_N15
\DU|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU|s_debounceCnt~23_combout\,
	ena => \DU|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_debounceCnt\(0));

-- Location: LCCOMB_X68_Y35_N12
\DU|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|Add0~2_combout\ = (\DU|s_debounceCnt\(1) & (\DU|Add0~1\ & VCC)) # (!\DU|s_debounceCnt\(1) & (!\DU|Add0~1\))
-- \DU|Add0~3\ = CARRY((!\DU|s_debounceCnt\(1) & !\DU|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(1),
	datad => VCC,
	cin => \DU|Add0~1\,
	combout => \DU|Add0~2_combout\,
	cout => \DU|Add0~3\);

-- Location: LCCOMB_X68_Y35_N6
\DU|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt~19_combout\ = (\DU|s_previousIn~q\ & (\DU|s_debounceCnt[16]~0_combout\ & \DU|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_previousIn~q\,
	datac => \DU|s_debounceCnt[16]~0_combout\,
	datad => \DU|Add0~2_combout\,
	combout => \DU|s_debounceCnt~19_combout\);

-- Location: FF_X68_Y35_N7
\DU|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU|s_debounceCnt~19_combout\,
	ena => \DU|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_debounceCnt\(1));

-- Location: LCCOMB_X68_Y35_N14
\DU|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|Add0~4_combout\ = (\DU|s_debounceCnt\(2) & ((GND) # (!\DU|Add0~3\))) # (!\DU|s_debounceCnt\(2) & (\DU|Add0~3\ $ (GND)))
-- \DU|Add0~5\ = CARRY((\DU|s_debounceCnt\(2)) # (!\DU|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU|s_debounceCnt\(2),
	datad => VCC,
	cin => \DU|Add0~3\,
	combout => \DU|Add0~4_combout\,
	cout => \DU|Add0~5\);

-- Location: LCCOMB_X68_Y35_N4
\DU|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt~20_combout\ = (\DU|Add0~4_combout\ & (\DU|s_debounceCnt[16]~0_combout\ & \DU|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU|Add0~4_combout\,
	datac => \DU|s_debounceCnt[16]~0_combout\,
	datad => \DU|s_previousIn~q\,
	combout => \DU|s_debounceCnt~20_combout\);

-- Location: FF_X68_Y35_N5
\DU|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU|s_debounceCnt~20_combout\,
	ena => \DU|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_debounceCnt\(2));

-- Location: LCCOMB_X68_Y35_N16
\DU|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|Add0~6_combout\ = (\DU|s_debounceCnt\(3) & (\DU|Add0~5\ & VCC)) # (!\DU|s_debounceCnt\(3) & (!\DU|Add0~5\))
-- \DU|Add0~7\ = CARRY((!\DU|s_debounceCnt\(3) & !\DU|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU|s_debounceCnt\(3),
	datad => VCC,
	cin => \DU|Add0~5\,
	combout => \DU|Add0~6_combout\,
	cout => \DU|Add0~7\);

-- Location: LCCOMB_X68_Y35_N2
\DU|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt~21_combout\ = (\DU|s_previousIn~q\ & (\DU|s_debounceCnt[16]~0_combout\ & \DU|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_previousIn~q\,
	datac => \DU|s_debounceCnt[16]~0_combout\,
	datad => \DU|Add0~6_combout\,
	combout => \DU|s_debounceCnt~21_combout\);

-- Location: FF_X68_Y35_N3
\DU|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU|s_debounceCnt~21_combout\,
	ena => \DU|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_debounceCnt\(3));

-- Location: LCCOMB_X68_Y35_N18
\DU|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|Add0~8_combout\ = (\DU|s_debounceCnt\(4) & ((GND) # (!\DU|Add0~7\))) # (!\DU|s_debounceCnt\(4) & (\DU|Add0~7\ $ (GND)))
-- \DU|Add0~9\ = CARRY((\DU|s_debounceCnt\(4)) # (!\DU|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU|s_debounceCnt\(4),
	datad => VCC,
	cin => \DU|Add0~7\,
	combout => \DU|Add0~8_combout\,
	cout => \DU|Add0~9\);

-- Location: LCCOMB_X67_Y35_N6
\DU|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt~22_combout\ = (\DU|Add0~8_combout\ & (\DU|s_previousIn~q\ & \DU|s_debounceCnt[16]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU|Add0~8_combout\,
	datac => \DU|s_previousIn~q\,
	datad => \DU|s_debounceCnt[16]~0_combout\,
	combout => \DU|s_debounceCnt~22_combout\);

-- Location: FF_X68_Y35_N1
\DU|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DU|s_debounceCnt~22_combout\,
	sload => VCC,
	ena => \DU|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_debounceCnt\(4));

-- Location: LCCOMB_X68_Y35_N20
\DU|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|Add0~10_combout\ = (\DU|s_debounceCnt\(5) & (\DU|Add0~9\ & VCC)) # (!\DU|s_debounceCnt\(5) & (!\DU|Add0~9\))
-- \DU|Add0~11\ = CARRY((!\DU|s_debounceCnt\(5) & !\DU|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU|s_debounceCnt\(5),
	datad => VCC,
	cin => \DU|Add0~9\,
	combout => \DU|Add0~10_combout\,
	cout => \DU|Add0~11\);

-- Location: LCCOMB_X69_Y34_N30
\DU|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt~27_combout\ = (\DU|Add0~10_combout\ & (\DU|s_previousIn~q\ & \DU|s_debounceCnt[16]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|Add0~10_combout\,
	datac => \DU|s_previousIn~q\,
	datad => \DU|s_debounceCnt[16]~0_combout\,
	combout => \DU|s_debounceCnt~27_combout\);

-- Location: FF_X69_Y34_N31
\DU|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU|s_debounceCnt~27_combout\,
	ena => \DU|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_debounceCnt\(5));

-- Location: LCCOMB_X68_Y35_N0
\DU|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_pulsedOut~5_combout\ = (!\DU|s_debounceCnt\(1) & (!\DU|s_debounceCnt\(2) & (!\DU|s_debounceCnt\(4) & !\DU|s_debounceCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(1),
	datab => \DU|s_debounceCnt\(2),
	datac => \DU|s_debounceCnt\(4),
	datad => \DU|s_debounceCnt\(3),
	combout => \DU|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X69_Y34_N6
\DU|s_debounceCnt[16]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt[16]~2_combout\ = (\DU|s_debounceCnt\(5)) # ((\DU|s_debounceCnt\(0)) # ((!\DU|s_pulsedOut~5_combout\) # (!\DU|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(5),
	datab => \DU|s_debounceCnt\(0),
	datac => \DU|s_pulsedOut~4_combout\,
	datad => \DU|s_pulsedOut~5_combout\,
	combout => \DU|s_debounceCnt[16]~2_combout\);

-- Location: LCCOMB_X69_Y34_N8
\DU|s_debounceCnt[16]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt[16]~3_combout\ = (\DU|s_debounceCnt\(22)) # (((\DU|s_debounceCnt[16]~2_combout\) # (!\DU|s_previousIn~q\)) # (!\DU|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(22),
	datab => \DU|s_dirtyIn~q\,
	datac => \DU|s_previousIn~q\,
	datad => \DU|s_debounceCnt[16]~2_combout\,
	combout => \DU|s_debounceCnt[16]~3_combout\);

-- Location: LCCOMB_X68_Y34_N10
\DU|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|Add0~32_combout\ = (\DU|s_debounceCnt\(16) & ((GND) # (!\DU|Add0~31\))) # (!\DU|s_debounceCnt\(16) & (\DU|Add0~31\ $ (GND)))
-- \DU|Add0~33\ = CARRY((\DU|s_debounceCnt\(16)) # (!\DU|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(16),
	datad => VCC,
	cin => \DU|Add0~31\,
	combout => \DU|Add0~32_combout\,
	cout => \DU|Add0~33\);

-- Location: LCCOMB_X68_Y34_N12
\DU|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|Add0~34_combout\ = (\DU|s_debounceCnt\(17) & (\DU|Add0~33\ & VCC)) # (!\DU|s_debounceCnt\(17) & (!\DU|Add0~33\))
-- \DU|Add0~35\ = CARRY((!\DU|s_debounceCnt\(17) & !\DU|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU|s_debounceCnt\(17),
	datad => VCC,
	cin => \DU|Add0~33\,
	combout => \DU|Add0~34_combout\,
	cout => \DU|Add0~35\);

-- Location: LCCOMB_X68_Y34_N24
\DU|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt~6_combout\ = (\DU|s_previousIn~q\ & (\DU|s_debounceCnt[16]~0_combout\ & \DU|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU|s_previousIn~q\,
	datac => \DU|s_debounceCnt[16]~0_combout\,
	datad => \DU|Add0~34_combout\,
	combout => \DU|s_debounceCnt~6_combout\);

-- Location: FF_X68_Y34_N25
\DU|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU|s_debounceCnt~6_combout\,
	ena => \DU|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_debounceCnt\(17));

-- Location: LCCOMB_X68_Y34_N14
\DU|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|Add0~36_combout\ = (\DU|s_debounceCnt\(18) & ((GND) # (!\DU|Add0~35\))) # (!\DU|s_debounceCnt\(18) & (\DU|Add0~35\ $ (GND)))
-- \DU|Add0~37\ = CARRY((\DU|s_debounceCnt\(18)) # (!\DU|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU|s_debounceCnt\(18),
	datad => VCC,
	cin => \DU|Add0~35\,
	combout => \DU|Add0~36_combout\,
	cout => \DU|Add0~37\);

-- Location: LCCOMB_X67_Y34_N30
\DU|s_debounceCnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt[18]~17_combout\ = (\DU|s_debounceCnt[16]~3_combout\ & (\DU|s_debounceCnt[16]~0_combout\ & ((\DU|Add0~36_combout\) # (!\DU|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_previousIn~q\,
	datab => \DU|s_debounceCnt[16]~3_combout\,
	datac => \DU|s_debounceCnt[16]~0_combout\,
	datad => \DU|Add0~36_combout\,
	combout => \DU|s_debounceCnt[18]~17_combout\);

-- Location: FF_X67_Y34_N31
\DU|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU|s_debounceCnt[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_debounceCnt\(18));

-- Location: LCCOMB_X68_Y34_N16
\DU|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|Add0~38_combout\ = (\DU|s_debounceCnt\(19) & (\DU|Add0~37\ & VCC)) # (!\DU|s_debounceCnt\(19) & (!\DU|Add0~37\))
-- \DU|Add0~39\ = CARRY((!\DU|s_debounceCnt\(19) & !\DU|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU|s_debounceCnt\(19),
	datad => VCC,
	cin => \DU|Add0~37\,
	combout => \DU|Add0~38_combout\,
	cout => \DU|Add0~39\);

-- Location: LCCOMB_X67_Y34_N24
\DU|s_debounceCnt[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt[19]~18_combout\ = (\DU|s_debounceCnt[16]~3_combout\ & (\DU|s_debounceCnt[16]~0_combout\ & ((\DU|Add0~38_combout\) # (!\DU|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_previousIn~q\,
	datab => \DU|s_debounceCnt[16]~3_combout\,
	datac => \DU|s_debounceCnt[16]~0_combout\,
	datad => \DU|Add0~38_combout\,
	combout => \DU|s_debounceCnt[19]~18_combout\);

-- Location: FF_X67_Y34_N25
\DU|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU|s_debounceCnt[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_debounceCnt\(19));

-- Location: LCCOMB_X68_Y34_N18
\DU|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|Add0~40_combout\ = (\DU|s_debounceCnt\(20) & ((GND) # (!\DU|Add0~39\))) # (!\DU|s_debounceCnt\(20) & (\DU|Add0~39\ $ (GND)))
-- \DU|Add0~41\ = CARRY((\DU|s_debounceCnt\(20)) # (!\DU|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(20),
	datad => VCC,
	cin => \DU|Add0~39\,
	combout => \DU|Add0~40_combout\,
	cout => \DU|Add0~41\);

-- Location: LCCOMB_X69_Y34_N2
\DU|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt[20]~9_combout\ = (\DU|s_debounceCnt[16]~3_combout\ & (\DU|Add0~40_combout\ & (\DU|s_previousIn~q\ & \DU|s_debounceCnt[16]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt[16]~3_combout\,
	datab => \DU|Add0~40_combout\,
	datac => \DU|s_previousIn~q\,
	datad => \DU|s_debounceCnt[16]~0_combout\,
	combout => \DU|s_debounceCnt[20]~9_combout\);

-- Location: FF_X69_Y34_N3
\DU|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_debounceCnt\(20));

-- Location: LCCOMB_X68_Y34_N20
\DU|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|Add0~42_combout\ = (\DU|s_debounceCnt\(21) & (\DU|Add0~41\ & VCC)) # (!\DU|s_debounceCnt\(21) & (!\DU|Add0~41\))
-- \DU|Add0~43\ = CARRY((!\DU|s_debounceCnt\(21) & !\DU|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU|s_debounceCnt\(21),
	datad => VCC,
	cin => \DU|Add0~41\,
	combout => \DU|Add0~42_combout\,
	cout => \DU|Add0~43\);

-- Location: LCCOMB_X69_Y34_N12
\DU|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt[21]~10_combout\ = (\DU|s_debounceCnt[16]~3_combout\ & (\DU|Add0~42_combout\ & (\DU|s_previousIn~q\ & \DU|s_debounceCnt[16]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt[16]~3_combout\,
	datab => \DU|Add0~42_combout\,
	datac => \DU|s_previousIn~q\,
	datad => \DU|s_debounceCnt[16]~0_combout\,
	combout => \DU|s_debounceCnt[21]~10_combout\);

-- Location: FF_X69_Y34_N13
\DU|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_debounceCnt\(21));

-- Location: LCCOMB_X69_Y34_N22
\DU|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|LessThan0~0_combout\ = (!\DU|s_debounceCnt\(21) & !\DU|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(21),
	datad => \DU|s_debounceCnt\(20),
	combout => \DU|LessThan0~0_combout\);

-- Location: LCCOMB_X68_Y35_N22
\DU|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|Add0~12_combout\ = (\DU|s_debounceCnt\(6) & ((GND) # (!\DU|Add0~11\))) # (!\DU|s_debounceCnt\(6) & (\DU|Add0~11\ $ (GND)))
-- \DU|Add0~13\ = CARRY((\DU|s_debounceCnt\(6)) # (!\DU|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU|s_debounceCnt\(6),
	datad => VCC,
	cin => \DU|Add0~11\,
	combout => \DU|Add0~12_combout\,
	cout => \DU|Add0~13\);

-- Location: LCCOMB_X69_Y34_N28
\DU|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt~1_combout\ = (\DU|s_debounceCnt[16]~0_combout\ & ((\DU|Add0~12_combout\) # (!\DU|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU|s_previousIn~q\,
	datac => \DU|Add0~12_combout\,
	datad => \DU|s_debounceCnt[16]~0_combout\,
	combout => \DU|s_debounceCnt~1_combout\);

-- Location: FF_X69_Y34_N29
\DU|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU|s_debounceCnt~1_combout\,
	ena => \DU|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_debounceCnt\(6));

-- Location: LCCOMB_X68_Y35_N24
\DU|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|Add0~14_combout\ = (\DU|s_debounceCnt\(7) & (\DU|Add0~13\ & VCC)) # (!\DU|s_debounceCnt\(7) & (!\DU|Add0~13\))
-- \DU|Add0~15\ = CARRY((!\DU|s_debounceCnt\(7) & !\DU|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(7),
	datad => VCC,
	cin => \DU|Add0~13\,
	combout => \DU|Add0~14_combout\,
	cout => \DU|Add0~15\);

-- Location: LCCOMB_X67_Y34_N20
\DU|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt~11_combout\ = (\DU|s_previousIn~q\ & (\DU|s_debounceCnt[16]~0_combout\ & \DU|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_previousIn~q\,
	datac => \DU|s_debounceCnt[16]~0_combout\,
	datad => \DU|Add0~14_combout\,
	combout => \DU|s_debounceCnt~11_combout\);

-- Location: FF_X67_Y34_N21
\DU|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU|s_debounceCnt~11_combout\,
	ena => \DU|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_debounceCnt\(7));

-- Location: LCCOMB_X69_Y34_N24
\DU|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|LessThan0~6_combout\ = (\DU|s_debounceCnt\(6) & ((\DU|s_debounceCnt\(5)) # ((\DU|s_debounceCnt\(0)) # (!\DU|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(5),
	datab => \DU|s_debounceCnt\(0),
	datac => \DU|s_debounceCnt\(6),
	datad => \DU|s_pulsedOut~5_combout\,
	combout => \DU|LessThan0~6_combout\);

-- Location: LCCOMB_X68_Y35_N26
\DU|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|Add0~16_combout\ = (\DU|s_debounceCnt\(8) & ((GND) # (!\DU|Add0~15\))) # (!\DU|s_debounceCnt\(8) & (\DU|Add0~15\ $ (GND)))
-- \DU|Add0~17\ = CARRY((\DU|s_debounceCnt\(8)) # (!\DU|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU|s_debounceCnt\(8),
	datad => VCC,
	cin => \DU|Add0~15\,
	combout => \DU|Add0~16_combout\,
	cout => \DU|Add0~17\);

-- Location: LCCOMB_X68_Y35_N8
\DU|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt~12_combout\ = (\DU|s_debounceCnt[16]~0_combout\ & ((\DU|Add0~16_combout\) # (!\DU|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|Add0~16_combout\,
	datac => \DU|s_debounceCnt[16]~0_combout\,
	datad => \DU|s_previousIn~q\,
	combout => \DU|s_debounceCnt~12_combout\);

-- Location: FF_X68_Y35_N9
\DU|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU|s_debounceCnt~12_combout\,
	ena => \DU|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_debounceCnt\(8));

-- Location: LCCOMB_X68_Y35_N28
\DU|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|Add0~18_combout\ = (\DU|s_debounceCnt\(9) & (\DU|Add0~17\ & VCC)) # (!\DU|s_debounceCnt\(9) & (!\DU|Add0~17\))
-- \DU|Add0~19\ = CARRY((!\DU|s_debounceCnt\(9) & !\DU|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU|s_debounceCnt\(9),
	datad => VCC,
	cin => \DU|Add0~17\,
	combout => \DU|Add0~18_combout\,
	cout => \DU|Add0~19\);

-- Location: LCCOMB_X67_Y35_N24
\DU|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt~13_combout\ = (\DU|s_debounceCnt[16]~0_combout\ & ((\DU|Add0~18_combout\) # (!\DU|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU|Add0~18_combout\,
	datac => \DU|s_previousIn~q\,
	datad => \DU|s_debounceCnt[16]~0_combout\,
	combout => \DU|s_debounceCnt~13_combout\);

-- Location: FF_X67_Y35_N25
\DU|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU|s_debounceCnt~13_combout\,
	ena => \DU|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_debounceCnt\(9));

-- Location: LCCOMB_X68_Y35_N30
\DU|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|Add0~20_combout\ = (\DU|s_debounceCnt\(10) & ((GND) # (!\DU|Add0~19\))) # (!\DU|s_debounceCnt\(10) & (\DU|Add0~19\ $ (GND)))
-- \DU|Add0~21\ = CARRY((\DU|s_debounceCnt\(10)) # (!\DU|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU|s_debounceCnt\(10),
	datad => VCC,
	cin => \DU|Add0~19\,
	combout => \DU|Add0~20_combout\,
	cout => \DU|Add0~21\);

-- Location: LCCOMB_X67_Y34_N6
\DU|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt~14_combout\ = (\DU|Add0~20_combout\ & (\DU|s_debounceCnt[16]~0_combout\ & \DU|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU|Add0~20_combout\,
	datac => \DU|s_debounceCnt[16]~0_combout\,
	datad => \DU|s_previousIn~q\,
	combout => \DU|s_debounceCnt~14_combout\);

-- Location: FF_X67_Y34_N7
\DU|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU|s_debounceCnt~14_combout\,
	ena => \DU|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_debounceCnt\(10));

-- Location: LCCOMB_X68_Y34_N0
\DU|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|Add0~22_combout\ = (\DU|s_debounceCnt\(11) & (\DU|Add0~21\ & VCC)) # (!\DU|s_debounceCnt\(11) & (!\DU|Add0~21\))
-- \DU|Add0~23\ = CARRY((!\DU|s_debounceCnt\(11) & !\DU|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU|s_debounceCnt\(11),
	datad => VCC,
	cin => \DU|Add0~21\,
	combout => \DU|Add0~22_combout\,
	cout => \DU|Add0~23\);

-- Location: LCCOMB_X67_Y34_N18
\DU|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt~15_combout\ = (\DU|s_debounceCnt[16]~0_combout\ & ((\DU|Add0~22_combout\) # (!\DU|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU|Add0~22_combout\,
	datac => \DU|s_debounceCnt[16]~0_combout\,
	datad => \DU|s_previousIn~q\,
	combout => \DU|s_debounceCnt~15_combout\);

-- Location: FF_X67_Y34_N19
\DU|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU|s_debounceCnt~15_combout\,
	ena => \DU|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_debounceCnt\(11));

-- Location: LCCOMB_X68_Y34_N2
\DU|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|Add0~24_combout\ = (\DU|s_debounceCnt\(12) & ((GND) # (!\DU|Add0~23\))) # (!\DU|s_debounceCnt\(12) & (\DU|Add0~23\ $ (GND)))
-- \DU|Add0~25\ = CARRY((\DU|s_debounceCnt\(12)) # (!\DU|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(12),
	datad => VCC,
	cin => \DU|Add0~23\,
	combout => \DU|Add0~24_combout\,
	cout => \DU|Add0~25\);

-- Location: LCCOMB_X67_Y34_N8
\DU|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt~7_combout\ = (\DU|s_previousIn~q\ & (\DU|s_debounceCnt[16]~0_combout\ & \DU|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_previousIn~q\,
	datac => \DU|s_debounceCnt[16]~0_combout\,
	datad => \DU|Add0~24_combout\,
	combout => \DU|s_debounceCnt~7_combout\);

-- Location: FF_X67_Y34_N9
\DU|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU|s_debounceCnt~7_combout\,
	ena => \DU|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_debounceCnt\(12));

-- Location: LCCOMB_X68_Y34_N4
\DU|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|Add0~26_combout\ = (\DU|s_debounceCnt\(13) & (\DU|Add0~25\ & VCC)) # (!\DU|s_debounceCnt\(13) & (!\DU|Add0~25\))
-- \DU|Add0~27\ = CARRY((!\DU|s_debounceCnt\(13) & !\DU|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(13),
	datad => VCC,
	cin => \DU|Add0~25\,
	combout => \DU|Add0~26_combout\,
	cout => \DU|Add0~27\);

-- Location: LCCOMB_X67_Y34_N26
\DU|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt~8_combout\ = (\DU|s_previousIn~q\ & (\DU|s_debounceCnt[16]~0_combout\ & \DU|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_previousIn~q\,
	datac => \DU|s_debounceCnt[16]~0_combout\,
	datad => \DU|Add0~26_combout\,
	combout => \DU|s_debounceCnt~8_combout\);

-- Location: FF_X67_Y34_N27
\DU|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU|s_debounceCnt~8_combout\,
	ena => \DU|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_debounceCnt\(13));

-- Location: LCCOMB_X67_Y34_N4
\DU|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|LessThan0~1_combout\ = (\DU|s_debounceCnt\(13)) # ((\DU|s_debounceCnt\(12)) # ((\DU|s_debounceCnt\(11) & \DU|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(13),
	datab => \DU|s_debounceCnt\(11),
	datac => \DU|s_debounceCnt\(12),
	datad => \DU|s_debounceCnt\(10),
	combout => \DU|LessThan0~1_combout\);

-- Location: LCCOMB_X67_Y34_N22
\DU|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|LessThan0~2_combout\ = (\DU|s_debounceCnt\(16)) # ((\DU|s_debounceCnt\(15)) # ((\DU|LessThan0~1_combout\ & \DU|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(16),
	datab => \DU|s_debounceCnt\(15),
	datac => \DU|LessThan0~1_combout\,
	datad => \DU|s_debounceCnt\(14),
	combout => \DU|LessThan0~2_combout\);

-- Location: LCCOMB_X67_Y34_N0
\DU|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|LessThan0~3_combout\ = (\DU|s_debounceCnt\(18) & (\DU|s_debounceCnt\(19) & ((\DU|LessThan0~2_combout\) # (\DU|s_debounceCnt\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(18),
	datab => \DU|s_debounceCnt\(19),
	datac => \DU|LessThan0~2_combout\,
	datad => \DU|s_debounceCnt\(17),
	combout => \DU|LessThan0~3_combout\);

-- Location: LCCOMB_X67_Y34_N2
\DU|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|LessThan0~4_combout\ = (\DU|s_debounceCnt\(14) & (\DU|s_debounceCnt\(19) & (\DU|s_debounceCnt\(18) & \DU|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(14),
	datab => \DU|s_debounceCnt\(19),
	datac => \DU|s_debounceCnt\(18),
	datad => \DU|s_debounceCnt\(8),
	combout => \DU|LessThan0~4_combout\);

-- Location: LCCOMB_X66_Y34_N0
\DU|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|LessThan0~5_combout\ = (\DU|s_debounceCnt\(9) & (\DU|s_debounceCnt\(11) & \DU|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(9),
	datab => \DU|s_debounceCnt\(11),
	datad => \DU|LessThan0~4_combout\,
	combout => \DU|LessThan0~5_combout\);

-- Location: LCCOMB_X69_Y34_N18
\DU|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|LessThan0~7_combout\ = (\DU|LessThan0~3_combout\) # ((\DU|LessThan0~5_combout\ & ((\DU|s_debounceCnt\(7)) # (\DU|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(7),
	datab => \DU|LessThan0~6_combout\,
	datac => \DU|LessThan0~3_combout\,
	datad => \DU|LessThan0~5_combout\,
	combout => \DU|LessThan0~7_combout\);

-- Location: LCCOMB_X69_Y34_N4
\DU|s_debounceCnt[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt[22]~24_combout\ = (\DU|s_debounceCnt\(22) & (\DU|LessThan0~0_combout\ & (!\DU|LessThan0~7_combout\))) # (!\DU|s_debounceCnt\(22) & (((\DU|s_debounceCnt[16]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|LessThan0~0_combout\,
	datab => \DU|LessThan0~7_combout\,
	datac => \DU|s_debounceCnt\(22),
	datad => \DU|s_debounceCnt[16]~2_combout\,
	combout => \DU|s_debounceCnt[22]~24_combout\);

-- Location: LCCOMB_X68_Y34_N22
\DU|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|Add0~44_combout\ = \DU|Add0~43\ $ (\DU|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DU|s_debounceCnt\(22),
	cin => \DU|Add0~43\,
	combout => \DU|Add0~44_combout\);

-- Location: LCCOMB_X69_Y34_N10
\DU|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt[22]~25_combout\ = (\DU|s_dirtyIn~q\ & (\DU|s_previousIn~q\ & \DU|Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU|s_dirtyIn~q\,
	datac => \DU|s_previousIn~q\,
	datad => \DU|Add0~44_combout\,
	combout => \DU|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X69_Y34_N26
\DU|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt[22]~26_combout\ = (\DU|s_previousIn~q\ & (((\DU|s_debounceCnt[22]~24_combout\ & \DU|s_debounceCnt[22]~25_combout\)))) # (!\DU|s_previousIn~q\ & ((\DU|s_debounceCnt[16]~0_combout\) # ((\DU|s_debounceCnt[22]~24_combout\ & 
-- \DU|s_debounceCnt[22]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_previousIn~q\,
	datab => \DU|s_debounceCnt[16]~0_combout\,
	datac => \DU|s_debounceCnt[22]~24_combout\,
	datad => \DU|s_debounceCnt[22]~25_combout\,
	combout => \DU|s_debounceCnt[22]~26_combout\);

-- Location: FF_X69_Y34_N27
\DU|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_debounceCnt\(22));

-- Location: LCCOMB_X69_Y34_N0
\DU|s_debounceCnt[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt[16]~0_combout\ = (\DU|s_dirtyIn~q\ & (((\DU|LessThan0~0_combout\ & !\DU|LessThan0~7_combout\)) # (!\DU|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(22),
	datab => \DU|s_dirtyIn~q\,
	datac => \DU|LessThan0~0_combout\,
	datad => \DU|LessThan0~7_combout\,
	combout => \DU|s_debounceCnt[16]~0_combout\);

-- Location: LCCOMB_X68_Y34_N6
\DU|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|Add0~28_combout\ = (\DU|s_debounceCnt\(14) & ((GND) # (!\DU|Add0~27\))) # (!\DU|s_debounceCnt\(14) & (\DU|Add0~27\ $ (GND)))
-- \DU|Add0~29\ = CARRY((\DU|s_debounceCnt\(14)) # (!\DU|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(14),
	datad => VCC,
	cin => \DU|Add0~27\,
	combout => \DU|Add0~28_combout\,
	cout => \DU|Add0~29\);

-- Location: LCCOMB_X67_Y34_N12
\DU|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt~16_combout\ = (\DU|s_debounceCnt[16]~0_combout\ & ((\DU|Add0~28_combout\) # (!\DU|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_previousIn~q\,
	datac => \DU|s_debounceCnt[16]~0_combout\,
	datad => \DU|Add0~28_combout\,
	combout => \DU|s_debounceCnt~16_combout\);

-- Location: FF_X67_Y34_N13
\DU|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU|s_debounceCnt~16_combout\,
	ena => \DU|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_debounceCnt\(14));

-- Location: LCCOMB_X68_Y34_N8
\DU|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|Add0~30_combout\ = (\DU|s_debounceCnt\(15) & (\DU|Add0~29\ & VCC)) # (!\DU|s_debounceCnt\(15) & (!\DU|Add0~29\))
-- \DU|Add0~31\ = CARRY((!\DU|s_debounceCnt\(15) & !\DU|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU|s_debounceCnt\(15),
	datad => VCC,
	cin => \DU|Add0~29\,
	combout => \DU|Add0~30_combout\,
	cout => \DU|Add0~31\);

-- Location: LCCOMB_X67_Y34_N28
\DU|s_debounceCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt~4_combout\ = (\DU|Add0~30_combout\ & (\DU|s_debounceCnt[16]~0_combout\ & \DU|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU|Add0~30_combout\,
	datac => \DU|s_debounceCnt[16]~0_combout\,
	datad => \DU|s_previousIn~q\,
	combout => \DU|s_debounceCnt~4_combout\);

-- Location: FF_X67_Y34_N29
\DU|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU|s_debounceCnt~4_combout\,
	ena => \DU|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_debounceCnt\(15));

-- Location: LCCOMB_X67_Y34_N10
\DU|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_debounceCnt~5_combout\ = (\DU|Add0~32_combout\ & (\DU|s_debounceCnt[16]~0_combout\ & \DU|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU|Add0~32_combout\,
	datac => \DU|s_debounceCnt[16]~0_combout\,
	datad => \DU|s_previousIn~q\,
	combout => \DU|s_debounceCnt~5_combout\);

-- Location: FF_X67_Y34_N11
\DU|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU|s_debounceCnt~5_combout\,
	ena => \DU|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_debounceCnt\(16));

-- Location: LCCOMB_X68_Y34_N30
\DU|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_pulsedOut~0_combout\ = (!\DU|s_debounceCnt\(16) & (!\DU|s_debounceCnt\(15) & (!\DU|s_debounceCnt\(17) & !\DU|s_debounceCnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(16),
	datab => \DU|s_debounceCnt\(15),
	datac => \DU|s_debounceCnt\(17),
	datad => \DU|s_debounceCnt\(6),
	combout => \DU|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X68_Y34_N28
\DU|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_pulsedOut~1_combout\ = (!\DU|s_debounceCnt\(20) & (!\DU|s_debounceCnt\(21) & (!\DU|s_debounceCnt\(13) & !\DU|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(20),
	datab => \DU|s_debounceCnt\(21),
	datac => \DU|s_debounceCnt\(13),
	datad => \DU|s_debounceCnt\(12),
	combout => \DU|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X67_Y34_N16
\DU|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_pulsedOut~2_combout\ = (!\DU|s_debounceCnt\(10) & (!\DU|s_debounceCnt\(7) & (!\DU|s_debounceCnt\(9) & !\DU|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(10),
	datab => \DU|s_debounceCnt\(7),
	datac => \DU|s_debounceCnt\(9),
	datad => \DU|s_debounceCnt\(8),
	combout => \DU|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X67_Y34_N14
\DU|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_pulsedOut~3_combout\ = (!\DU|s_debounceCnt\(14) & (!\DU|s_debounceCnt\(19) & (!\DU|s_debounceCnt\(18) & !\DU|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(14),
	datab => \DU|s_debounceCnt\(19),
	datac => \DU|s_debounceCnt\(18),
	datad => \DU|s_debounceCnt\(11),
	combout => \DU|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X68_Y34_N26
\DU|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_pulsedOut~4_combout\ = (\DU|s_pulsedOut~0_combout\ & (\DU|s_pulsedOut~1_combout\ & (\DU|s_pulsedOut~2_combout\ & \DU|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_pulsedOut~0_combout\,
	datab => \DU|s_pulsedOut~1_combout\,
	datac => \DU|s_pulsedOut~2_combout\,
	datad => \DU|s_pulsedOut~3_combout\,
	combout => \DU|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X69_Y34_N20
\DU|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_pulsedOut~6_combout\ = (!\DU|s_debounceCnt\(22) & (\DU|s_debounceCnt\(0) & (\DU|s_previousIn~q\ & \DU|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_debounceCnt\(22),
	datab => \DU|s_debounceCnt\(0),
	datac => \DU|s_previousIn~q\,
	datad => \DU|s_dirtyIn~q\,
	combout => \DU|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X69_Y34_N16
\DU|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU|s_pulsedOut~7_combout\ = (\DU|s_pulsedOut~4_combout\ & (\DU|s_pulsedOut~5_combout\ & (!\DU|s_debounceCnt\(5) & \DU|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU|s_pulsedOut~4_combout\,
	datab => \DU|s_pulsedOut~5_combout\,
	datac => \DU|s_debounceCnt\(5),
	datad => \DU|s_pulsedOut~6_combout\,
	combout => \DU|s_pulsedOut~7_combout\);

-- Location: FF_X72_Y34_N9
\DU|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DU|s_pulsedOut~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU|s_pulsedOut~q\);

-- Location: LCCOMB_X72_Y34_N26
\Game|Tcounter1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Tcounter1~0_combout\ = (!\Game|Tcounter1\(0) & \DU|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Game|Tcounter1\(0),
	datad => \DU|s_pulsedOut~q\,
	combout => \Game|Tcounter1~0_combout\);

-- Location: LCCOMB_X74_Y32_N10
\DU2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|Add0~0_combout\ = \DU2|s_debounceCnt\(0) $ (VCC)
-- \DU2|Add0~1\ = CARRY(\DU2|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU2|s_debounceCnt\(0),
	datad => VCC,
	combout => \DU2|Add0~0_combout\,
	cout => \DU2|Add0~1\);

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

-- Location: LCCOMB_X84_Y31_N4
\DU2|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_dirtyIn~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \DU2|s_dirtyIn~0_combout\);

-- Location: FF_X84_Y31_N5
\DU2|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_dirtyIn~q\);

-- Location: FF_X73_Y31_N27
\DU2|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DU2|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_previousIn~q\);

-- Location: LCCOMB_X74_Y32_N12
\DU2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|Add0~2_combout\ = (\DU2|s_debounceCnt\(1) & (\DU2|Add0~1\ & VCC)) # (!\DU2|s_debounceCnt\(1) & (!\DU2|Add0~1\))
-- \DU2|Add0~3\ = CARRY((!\DU2|s_debounceCnt\(1) & !\DU2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(1),
	datad => VCC,
	cin => \DU2|Add0~1\,
	combout => \DU2|Add0~2_combout\,
	cout => \DU2|Add0~3\);

-- Location: LCCOMB_X73_Y32_N16
\DU2|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt~20_combout\ = (\DU2|Add0~2_combout\ & \DU2|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DU2|Add0~2_combout\,
	datad => \DU2|s_debounceCnt[15]~4_combout\,
	combout => \DU2|s_debounceCnt~20_combout\);

-- Location: LCCOMB_X74_Y32_N6
\DU2|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_pulsedOut~5_combout\ = (!\DU2|s_debounceCnt\(1) & (!\DU2|s_debounceCnt\(2) & (!\DU2|s_debounceCnt\(4) & !\DU2|s_debounceCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(1),
	datab => \DU2|s_debounceCnt\(2),
	datac => \DU2|s_debounceCnt\(4),
	datad => \DU2|s_debounceCnt\(3),
	combout => \DU2|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X73_Y31_N12
\DU2|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_pulsedOut~3_combout\ = (!\DU2|s_debounceCnt\(14) & (!\DU2|s_debounceCnt\(11) & (!\DU2|s_debounceCnt\(18) & !\DU2|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(14),
	datab => \DU2|s_debounceCnt\(11),
	datac => \DU2|s_debounceCnt\(18),
	datad => \DU2|s_debounceCnt\(19),
	combout => \DU2|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X75_Y31_N12
\DU2|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_pulsedOut~1_combout\ = (!\DU2|s_debounceCnt\(13) & (!\DU2|s_debounceCnt\(12) & (!\DU2|s_debounceCnt\(21) & !\DU2|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(13),
	datab => \DU2|s_debounceCnt\(12),
	datac => \DU2|s_debounceCnt\(21),
	datad => \DU2|s_debounceCnt\(20),
	combout => \DU2|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X75_Y31_N10
\DU2|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_pulsedOut~2_combout\ = (!\DU2|s_debounceCnt\(7) & (!\DU2|s_debounceCnt\(10) & (!\DU2|s_debounceCnt\(8) & !\DU2|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(7),
	datab => \DU2|s_debounceCnt\(10),
	datac => \DU2|s_debounceCnt\(8),
	datad => \DU2|s_debounceCnt\(9),
	combout => \DU2|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X75_Y31_N18
\DU2|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_pulsedOut~0_combout\ = (!\DU2|s_debounceCnt\(16) & (!\DU2|s_debounceCnt\(15) & (!\DU2|s_debounceCnt\(6) & !\DU2|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(16),
	datab => \DU2|s_debounceCnt\(15),
	datac => \DU2|s_debounceCnt\(6),
	datad => \DU2|s_debounceCnt\(17),
	combout => \DU2|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X74_Y31_N28
\DU2|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_pulsedOut~4_combout\ = (\DU2|s_pulsedOut~3_combout\ & (\DU2|s_pulsedOut~1_combout\ & (\DU2|s_pulsedOut~2_combout\ & \DU2|s_pulsedOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_pulsedOut~3_combout\,
	datab => \DU2|s_pulsedOut~1_combout\,
	datac => \DU2|s_pulsedOut~2_combout\,
	datad => \DU2|s_pulsedOut~0_combout\,
	combout => \DU2|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X73_Y31_N18
\DU2|s_debounceCnt[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt[15]~2_combout\ = (\DU2|s_debounceCnt\(0)) # (((\DU2|s_debounceCnt\(5)) # (!\DU2|s_pulsedOut~4_combout\)) # (!\DU2|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(0),
	datab => \DU2|s_pulsedOut~5_combout\,
	datac => \DU2|s_debounceCnt\(5),
	datad => \DU2|s_pulsedOut~4_combout\,
	combout => \DU2|s_debounceCnt[15]~2_combout\);

-- Location: LCCOMB_X73_Y31_N26
\DU2|s_debounceCnt[15]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt[15]~3_combout\ = (\DU2|s_debounceCnt\(22)) # (((\DU2|s_debounceCnt[15]~2_combout\) # (!\DU2|s_previousIn~q\)) # (!\DU2|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(22),
	datab => \DU2|s_dirtyIn~q\,
	datac => \DU2|s_previousIn~q\,
	datad => \DU2|s_debounceCnt[15]~2_combout\,
	combout => \DU2|s_debounceCnt[15]~3_combout\);

-- Location: FF_X73_Y32_N17
\DU2|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_debounceCnt~20_combout\,
	ena => \DU2|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_debounceCnt\(1));

-- Location: LCCOMB_X74_Y32_N14
\DU2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|Add0~4_combout\ = (\DU2|s_debounceCnt\(2) & ((GND) # (!\DU2|Add0~3\))) # (!\DU2|s_debounceCnt\(2) & (\DU2|Add0~3\ $ (GND)))
-- \DU2|Add0~5\ = CARRY((\DU2|s_debounceCnt\(2)) # (!\DU2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU2|s_debounceCnt\(2),
	datad => VCC,
	cin => \DU2|Add0~3\,
	combout => \DU2|Add0~4_combout\,
	cout => \DU2|Add0~5\);

-- Location: LCCOMB_X74_Y32_N4
\DU2|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt~21_combout\ = (\DU2|Add0~4_combout\ & \DU2|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DU2|Add0~4_combout\,
	datad => \DU2|s_debounceCnt[15]~4_combout\,
	combout => \DU2|s_debounceCnt~21_combout\);

-- Location: FF_X74_Y32_N5
\DU2|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_debounceCnt~21_combout\,
	ena => \DU2|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_debounceCnt\(2));

-- Location: LCCOMB_X74_Y32_N16
\DU2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|Add0~6_combout\ = (\DU2|s_debounceCnt\(3) & (\DU2|Add0~5\ & VCC)) # (!\DU2|s_debounceCnt\(3) & (!\DU2|Add0~5\))
-- \DU2|Add0~7\ = CARRY((!\DU2|s_debounceCnt\(3) & !\DU2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU2|s_debounceCnt\(3),
	datad => VCC,
	cin => \DU2|Add0~5\,
	combout => \DU2|Add0~6_combout\,
	cout => \DU2|Add0~7\);

-- Location: LCCOMB_X74_Y32_N2
\DU2|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt~22_combout\ = (\DU2|Add0~6_combout\ & \DU2|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU2|Add0~6_combout\,
	datad => \DU2|s_debounceCnt[15]~4_combout\,
	combout => \DU2|s_debounceCnt~22_combout\);

-- Location: FF_X74_Y32_N3
\DU2|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_debounceCnt~22_combout\,
	ena => \DU2|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_debounceCnt\(3));

-- Location: LCCOMB_X74_Y32_N18
\DU2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|Add0~8_combout\ = (\DU2|s_debounceCnt\(4) & ((GND) # (!\DU2|Add0~7\))) # (!\DU2|s_debounceCnt\(4) & (\DU2|Add0~7\ $ (GND)))
-- \DU2|Add0~9\ = CARRY((\DU2|s_debounceCnt\(4)) # (!\DU2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU2|s_debounceCnt\(4),
	datad => VCC,
	cin => \DU2|Add0~7\,
	combout => \DU2|Add0~8_combout\,
	cout => \DU2|Add0~9\);

-- Location: LCCOMB_X74_Y32_N8
\DU2|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt~23_combout\ = (\DU2|Add0~8_combout\ & \DU2|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU2|Add0~8_combout\,
	datad => \DU2|s_debounceCnt[15]~4_combout\,
	combout => \DU2|s_debounceCnt~23_combout\);

-- Location: FF_X74_Y32_N9
\DU2|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_debounceCnt~23_combout\,
	ena => \DU2|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_debounceCnt\(4));

-- Location: LCCOMB_X74_Y32_N20
\DU2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|Add0~10_combout\ = (\DU2|s_debounceCnt\(5) & (\DU2|Add0~9\ & VCC)) # (!\DU2|s_debounceCnt\(5) & (!\DU2|Add0~9\))
-- \DU2|Add0~11\ = CARRY((!\DU2|s_debounceCnt\(5) & !\DU2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU2|s_debounceCnt\(5),
	datad => VCC,
	cin => \DU2|Add0~9\,
	combout => \DU2|Add0~10_combout\,
	cout => \DU2|Add0~11\);

-- Location: LCCOMB_X74_Y32_N0
\DU2|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt~27_combout\ = (\DU2|Add0~10_combout\ & \DU2|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU2|Add0~10_combout\,
	datad => \DU2|s_debounceCnt[15]~4_combout\,
	combout => \DU2|s_debounceCnt~27_combout\);

-- Location: FF_X74_Y32_N1
\DU2|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_debounceCnt~27_combout\,
	ena => \DU2|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_debounceCnt\(5));

-- Location: LCCOMB_X74_Y32_N22
\DU2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|Add0~12_combout\ = (\DU2|s_debounceCnt\(6) & ((GND) # (!\DU2|Add0~11\))) # (!\DU2|s_debounceCnt\(6) & (\DU2|Add0~11\ $ (GND)))
-- \DU2|Add0~13\ = CARRY((\DU2|s_debounceCnt\(6)) # (!\DU2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(6),
	datad => VCC,
	cin => \DU2|Add0~11\,
	combout => \DU2|Add0~12_combout\,
	cout => \DU2|Add0~13\);

-- Location: LCCOMB_X75_Y31_N28
\DU2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|LessThan0~0_combout\ = (\DU2|s_debounceCnt\(8) & (\DU2|s_debounceCnt\(18) & (\DU2|s_debounceCnt\(14) & \DU2|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(8),
	datab => \DU2|s_debounceCnt\(18),
	datac => \DU2|s_debounceCnt\(14),
	datad => \DU2|s_debounceCnt\(19),
	combout => \DU2|LessThan0~0_combout\);

-- Location: LCCOMB_X72_Y31_N24
\DU2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|LessThan0~1_combout\ = (\DU2|s_debounceCnt\(9) & \DU2|s_debounceCnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DU2|s_debounceCnt\(9),
	datad => \DU2|s_debounceCnt\(11),
	combout => \DU2|LessThan0~1_combout\);

-- Location: LCCOMB_X74_Y31_N30
\DU2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|LessThan0~2_combout\ = (\DU2|s_debounceCnt\(6) & ((\DU2|s_debounceCnt\(5)) # ((\DU2|s_debounceCnt\(0)) # (!\DU2|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(5),
	datab => \DU2|s_debounceCnt\(6),
	datac => \DU2|s_debounceCnt\(0),
	datad => \DU2|s_pulsedOut~5_combout\,
	combout => \DU2|LessThan0~2_combout\);

-- Location: LCCOMB_X75_Y31_N26
\DU2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|LessThan0~3_combout\ = (\DU2|LessThan0~0_combout\ & (\DU2|LessThan0~1_combout\ & ((\DU2|s_debounceCnt\(7)) # (\DU2|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(7),
	datab => \DU2|LessThan0~0_combout\,
	datac => \DU2|LessThan0~1_combout\,
	datad => \DU2|LessThan0~2_combout\,
	combout => \DU2|LessThan0~3_combout\);

-- Location: LCCOMB_X75_Y31_N16
\DU2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|LessThan0~4_combout\ = (\DU2|s_debounceCnt\(13)) # ((\DU2|s_debounceCnt\(12)) # ((\DU2|s_debounceCnt\(11) & \DU2|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(13),
	datab => \DU2|s_debounceCnt\(12),
	datac => \DU2|s_debounceCnt\(11),
	datad => \DU2|s_debounceCnt\(10),
	combout => \DU2|LessThan0~4_combout\);

-- Location: LCCOMB_X75_Y31_N2
\DU2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|LessThan0~5_combout\ = (\DU2|s_debounceCnt\(16)) # ((\DU2|s_debounceCnt\(15)) # ((\DU2|s_debounceCnt\(14) & \DU2|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(16),
	datab => \DU2|s_debounceCnt\(14),
	datac => \DU2|s_debounceCnt\(15),
	datad => \DU2|LessThan0~4_combout\,
	combout => \DU2|LessThan0~5_combout\);

-- Location: LCCOMB_X75_Y31_N20
\DU2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|LessThan0~6_combout\ = (\DU2|s_debounceCnt\(19) & (\DU2|s_debounceCnt\(18) & ((\DU2|s_debounceCnt\(17)) # (\DU2|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(19),
	datab => \DU2|s_debounceCnt\(17),
	datac => \DU2|s_debounceCnt\(18),
	datad => \DU2|LessThan0~5_combout\,
	combout => \DU2|LessThan0~6_combout\);

-- Location: LCCOMB_X75_Y31_N14
\DU2|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|LessThan0~7_combout\ = (\DU2|s_debounceCnt\(21)) # ((\DU2|s_debounceCnt\(20)) # ((\DU2|LessThan0~3_combout\) # (\DU2|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(21),
	datab => \DU2|s_debounceCnt\(20),
	datac => \DU2|LessThan0~3_combout\,
	datad => \DU2|LessThan0~6_combout\,
	combout => \DU2|LessThan0~7_combout\);

-- Location: LCCOMB_X73_Y31_N24
\DU2|s_debounceCnt[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt[15]~0_combout\ = (\DU2|s_dirtyIn~q\ & ((!\DU2|LessThan0~7_combout\) # (!\DU2|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU2|s_debounceCnt\(22),
	datac => \DU2|s_dirtyIn~q\,
	datad => \DU2|LessThan0~7_combout\,
	combout => \DU2|s_debounceCnt[15]~0_combout\);

-- Location: LCCOMB_X73_Y31_N10
\DU2|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt~1_combout\ = (\DU2|s_debounceCnt[15]~0_combout\ & ((\DU2|Add0~12_combout\) # (!\DU2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_previousIn~q\,
	datac => \DU2|Add0~12_combout\,
	datad => \DU2|s_debounceCnt[15]~0_combout\,
	combout => \DU2|s_debounceCnt~1_combout\);

-- Location: FF_X73_Y31_N11
\DU2|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_debounceCnt~1_combout\,
	ena => \DU2|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_debounceCnt\(6));

-- Location: LCCOMB_X74_Y32_N24
\DU2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|Add0~14_combout\ = (\DU2|s_debounceCnt\(7) & (\DU2|Add0~13\ & VCC)) # (!\DU2|s_debounceCnt\(7) & (!\DU2|Add0~13\))
-- \DU2|Add0~15\ = CARRY((!\DU2|s_debounceCnt\(7) & !\DU2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU2|s_debounceCnt\(7),
	datad => VCC,
	cin => \DU2|Add0~13\,
	combout => \DU2|Add0~14_combout\,
	cout => \DU2|Add0~15\);

-- Location: LCCOMB_X75_Y31_N22
\DU2|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt~12_combout\ = (\DU2|s_debounceCnt[15]~4_combout\ & \DU2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DU2|s_debounceCnt[15]~4_combout\,
	datad => \DU2|Add0~14_combout\,
	combout => \DU2|s_debounceCnt~12_combout\);

-- Location: FF_X75_Y31_N23
\DU2|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_debounceCnt~12_combout\,
	ena => \DU2|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_debounceCnt\(7));

-- Location: LCCOMB_X74_Y32_N26
\DU2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|Add0~16_combout\ = (\DU2|s_debounceCnt\(8) & ((GND) # (!\DU2|Add0~15\))) # (!\DU2|s_debounceCnt\(8) & (\DU2|Add0~15\ $ (GND)))
-- \DU2|Add0~17\ = CARRY((\DU2|s_debounceCnt\(8)) # (!\DU2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(8),
	datad => VCC,
	cin => \DU2|Add0~15\,
	combout => \DU2|Add0~16_combout\,
	cout => \DU2|Add0~17\);

-- Location: LCCOMB_X73_Y31_N20
\DU2|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt~13_combout\ = (\DU2|s_debounceCnt[15]~0_combout\ & ((\DU2|Add0~16_combout\) # (!\DU2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_previousIn~q\,
	datac => \DU2|Add0~16_combout\,
	datad => \DU2|s_debounceCnt[15]~0_combout\,
	combout => \DU2|s_debounceCnt~13_combout\);

-- Location: FF_X73_Y31_N21
\DU2|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_debounceCnt~13_combout\,
	ena => \DU2|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_debounceCnt\(8));

-- Location: LCCOMB_X74_Y32_N28
\DU2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|Add0~18_combout\ = (\DU2|s_debounceCnt\(9) & (\DU2|Add0~17\ & VCC)) # (!\DU2|s_debounceCnt\(9) & (!\DU2|Add0~17\))
-- \DU2|Add0~19\ = CARRY((!\DU2|s_debounceCnt\(9) & !\DU2|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(9),
	datad => VCC,
	cin => \DU2|Add0~17\,
	combout => \DU2|Add0~18_combout\,
	cout => \DU2|Add0~19\);

-- Location: LCCOMB_X73_Y31_N14
\DU2|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt~14_combout\ = (\DU2|s_debounceCnt[15]~0_combout\ & ((\DU2|Add0~18_combout\) # (!\DU2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_previousIn~q\,
	datac => \DU2|Add0~18_combout\,
	datad => \DU2|s_debounceCnt[15]~0_combout\,
	combout => \DU2|s_debounceCnt~14_combout\);

-- Location: FF_X73_Y31_N15
\DU2|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_debounceCnt~14_combout\,
	ena => \DU2|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_debounceCnt\(9));

-- Location: LCCOMB_X74_Y32_N30
\DU2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|Add0~20_combout\ = (\DU2|s_debounceCnt\(10) & ((GND) # (!\DU2|Add0~19\))) # (!\DU2|s_debounceCnt\(10) & (\DU2|Add0~19\ $ (GND)))
-- \DU2|Add0~21\ = CARRY((\DU2|s_debounceCnt\(10)) # (!\DU2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU2|s_debounceCnt\(10),
	datad => VCC,
	cin => \DU2|Add0~19\,
	combout => \DU2|Add0~20_combout\,
	cout => \DU2|Add0~21\);

-- Location: LCCOMB_X75_Y31_N0
\DU2|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt~15_combout\ = (\DU2|Add0~20_combout\ & \DU2|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU2|Add0~20_combout\,
	datac => \DU2|s_debounceCnt[15]~4_combout\,
	combout => \DU2|s_debounceCnt~15_combout\);

-- Location: FF_X75_Y31_N1
\DU2|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_debounceCnt~15_combout\,
	ena => \DU2|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_debounceCnt\(10));

-- Location: LCCOMB_X74_Y31_N0
\DU2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|Add0~22_combout\ = (\DU2|s_debounceCnt\(11) & (\DU2|Add0~21\ & VCC)) # (!\DU2|s_debounceCnt\(11) & (!\DU2|Add0~21\))
-- \DU2|Add0~23\ = CARRY((!\DU2|s_debounceCnt\(11) & !\DU2|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU2|s_debounceCnt\(11),
	datad => VCC,
	cin => \DU2|Add0~21\,
	combout => \DU2|Add0~22_combout\,
	cout => \DU2|Add0~23\);

-- Location: LCCOMB_X73_Y31_N28
\DU2|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt~16_combout\ = (\DU2|s_debounceCnt[15]~0_combout\ & ((\DU2|Add0~22_combout\) # (!\DU2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_previousIn~q\,
	datac => \DU2|Add0~22_combout\,
	datad => \DU2|s_debounceCnt[15]~0_combout\,
	combout => \DU2|s_debounceCnt~16_combout\);

-- Location: FF_X73_Y31_N29
\DU2|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_debounceCnt~16_combout\,
	ena => \DU2|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_debounceCnt\(11));

-- Location: LCCOMB_X74_Y31_N2
\DU2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|Add0~24_combout\ = (\DU2|s_debounceCnt\(12) & ((GND) # (!\DU2|Add0~23\))) # (!\DU2|s_debounceCnt\(12) & (\DU2|Add0~23\ $ (GND)))
-- \DU2|Add0~25\ = CARRY((\DU2|s_debounceCnt\(12)) # (!\DU2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(12),
	datad => VCC,
	cin => \DU2|Add0~23\,
	combout => \DU2|Add0~24_combout\,
	cout => \DU2|Add0~25\);

-- Location: LCCOMB_X75_Y31_N4
\DU2|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt~8_combout\ = (\DU2|s_debounceCnt[15]~4_combout\ & \DU2|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DU2|s_debounceCnt[15]~4_combout\,
	datad => \DU2|Add0~24_combout\,
	combout => \DU2|s_debounceCnt~8_combout\);

-- Location: FF_X75_Y31_N5
\DU2|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_debounceCnt~8_combout\,
	ena => \DU2|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_debounceCnt\(12));

-- Location: LCCOMB_X74_Y31_N4
\DU2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|Add0~26_combout\ = (\DU2|s_debounceCnt\(13) & (\DU2|Add0~25\ & VCC)) # (!\DU2|s_debounceCnt\(13) & (!\DU2|Add0~25\))
-- \DU2|Add0~27\ = CARRY((!\DU2|s_debounceCnt\(13) & !\DU2|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(13),
	datad => VCC,
	cin => \DU2|Add0~25\,
	combout => \DU2|Add0~26_combout\,
	cout => \DU2|Add0~27\);

-- Location: LCCOMB_X75_Y31_N30
\DU2|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt~9_combout\ = (\DU2|s_debounceCnt[15]~4_combout\ & \DU2|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DU2|s_debounceCnt[15]~4_combout\,
	datad => \DU2|Add0~26_combout\,
	combout => \DU2|s_debounceCnt~9_combout\);

-- Location: FF_X75_Y31_N31
\DU2|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_debounceCnt~9_combout\,
	ena => \DU2|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_debounceCnt\(13));

-- Location: LCCOMB_X74_Y31_N6
\DU2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|Add0~28_combout\ = (\DU2|s_debounceCnt\(14) & ((GND) # (!\DU2|Add0~27\))) # (!\DU2|s_debounceCnt\(14) & (\DU2|Add0~27\ $ (GND)))
-- \DU2|Add0~29\ = CARRY((\DU2|s_debounceCnt\(14)) # (!\DU2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU2|s_debounceCnt\(14),
	datad => VCC,
	cin => \DU2|Add0~27\,
	combout => \DU2|Add0~28_combout\,
	cout => \DU2|Add0~29\);

-- Location: LCCOMB_X73_Y31_N6
\DU2|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt~17_combout\ = (\DU2|s_debounceCnt[15]~0_combout\ & ((\DU2|Add0~28_combout\) # (!\DU2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|Add0~28_combout\,
	datac => \DU2|s_previousIn~q\,
	datad => \DU2|s_debounceCnt[15]~0_combout\,
	combout => \DU2|s_debounceCnt~17_combout\);

-- Location: FF_X73_Y31_N7
\DU2|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_debounceCnt~17_combout\,
	ena => \DU2|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_debounceCnt\(14));

-- Location: LCCOMB_X74_Y31_N8
\DU2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|Add0~30_combout\ = (\DU2|s_debounceCnt\(15) & (\DU2|Add0~29\ & VCC)) # (!\DU2|s_debounceCnt\(15) & (!\DU2|Add0~29\))
-- \DU2|Add0~31\ = CARRY((!\DU2|s_debounceCnt\(15) & !\DU2|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU2|s_debounceCnt\(15),
	datad => VCC,
	cin => \DU2|Add0~29\,
	combout => \DU2|Add0~30_combout\,
	cout => \DU2|Add0~31\);

-- Location: LCCOMB_X75_Y31_N8
\DU2|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt~5_combout\ = (\DU2|s_debounceCnt[15]~4_combout\ & \DU2|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DU2|s_debounceCnt[15]~4_combout\,
	datad => \DU2|Add0~30_combout\,
	combout => \DU2|s_debounceCnt~5_combout\);

-- Location: FF_X75_Y31_N9
\DU2|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_debounceCnt~5_combout\,
	ena => \DU2|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_debounceCnt\(15));

-- Location: LCCOMB_X74_Y31_N10
\DU2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|Add0~32_combout\ = (\DU2|s_debounceCnt\(16) & ((GND) # (!\DU2|Add0~31\))) # (!\DU2|s_debounceCnt\(16) & (\DU2|Add0~31\ $ (GND)))
-- \DU2|Add0~33\ = CARRY((\DU2|s_debounceCnt\(16)) # (!\DU2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(16),
	datad => VCC,
	cin => \DU2|Add0~31\,
	combout => \DU2|Add0~32_combout\,
	cout => \DU2|Add0~33\);

-- Location: LCCOMB_X75_Y31_N6
\DU2|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt~6_combout\ = (\DU2|s_debounceCnt[15]~4_combout\ & \DU2|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DU2|s_debounceCnt[15]~4_combout\,
	datad => \DU2|Add0~32_combout\,
	combout => \DU2|s_debounceCnt~6_combout\);

-- Location: FF_X75_Y31_N7
\DU2|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_debounceCnt~6_combout\,
	ena => \DU2|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_debounceCnt\(16));

-- Location: LCCOMB_X74_Y31_N12
\DU2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|Add0~34_combout\ = (\DU2|s_debounceCnt\(17) & (\DU2|Add0~33\ & VCC)) # (!\DU2|s_debounceCnt\(17) & (!\DU2|Add0~33\))
-- \DU2|Add0~35\ = CARRY((!\DU2|s_debounceCnt\(17) & !\DU2|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU2|s_debounceCnt\(17),
	datad => VCC,
	cin => \DU2|Add0~33\,
	combout => \DU2|Add0~34_combout\,
	cout => \DU2|Add0~35\);

-- Location: LCCOMB_X75_Y31_N24
\DU2|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt~7_combout\ = (\DU2|s_debounceCnt[15]~4_combout\ & \DU2|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DU2|s_debounceCnt[15]~4_combout\,
	datad => \DU2|Add0~34_combout\,
	combout => \DU2|s_debounceCnt~7_combout\);

-- Location: FF_X75_Y31_N25
\DU2|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_debounceCnt~7_combout\,
	ena => \DU2|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_debounceCnt\(17));

-- Location: LCCOMB_X74_Y31_N14
\DU2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|Add0~36_combout\ = (\DU2|s_debounceCnt\(18) & ((GND) # (!\DU2|Add0~35\))) # (!\DU2|s_debounceCnt\(18) & (\DU2|Add0~35\ $ (GND)))
-- \DU2|Add0~37\ = CARRY((\DU2|s_debounceCnt\(18)) # (!\DU2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(18),
	datad => VCC,
	cin => \DU2|Add0~35\,
	combout => \DU2|Add0~36_combout\,
	cout => \DU2|Add0~37\);

-- Location: LCCOMB_X73_Y31_N8
\DU2|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt[18]~18_combout\ = (\DU2|s_debounceCnt[15]~3_combout\ & (\DU2|s_debounceCnt[15]~0_combout\ & ((\DU2|Add0~36_combout\) # (!\DU2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_previousIn~q\,
	datab => \DU2|Add0~36_combout\,
	datac => \DU2|s_debounceCnt[15]~3_combout\,
	datad => \DU2|s_debounceCnt[15]~0_combout\,
	combout => \DU2|s_debounceCnt[18]~18_combout\);

-- Location: FF_X73_Y31_N9
\DU2|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_debounceCnt\(18));

-- Location: LCCOMB_X74_Y31_N16
\DU2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|Add0~38_combout\ = (\DU2|s_debounceCnt\(19) & (\DU2|Add0~37\ & VCC)) # (!\DU2|s_debounceCnt\(19) & (!\DU2|Add0~37\))
-- \DU2|Add0~39\ = CARRY((!\DU2|s_debounceCnt\(19) & !\DU2|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(19),
	datad => VCC,
	cin => \DU2|Add0~37\,
	combout => \DU2|Add0~38_combout\,
	cout => \DU2|Add0~39\);

-- Location: LCCOMB_X73_Y31_N2
\DU2|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt[19]~19_combout\ = (\DU2|s_debounceCnt[15]~3_combout\ & (\DU2|s_debounceCnt[15]~0_combout\ & ((\DU2|Add0~38_combout\) # (!\DU2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_previousIn~q\,
	datab => \DU2|Add0~38_combout\,
	datac => \DU2|s_debounceCnt[15]~3_combout\,
	datad => \DU2|s_debounceCnt[15]~0_combout\,
	combout => \DU2|s_debounceCnt[19]~19_combout\);

-- Location: FF_X73_Y31_N3
\DU2|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_debounceCnt\(19));

-- Location: LCCOMB_X74_Y31_N18
\DU2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|Add0~40_combout\ = (\DU2|s_debounceCnt\(20) & ((GND) # (!\DU2|Add0~39\))) # (!\DU2|s_debounceCnt\(20) & (\DU2|Add0~39\ $ (GND)))
-- \DU2|Add0~41\ = CARRY((\DU2|s_debounceCnt\(20)) # (!\DU2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DU2|s_debounceCnt\(20),
	datad => VCC,
	cin => \DU2|Add0~39\,
	combout => \DU2|Add0~40_combout\,
	cout => \DU2|Add0~41\);

-- Location: LCCOMB_X74_Y31_N24
\DU2|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt[20]~10_combout\ = (\DU2|Add0~40_combout\ & (\DU2|s_debounceCnt[15]~3_combout\ & \DU2|s_debounceCnt[15]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU2|Add0~40_combout\,
	datac => \DU2|s_debounceCnt[15]~3_combout\,
	datad => \DU2|s_debounceCnt[15]~4_combout\,
	combout => \DU2|s_debounceCnt[20]~10_combout\);

-- Location: FF_X74_Y31_N25
\DU2|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_debounceCnt\(20));

-- Location: LCCOMB_X74_Y31_N20
\DU2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|Add0~42_combout\ = (\DU2|s_debounceCnt\(21) & (\DU2|Add0~41\ & VCC)) # (!\DU2|s_debounceCnt\(21) & (!\DU2|Add0~41\))
-- \DU2|Add0~43\ = CARRY((!\DU2|s_debounceCnt\(21) & !\DU2|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(21),
	datad => VCC,
	cin => \DU2|Add0~41\,
	combout => \DU2|Add0~42_combout\,
	cout => \DU2|Add0~43\);

-- Location: LCCOMB_X74_Y31_N26
\DU2|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt[21]~11_combout\ = (\DU2|Add0~42_combout\ & (\DU2|s_debounceCnt[15]~3_combout\ & \DU2|s_debounceCnt[15]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU2|Add0~42_combout\,
	datac => \DU2|s_debounceCnt[15]~3_combout\,
	datad => \DU2|s_debounceCnt[15]~4_combout\,
	combout => \DU2|s_debounceCnt[21]~11_combout\);

-- Location: FF_X74_Y31_N27
\DU2|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_debounceCnt\(21));

-- Location: LCCOMB_X74_Y31_N22
\DU2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|Add0~44_combout\ = \DU2|s_debounceCnt\(22) $ (\DU2|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(22),
	cin => \DU2|Add0~43\,
	combout => \DU2|Add0~44_combout\);

-- Location: LCCOMB_X73_Y31_N22
\DU2|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt[22]~25_combout\ = (\DU2|s_dirtyIn~q\ & ((\DU2|s_debounceCnt\(22) & (!\DU2|LessThan0~7_combout\)) # (!\DU2|s_debounceCnt\(22) & ((\DU2|s_debounceCnt[15]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|LessThan0~7_combout\,
	datab => \DU2|s_debounceCnt\(22),
	datac => \DU2|s_dirtyIn~q\,
	datad => \DU2|s_debounceCnt[15]~2_combout\,
	combout => \DU2|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X73_Y31_N16
\DU2|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt[22]~26_combout\ = (\DU2|s_previousIn~q\ & (\DU2|Add0~44_combout\ & (\DU2|s_debounceCnt[22]~25_combout\))) # (!\DU2|s_previousIn~q\ & (((\DU2|s_debounceCnt[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_previousIn~q\,
	datab => \DU2|Add0~44_combout\,
	datac => \DU2|s_debounceCnt[22]~25_combout\,
	datad => \DU2|s_debounceCnt[15]~0_combout\,
	combout => \DU2|s_debounceCnt[22]~26_combout\);

-- Location: FF_X73_Y31_N17
\DU2|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_debounceCnt\(22));

-- Location: LCCOMB_X73_Y31_N0
\DU2|s_debounceCnt[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt[15]~4_combout\ = (\DU2|s_previousIn~q\ & (\DU2|s_dirtyIn~q\ & ((!\DU2|LessThan0~7_combout\) # (!\DU2|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_previousIn~q\,
	datab => \DU2|s_debounceCnt\(22),
	datac => \DU2|s_dirtyIn~q\,
	datad => \DU2|LessThan0~7_combout\,
	combout => \DU2|s_debounceCnt[15]~4_combout\);

-- Location: LCCOMB_X73_Y32_N30
\DU2|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_debounceCnt~24_combout\ = (\DU2|Add0~0_combout\ & \DU2|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DU2|Add0~0_combout\,
	datad => \DU2|s_debounceCnt[15]~4_combout\,
	combout => \DU2|s_debounceCnt~24_combout\);

-- Location: FF_X73_Y32_N31
\DU2|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_debounceCnt~24_combout\,
	ena => \DU2|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_debounceCnt\(0));

-- Location: LCCOMB_X73_Y31_N30
\DU2|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_pulsedOut~6_combout\ = (\DU2|s_debounceCnt\(0) & (\DU2|s_dirtyIn~q\ & (\DU2|s_previousIn~q\ & !\DU2|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_debounceCnt\(0),
	datab => \DU2|s_dirtyIn~q\,
	datac => \DU2|s_previousIn~q\,
	datad => \DU2|s_debounceCnt\(22),
	combout => \DU2|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X73_Y31_N4
\DU2|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DU2|s_pulsedOut~7_combout\ = (\DU2|s_pulsedOut~6_combout\ & (\DU2|s_pulsedOut~4_combout\ & (!\DU2|s_debounceCnt\(5) & \DU2|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_pulsedOut~6_combout\,
	datab => \DU2|s_pulsedOut~4_combout\,
	datac => \DU2|s_debounceCnt\(5),
	datad => \DU2|s_pulsedOut~5_combout\,
	combout => \DU2|s_pulsedOut~7_combout\);

-- Location: FF_X73_Y31_N5
\DU2|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DU2|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DU2|s_pulsedOut~q\);

-- Location: LCCOMB_X76_Y33_N14
\Game|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Equal5~0_combout\ = (\Game|counter1\(0) & \Game|counter1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Game|counter1\(0),
	datad => \Game|counter1\(1),
	combout => \Game|Equal5~0_combout\);

-- Location: LCCOMB_X75_Y33_N16
\Game|counter1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|counter1~3_combout\ = (\DU|s_pulsedOut~q\ & ((\Game|counter1\(2) $ (\Game|Equal5~0_combout\)))) # (!\DU|s_pulsedOut~q\ & (\Game|counter~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter~5_combout\,
	datab => \DU|s_pulsedOut~q\,
	datac => \Game|counter1\(2),
	datad => \Game|Equal5~0_combout\,
	combout => \Game|counter1~3_combout\);

-- Location: LCCOMB_X75_Y33_N12
\Game|counter1[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|counter1[2]~1_combout\ = (!\hge|decOut_0[3]~1_combout\ & ((\DU|s_pulsedOut~q\) # ((!\Game|counter2[2]~0_combout\ & !\DU2|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter2[2]~0_combout\,
	datab => \DU|s_pulsedOut~q\,
	datac => \hge|decOut_0[3]~1_combout\,
	datad => \DU2|s_pulsedOut~q\,
	combout => \Game|counter1[2]~1_combout\);

-- Location: FF_X75_Y33_N17
\Game|counter1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \Game|counter1~3_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	ena => \Game|counter1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Game|counter1\(2));

-- Location: LCCOMB_X74_Y33_N2
\Game|counter2[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|counter2[1]~2_combout\ = (\Game|counter2[2]~1_combout\ & (((\Game|counter2\(1))))) # (!\Game|counter2[2]~1_combout\ & (\DU2|s_pulsedOut~q\ & (\Game|counter2\(0) $ (\Game|counter2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter2\(0),
	datab => \Game|counter2[2]~1_combout\,
	datac => \Game|counter2\(1),
	datad => \DU2|s_pulsedOut~q\,
	combout => \Game|counter2[1]~2_combout\);

-- Location: FF_X74_Y33_N3
\Game|counter2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \Game|counter2[1]~2_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Game|counter2\(1));

-- Location: LCCOMB_X74_Y33_N18
\Game|counter2[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|counter2[2]~4_combout\ = (\DU2|s_pulsedOut~q\ & (\Game|counter2\(0) & ((\Game|counter2\(1))))) # (!\DU2|s_pulsedOut~q\ & (((\Game|counter~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter2\(0),
	datab => \Game|counter~5_combout\,
	datac => \Game|counter2\(1),
	datad => \DU2|s_pulsedOut~q\,
	combout => \Game|counter2[2]~4_combout\);

-- Location: LCCOMB_X74_Y33_N16
\Game|counter2[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|counter2[2]~5_combout\ = (\Game|counter2[2]~1_combout\ & (((\Game|counter2\(2))))) # (!\Game|counter2[2]~1_combout\ & (\Game|counter2[2]~4_combout\ $ (((\DU2|s_pulsedOut~q\ & \Game|counter2\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_pulsedOut~q\,
	datab => \Game|counter2[2]~1_combout\,
	datac => \Game|counter2\(2),
	datad => \Game|counter2[2]~4_combout\,
	combout => \Game|counter2[2]~5_combout\);

-- Location: FF_X74_Y33_N17
\Game|counter2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \Game|counter2[2]~5_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Game|counter2\(2));

-- Location: LCCOMB_X74_Y33_N4
\Game|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Equal7~0_combout\ = (\Game|counter2\(2) & (\Game|counter2\(1) & \Game|counter2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter2\(2),
	datab => \Game|counter2\(1),
	datad => \Game|counter2\(0),
	combout => \Game|Equal7~0_combout\);

-- Location: LCCOMB_X75_Y33_N18
\Game|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Equal2~0_combout\ = (!\Game|counter1\(0) & (!\Game|counter1\(1) & \Game|counter1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Game|counter1\(0),
	datac => \Game|counter1\(1),
	datad => \Game|counter1\(2),
	combout => \Game|Equal2~0_combout\);

-- Location: LCCOMB_X75_Y33_N22
\Game|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|counter~4_combout\ = (!\Game|Equal2~0_combout\ & (((\Game|counter2\(0)) # (\Game|counter2\(1))) # (!\Game|counter2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter2\(2),
	datab => \Game|Equal2~0_combout\,
	datac => \Game|counter2\(0),
	datad => \Game|counter2\(1),
	combout => \Game|counter~4_combout\);

-- Location: LCCOMB_X74_Y33_N26
\Game|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|counter~5_combout\ = (!\Game|Equal7~0_combout\ & (\Game|counter~4_combout\ & ((!\Game|Equal5~0_combout\) # (!\Game|counter1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter1\(2),
	datab => \Game|Equal7~0_combout\,
	datac => \Game|counter~4_combout\,
	datad => \Game|Equal5~0_combout\,
	combout => \Game|counter~5_combout\);

-- Location: LCCOMB_X75_Y33_N4
\Game|counter1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|counter1~0_combout\ = (\DU|s_pulsedOut~q\ & ((!\Game|counter1\(0)))) # (!\DU|s_pulsedOut~q\ & (\Game|counter~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter~5_combout\,
	datac => \Game|counter1\(0),
	datad => \DU|s_pulsedOut~q\,
	combout => \Game|counter1~0_combout\);

-- Location: FF_X75_Y33_N5
\Game|counter1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \Game|counter1~0_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	ena => \Game|counter1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Game|counter1\(0));

-- Location: LCCOMB_X76_Y33_N20
\Game|counter1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|counter1~2_combout\ = (\DU|s_pulsedOut~q\ & (\Game|counter1\(1) $ (\Game|counter1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter1\(1),
	datac => \Game|counter1\(0),
	datad => \DU|s_pulsedOut~q\,
	combout => \Game|counter1~2_combout\);

-- Location: FF_X75_Y33_N9
\Game|counter1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	asdata => \Game|counter1~2_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	sload => VCC,
	ena => \Game|counter1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Game|counter1\(1));

-- Location: LCCOMB_X75_Y33_N26
\Game|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Equal8~0_combout\ = ((\Game|counter1\(0)) # (!\Game|counter1\(2))) # (!\Game|counter1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter1\(1),
	datab => \Game|counter1\(0),
	datad => \Game|counter1\(2),
	combout => \Game|Equal8~0_combout\);

-- Location: LCCOMB_X75_Y33_N28
\Game|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Equal5~1_combout\ = (\Game|counter1\(0) & (\Game|counter1\(1) & !\Game|counter1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Game|counter1\(0),
	datac => \Game|counter1\(1),
	datad => \Game|counter1\(2),
	combout => \Game|Equal5~1_combout\);

-- Location: LCCOMB_X75_Y33_N0
\Game|comb_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|comb_proc~0_combout\ = (\Game|counter2\(1) & (\Game|counter2\(0) & (!\Game|counter2\(2) & \Game|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter2\(1),
	datab => \Game|counter2\(0),
	datac => \Game|counter2\(2),
	datad => \Game|Equal5~1_combout\,
	combout => \Game|comb_proc~0_combout\);

-- Location: LCCOMB_X75_Y33_N10
\Game|counter2[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|counter2[2]~0_combout\ = (!\Game|comb_proc~0_combout\ & (\Game|counter~5_combout\ & ((\Game|Equal8~0_combout\) # (!\Game|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Equal8~0_combout\,
	datab => \Game|comb_proc~0_combout\,
	datac => \Game|counter~5_combout\,
	datad => \Game|Equal9~0_combout\,
	combout => \Game|counter2[2]~0_combout\);

-- Location: LCCOMB_X74_Y33_N12
\Game|counter2[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|counter2[2]~1_combout\ = (\DU|s_pulsedOut~q\) # ((\hge|decOut_0[3]~1_combout\) # ((!\DU2|s_pulsedOut~q\ & \Game|counter2[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_pulsedOut~q\,
	datab => \Game|counter2[2]~0_combout\,
	datac => \DU|s_pulsedOut~q\,
	datad => \hge|decOut_0[3]~1_combout\,
	combout => \Game|counter2[2]~1_combout\);

-- Location: LCCOMB_X74_Y33_N6
\Game|counter2[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|counter2[0]~3_combout\ = (\Game|counter2[2]~1_combout\ & (((\Game|counter2\(0))))) # (!\Game|counter2[2]~1_combout\ & ((\DU2|s_pulsedOut~q\ & (!\Game|counter2\(0))) # (!\DU2|s_pulsedOut~q\ & ((\Game|counter~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU2|s_pulsedOut~q\,
	datab => \Game|counter2[2]~1_combout\,
	datac => \Game|counter2\(0),
	datad => \Game|counter~5_combout\,
	combout => \Game|counter2[0]~3_combout\);

-- Location: FF_X74_Y33_N7
\Game|counter2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \Game|counter2[0]~3_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Game|counter2\(0));

-- Location: LCCOMB_X74_Y33_N8
\Game|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Equal9~0_combout\ = (!\Game|counter2\(0) & (\Game|counter2\(1) & \Game|counter2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter2\(0),
	datab => \Game|counter2\(1),
	datac => \Game|counter2\(2),
	combout => \Game|Equal9~0_combout\);

-- Location: LCCOMB_X75_Y34_N6
\Game|Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Selector7~3_combout\ = (!\hge|decOut_0[3]~1_combout\ & (!\Game|PS.S~q\ & \Game|comb_proc~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hge|decOut_0[3]~1_combout\,
	datac => \Game|PS.S~q\,
	datad => \Game|comb_proc~0_combout\,
	combout => \Game|Selector7~3_combout\);

-- Location: LCCOMB_X76_Y33_N2
\Game|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Selector7~1_combout\ = (\Game|PS.A2~q\ & (((!\Game|counter2\(2)) # (!\Game|counter2\(1))) # (!\Game|counter2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter2\(0),
	datab => \Game|PS.A2~q\,
	datac => \Game|counter2\(1),
	datad => \Game|counter2\(2),
	combout => \Game|Selector7~1_combout\);

-- Location: LCCOMB_X76_Y33_N18
\Game|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Selector5~1_combout\ = (\Game|Equal9~0_combout\ & ((\Game|Equal8~0_combout\) # ((!\Game|PS.D~q\)))) # (!\Game|Equal9~0_combout\ & (!\Game|Selector7~0_combout\ & ((\Game|Equal8~0_combout\) # (!\Game|PS.D~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Equal9~0_combout\,
	datab => \Game|Equal8~0_combout\,
	datac => \Game|Selector7~0_combout\,
	datad => \Game|PS.D~q\,
	combout => \Game|Selector5~1_combout\);

-- Location: LCCOMB_X76_Y33_N28
\Game|NS.A1_492\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|NS.A1_492~combout\ = (GLOBAL(\Game|Selector1~0clkctrl_outclk\) & (!\Game|Selector5~1_combout\)) # (!GLOBAL(\Game|Selector1~0clkctrl_outclk\) & ((\Game|NS.A1_492~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Selector5~1_combout\,
	datab => \Game|NS.A1_492~combout\,
	datad => \Game|Selector1~0clkctrl_outclk\,
	combout => \Game|NS.A1_492~combout\);

-- Location: LCCOMB_X76_Y33_N6
\Game|PS~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|PS~6_combout\ = (!\DU1|s_pulsedOut~q\ & \Game|NS.A1_492~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU1|s_pulsedOut~q\,
	datad => \Game|NS.A1_492~combout\,
	combout => \Game|PS~6_combout\);

-- Location: FF_X76_Y33_N7
\Game|PS.A1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \Game|PS~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Game|PS.A1~q\);

-- Location: LCCOMB_X76_Y33_N16
\Game|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Selector7~0_combout\ = (\Game|PS.A1~q\ & (((!\Game|counter1\(2)) # (!\Game|counter1\(0))) # (!\Game|counter1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter1\(1),
	datab => \Game|counter1\(0),
	datac => \Game|counter1\(2),
	datad => \Game|PS.A1~q\,
	combout => \Game|Selector7~0_combout\);

-- Location: LCCOMB_X75_Y34_N12
\Game|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Selector7~2_combout\ = (\Game|Equal9~0_combout\ & (((\Game|Selector7~0_combout\)))) # (!\Game|Equal9~0_combout\ & (\Game|PS.D~q\ & (\Game|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|PS.D~q\,
	datab => \Game|Equal8~0_combout\,
	datac => \Game|Equal9~0_combout\,
	datad => \Game|Selector7~0_combout\,
	combout => \Game|Selector7~2_combout\);

-- Location: LCCOMB_X75_Y34_N28
\Game|Selector7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Selector7~4_combout\ = (\Game|Selector7~3_combout\) # ((\Game|Selector7~2_combout\) # ((!\Game|Equal8~0_combout\ & \Game|Selector7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Selector7~3_combout\,
	datab => \Game|Equal8~0_combout\,
	datac => \Game|Selector7~1_combout\,
	datad => \Game|Selector7~2_combout\,
	combout => \Game|Selector7~4_combout\);

-- Location: LCCOMB_X75_Y34_N18
\Game|NS.D_514\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|NS.D_514~combout\ = (GLOBAL(\Game|Selector1~0clkctrl_outclk\) & ((\Game|Selector7~4_combout\))) # (!GLOBAL(\Game|Selector1~0clkctrl_outclk\) & (\Game|NS.D_514~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Game|NS.D_514~combout\,
	datac => \Game|Selector7~4_combout\,
	datad => \Game|Selector1~0clkctrl_outclk\,
	combout => \Game|NS.D_514~combout\);

-- Location: LCCOMB_X75_Y34_N26
\Game|PS~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|PS~9_combout\ = (!\DU1|s_pulsedOut~q\ & \Game|NS.D_514~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DU1|s_pulsedOut~q\,
	datad => \Game|NS.D_514~combout\,
	combout => \Game|PS~9_combout\);

-- Location: FF_X75_Y34_N27
\Game|PS.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \Game|PS~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Game|PS.D~q\);

-- Location: LCCOMB_X76_Y33_N24
\Game|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Selector6~1_combout\ = ((!\Game|Selector7~1_combout\ & ((!\Game|PS.D~q\) # (!\Game|Equal9~0_combout\)))) # (!\Game|Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Equal9~0_combout\,
	datab => \Game|PS.D~q\,
	datac => \Game|Equal8~0_combout\,
	datad => \Game|Selector7~1_combout\,
	combout => \Game|Selector6~1_combout\);

-- Location: LCCOMB_X76_Y33_N10
\Game|NS.A2_470\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|NS.A2_470~combout\ = (GLOBAL(\Game|Selector1~0clkctrl_outclk\) & (!\Game|Selector6~1_combout\)) # (!GLOBAL(\Game|Selector1~0clkctrl_outclk\) & ((\Game|NS.A2_470~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Selector6~1_combout\,
	datac => \Game|NS.A2_470~combout\,
	datad => \Game|Selector1~0clkctrl_outclk\,
	combout => \Game|NS.A2_470~combout\);

-- Location: LCCOMB_X76_Y33_N30
\Game|PS~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|PS~8_combout\ = (!\DU1|s_pulsedOut~q\ & \Game|NS.A2_470~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DU1|s_pulsedOut~q\,
	datad => \Game|NS.A2_470~combout\,
	combout => \Game|PS~8_combout\);

-- Location: FF_X76_Y33_N31
\Game|PS.A2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \Game|PS~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Game|PS.A2~q\);

-- Location: LCCOMB_X76_Y33_N12
\Game|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Selector4~0_combout\ = (\Game|PS.A2~q\ & (\Game|counter2\(0) & (\Game|counter2\(2) & \Game|counter2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|PS.A2~q\,
	datab => \Game|counter2\(0),
	datac => \Game|counter2\(2),
	datad => \Game|counter2\(1),
	combout => \Game|Selector4~0_combout\);

-- Location: LCCOMB_X77_Y34_N14
\set|counter1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|counter1[0]~1_combout\ = (\set|counter1[2]~0_combout\ & (!\set|counter1\(0) & \set|set_Pt2~2_combout\)) # (!\set|counter1[2]~0_combout\ & (\set|counter1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter1[2]~0_combout\,
	datac => \set|counter1\(0),
	datad => \set|set_Pt2~2_combout\,
	combout => \set|counter1[0]~1_combout\);

-- Location: FF_X77_Y34_N15
\set|counter1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \set|counter1[0]~1_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set|counter1\(0));

-- Location: LCCOMB_X79_Y34_N4
\set|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|Add0~0_combout\ = \set|counter1\(2) $ (((\set|counter1\(0) & \set|counter1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter1\(2),
	datac => \set|counter1\(0),
	datad => \set|counter1\(1),
	combout => \set|Add0~0_combout\);

-- Location: LCCOMB_X77_Y34_N20
\set|counter1[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|counter1[2]~2_combout\ = (\set|counter1[2]~0_combout\ & (\set|set_Pt2~2_combout\ & ((\set|Add0~0_combout\)))) # (!\set|counter1[2]~0_combout\ & (((\set|counter1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter1[2]~0_combout\,
	datab => \set|set_Pt2~2_combout\,
	datac => \set|counter1\(2),
	datad => \set|Add0~0_combout\,
	combout => \set|counter1[2]~2_combout\);

-- Location: FF_X77_Y34_N21
\set|counter1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \set|counter1[2]~2_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set|counter1\(2));

-- Location: LCCOMB_X75_Y34_N30
\set|NS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|NS~0_combout\ = (\set|counter1\(2) & (\set|counter1\(1) & (!\set|counter1\(0) & !\set|counter2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter1\(2),
	datab => \set|counter1\(1),
	datac => \set|counter1\(0),
	datad => \set|counter2\(0),
	combout => \set|NS~0_combout\);

-- Location: LCCOMB_X76_Y36_N28
\set|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|Equal5~1_combout\ = (\set|counter2\(1) & \set|counter2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set|counter2\(1),
	datad => \set|counter2\(2),
	combout => \set|Equal5~1_combout\);

-- Location: LCCOMB_X75_Y34_N24
\set|NS~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|NS~1_combout\ = (\hge|decOut_0[3]~1_combout\) # ((\set|NS~0_combout\ & (\set|Equal5~1_combout\ & !\set|PS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|NS~0_combout\,
	datab => \hge|decOut_0[3]~1_combout\,
	datac => \set|Equal5~1_combout\,
	datad => \set|PS~q\,
	combout => \set|NS~1_combout\);

-- Location: FF_X76_Y34_N29
\set|PS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \set|NS~1_combout\,
	sclr => \DU1|s_pulsedOut~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set|PS~q\);

-- Location: LCCOMB_X75_Y34_N20
\hge|decOut_0[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|decOut_0[3]~4_combout\ = (\set|PS~q\ & (((!\set|counter1\(2)) # (!\set|counter1\(1))) # (!\set|counter1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter1\(0),
	datab => \set|PS~q\,
	datac => \set|counter1\(1),
	datad => \set|counter1\(2),
	combout => \hge|decOut_0[3]~4_combout\);

-- Location: LCCOMB_X72_Y33_N4
\Game|Tcounter2[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Tcounter2[3]~0_combout\ = (!\DU|s_pulsedOut~q\ & (\hge|decOut_0[3]~1_combout\ & ((\Game|counter~7_combout\) # (\DU2|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter~7_combout\,
	datab => \DU2|s_pulsedOut~q\,
	datac => \DU|s_pulsedOut~q\,
	datad => \hge|decOut_0[3]~1_combout\,
	combout => \Game|Tcounter2[3]~0_combout\);

-- Location: LCCOMB_X72_Y33_N18
\Game|Tcounter2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Tcounter2[0]~1_combout\ = (\Game|Tcounter2[3]~0_combout\ & (!\Game|Tcounter2\(0) & \DU2|s_pulsedOut~q\)) # (!\Game|Tcounter2[3]~0_combout\ & (\Game|Tcounter2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter2[3]~0_combout\,
	datac => \Game|Tcounter2\(0),
	datad => \DU2|s_pulsedOut~q\,
	combout => \Game|Tcounter2[0]~1_combout\);

-- Location: FF_X72_Y33_N19
\Game|Tcounter2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \Game|Tcounter2[0]~1_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Game|Tcounter2\(0));

-- Location: LCCOMB_X72_Y33_N8
\Game|Tcounter2[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Tcounter2[1]~2_combout\ = (\Game|Tcounter2[3]~0_combout\ & (\DU2|s_pulsedOut~q\ & (\Game|Tcounter2\(0) $ (\Game|Tcounter2\(1))))) # (!\Game|Tcounter2[3]~0_combout\ & (((\Game|Tcounter2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter2[3]~0_combout\,
	datab => \Game|Tcounter2\(0),
	datac => \Game|Tcounter2\(1),
	datad => \DU2|s_pulsedOut~q\,
	combout => \Game|Tcounter2[1]~2_combout\);

-- Location: FF_X72_Y33_N9
\Game|Tcounter2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \Game|Tcounter2[1]~2_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Game|Tcounter2\(1));

-- Location: LCCOMB_X72_Y33_N2
\Game|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Add1~0_combout\ = \Game|Tcounter2\(2) $ (((\Game|Tcounter2\(1) & \Game|Tcounter2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Game|Tcounter2\(1),
	datac => \Game|Tcounter2\(0),
	datad => \Game|Tcounter2\(2),
	combout => \Game|Add1~0_combout\);

-- Location: LCCOMB_X72_Y33_N0
\Game|Tcounter2[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Tcounter2[2]~3_combout\ = (\Game|Tcounter2[3]~0_combout\ & (\Game|Add1~0_combout\ & ((\DU2|s_pulsedOut~q\)))) # (!\Game|Tcounter2[3]~0_combout\ & (((\Game|Tcounter2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter2[3]~0_combout\,
	datab => \Game|Add1~0_combout\,
	datac => \Game|Tcounter2\(2),
	datad => \DU2|s_pulsedOut~q\,
	combout => \Game|Tcounter2[2]~3_combout\);

-- Location: FF_X72_Y33_N1
\Game|Tcounter2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \Game|Tcounter2[2]~3_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Game|Tcounter2\(2));

-- Location: LCCOMB_X72_Y33_N28
\Game|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Add1~1_combout\ = \Game|Tcounter2\(3) $ (((\Game|Tcounter2\(0) & (\Game|Tcounter2\(2) & \Game|Tcounter2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter2\(0),
	datab => \Game|Tcounter2\(2),
	datac => \Game|Tcounter2\(3),
	datad => \Game|Tcounter2\(1),
	combout => \Game|Add1~1_combout\);

-- Location: LCCOMB_X72_Y33_N16
\Game|Tcounter2[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Tcounter2[3]~4_combout\ = (\Game|Tcounter2[3]~0_combout\ & (\DU2|s_pulsedOut~q\ & ((\Game|Add1~1_combout\)))) # (!\Game|Tcounter2[3]~0_combout\ & (((\Game|Tcounter2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter2[3]~0_combout\,
	datab => \DU2|s_pulsedOut~q\,
	datac => \Game|Tcounter2\(3),
	datad => \Game|Add1~1_combout\,
	combout => \Game|Tcounter2[3]~4_combout\);

-- Location: FF_X72_Y33_N17
\Game|Tcounter2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \Game|Tcounter2[3]~4_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Game|Tcounter2\(3));

-- Location: LCCOMB_X72_Y33_N24
\Game|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Equal1~0_combout\ = (!\Game|Tcounter2\(0) & (\Game|Tcounter2\(1) & !\Game|Tcounter2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Game|Tcounter2\(0),
	datac => \Game|Tcounter2\(1),
	datad => \Game|Tcounter2\(2),
	combout => \Game|Equal1~0_combout\);

-- Location: LCCOMB_X75_Y34_N8
\Game|s_set2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|s_set2~0_combout\ = (\hge|decOut_0[3]~4_combout\ & (!\set|Equal5~0_combout\ & (\Game|Tcounter2\(3) & \Game|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hge|decOut_0[3]~4_combout\,
	datab => \set|Equal5~0_combout\,
	datac => \Game|Tcounter2\(3),
	datad => \Game|Equal1~0_combout\,
	combout => \Game|s_set2~0_combout\);

-- Location: LCCOMB_X75_Y33_N14
\Game|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Equal3~0_combout\ = (!\Game|counter2\(0) & (\Game|counter2\(2) & !\Game|counter2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Game|counter2\(0),
	datac => \Game|counter2\(2),
	datad => \Game|counter2\(1),
	combout => \Game|Equal3~0_combout\);

-- Location: LCCOMB_X76_Y34_N0
\Game|s_set2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|s_set2~1_combout\ = (\Game|s_set2~0_combout\) # ((\hge|decOut_0[3]~1_combout\ & (\Game|counter~3_combout\)) # (!\hge|decOut_0[3]~1_combout\ & ((\Game|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|s_set2~0_combout\,
	datab => \hge|decOut_0[3]~1_combout\,
	datac => \Game|counter~3_combout\,
	datad => \Game|Equal3~0_combout\,
	combout => \Game|s_set2~1_combout\);

-- Location: LCCOMB_X72_Y34_N24
\Game|Tcounter1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Tcounter1~2_combout\ = (\DU|s_pulsedOut~q\ & (\Game|Tcounter1\(0) $ (\Game|Tcounter1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter1\(0),
	datac => \Game|Tcounter1\(1),
	datad => \DU|s_pulsedOut~q\,
	combout => \Game|Tcounter1~2_combout\);

-- Location: FF_X72_Y34_N25
\Game|Tcounter1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \Game|Tcounter1~2_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	ena => \Game|Tcounter1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Game|Tcounter1\(1));

-- Location: LCCOMB_X72_Y34_N6
\Game|Tcounter1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Tcounter1~3_combout\ = (\DU|s_pulsedOut~q\ & (\Game|Tcounter1\(2) $ (((\Game|Tcounter1\(0) & \Game|Tcounter1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter1\(0),
	datab => \Game|Tcounter1\(1),
	datac => \Game|Tcounter1\(2),
	datad => \DU|s_pulsedOut~q\,
	combout => \Game|Tcounter1~3_combout\);

-- Location: FF_X72_Y34_N7
\Game|Tcounter1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \Game|Tcounter1~3_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	ena => \Game|Tcounter1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Game|Tcounter1\(2));

-- Location: LCCOMB_X72_Y34_N8
\Hex420|decOut_0[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|decOut_0[2]~8_combout\ = (!\Game|Tcounter1\(2) & (\Game|Tcounter1\(1) & !\Game|Tcounter1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter1\(2),
	datab => \Game|Tcounter1\(1),
	datad => \Game|Tcounter1\(0),
	combout => \Hex420|decOut_0[2]~8_combout\);

-- Location: LCCOMB_X72_Y34_N20
\Game|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Add0~0_combout\ = \Game|Tcounter1\(3) $ (((\Game|Tcounter1\(2) & (\Game|Tcounter1\(1) & \Game|Tcounter1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter1\(2),
	datab => \Game|Tcounter1\(3),
	datac => \Game|Tcounter1\(1),
	datad => \Game|Tcounter1\(0),
	combout => \Game|Add0~0_combout\);

-- Location: LCCOMB_X72_Y34_N2
\Game|Tcounter1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Tcounter1~4_combout\ = (\Game|Add0~0_combout\ & \DU|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Game|Add0~0_combout\,
	datad => \DU|s_pulsedOut~q\,
	combout => \Game|Tcounter1~4_combout\);

-- Location: FF_X72_Y34_N3
\Game|Tcounter1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \Game|Tcounter1~4_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	ena => \Game|Tcounter1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Game|Tcounter1\(3));

-- Location: LCCOMB_X76_Y34_N28
\Game|s_set1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|s_set1~2_combout\ = (\set|PS~q\ & (((!\set|counter1\(1)) # (!\set|counter1\(0))) # (!\set|counter1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter1\(2),
	datab => \set|counter1\(0),
	datac => \set|PS~q\,
	datad => \set|counter1\(1),
	combout => \Game|s_set1~2_combout\);

-- Location: LCCOMB_X76_Y34_N14
\Game|s_set1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|s_set1~3_combout\ = (!\set|Equal5~0_combout\ & (\Hex420|decOut_0[2]~8_combout\ & (\Game|Tcounter1\(3) & \Game|s_set1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|Equal5~0_combout\,
	datab => \Hex420|decOut_0[2]~8_combout\,
	datac => \Game|Tcounter1\(3),
	datad => \Game|s_set1~2_combout\,
	combout => \Game|s_set1~3_combout\);

-- Location: LCCOMB_X73_Y34_N16
\Game|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Add2~1_cout\ = CARRY((\Game|Tcounter1\(0)) # (!\Game|Tcounter2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter1\(0),
	datab => \Game|Tcounter2\(0),
	datad => VCC,
	cout => \Game|Add2~1_cout\);

-- Location: LCCOMB_X73_Y34_N18
\Game|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Add2~2_combout\ = (\Game|Tcounter2\(1) & ((\Game|Tcounter1\(1) & (!\Game|Add2~1_cout\)) # (!\Game|Tcounter1\(1) & ((\Game|Add2~1_cout\) # (GND))))) # (!\Game|Tcounter2\(1) & ((\Game|Tcounter1\(1) & (\Game|Add2~1_cout\ & VCC)) # (!\Game|Tcounter1\(1) 
-- & (!\Game|Add2~1_cout\))))
-- \Game|Add2~3\ = CARRY((\Game|Tcounter2\(1) & ((!\Game|Add2~1_cout\) # (!\Game|Tcounter1\(1)))) # (!\Game|Tcounter2\(1) & (!\Game|Tcounter1\(1) & !\Game|Add2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter2\(1),
	datab => \Game|Tcounter1\(1),
	datad => VCC,
	cin => \Game|Add2~1_cout\,
	combout => \Game|Add2~2_combout\,
	cout => \Game|Add2~3\);

-- Location: LCCOMB_X73_Y34_N20
\Game|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Add2~4_combout\ = ((\Game|Tcounter1\(2) $ (\Game|Tcounter2\(2) $ (\Game|Add2~3\)))) # (GND)
-- \Game|Add2~5\ = CARRY((\Game|Tcounter1\(2) & ((!\Game|Add2~3\) # (!\Game|Tcounter2\(2)))) # (!\Game|Tcounter1\(2) & (!\Game|Tcounter2\(2) & !\Game|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter1\(2),
	datab => \Game|Tcounter2\(2),
	datad => VCC,
	cin => \Game|Add2~3\,
	combout => \Game|Add2~4_combout\,
	cout => \Game|Add2~5\);

-- Location: LCCOMB_X73_Y34_N22
\Game|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Add2~6_combout\ = \Game|Tcounter2\(3) $ (\Game|Add2~5\ $ (!\Game|Tcounter1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter2\(3),
	datad => \Game|Tcounter1\(3),
	cin => \Game|Add2~5\,
	combout => \Game|Add2~6_combout\);

-- Location: LCCOMB_X73_Y34_N12
\Game|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|LessThan1~1_combout\ = (\Game|Tcounter1\(1) & (((\Game|Tcounter1\(0) & !\Game|Tcounter2\(0))) # (!\Game|Tcounter2\(1)))) # (!\Game|Tcounter1\(1) & (\Game|Tcounter1\(0) & (!\Game|Tcounter2\(0) & !\Game|Tcounter2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter1\(0),
	datab => \Game|Tcounter1\(1),
	datac => \Game|Tcounter2\(0),
	datad => \Game|Tcounter2\(1),
	combout => \Game|LessThan1~1_combout\);

-- Location: LCCOMB_X73_Y34_N24
\Game|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|LessThan1~2_combout\ = (\Game|Tcounter2\(3) & (\Game|Tcounter1\(3) & (\Game|Tcounter2\(2) $ (!\Game|Tcounter1\(2))))) # (!\Game|Tcounter2\(3) & (!\Game|Tcounter1\(3) & (\Game|Tcounter2\(2) $ (!\Game|Tcounter1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter2\(3),
	datab => \Game|Tcounter2\(2),
	datac => \Game|Tcounter1\(2),
	datad => \Game|Tcounter1\(3),
	combout => \Game|LessThan1~2_combout\);

-- Location: LCCOMB_X72_Y34_N4
\Game|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|LessThan0~0_combout\ = (!\Game|Tcounter1\(3) & (((!\Game|Tcounter1\(0)) # (!\Game|Tcounter1\(1))) # (!\Game|Tcounter1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter1\(2),
	datab => \Game|Tcounter1\(1),
	datac => \Game|Tcounter1\(0),
	datad => \Game|Tcounter1\(3),
	combout => \Game|LessThan0~0_combout\);

-- Location: LCCOMB_X73_Y34_N6
\Game|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|LessThan1~0_combout\ = (\Game|Tcounter2\(3) & (!\Game|Tcounter2\(2) & (\Game|Tcounter1\(2) & \Game|Tcounter1\(3)))) # (!\Game|Tcounter2\(3) & ((\Game|Tcounter1\(3)) # ((!\Game|Tcounter2\(2) & \Game|Tcounter1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter2\(3),
	datab => \Game|Tcounter2\(2),
	datac => \Game|Tcounter1\(2),
	datad => \Game|Tcounter1\(3),
	combout => \Game|LessThan1~0_combout\);

-- Location: LCCOMB_X73_Y34_N8
\Game|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|counter~0_combout\ = (!\Game|LessThan0~0_combout\ & ((\Game|LessThan1~0_combout\) # ((\Game|LessThan1~1_combout\ & \Game|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|LessThan1~1_combout\,
	datab => \Game|LessThan1~2_combout\,
	datac => \Game|LessThan0~0_combout\,
	datad => \Game|LessThan1~0_combout\,
	combout => \Game|counter~0_combout\);

-- Location: LCCOMB_X73_Y34_N30
\Game|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|counter~1_combout\ = (\Game|counter~0_combout\ & ((\Game|Add2~6_combout\) # ((\Game|Add2~4_combout\) # (\Game|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Add2~6_combout\,
	datab => \Game|Add2~4_combout\,
	datac => \Game|counter~0_combout\,
	datad => \Game|Add2~2_combout\,
	combout => \Game|counter~1_combout\);

-- Location: LCCOMB_X76_Y34_N26
\Game|s_set1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|s_set1~4_combout\ = (\Game|s_set1~3_combout\) # ((\hge|decOut_0[3]~1_combout\ & ((\Game|counter~1_combout\))) # (!\hge|decOut_0[3]~1_combout\ & (\Game|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|s_set1~3_combout\,
	datab => \hge|decOut_0[3]~1_combout\,
	datac => \Game|Equal2~0_combout\,
	datad => \Game|counter~1_combout\,
	combout => \Game|s_set1~4_combout\);

-- Location: LCCOMB_X76_Y34_N18
\set|counter2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|counter2[2]~2_combout\ = (\Game|PS.S~q\ & (\Game|Selector4~0_combout\)) # (!\Game|PS.S~q\ & (!\Game|s_set1~4_combout\ & ((\Game|Selector4~0_combout\) # (\Game|s_set2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Selector4~0_combout\,
	datab => \Game|s_set2~1_combout\,
	datac => \Game|PS.S~q\,
	datad => \Game|s_set1~4_combout\,
	combout => \set|counter2[2]~2_combout\);

-- Location: LCCOMB_X76_Y33_N8
\Game|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Selector3~0_combout\ = (\Game|counter1\(1) & (\Game|counter1\(0) & (\Game|counter1\(2) & \Game|PS.A1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter1\(1),
	datab => \Game|counter1\(0),
	datac => \Game|counter1\(2),
	datad => \Game|PS.A1~q\,
	combout => \Game|Selector3~0_combout\);

-- Location: LCCOMB_X76_Y34_N12
\set|counter2[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|counter2[2]~3_combout\ = (\set|set_Pt2~2_combout\ & ((\Game|Selector3~0_combout\) # (!\set|counter2[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|set_Pt2~2_combout\,
	datab => \set|counter2[2]~2_combout\,
	datad => \Game|Selector3~0_combout\,
	combout => \set|counter2[2]~3_combout\);

-- Location: LCCOMB_X77_Y34_N10
\set|counter2[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|counter2[1]~4_combout\ = (\set|counter2[2]~3_combout\ & (((\set|counter2\(1))))) # (!\set|counter2[2]~3_combout\ & (\set|set_Pt2~2_combout\ & (\set|counter2\(0) $ (\set|counter2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter2[2]~3_combout\,
	datab => \set|counter2\(0),
	datac => \set|counter2\(1),
	datad => \set|set_Pt2~2_combout\,
	combout => \set|counter2[1]~4_combout\);

-- Location: FF_X77_Y34_N11
\set|counter2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \set|counter2[1]~4_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set|counter2\(1));

-- Location: LCCOMB_X76_Y35_N10
\set|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|Add1~0_combout\ = \set|counter2\(2) $ (((\set|counter2\(0) & \set|counter2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter2\(0),
	datab => \set|counter2\(2),
	datad => \set|counter2\(1),
	combout => \set|Add1~0_combout\);

-- Location: LCCOMB_X76_Y34_N10
\set|counter2[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|counter2[2]~5_combout\ = (\set|counter2[2]~3_combout\ & (((\set|counter2\(2))))) # (!\set|counter2[2]~3_combout\ & (\set|set_Pt2~2_combout\ & (\set|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|set_Pt2~2_combout\,
	datab => \set|Add1~0_combout\,
	datac => \set|counter2\(2),
	datad => \set|counter2[2]~3_combout\,
	combout => \set|counter2[2]~5_combout\);

-- Location: FF_X76_Y34_N11
\set|counter2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \set|counter2[2]~5_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set|counter2\(2));

-- Location: LCCOMB_X76_Y34_N6
\hge|decOut_0[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|decOut_0[3]~0_combout\ = (\set|PS~q\ & (((!\set|counter1\(1)) # (!\set|counter1\(2))) # (!\set|counter1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|PS~q\,
	datab => \set|counter1\(0),
	datac => \set|counter1\(2),
	datad => \set|counter1\(1),
	combout => \hge|decOut_0[3]~0_combout\);

-- Location: LCCOMB_X76_Y34_N30
\hge|decOut_0[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|decOut_0[3]~1_combout\ = (\hge|decOut_0[3]~0_combout\ & (((!\set|counter2\(1)) # (!\set|counter2\(0))) # (!\set|counter2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter2\(2),
	datab => \set|counter2\(0),
	datac => \set|counter2\(1),
	datad => \hge|decOut_0[3]~0_combout\,
	combout => \hge|decOut_0[3]~1_combout\);

-- Location: LCCOMB_X72_Y34_N0
\Game|Tcounter1[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Tcounter1[3]~1_combout\ = (\hge|decOut_0[3]~1_combout\ & ((\DU|s_pulsedOut~q\) # ((\Game|counter~7_combout\ & !\DU2|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter~7_combout\,
	datab => \DU|s_pulsedOut~q\,
	datac => \hge|decOut_0[3]~1_combout\,
	datad => \DU2|s_pulsedOut~q\,
	combout => \Game|Tcounter1[3]~1_combout\);

-- Location: FF_X72_Y34_N27
\Game|Tcounter1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \Game|Tcounter1~0_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	ena => \Game|Tcounter1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Game|Tcounter1\(0));

-- Location: LCCOMB_X73_Y34_N10
\Game|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|LessThan4~1_combout\ = (\Game|Tcounter1\(1) & (!\Game|Tcounter1\(0) & (\Game|Tcounter2\(0) & \Game|Tcounter2\(1)))) # (!\Game|Tcounter1\(1) & ((\Game|Tcounter2\(1)) # ((!\Game|Tcounter1\(0) & \Game|Tcounter2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter1\(0),
	datab => \Game|Tcounter1\(1),
	datac => \Game|Tcounter2\(0),
	datad => \Game|Tcounter2\(1),
	combout => \Game|LessThan4~1_combout\);

-- Location: LCCOMB_X73_Y34_N14
\Game|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|LessThan4~0_combout\ = (\Game|Tcounter2\(3) & (((\Game|Tcounter2\(2) & !\Game|Tcounter1\(2))) # (!\Game|Tcounter1\(3)))) # (!\Game|Tcounter2\(3) & (\Game|Tcounter2\(2) & (!\Game|Tcounter1\(2) & !\Game|Tcounter1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter2\(3),
	datab => \Game|Tcounter2\(2),
	datac => \Game|Tcounter1\(2),
	datad => \Game|Tcounter1\(3),
	combout => \Game|LessThan4~0_combout\);

-- Location: LCCOMB_X72_Y33_N6
\Game|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|LessThan3~0_combout\ = (!\Game|Tcounter2\(3) & (((!\Game|Tcounter2\(2)) # (!\Game|Tcounter2\(1))) # (!\Game|Tcounter2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter2\(0),
	datab => \Game|Tcounter2\(3),
	datac => \Game|Tcounter2\(1),
	datad => \Game|Tcounter2\(2),
	combout => \Game|LessThan3~0_combout\);

-- Location: LCCOMB_X73_Y34_N4
\Game|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|counter~2_combout\ = (!\Game|LessThan3~0_combout\ & ((\Game|LessThan4~0_combout\) # ((\Game|LessThan4~1_combout\ & \Game|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|LessThan4~1_combout\,
	datab => \Game|LessThan4~0_combout\,
	datac => \Game|LessThan3~0_combout\,
	datad => \Game|LessThan1~2_combout\,
	combout => \Game|counter~2_combout\);

-- Location: LCCOMB_X72_Y34_N12
\Game|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Add3~1_cout\ = CARRY((\Game|Tcounter2\(0)) # (!\Game|Tcounter1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter1\(0),
	datab => \Game|Tcounter2\(0),
	datad => VCC,
	cout => \Game|Add3~1_cout\);

-- Location: LCCOMB_X72_Y34_N14
\Game|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Add3~2_combout\ = (\Game|Tcounter2\(1) & ((\Game|Tcounter1\(1) & (!\Game|Add3~1_cout\)) # (!\Game|Tcounter1\(1) & (\Game|Add3~1_cout\ & VCC)))) # (!\Game|Tcounter2\(1) & ((\Game|Tcounter1\(1) & ((\Game|Add3~1_cout\) # (GND))) # (!\Game|Tcounter1\(1) 
-- & (!\Game|Add3~1_cout\))))
-- \Game|Add3~3\ = CARRY((\Game|Tcounter2\(1) & (\Game|Tcounter1\(1) & !\Game|Add3~1_cout\)) # (!\Game|Tcounter2\(1) & ((\Game|Tcounter1\(1)) # (!\Game|Add3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter2\(1),
	datab => \Game|Tcounter1\(1),
	datad => VCC,
	cin => \Game|Add3~1_cout\,
	combout => \Game|Add3~2_combout\,
	cout => \Game|Add3~3\);

-- Location: LCCOMB_X72_Y34_N16
\Game|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Add3~4_combout\ = ((\Game|Tcounter1\(2) $ (\Game|Tcounter2\(2) $ (\Game|Add3~3\)))) # (GND)
-- \Game|Add3~5\ = CARRY((\Game|Tcounter1\(2) & (\Game|Tcounter2\(2) & !\Game|Add3~3\)) # (!\Game|Tcounter1\(2) & ((\Game|Tcounter2\(2)) # (!\Game|Add3~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter1\(2),
	datab => \Game|Tcounter2\(2),
	datad => VCC,
	cin => \Game|Add3~3\,
	combout => \Game|Add3~4_combout\,
	cout => \Game|Add3~5\);

-- Location: LCCOMB_X72_Y34_N18
\Game|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Add3~6_combout\ = \Game|Tcounter1\(3) $ (\Game|Add3~5\ $ (!\Game|Tcounter2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Game|Tcounter1\(3),
	datad => \Game|Tcounter2\(3),
	cin => \Game|Add3~5\,
	combout => \Game|Add3~6_combout\);

-- Location: LCCOMB_X72_Y34_N10
\Game|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|counter~3_combout\ = (\Game|counter~2_combout\ & ((\Game|Add3~6_combout\) # ((\Game|Add3~2_combout\) # (\Game|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter~2_combout\,
	datab => \Game|Add3~6_combout\,
	datac => \Game|Add3~2_combout\,
	datad => \Game|Add3~4_combout\,
	combout => \Game|counter~3_combout\);

-- Location: LCCOMB_X72_Y34_N28
\Game|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|counter~6_combout\ = (\Game|Tcounter2\(3) & ((\Game|Equal1~0_combout\) # ((\Game|Tcounter1\(3) & \Hex420|decOut_0[2]~8_combout\)))) # (!\Game|Tcounter2\(3) & (\Game|Tcounter1\(3) & (\Hex420|decOut_0[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter2\(3),
	datab => \Game|Tcounter1\(3),
	datac => \Hex420|decOut_0[2]~8_combout\,
	datad => \Game|Equal1~0_combout\,
	combout => \Game|counter~6_combout\);

-- Location: LCCOMB_X72_Y34_N30
\Game|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|counter~7_combout\ = (\Game|counter~3_combout\) # ((\Game|counter~1_combout\) # (\Game|counter~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter~3_combout\,
	datac => \Game|counter~1_combout\,
	datad => \Game|counter~6_combout\,
	combout => \Game|counter~7_combout\);

-- Location: LCCOMB_X75_Y33_N30
\Game|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Selector1~0_combout\ = (\Game|PS.S~q\) # ((\hge|decOut_0[3]~1_combout\ & (\Game|counter~7_combout\)) # (!\hge|decOut_0[3]~1_combout\ & ((\Game|counter~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter~7_combout\,
	datab => \hge|decOut_0[3]~1_combout\,
	datac => \Game|counter~4_combout\,
	datad => \Game|PS.S~q\,
	combout => \Game|Selector1~0_combout\);

-- Location: CLKCTRL_G9
\Game|Selector1~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Game|Selector1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Game|Selector1~0clkctrl_outclk\);

-- Location: LCCOMB_X76_Y33_N22
\Game|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Selector8~0_combout\ = (!\Game|Selector4~0_combout\ & (((!\Game|counter1\(2)) # (!\Game|Equal5~0_combout\)) # (!\Game|PS.A1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|PS.A1~q\,
	datab => \Game|Equal5~0_combout\,
	datac => \Game|counter1\(2),
	datad => \Game|Selector4~0_combout\,
	combout => \Game|Selector8~0_combout\);

-- Location: LCCOMB_X75_Y33_N6
\Game|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Selector8~1_combout\ = ((!\Game|PS.S~q\ & ((\hge|decOut_0[3]~1_combout\) # (!\Game|comb_proc~0_combout\)))) # (!\Game|Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|PS.S~q\,
	datab => \Game|comb_proc~0_combout\,
	datac => \hge|decOut_0[3]~1_combout\,
	datad => \Game|Selector8~0_combout\,
	combout => \Game|Selector8~1_combout\);

-- Location: LCCOMB_X75_Y33_N2
\Game|NS.S_536\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|NS.S_536~combout\ = (GLOBAL(\Game|Selector1~0clkctrl_outclk\) & ((\Game|Selector8~1_combout\))) # (!GLOBAL(\Game|Selector1~0clkctrl_outclk\) & (\Game|NS.S_536~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Game|NS.S_536~combout\,
	datac => \Game|Selector1~0clkctrl_outclk\,
	datad => \Game|Selector8~1_combout\,
	combout => \Game|NS.S_536~combout\);

-- Location: LCCOMB_X75_Y33_N24
\Game|PS~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|PS~7_combout\ = (!\DU1|s_pulsedOut~q\ & !\Game|NS.S_536~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DU1|s_pulsedOut~q\,
	datad => \Game|NS.S_536~combout\,
	combout => \Game|PS~7_combout\);

-- Location: FF_X75_Y33_N25
\Game|PS.S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \Game|PS~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Game|PS.S~q\);

-- Location: LCCOMB_X77_Y34_N4
\set|counter1[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|counter1[2]~0_combout\ = (\Game|Selector3~0_combout\) # (((!\Game|PS.S~q\ & \Game|s_set1~4_combout\)) # (!\set|set_Pt2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|PS.S~q\,
	datab => \Game|s_set1~4_combout\,
	datac => \Game|Selector3~0_combout\,
	datad => \set|set_Pt2~2_combout\,
	combout => \set|counter1[2]~0_combout\);

-- Location: LCCOMB_X77_Y34_N2
\set|counter1[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|counter1[1]~3_combout\ = (\set|counter1[2]~0_combout\ & (\set|set_Pt2~2_combout\ & (\set|counter1\(0) $ (\set|counter1\(1))))) # (!\set|counter1[2]~0_combout\ & (((\set|counter1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter1[2]~0_combout\,
	datab => \set|counter1\(0),
	datac => \set|counter1\(1),
	datad => \set|set_Pt2~2_combout\,
	combout => \set|counter1[1]~3_combout\);

-- Location: FF_X77_Y34_N3
\set|counter1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \set|counter1[1]~3_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set|counter1\(1));

-- Location: LCCOMB_X77_Y34_N12
\set|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|Equal4~0_combout\ = (\set|counter1\(1) & \set|counter1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \set|counter1\(1),
	datad => \set|counter1\(2),
	combout => \set|Equal4~0_combout\);

-- Location: LCCOMB_X76_Y36_N6
\set|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|Add3~0_combout\ = (\set|counter2\(0) & ((GND) # (!\set|counter1\(0)))) # (!\set|counter2\(0) & (\set|counter1\(0) $ (GND)))
-- \set|Add3~1\ = CARRY((\set|counter2\(0)) # (!\set|counter1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter2\(0),
	datab => \set|counter1\(0),
	datad => VCC,
	combout => \set|Add3~0_combout\,
	cout => \set|Add3~1\);

-- Location: LCCOMB_X76_Y36_N8
\set|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|Add3~2_combout\ = (\set|counter1\(1) & ((\set|counter2\(1) & (!\set|Add3~1\)) # (!\set|counter2\(1) & ((\set|Add3~1\) # (GND))))) # (!\set|counter1\(1) & ((\set|counter2\(1) & (\set|Add3~1\ & VCC)) # (!\set|counter2\(1) & (!\set|Add3~1\))))
-- \set|Add3~3\ = CARRY((\set|counter1\(1) & ((!\set|Add3~1\) # (!\set|counter2\(1)))) # (!\set|counter1\(1) & (!\set|counter2\(1) & !\set|Add3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter1\(1),
	datab => \set|counter2\(1),
	datad => VCC,
	cin => \set|Add3~1\,
	combout => \set|Add3~2_combout\,
	cout => \set|Add3~3\);

-- Location: LCCOMB_X76_Y36_N10
\set|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|Add3~4_combout\ = \set|counter1\(2) $ (\set|Add3~3\ $ (\set|counter2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter1\(2),
	datad => \set|counter2\(2),
	cin => \set|Add3~3\,
	combout => \set|Add3~4_combout\);

-- Location: LCCOMB_X76_Y36_N14
\set|set_Pt2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|set_Pt2~1_combout\ = (\set|counter2\(0)) # ((\set|Add3~2_combout\) # (\set|Add3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter2\(0),
	datac => \set|Add3~2_combout\,
	datad => \set|Add3~4_combout\,
	combout => \set|set_Pt2~1_combout\);

-- Location: LCCOMB_X77_Y34_N26
\set|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|Add2~0_combout\ = (\set|counter1\(0) & ((GND) # (!\set|counter2\(0)))) # (!\set|counter1\(0) & (\set|counter2\(0) $ (GND)))
-- \set|Add2~1\ = CARRY((\set|counter1\(0)) # (!\set|counter2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter1\(0),
	datab => \set|counter2\(0),
	datad => VCC,
	combout => \set|Add2~0_combout\,
	cout => \set|Add2~1\);

-- Location: LCCOMB_X77_Y34_N28
\set|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|Add2~2_combout\ = (\set|counter2\(1) & ((\set|counter1\(1) & (!\set|Add2~1\)) # (!\set|counter1\(1) & ((\set|Add2~1\) # (GND))))) # (!\set|counter2\(1) & ((\set|counter1\(1) & (\set|Add2~1\ & VCC)) # (!\set|counter1\(1) & (!\set|Add2~1\))))
-- \set|Add2~3\ = CARRY((\set|counter2\(1) & ((!\set|Add2~1\) # (!\set|counter1\(1)))) # (!\set|counter2\(1) & (!\set|counter1\(1) & !\set|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter2\(1),
	datab => \set|counter1\(1),
	datad => VCC,
	cin => \set|Add2~1\,
	combout => \set|Add2~2_combout\,
	cout => \set|Add2~3\);

-- Location: LCCOMB_X77_Y34_N30
\set|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|Add2~4_combout\ = \set|counter1\(2) $ (\set|Add2~3\ $ (\set|counter2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set|counter1\(2),
	datad => \set|counter2\(2),
	cin => \set|Add2~3\,
	combout => \set|Add2~4_combout\);

-- Location: LCCOMB_X77_Y34_N16
\set|set_Pt2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|set_Pt2~0_combout\ = (\set|counter1\(0)) # ((\set|Add2~4_combout\) # (\set|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set|counter1\(0),
	datac => \set|Add2~4_combout\,
	datad => \set|Add2~2_combout\,
	combout => \set|set_Pt2~0_combout\);

-- Location: LCCOMB_X76_Y36_N4
\set|set_Pt2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|set_Pt2~2_combout\ = (\set|Equal4~0_combout\ & (!\set|set_Pt2~0_combout\ & ((!\set|set_Pt2~1_combout\) # (!\set|Equal5~1_combout\)))) # (!\set|Equal4~0_combout\ & (((!\set|set_Pt2~1_combout\)) # (!\set|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|Equal4~0_combout\,
	datab => \set|Equal5~1_combout\,
	datac => \set|set_Pt2~1_combout\,
	datad => \set|set_Pt2~0_combout\,
	combout => \set|set_Pt2~2_combout\);

-- Location: LCCOMB_X76_Y34_N4
\set|counter2[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|counter2[0]~6_combout\ = (\set|set_Pt2~2_combout\ & (\set|counter2\(0) $ (((!\Game|Selector3~0_combout\ & \set|counter2[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|set_Pt2~2_combout\,
	datab => \Game|Selector3~0_combout\,
	datac => \set|counter2\(0),
	datad => \set|counter2[2]~2_combout\,
	combout => \set|counter2[0]~6_combout\);

-- Location: FF_X76_Y34_N5
\set|counter2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \set|counter2[0]~6_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set|counter2\(0));

-- Location: LCCOMB_X75_Y34_N14
\set|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|Equal5~0_combout\ = (\set|counter2\(0) & (\set|counter2\(1) & \set|counter2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter2\(0),
	datab => \set|counter2\(1),
	datac => \set|counter2\(2),
	combout => \set|Equal5~0_combout\);

-- Location: LCCOMB_X77_Y34_N24
\set|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|LessThan2~0_combout\ = (!\set|Add2~4_combout\ & !\set|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \set|Add2~4_combout\,
	datad => \set|Add2~2_combout\,
	combout => \set|LessThan2~0_combout\);

-- Location: LCCOMB_X77_Y34_N18
\set|Match1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|Match1~0_combout\ = ((!\set|counter1\(0) & ((\set|PS~q\) # (\set|LessThan2~0_combout\)))) # (!\set|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|Equal4~0_combout\,
	datab => \set|PS~q\,
	datac => \set|counter1\(0),
	datad => \set|LessThan2~0_combout\,
	combout => \set|Match1~0_combout\);

-- Location: LCCOMB_X76_Y36_N0
\set|comb_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|comb_proc~0_combout\ = (\set|Equal5~1_combout\ & ((\set|counter2\(0)) # ((\set|Add3~2_combout\) # (\set|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter2\(0),
	datab => \set|Equal5~1_combout\,
	datac => \set|Add3~2_combout\,
	datad => \set|Add3~4_combout\,
	combout => \set|comb_proc~0_combout\);

-- Location: LCCOMB_X76_Y34_N8
\set|Match2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|Match2~0_combout\ = (\set|Match1~0_combout\ & ((\set|PS~q\ & (\set|Equal5~0_combout\)) # (!\set|PS~q\ & ((\set|comb_proc~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|Equal5~0_combout\,
	datab => \set|Match1~0_combout\,
	datac => \set|PS~q\,
	datad => \set|comb_proc~0_combout\,
	combout => \set|Match2~0_combout\);

-- Location: LCCOMB_X74_Y36_N26
\match|s_set2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \match|s_set2[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \match|s_set2[0]~feeder_combout\);

-- Location: LCCOMB_X76_Y34_N2
\match|s_set1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \match|s_set1~5_combout\ = (\set|Match1~0_combout\ & ((\match|s_set1\(1)) # ((\set|Match2~0_combout\ & \match|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \match|s_set1\(1),
	datab => \set|Match1~0_combout\,
	datac => \set|Match2~0_combout\,
	datad => \match|process_0~1_combout\,
	combout => \match|s_set1~5_combout\);

-- Location: LCCOMB_X75_Y36_N14
\match|s_set1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \match|s_set1~7_combout\ = (\match|s_set1~5_combout\) # ((\match|s_set1\(0) & (!\match|s_set1\(2) & !\set|Match1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \match|s_set1\(0),
	datab => \match|s_set1~5_combout\,
	datac => \match|s_set1\(2),
	datad => \set|Match1~0_combout\,
	combout => \match|s_set1~7_combout\);

-- Location: FF_X75_Y36_N15
\match|s_set1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \match|s_set1~7_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \match|s_set1\(1));

-- Location: LCCOMB_X75_Y34_N16
\match|s_set2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \match|s_set2~2_combout\ = (\set|Match1~0_combout\ & (((\set|Match2~0_combout\)))) # (!\set|Match1~0_combout\ & (\match|s_set1\(1) & (\match|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \match|s_set1\(1),
	datab => \match|process_0~2_combout\,
	datac => \set|Match2~0_combout\,
	datad => \set|Match1~0_combout\,
	combout => \match|s_set2~2_combout\);

-- Location: FF_X74_Y36_N27
\match|s_set2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \match|s_set2[0]~feeder_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	ena => \match|s_set2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \match|s_set2\(0));

-- Location: LCCOMB_X74_Y36_N6
\match|s_set2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \match|s_set2~3_combout\ = ((\match|s_set2\(0) & !\match|s_set2\(2))) # (!\set|Match1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \match|s_set2\(0),
	datac => \match|s_set2\(2),
	datad => \set|Match1~0_combout\,
	combout => \match|s_set2~3_combout\);

-- Location: FF_X74_Y36_N7
\match|s_set2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \match|s_set2~3_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	ena => \match|s_set2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \match|s_set2\(1));

-- Location: LCCOMB_X74_Y36_N4
\match|s_set2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \match|s_set2~4_combout\ = ((\match|s_set2\(0) & (\match|s_set2\(1) & !\match|s_set2\(2)))) # (!\set|Match1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \match|s_set2\(0),
	datab => \match|s_set2\(1),
	datac => \match|s_set2\(2),
	datad => \set|Match1~0_combout\,
	combout => \match|s_set2~4_combout\);

-- Location: FF_X74_Y36_N5
\match|s_set2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \match|s_set2~4_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	ena => \match|s_set2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \match|s_set2\(2));

-- Location: LCCOMB_X74_Y36_N14
\match|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \match|process_0~1_combout\ = (!\match|s_set2\(2) & (\match|s_set2\(0) & \match|s_set2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \match|s_set2\(2),
	datac => \match|s_set2\(0),
	datad => \match|s_set2\(1),
	combout => \match|process_0~1_combout\);

-- Location: LCCOMB_X76_Y34_N22
\match|s_set1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \match|s_set1~4_combout\ = ((\set|Match2~0_combout\ & \match|process_0~1_combout\)) # (!\set|Match1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set|Match2~0_combout\,
	datac => \set|Match1~0_combout\,
	datad => \match|process_0~1_combout\,
	combout => \match|s_set1~4_combout\);

-- Location: FF_X75_Y36_N13
\match|s_set1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \match|s_set1[0]~feeder_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	ena => \match|s_set1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \match|s_set1\(0));

-- Location: LCCOMB_X75_Y36_N8
\match|s_set1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \match|s_set1~6_combout\ = (\set|Match1~0_combout\) # ((\match|s_set1\(0) & (\match|s_set1\(1) & !\match|s_set1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \match|s_set1\(0),
	datab => \match|s_set1\(1),
	datac => \match|s_set1\(2),
	datad => \set|Match1~0_combout\,
	combout => \match|s_set1~6_combout\);

-- Location: FF_X75_Y36_N9
\match|s_set1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \match|s_set1~6_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	ena => \match|s_set1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \match|s_set1\(2));

-- Location: LCCOMB_X75_Y36_N18
\match|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \match|process_0~2_combout\ = (!\match|s_set1\(2) & \match|s_set1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \match|s_set1\(2),
	datad => \match|s_set1\(0),
	combout => \match|process_0~2_combout\);

-- Location: LCCOMB_X75_Y35_N16
\match|win1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \match|win1~0_combout\ = (\match|win1~q\) # ((\match|process_0~2_combout\ & (\match|s_set1\(1) & !\set|Match1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \match|process_0~2_combout\,
	datab => \match|s_set1\(1),
	datac => \set|Match1~0_combout\,
	datad => \match|win1~q\,
	combout => \match|win1~0_combout\);

-- Location: FF_X75_Y35_N29
\match|win1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \match|win1~0_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \match|win1~q\);

-- Location: LCCOMB_X75_Y34_N22
\match|win2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \match|win2~0_combout\ = (\match|win2~q\) # ((\match|process_0~1_combout\ & (\set|Match2~0_combout\ & \set|Match1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \match|process_0~1_combout\,
	datab => \set|Match2~0_combout\,
	datac => \match|win2~q\,
	datad => \set|Match1~0_combout\,
	combout => \match|win2~0_combout\);

-- Location: LCCOMB_X74_Y35_N14
\match|win2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \match|win2~feeder_combout\ = \match|win2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \match|win2~0_combout\,
	combout => \match|win2~feeder_combout\);

-- Location: FF_X74_Y35_N15
\match|win2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \match|win2~feeder_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \match|win2~q\);

-- Location: LCCOMB_X75_Y35_N4
\Hex420|decOut_0[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|decOut_0[2]~0_combout\ = (\match|win1~q\) # (\match|win2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \match|win1~q\,
	datad => \match|win2~q\,
	combout => \Hex420|decOut_0[2]~0_combout\);

-- Location: LCCOMB_X69_Y36_N8
\pgl|s_counter[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[0]~25_combout\ = \pgl|s_counter\(0) $ (VCC)
-- \pgl|s_counter[0]~26\ = CARRY(\pgl|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pgl|s_counter\(0),
	datad => VCC,
	combout => \pgl|s_counter[0]~25_combout\,
	cout => \pgl|s_counter[0]~26\);

-- Location: LCCOMB_X69_Y35_N20
\pgl|s_counter[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[22]~69_combout\ = (\pgl|s_counter\(22) & (\pgl|s_counter[21]~68\ $ (GND))) # (!\pgl|s_counter\(22) & (!\pgl|s_counter[21]~68\ & VCC))
-- \pgl|s_counter[22]~70\ = CARRY((\pgl|s_counter\(22) & !\pgl|s_counter[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pgl|s_counter\(22),
	datad => VCC,
	cin => \pgl|s_counter[21]~68\,
	combout => \pgl|s_counter[22]~69_combout\,
	cout => \pgl|s_counter[22]~70\);

-- Location: LCCOMB_X69_Y35_N22
\pgl|s_counter[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[23]~71_combout\ = (\pgl|s_counter\(23) & (!\pgl|s_counter[22]~70\)) # (!\pgl|s_counter\(23) & ((\pgl|s_counter[22]~70\) # (GND)))
-- \pgl|s_counter[23]~72\ = CARRY((!\pgl|s_counter[22]~70\) # (!\pgl|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pgl|s_counter\(23),
	datad => VCC,
	cin => \pgl|s_counter[22]~70\,
	combout => \pgl|s_counter[23]~71_combout\,
	cout => \pgl|s_counter[23]~72\);

-- Location: FF_X69_Y35_N23
\pgl|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[23]~71_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(23));

-- Location: LCCOMB_X69_Y35_N24
\pgl|s_counter[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[24]~73_combout\ = \pgl|s_counter[23]~72\ $ (!\pgl|s_counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pgl|s_counter\(24),
	cin => \pgl|s_counter[23]~72\,
	combout => \pgl|s_counter[24]~73_combout\);

-- Location: FF_X69_Y35_N25
\pgl|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[24]~73_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(24));

-- Location: LCCOMB_X68_Y36_N22
\pgl|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|LessThan0~3_combout\ = (((!\pgl|s_counter\(14)) # (!\pgl|s_counter\(12))) # (!\pgl|s_counter\(11))) # (!\pgl|s_counter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pgl|s_counter\(13),
	datab => \pgl|s_counter\(11),
	datac => \pgl|s_counter\(12),
	datad => \pgl|s_counter\(14),
	combout => \pgl|LessThan0~3_combout\);

-- Location: LCCOMB_X69_Y36_N6
\pgl|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|LessThan0~0_combout\ = (((!\pgl|s_counter\(2)) # (!\pgl|s_counter\(0))) # (!\pgl|s_counter\(5))) # (!\pgl|s_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pgl|s_counter\(1),
	datab => \pgl|s_counter\(5),
	datac => \pgl|s_counter\(0),
	datad => \pgl|s_counter\(2),
	combout => \pgl|LessThan0~0_combout\);

-- Location: LCCOMB_X69_Y36_N0
\pgl|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|LessThan1~3_combout\ = (!\pgl|s_counter\(7) & (!\pgl|s_counter\(6) & (!\pgl|s_counter\(9) & !\pgl|s_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pgl|s_counter\(7),
	datab => \pgl|s_counter\(6),
	datac => \pgl|s_counter\(9),
	datad => \pgl|s_counter\(8),
	combout => \pgl|LessThan1~3_combout\);

-- Location: LCCOMB_X69_Y36_N4
\pgl|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|LessThan0~1_combout\ = (!\pgl|s_counter\(4)) # (!\pgl|s_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pgl|s_counter\(3),
	datad => \pgl|s_counter\(4),
	combout => \pgl|LessThan0~1_combout\);

-- Location: LCCOMB_X68_Y36_N28
\pgl|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|LessThan0~2_combout\ = (!\pgl|s_counter\(10) & (\pgl|LessThan1~3_combout\ & ((\pgl|LessThan0~0_combout\) # (\pgl|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pgl|LessThan0~0_combout\,
	datab => \pgl|s_counter\(10),
	datac => \pgl|LessThan1~3_combout\,
	datad => \pgl|LessThan0~1_combout\,
	combout => \pgl|LessThan0~2_combout\);

-- Location: LCCOMB_X68_Y36_N8
\pgl|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|LessThan0~4_combout\ = (!\pgl|s_counter\(15) & (!\pgl|s_counter\(17) & ((\pgl|LessThan0~3_combout\) # (\pgl|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pgl|LessThan0~3_combout\,
	datab => \pgl|s_counter\(15),
	datac => \pgl|s_counter\(17),
	datad => \pgl|LessThan0~2_combout\,
	combout => \pgl|LessThan0~4_combout\);

-- Location: LCCOMB_X68_Y36_N20
\pgl|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|LessThan1~0_combout\ = (\pgl|s_counter\(20) & (\pgl|s_counter\(19) & (\pgl|s_counter\(21) & \pgl|s_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pgl|s_counter\(20),
	datab => \pgl|s_counter\(19),
	datac => \pgl|s_counter\(21),
	datad => \pgl|s_counter\(18),
	combout => \pgl|LessThan1~0_combout\);

-- Location: LCCOMB_X68_Y36_N10
\pgl|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|LessThan0~5_combout\ = (((!\pgl|s_counter\(16) & !\pgl|s_counter\(17))) # (!\pgl|LessThan1~0_combout\)) # (!\pgl|s_counter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pgl|s_counter\(16),
	datab => \pgl|s_counter\(22),
	datac => \pgl|s_counter\(17),
	datad => \pgl|LessThan1~0_combout\,
	combout => \pgl|LessThan0~5_combout\);

-- Location: LCCOMB_X68_Y36_N12
\pgl|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|LessThan0~6_combout\ = (\pgl|s_counter\(24) & ((\pgl|s_counter\(23)) # ((!\pgl|LessThan0~4_combout\ & !\pgl|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pgl|s_counter\(23),
	datab => \pgl|s_counter\(24),
	datac => \pgl|LessThan0~4_combout\,
	datad => \pgl|LessThan0~5_combout\,
	combout => \pgl|LessThan0~6_combout\);

-- Location: FF_X69_Y36_N9
\pgl|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[0]~25_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(0));

-- Location: LCCOMB_X69_Y36_N10
\pgl|s_counter[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[1]~27_combout\ = (\pgl|s_counter\(1) & (!\pgl|s_counter[0]~26\)) # (!\pgl|s_counter\(1) & ((\pgl|s_counter[0]~26\) # (GND)))
-- \pgl|s_counter[1]~28\ = CARRY((!\pgl|s_counter[0]~26\) # (!\pgl|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pgl|s_counter\(1),
	datad => VCC,
	cin => \pgl|s_counter[0]~26\,
	combout => \pgl|s_counter[1]~27_combout\,
	cout => \pgl|s_counter[1]~28\);

-- Location: FF_X69_Y36_N11
\pgl|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[1]~27_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(1));

-- Location: LCCOMB_X69_Y36_N12
\pgl|s_counter[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[2]~29_combout\ = (\pgl|s_counter\(2) & (\pgl|s_counter[1]~28\ $ (GND))) # (!\pgl|s_counter\(2) & (!\pgl|s_counter[1]~28\ & VCC))
-- \pgl|s_counter[2]~30\ = CARRY((\pgl|s_counter\(2) & !\pgl|s_counter[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pgl|s_counter\(2),
	datad => VCC,
	cin => \pgl|s_counter[1]~28\,
	combout => \pgl|s_counter[2]~29_combout\,
	cout => \pgl|s_counter[2]~30\);

-- Location: FF_X69_Y36_N13
\pgl|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[2]~29_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(2));

-- Location: LCCOMB_X69_Y36_N14
\pgl|s_counter[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[3]~31_combout\ = (\pgl|s_counter\(3) & (!\pgl|s_counter[2]~30\)) # (!\pgl|s_counter\(3) & ((\pgl|s_counter[2]~30\) # (GND)))
-- \pgl|s_counter[3]~32\ = CARRY((!\pgl|s_counter[2]~30\) # (!\pgl|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pgl|s_counter\(3),
	datad => VCC,
	cin => \pgl|s_counter[2]~30\,
	combout => \pgl|s_counter[3]~31_combout\,
	cout => \pgl|s_counter[3]~32\);

-- Location: FF_X69_Y36_N15
\pgl|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[3]~31_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(3));

-- Location: LCCOMB_X69_Y36_N16
\pgl|s_counter[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[4]~33_combout\ = (\pgl|s_counter\(4) & (\pgl|s_counter[3]~32\ $ (GND))) # (!\pgl|s_counter\(4) & (!\pgl|s_counter[3]~32\ & VCC))
-- \pgl|s_counter[4]~34\ = CARRY((\pgl|s_counter\(4) & !\pgl|s_counter[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pgl|s_counter\(4),
	datad => VCC,
	cin => \pgl|s_counter[3]~32\,
	combout => \pgl|s_counter[4]~33_combout\,
	cout => \pgl|s_counter[4]~34\);

-- Location: FF_X69_Y36_N17
\pgl|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[4]~33_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(4));

-- Location: LCCOMB_X69_Y36_N18
\pgl|s_counter[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[5]~35_combout\ = (\pgl|s_counter\(5) & (!\pgl|s_counter[4]~34\)) # (!\pgl|s_counter\(5) & ((\pgl|s_counter[4]~34\) # (GND)))
-- \pgl|s_counter[5]~36\ = CARRY((!\pgl|s_counter[4]~34\) # (!\pgl|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pgl|s_counter\(5),
	datad => VCC,
	cin => \pgl|s_counter[4]~34\,
	combout => \pgl|s_counter[5]~35_combout\,
	cout => \pgl|s_counter[5]~36\);

-- Location: FF_X69_Y36_N19
\pgl|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[5]~35_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(5));

-- Location: LCCOMB_X69_Y36_N20
\pgl|s_counter[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[6]~37_combout\ = (\pgl|s_counter\(6) & (\pgl|s_counter[5]~36\ $ (GND))) # (!\pgl|s_counter\(6) & (!\pgl|s_counter[5]~36\ & VCC))
-- \pgl|s_counter[6]~38\ = CARRY((\pgl|s_counter\(6) & !\pgl|s_counter[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pgl|s_counter\(6),
	datad => VCC,
	cin => \pgl|s_counter[5]~36\,
	combout => \pgl|s_counter[6]~37_combout\,
	cout => \pgl|s_counter[6]~38\);

-- Location: FF_X69_Y36_N21
\pgl|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[6]~37_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(6));

-- Location: LCCOMB_X69_Y36_N22
\pgl|s_counter[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[7]~39_combout\ = (\pgl|s_counter\(7) & (!\pgl|s_counter[6]~38\)) # (!\pgl|s_counter\(7) & ((\pgl|s_counter[6]~38\) # (GND)))
-- \pgl|s_counter[7]~40\ = CARRY((!\pgl|s_counter[6]~38\) # (!\pgl|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pgl|s_counter\(7),
	datad => VCC,
	cin => \pgl|s_counter[6]~38\,
	combout => \pgl|s_counter[7]~39_combout\,
	cout => \pgl|s_counter[7]~40\);

-- Location: FF_X69_Y36_N23
\pgl|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[7]~39_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(7));

-- Location: LCCOMB_X69_Y36_N24
\pgl|s_counter[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[8]~41_combout\ = (\pgl|s_counter\(8) & (\pgl|s_counter[7]~40\ $ (GND))) # (!\pgl|s_counter\(8) & (!\pgl|s_counter[7]~40\ & VCC))
-- \pgl|s_counter[8]~42\ = CARRY((\pgl|s_counter\(8) & !\pgl|s_counter[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pgl|s_counter\(8),
	datad => VCC,
	cin => \pgl|s_counter[7]~40\,
	combout => \pgl|s_counter[8]~41_combout\,
	cout => \pgl|s_counter[8]~42\);

-- Location: FF_X69_Y36_N25
\pgl|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[8]~41_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(8));

-- Location: LCCOMB_X69_Y36_N26
\pgl|s_counter[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[9]~43_combout\ = (\pgl|s_counter\(9) & (!\pgl|s_counter[8]~42\)) # (!\pgl|s_counter\(9) & ((\pgl|s_counter[8]~42\) # (GND)))
-- \pgl|s_counter[9]~44\ = CARRY((!\pgl|s_counter[8]~42\) # (!\pgl|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pgl|s_counter\(9),
	datad => VCC,
	cin => \pgl|s_counter[8]~42\,
	combout => \pgl|s_counter[9]~43_combout\,
	cout => \pgl|s_counter[9]~44\);

-- Location: FF_X69_Y36_N27
\pgl|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[9]~43_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(9));

-- Location: LCCOMB_X69_Y36_N28
\pgl|s_counter[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[10]~45_combout\ = (\pgl|s_counter\(10) & (\pgl|s_counter[9]~44\ $ (GND))) # (!\pgl|s_counter\(10) & (!\pgl|s_counter[9]~44\ & VCC))
-- \pgl|s_counter[10]~46\ = CARRY((\pgl|s_counter\(10) & !\pgl|s_counter[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pgl|s_counter\(10),
	datad => VCC,
	cin => \pgl|s_counter[9]~44\,
	combout => \pgl|s_counter[10]~45_combout\,
	cout => \pgl|s_counter[10]~46\);

-- Location: FF_X69_Y36_N29
\pgl|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[10]~45_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(10));

-- Location: LCCOMB_X69_Y36_N30
\pgl|s_counter[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[11]~47_combout\ = (\pgl|s_counter\(11) & (!\pgl|s_counter[10]~46\)) # (!\pgl|s_counter\(11) & ((\pgl|s_counter[10]~46\) # (GND)))
-- \pgl|s_counter[11]~48\ = CARRY((!\pgl|s_counter[10]~46\) # (!\pgl|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pgl|s_counter\(11),
	datad => VCC,
	cin => \pgl|s_counter[10]~46\,
	combout => \pgl|s_counter[11]~47_combout\,
	cout => \pgl|s_counter[11]~48\);

-- Location: FF_X69_Y36_N31
\pgl|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[11]~47_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(11));

-- Location: LCCOMB_X69_Y35_N0
\pgl|s_counter[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[12]~49_combout\ = (\pgl|s_counter\(12) & (\pgl|s_counter[11]~48\ $ (GND))) # (!\pgl|s_counter\(12) & (!\pgl|s_counter[11]~48\ & VCC))
-- \pgl|s_counter[12]~50\ = CARRY((\pgl|s_counter\(12) & !\pgl|s_counter[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pgl|s_counter\(12),
	datad => VCC,
	cin => \pgl|s_counter[11]~48\,
	combout => \pgl|s_counter[12]~49_combout\,
	cout => \pgl|s_counter[12]~50\);

-- Location: FF_X69_Y35_N1
\pgl|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[12]~49_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(12));

-- Location: LCCOMB_X69_Y35_N2
\pgl|s_counter[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[13]~51_combout\ = (\pgl|s_counter\(13) & (!\pgl|s_counter[12]~50\)) # (!\pgl|s_counter\(13) & ((\pgl|s_counter[12]~50\) # (GND)))
-- \pgl|s_counter[13]~52\ = CARRY((!\pgl|s_counter[12]~50\) # (!\pgl|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pgl|s_counter\(13),
	datad => VCC,
	cin => \pgl|s_counter[12]~50\,
	combout => \pgl|s_counter[13]~51_combout\,
	cout => \pgl|s_counter[13]~52\);

-- Location: FF_X69_Y35_N3
\pgl|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[13]~51_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(13));

-- Location: LCCOMB_X69_Y35_N4
\pgl|s_counter[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[14]~53_combout\ = (\pgl|s_counter\(14) & (\pgl|s_counter[13]~52\ $ (GND))) # (!\pgl|s_counter\(14) & (!\pgl|s_counter[13]~52\ & VCC))
-- \pgl|s_counter[14]~54\ = CARRY((\pgl|s_counter\(14) & !\pgl|s_counter[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pgl|s_counter\(14),
	datad => VCC,
	cin => \pgl|s_counter[13]~52\,
	combout => \pgl|s_counter[14]~53_combout\,
	cout => \pgl|s_counter[14]~54\);

-- Location: FF_X69_Y35_N5
\pgl|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[14]~53_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(14));

-- Location: LCCOMB_X69_Y35_N6
\pgl|s_counter[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[15]~55_combout\ = (\pgl|s_counter\(15) & (!\pgl|s_counter[14]~54\)) # (!\pgl|s_counter\(15) & ((\pgl|s_counter[14]~54\) # (GND)))
-- \pgl|s_counter[15]~56\ = CARRY((!\pgl|s_counter[14]~54\) # (!\pgl|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pgl|s_counter\(15),
	datad => VCC,
	cin => \pgl|s_counter[14]~54\,
	combout => \pgl|s_counter[15]~55_combout\,
	cout => \pgl|s_counter[15]~56\);

-- Location: FF_X69_Y35_N7
\pgl|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[15]~55_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(15));

-- Location: LCCOMB_X69_Y35_N8
\pgl|s_counter[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[16]~57_combout\ = (\pgl|s_counter\(16) & (\pgl|s_counter[15]~56\ $ (GND))) # (!\pgl|s_counter\(16) & (!\pgl|s_counter[15]~56\ & VCC))
-- \pgl|s_counter[16]~58\ = CARRY((\pgl|s_counter\(16) & !\pgl|s_counter[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pgl|s_counter\(16),
	datad => VCC,
	cin => \pgl|s_counter[15]~56\,
	combout => \pgl|s_counter[16]~57_combout\,
	cout => \pgl|s_counter[16]~58\);

-- Location: FF_X69_Y35_N9
\pgl|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[16]~57_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(16));

-- Location: LCCOMB_X69_Y35_N10
\pgl|s_counter[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[17]~59_combout\ = (\pgl|s_counter\(17) & (!\pgl|s_counter[16]~58\)) # (!\pgl|s_counter\(17) & ((\pgl|s_counter[16]~58\) # (GND)))
-- \pgl|s_counter[17]~60\ = CARRY((!\pgl|s_counter[16]~58\) # (!\pgl|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pgl|s_counter\(17),
	datad => VCC,
	cin => \pgl|s_counter[16]~58\,
	combout => \pgl|s_counter[17]~59_combout\,
	cout => \pgl|s_counter[17]~60\);

-- Location: FF_X69_Y35_N11
\pgl|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[17]~59_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(17));

-- Location: LCCOMB_X69_Y35_N12
\pgl|s_counter[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[18]~61_combout\ = (\pgl|s_counter\(18) & (\pgl|s_counter[17]~60\ $ (GND))) # (!\pgl|s_counter\(18) & (!\pgl|s_counter[17]~60\ & VCC))
-- \pgl|s_counter[18]~62\ = CARRY((\pgl|s_counter\(18) & !\pgl|s_counter[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pgl|s_counter\(18),
	datad => VCC,
	cin => \pgl|s_counter[17]~60\,
	combout => \pgl|s_counter[18]~61_combout\,
	cout => \pgl|s_counter[18]~62\);

-- Location: FF_X69_Y35_N13
\pgl|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[18]~61_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(18));

-- Location: LCCOMB_X69_Y35_N14
\pgl|s_counter[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[19]~63_combout\ = (\pgl|s_counter\(19) & (!\pgl|s_counter[18]~62\)) # (!\pgl|s_counter\(19) & ((\pgl|s_counter[18]~62\) # (GND)))
-- \pgl|s_counter[19]~64\ = CARRY((!\pgl|s_counter[18]~62\) # (!\pgl|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pgl|s_counter\(19),
	datad => VCC,
	cin => \pgl|s_counter[18]~62\,
	combout => \pgl|s_counter[19]~63_combout\,
	cout => \pgl|s_counter[19]~64\);

-- Location: FF_X69_Y35_N15
\pgl|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[19]~63_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(19));

-- Location: LCCOMB_X69_Y35_N16
\pgl|s_counter[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[20]~65_combout\ = (\pgl|s_counter\(20) & (\pgl|s_counter[19]~64\ $ (GND))) # (!\pgl|s_counter\(20) & (!\pgl|s_counter[19]~64\ & VCC))
-- \pgl|s_counter[20]~66\ = CARRY((\pgl|s_counter\(20) & !\pgl|s_counter[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pgl|s_counter\(20),
	datad => VCC,
	cin => \pgl|s_counter[19]~64\,
	combout => \pgl|s_counter[20]~65_combout\,
	cout => \pgl|s_counter[20]~66\);

-- Location: FF_X69_Y35_N17
\pgl|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[20]~65_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(20));

-- Location: LCCOMB_X69_Y35_N18
\pgl|s_counter[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|s_counter[21]~67_combout\ = (\pgl|s_counter\(21) & (!\pgl|s_counter[20]~66\)) # (!\pgl|s_counter\(21) & ((\pgl|s_counter[20]~66\) # (GND)))
-- \pgl|s_counter[21]~68\ = CARRY((!\pgl|s_counter[20]~66\) # (!\pgl|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pgl|s_counter\(21),
	datad => VCC,
	cin => \pgl|s_counter[20]~66\,
	combout => \pgl|s_counter[21]~67_combout\,
	cout => \pgl|s_counter[21]~68\);

-- Location: FF_X69_Y35_N19
\pgl|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[21]~67_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(21));

-- Location: FF_X69_Y35_N21
\pgl|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|s_counter[22]~69_combout\,
	sclr => \pgl|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|s_counter\(22));

-- Location: LCCOMB_X69_Y35_N30
\pgl|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|LessThan1~2_combout\ = (((!\pgl|s_counter\(13)) # (!\pgl|s_counter\(11))) # (!\pgl|s_counter\(12))) # (!\pgl|s_counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pgl|s_counter\(10),
	datab => \pgl|s_counter\(12),
	datac => \pgl|s_counter\(11),
	datad => \pgl|s_counter\(13),
	combout => \pgl|LessThan1~2_combout\);

-- Location: LCCOMB_X69_Y35_N28
\pgl|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|LessThan1~4_combout\ = (\pgl|LessThan1~2_combout\) # ((!\pgl|s_counter\(5) & \pgl|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pgl|s_counter\(5),
	datac => \pgl|LessThan1~2_combout\,
	datad => \pgl|LessThan1~3_combout\,
	combout => \pgl|LessThan1~4_combout\);

-- Location: LCCOMB_X68_Y36_N30
\pgl|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|LessThan1~1_combout\ = (((!\pgl|s_counter\(16) & !\pgl|s_counter\(15))) # (!\pgl|LessThan1~0_combout\)) # (!\pgl|s_counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pgl|s_counter\(16),
	datab => \pgl|s_counter\(15),
	datac => \pgl|s_counter\(17),
	datad => \pgl|LessThan1~0_combout\,
	combout => \pgl|LessThan1~1_combout\);

-- Location: LCCOMB_X69_Y35_N26
\pgl|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|LessThan1~5_combout\ = (\pgl|LessThan1~1_combout\) # ((!\pgl|s_counter\(16) & (\pgl|LessThan1~4_combout\ & !\pgl|s_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pgl|s_counter\(16),
	datab => \pgl|LessThan1~4_combout\,
	datac => \pgl|s_counter\(14),
	datad => \pgl|LessThan1~1_combout\,
	combout => \pgl|LessThan1~5_combout\);

-- Location: LCCOMB_X75_Y35_N0
\pgl|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pgl|LessThan1~6_combout\ = (\pgl|s_counter\(24)) # ((\pgl|s_counter\(23) & ((\pgl|s_counter\(22)) # (!\pgl|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pgl|s_counter\(22),
	datab => \pgl|s_counter\(24),
	datac => \pgl|s_counter\(23),
	datad => \pgl|LessThan1~5_combout\,
	combout => \pgl|LessThan1~6_combout\);

-- Location: FF_X75_Y35_N1
\pgl|blink\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pgl|LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pgl|blink~q\);

-- Location: LCCOMB_X75_Y35_N30
\bu1|output[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bu1|output[3]~0_combout\ = (\Hex420|decOut_0[2]~0_combout\ & !\pgl|blink~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hex420|decOut_0[2]~0_combout\,
	datad => \pgl|blink~q\,
	combout => \bu1|output[3]~0_combout\);

-- Location: LCCOMB_X60_Y2_N6
\puls|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~0_combout\ = \puls|s_cnt\(0) $ (VCC)
-- \puls|Add0~1\ = CARRY(\puls|s_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puls|s_cnt\(0),
	datad => VCC,
	combout => \puls|Add0~0_combout\,
	cout => \puls|Add0~1\);

-- Location: FF_X60_Y2_N7
\puls|s_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(0));

-- Location: LCCOMB_X60_Y2_N8
\puls|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~2_combout\ = (\puls|s_cnt\(1) & (!\puls|Add0~1\)) # (!\puls|s_cnt\(1) & ((\puls|Add0~1\) # (GND)))
-- \puls|Add0~3\ = CARRY((!\puls|Add0~1\) # (!\puls|s_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \puls|s_cnt\(1),
	datad => VCC,
	cin => \puls|Add0~1\,
	combout => \puls|Add0~2_combout\,
	cout => \puls|Add0~3\);

-- Location: FF_X60_Y2_N9
\puls|s_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(1));

-- Location: LCCOMB_X60_Y2_N10
\puls|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~4_combout\ = (\puls|s_cnt\(2) & (\puls|Add0~3\ $ (GND))) # (!\puls|s_cnt\(2) & (!\puls|Add0~3\ & VCC))
-- \puls|Add0~5\ = CARRY((\puls|s_cnt\(2) & !\puls|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \puls|s_cnt\(2),
	datad => VCC,
	cin => \puls|Add0~3\,
	combout => \puls|Add0~4_combout\,
	cout => \puls|Add0~5\);

-- Location: FF_X60_Y2_N11
\puls|s_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(2));

-- Location: LCCOMB_X60_Y2_N12
\puls|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~6_combout\ = (\puls|s_cnt\(3) & (!\puls|Add0~5\)) # (!\puls|s_cnt\(3) & ((\puls|Add0~5\) # (GND)))
-- \puls|Add0~7\ = CARRY((!\puls|Add0~5\) # (!\puls|s_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \puls|s_cnt\(3),
	datad => VCC,
	cin => \puls|Add0~5\,
	combout => \puls|Add0~6_combout\,
	cout => \puls|Add0~7\);

-- Location: FF_X60_Y2_N13
\puls|s_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(3));

-- Location: LCCOMB_X60_Y2_N14
\puls|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~8_combout\ = (\puls|s_cnt\(4) & (\puls|Add0~7\ $ (GND))) # (!\puls|s_cnt\(4) & (!\puls|Add0~7\ & VCC))
-- \puls|Add0~9\ = CARRY((\puls|s_cnt\(4) & !\puls|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \puls|s_cnt\(4),
	datad => VCC,
	cin => \puls|Add0~7\,
	combout => \puls|Add0~8_combout\,
	cout => \puls|Add0~9\);

-- Location: FF_X60_Y2_N15
\puls|s_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(4));

-- Location: LCCOMB_X60_Y2_N16
\puls|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~10_combout\ = (\puls|s_cnt\(5) & (!\puls|Add0~9\)) # (!\puls|s_cnt\(5) & ((\puls|Add0~9\) # (GND)))
-- \puls|Add0~11\ = CARRY((!\puls|Add0~9\) # (!\puls|s_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \puls|s_cnt\(5),
	datad => VCC,
	cin => \puls|Add0~9\,
	combout => \puls|Add0~10_combout\,
	cout => \puls|Add0~11\);

-- Location: FF_X60_Y2_N17
\puls|s_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(5));

-- Location: LCCOMB_X60_Y2_N18
\puls|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~12_combout\ = (\puls|s_cnt\(6) & (\puls|Add0~11\ $ (GND))) # (!\puls|s_cnt\(6) & (!\puls|Add0~11\ & VCC))
-- \puls|Add0~13\ = CARRY((\puls|s_cnt\(6) & !\puls|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \puls|s_cnt\(6),
	datad => VCC,
	cin => \puls|Add0~11\,
	combout => \puls|Add0~12_combout\,
	cout => \puls|Add0~13\);

-- Location: FF_X60_Y2_N19
\puls|s_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(6));

-- Location: LCCOMB_X60_Y2_N20
\puls|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~14_combout\ = (\puls|s_cnt\(7) & (!\puls|Add0~13\)) # (!\puls|s_cnt\(7) & ((\puls|Add0~13\) # (GND)))
-- \puls|Add0~15\ = CARRY((!\puls|Add0~13\) # (!\puls|s_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \puls|s_cnt\(7),
	datad => VCC,
	cin => \puls|Add0~13\,
	combout => \puls|Add0~14_combout\,
	cout => \puls|Add0~15\);

-- Location: LCCOMB_X60_Y2_N2
\puls|s_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|s_cnt~5_combout\ = (\puls|Add0~14_combout\ & !\puls|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \puls|Add0~14_combout\,
	datad => \puls|Equal0~8_combout\,
	combout => \puls|s_cnt~5_combout\);

-- Location: FF_X60_Y2_N3
\puls|s_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|s_cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(7));

-- Location: LCCOMB_X60_Y2_N22
\puls|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~16_combout\ = (\puls|s_cnt\(8) & (\puls|Add0~15\ $ (GND))) # (!\puls|s_cnt\(8) & (!\puls|Add0~15\ & VCC))
-- \puls|Add0~17\ = CARRY((\puls|s_cnt\(8) & !\puls|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \puls|s_cnt\(8),
	datad => VCC,
	cin => \puls|Add0~15\,
	combout => \puls|Add0~16_combout\,
	cout => \puls|Add0~17\);

-- Location: FF_X60_Y2_N23
\puls|s_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(8));

-- Location: LCCOMB_X60_Y2_N24
\puls|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~18_combout\ = (\puls|s_cnt\(9) & (!\puls|Add0~17\)) # (!\puls|s_cnt\(9) & ((\puls|Add0~17\) # (GND)))
-- \puls|Add0~19\ = CARRY((!\puls|Add0~17\) # (!\puls|s_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \puls|s_cnt\(9),
	datad => VCC,
	cin => \puls|Add0~17\,
	combout => \puls|Add0~18_combout\,
	cout => \puls|Add0~19\);

-- Location: FF_X60_Y2_N25
\puls|s_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(9));

-- Location: LCCOMB_X60_Y2_N26
\puls|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~20_combout\ = (\puls|s_cnt\(10) & (\puls|Add0~19\ $ (GND))) # (!\puls|s_cnt\(10) & (!\puls|Add0~19\ & VCC))
-- \puls|Add0~21\ = CARRY((\puls|s_cnt\(10) & !\puls|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \puls|s_cnt\(10),
	datad => VCC,
	cin => \puls|Add0~19\,
	combout => \puls|Add0~20_combout\,
	cout => \puls|Add0~21\);

-- Location: FF_X60_Y2_N27
\puls|s_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(10));

-- Location: LCCOMB_X60_Y2_N28
\puls|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~22_combout\ = (\puls|s_cnt\(11) & (!\puls|Add0~21\)) # (!\puls|s_cnt\(11) & ((\puls|Add0~21\) # (GND)))
-- \puls|Add0~23\ = CARRY((!\puls|Add0~21\) # (!\puls|s_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \puls|s_cnt\(11),
	datad => VCC,
	cin => \puls|Add0~21\,
	combout => \puls|Add0~22_combout\,
	cout => \puls|Add0~23\);

-- Location: FF_X60_Y2_N29
\puls|s_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(11));

-- Location: LCCOMB_X60_Y2_N30
\puls|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~24_combout\ = (\puls|s_cnt\(12) & (\puls|Add0~23\ $ (GND))) # (!\puls|s_cnt\(12) & (!\puls|Add0~23\ & VCC))
-- \puls|Add0~25\ = CARRY((\puls|s_cnt\(12) & !\puls|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \puls|s_cnt\(12),
	datad => VCC,
	cin => \puls|Add0~23\,
	combout => \puls|Add0~24_combout\,
	cout => \puls|Add0~25\);

-- Location: LCCOMB_X60_Y2_N0
\puls|s_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|s_cnt~4_combout\ = (\puls|Add0~24_combout\ & !\puls|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \puls|Add0~24_combout\,
	datad => \puls|Equal0~8_combout\,
	combout => \puls|s_cnt~4_combout\);

-- Location: FF_X60_Y2_N1
\puls|s_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|s_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(12));

-- Location: LCCOMB_X60_Y1_N0
\puls|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~26_combout\ = (\puls|s_cnt\(13) & (!\puls|Add0~25\)) # (!\puls|s_cnt\(13) & ((\puls|Add0~25\) # (GND)))
-- \puls|Add0~27\ = CARRY((!\puls|Add0~25\) # (!\puls|s_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \puls|s_cnt\(13),
	datad => VCC,
	cin => \puls|Add0~25\,
	combout => \puls|Add0~26_combout\,
	cout => \puls|Add0~27\);

-- Location: LCCOMB_X59_Y1_N16
\puls|s_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|s_cnt~3_combout\ = (\puls|Add0~26_combout\ & !\puls|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \puls|Add0~26_combout\,
	datad => \puls|Equal0~8_combout\,
	combout => \puls|s_cnt~3_combout\);

-- Location: FF_X59_Y1_N17
\puls|s_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|s_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(13));

-- Location: LCCOMB_X60_Y1_N2
\puls|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~28_combout\ = (\puls|s_cnt\(14) & (\puls|Add0~27\ $ (GND))) # (!\puls|s_cnt\(14) & (!\puls|Add0~27\ & VCC))
-- \puls|Add0~29\ = CARRY((\puls|s_cnt\(14) & !\puls|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \puls|s_cnt\(14),
	datad => VCC,
	cin => \puls|Add0~27\,
	combout => \puls|Add0~28_combout\,
	cout => \puls|Add0~29\);

-- Location: LCCOMB_X59_Y1_N26
\puls|s_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|s_cnt~2_combout\ = (!\puls|Equal0~8_combout\ & \puls|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \puls|Equal0~8_combout\,
	datad => \puls|Add0~28_combout\,
	combout => \puls|s_cnt~2_combout\);

-- Location: FF_X59_Y1_N27
\puls|s_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|s_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(14));

-- Location: LCCOMB_X60_Y1_N4
\puls|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~30_combout\ = (\puls|s_cnt\(15) & (!\puls|Add0~29\)) # (!\puls|s_cnt\(15) & ((\puls|Add0~29\) # (GND)))
-- \puls|Add0~31\ = CARRY((!\puls|Add0~29\) # (!\puls|s_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \puls|s_cnt\(15),
	datad => VCC,
	cin => \puls|Add0~29\,
	combout => \puls|Add0~30_combout\,
	cout => \puls|Add0~31\);

-- Location: LCCOMB_X59_Y1_N12
\puls|s_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|s_cnt~1_combout\ = (!\puls|Equal0~8_combout\ & \puls|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \puls|Equal0~8_combout\,
	datad => \puls|Add0~30_combout\,
	combout => \puls|s_cnt~1_combout\);

-- Location: FF_X59_Y1_N13
\puls|s_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|s_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(15));

-- Location: LCCOMB_X60_Y1_N6
\puls|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~32_combout\ = (\puls|s_cnt\(16) & (\puls|Add0~31\ $ (GND))) # (!\puls|s_cnt\(16) & (!\puls|Add0~31\ & VCC))
-- \puls|Add0~33\ = CARRY((\puls|s_cnt\(16) & !\puls|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \puls|s_cnt\(16),
	datad => VCC,
	cin => \puls|Add0~31\,
	combout => \puls|Add0~32_combout\,
	cout => \puls|Add0~33\);

-- Location: FF_X60_Y1_N7
\puls|s_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(16));

-- Location: LCCOMB_X60_Y1_N8
\puls|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~34_combout\ = (\puls|s_cnt\(17) & (!\puls|Add0~33\)) # (!\puls|s_cnt\(17) & ((\puls|Add0~33\) # (GND)))
-- \puls|Add0~35\ = CARRY((!\puls|Add0~33\) # (!\puls|s_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \puls|s_cnt\(17),
	datad => VCC,
	cin => \puls|Add0~33\,
	combout => \puls|Add0~34_combout\,
	cout => \puls|Add0~35\);

-- Location: LCCOMB_X60_Y1_N26
\puls|s_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|s_cnt~0_combout\ = (\puls|Add0~34_combout\ & !\puls|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \puls|Add0~34_combout\,
	datad => \puls|Equal0~8_combout\,
	combout => \puls|s_cnt~0_combout\);

-- Location: FF_X60_Y1_N27
\puls|s_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|s_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(17));

-- Location: LCCOMB_X60_Y1_N10
\puls|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~36_combout\ = (\puls|s_cnt\(18) & (\puls|Add0~35\ $ (GND))) # (!\puls|s_cnt\(18) & (!\puls|Add0~35\ & VCC))
-- \puls|Add0~37\ = CARRY((\puls|s_cnt\(18) & !\puls|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \puls|s_cnt\(18),
	datad => VCC,
	cin => \puls|Add0~35\,
	combout => \puls|Add0~36_combout\,
	cout => \puls|Add0~37\);

-- Location: FF_X60_Y1_N11
\puls|s_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(18));

-- Location: LCCOMB_X60_Y1_N12
\puls|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~38_combout\ = (\puls|s_cnt\(19) & (!\puls|Add0~37\)) # (!\puls|s_cnt\(19) & ((\puls|Add0~37\) # (GND)))
-- \puls|Add0~39\ = CARRY((!\puls|Add0~37\) # (!\puls|s_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \puls|s_cnt\(19),
	datad => VCC,
	cin => \puls|Add0~37\,
	combout => \puls|Add0~38_combout\,
	cout => \puls|Add0~39\);

-- Location: LCCOMB_X59_Y1_N0
\puls|s_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|s_cnt~6_combout\ = (\puls|Add0~38_combout\ & !\puls|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \puls|Add0~38_combout\,
	datad => \puls|Equal0~8_combout\,
	combout => \puls|s_cnt~6_combout\);

-- Location: FF_X59_Y1_N1
\puls|s_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|s_cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(19));

-- Location: LCCOMB_X59_Y1_N10
\puls|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Equal0~5_combout\ = (\puls|s_cnt\(1) & (\puls|s_cnt\(0) & (!\puls|s_cnt\(18) & \puls|s_cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puls|s_cnt\(1),
	datab => \puls|s_cnt\(0),
	datac => \puls|s_cnt\(18),
	datad => \puls|s_cnt\(19),
	combout => \puls|Equal0~5_combout\);

-- Location: LCCOMB_X60_Y1_N14
\puls|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~40_combout\ = (\puls|s_cnt\(20) & (\puls|Add0~39\ $ (GND))) # (!\puls|s_cnt\(20) & (!\puls|Add0~39\ & VCC))
-- \puls|Add0~41\ = CARRY((\puls|s_cnt\(20) & !\puls|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \puls|s_cnt\(20),
	datad => VCC,
	cin => \puls|Add0~39\,
	combout => \puls|Add0~40_combout\,
	cout => \puls|Add0~41\);

-- Location: LCCOMB_X60_Y1_N28
\puls|s_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|s_cnt~7_combout\ = (\puls|Add0~40_combout\ & !\puls|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \puls|Add0~40_combout\,
	datad => \puls|Equal0~8_combout\,
	combout => \puls|s_cnt~7_combout\);

-- Location: FF_X60_Y1_N29
\puls|s_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|s_cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(20));

-- Location: LCCOMB_X60_Y1_N16
\puls|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~42_combout\ = (\puls|s_cnt\(21) & (!\puls|Add0~41\)) # (!\puls|s_cnt\(21) & ((\puls|Add0~41\) # (GND)))
-- \puls|Add0~43\ = CARRY((!\puls|Add0~41\) # (!\puls|s_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \puls|s_cnt\(21),
	datad => VCC,
	cin => \puls|Add0~41\,
	combout => \puls|Add0~42_combout\,
	cout => \puls|Add0~43\);

-- Location: LCCOMB_X59_Y1_N14
\puls|s_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|s_cnt~8_combout\ = (!\puls|Equal0~8_combout\ & \puls|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \puls|Equal0~8_combout\,
	datad => \puls|Add0~42_combout\,
	combout => \puls|s_cnt~8_combout\);

-- Location: FF_X59_Y1_N15
\puls|s_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|s_cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(21));

-- Location: LCCOMB_X60_Y1_N18
\puls|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~44_combout\ = (\puls|s_cnt\(22) & (\puls|Add0~43\ $ (GND))) # (!\puls|s_cnt\(22) & (!\puls|Add0~43\ & VCC))
-- \puls|Add0~45\ = CARRY((\puls|s_cnt\(22) & !\puls|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \puls|s_cnt\(22),
	datad => VCC,
	cin => \puls|Add0~43\,
	combout => \puls|Add0~44_combout\,
	cout => \puls|Add0~45\);

-- Location: LCCOMB_X60_Y1_N30
\puls|s_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|s_cnt~9_combout\ = (!\puls|Equal0~8_combout\ & \puls|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \puls|Equal0~8_combout\,
	datad => \puls|Add0~44_combout\,
	combout => \puls|s_cnt~9_combout\);

-- Location: FF_X60_Y1_N31
\puls|s_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|s_cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(22));

-- Location: LCCOMB_X60_Y1_N20
\puls|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~46_combout\ = (\puls|s_cnt\(23) & (!\puls|Add0~45\)) # (!\puls|s_cnt\(23) & ((\puls|Add0~45\) # (GND)))
-- \puls|Add0~47\ = CARRY((!\puls|Add0~45\) # (!\puls|s_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \puls|s_cnt\(23),
	datad => VCC,
	cin => \puls|Add0~45\,
	combout => \puls|Add0~46_combout\,
	cout => \puls|Add0~47\);

-- Location: LCCOMB_X59_Y1_N6
\puls|s_cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|s_cnt~10_combout\ = (\puls|Add0~46_combout\ & !\puls|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \puls|Add0~46_combout\,
	datad => \puls|Equal0~8_combout\,
	combout => \puls|s_cnt~10_combout\);

-- Location: FF_X59_Y1_N7
\puls|s_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|s_cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(23));

-- Location: LCCOMB_X59_Y1_N20
\puls|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Equal0~6_combout\ = (\puls|s_cnt\(23) & (\puls|s_cnt\(21) & (\puls|s_cnt\(22) & \puls|s_cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puls|s_cnt\(23),
	datab => \puls|s_cnt\(21),
	datac => \puls|s_cnt\(22),
	datad => \puls|s_cnt\(20),
	combout => \puls|Equal0~6_combout\);

-- Location: LCCOMB_X60_Y1_N22
\puls|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~48_combout\ = (\puls|s_cnt\(24) & (\puls|Add0~47\ $ (GND))) # (!\puls|s_cnt\(24) & (!\puls|Add0~47\ & VCC))
-- \puls|Add0~49\ = CARRY((\puls|s_cnt\(24) & !\puls|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \puls|s_cnt\(24),
	datad => VCC,
	cin => \puls|Add0~47\,
	combout => \puls|Add0~48_combout\,
	cout => \puls|Add0~49\);

-- Location: FF_X60_Y1_N23
\puls|s_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(24));

-- Location: LCCOMB_X60_Y1_N24
\puls|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Add0~50_combout\ = \puls|Add0~49\ $ (\puls|s_cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \puls|s_cnt\(25),
	cin => \puls|Add0~49\,
	combout => \puls|Add0~50_combout\);

-- Location: LCCOMB_X59_Y1_N8
\puls|s_cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|s_cnt~11_combout\ = (!\puls|Equal0~8_combout\ & \puls|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \puls|Equal0~8_combout\,
	datad => \puls|Add0~50_combout\,
	combout => \puls|s_cnt~11_combout\);

-- Location: FF_X59_Y1_N9
\puls|s_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|s_cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|s_cnt\(25));

-- Location: LCCOMB_X59_Y1_N4
\puls|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Equal0~7_combout\ = (\puls|s_cnt\(25) & !\puls|s_cnt\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \puls|s_cnt\(25),
	datad => \puls|s_cnt\(24),
	combout => \puls|Equal0~7_combout\);

-- Location: LCCOMB_X59_Y1_N22
\puls|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Equal0~1_combout\ = (\puls|s_cnt\(12) & (\puls|s_cnt\(13) & (!\puls|s_cnt\(10) & !\puls|s_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puls|s_cnt\(12),
	datab => \puls|s_cnt\(13),
	datac => \puls|s_cnt\(10),
	datad => \puls|s_cnt\(11),
	combout => \puls|Equal0~1_combout\);

-- Location: LCCOMB_X59_Y1_N18
\puls|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Equal0~0_combout\ = (\puls|s_cnt\(14) & (\puls|s_cnt\(15) & (\puls|s_cnt\(17) & !\puls|s_cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puls|s_cnt\(14),
	datab => \puls|s_cnt\(15),
	datac => \puls|s_cnt\(17),
	datad => \puls|s_cnt\(16),
	combout => \puls|Equal0~0_combout\);

-- Location: LCCOMB_X59_Y2_N16
\puls|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Equal0~3_combout\ = (\puls|s_cnt\(2) & (\puls|s_cnt\(4) & (\puls|s_cnt\(3) & \puls|s_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puls|s_cnt\(2),
	datab => \puls|s_cnt\(4),
	datac => \puls|s_cnt\(3),
	datad => \puls|s_cnt\(5),
	combout => \puls|Equal0~3_combout\);

-- Location: LCCOMB_X60_Y2_N4
\puls|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Equal0~2_combout\ = (!\puls|s_cnt\(8) & (!\puls|s_cnt\(7) & (\puls|s_cnt\(6) & !\puls|s_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puls|s_cnt\(8),
	datab => \puls|s_cnt\(7),
	datac => \puls|s_cnt\(6),
	datad => \puls|s_cnt\(9),
	combout => \puls|Equal0~2_combout\);

-- Location: LCCOMB_X59_Y1_N2
\puls|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Equal0~4_combout\ = (\puls|Equal0~1_combout\ & (\puls|Equal0~0_combout\ & (\puls|Equal0~3_combout\ & \puls|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puls|Equal0~1_combout\,
	datab => \puls|Equal0~0_combout\,
	datac => \puls|Equal0~3_combout\,
	datad => \puls|Equal0~2_combout\,
	combout => \puls|Equal0~4_combout\);

-- Location: LCCOMB_X59_Y1_N24
\puls|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|Equal0~8_combout\ = (\puls|Equal0~5_combout\ & (\puls|Equal0~6_combout\ & (\puls|Equal0~7_combout\ & \puls|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puls|Equal0~5_combout\,
	datab => \puls|Equal0~6_combout\,
	datac => \puls|Equal0~7_combout\,
	datad => \puls|Equal0~4_combout\,
	combout => \puls|Equal0~8_combout\);

-- Location: LCCOMB_X59_Y1_N28
\puls|pulse~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \puls|pulse~feeder_combout\ = \puls|Equal0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \puls|Equal0~8_combout\,
	combout => \puls|pulse~feeder_combout\);

-- Location: FF_X59_Y1_N29
\puls|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \puls|pulse~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puls|pulse~q\);

-- Location: CLKCTRL_G16
\puls|pulse~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \puls|pulse~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \puls|pulse~clkctrl_outclk\);

-- Location: LCCOMB_X76_Y35_N6
\dp|counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|counter[0]~0_combout\ = \Hex420|decOut_0[2]~0_combout\ $ (\dp|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hex420|decOut_0[2]~0_combout\,
	datac => \dp|counter\(0),
	combout => \dp|counter[0]~0_combout\);

-- Location: FF_X76_Y35_N9
\dp|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \puls|ALT_INV_pulse~clkctrl_outclk\,
	asdata => \dp|counter[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|counter\(0));

-- Location: LCCOMB_X76_Y35_N0
\dp|counter[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|counter[1]~1_combout\ = \dp|counter\(1) $ (((\Hex420|decOut_0[2]~0_combout\ & \dp|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hex420|decOut_0[2]~0_combout\,
	datac => \dp|counter\(0),
	datad => \dp|counter\(1),
	combout => \dp|counter[1]~1_combout\);

-- Location: FF_X76_Y35_N11
\dp|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \puls|ALT_INV_pulse~clkctrl_outclk\,
	asdata => \dp|counter[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|counter\(1));

-- Location: LCCOMB_X76_Y35_N28
\hs0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|Mux2~0_combout\ = (\set|counter2\(2)) # (\set|counter2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set|counter2\(2),
	datac => \set|counter2\(1),
	combout => \hs0|Mux2~0_combout\);

-- Location: CLKCTRL_G5
\Hex420|decOut_0[2]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Hex420|decOut_0[2]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Hex420|decOut_0[2]~0clkctrl_outclk\);

-- Location: LCCOMB_X76_Y35_N2
\hs0|decOut[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[6]~1_combout\ = (\bu1|output[3]~0_combout\) # ((GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & ((\hs0|decOut[6]~1_combout\))) # (!GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & (!\hs0|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bu1|output[3]~0_combout\,
	datab => \hs0|Mux2~0_combout\,
	datac => \hs0|decOut[6]~1_combout\,
	datad => \Hex420|decOut_0[2]~0clkctrl_outclk\,
	combout => \hs0|decOut[6]~1_combout\);

-- Location: LCCOMB_X76_Y35_N4
\hs0|decOut[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[6]~4_combout\ = \hs0|decOut[6]~1_combout\ $ (((\dp|counter\(0) & !\dp|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|counter\(0),
	datab => \dp|counter\(1),
	datad => \hs0|decOut[6]~1_combout\,
	combout => \hs0|decOut[6]~4_combout\);

-- Location: LCCOMB_X75_Y35_N24
\hs0|decOut[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[6]~0_combout\ = (\bu1|output[3]~0_combout\) # (!\Hex420|decOut_0[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hex420|decOut_0[2]~0_combout\,
	datac => \bu1|output[3]~0_combout\,
	combout => \hs0|decOut[6]~0_combout\);

-- Location: FF_X76_Y35_N5
\hs0|decOut[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \hs0|decOut[6]~4_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hs0|decOut[6]~_emulated_q\);

-- Location: LCCOMB_X75_Y35_N18
\hs0|decOut[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[6]~3_combout\ = \hs0|decOut[6]~_emulated_q\ $ (\hs0|decOut[6]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hs0|decOut[6]~_emulated_q\,
	datad => \hs0|decOut[6]~1_combout\,
	combout => \hs0|decOut[6]~3_combout\);

-- Location: LCCOMB_X75_Y35_N2
\hs0|decOut[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[6]~2_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & (\hs0|decOut[6]~3_combout\)) # (!\Hex420|decOut_0[2]~0_combout\ & ((!\hs0|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bu1|output[3]~0_combout\,
	datab => \hs0|decOut[6]~3_combout\,
	datac => \hs0|Mux2~0_combout\,
	datad => \Hex420|decOut_0[2]~0_combout\,
	combout => \hs0|decOut[6]~2_combout\);

-- Location: LCCOMB_X76_Y35_N22
\hs0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|Mux3~0_combout\ = (\set|counter2\(2)) # ((!\set|counter2\(1) & !\set|counter2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set|counter2\(2),
	datac => \set|counter2\(1),
	datad => \set|counter2\(0),
	combout => \hs0|Mux3~0_combout\);

-- Location: LCCOMB_X76_Y35_N20
\hs0|decOut[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[5]~6_combout\ = (\bu1|output[3]~0_combout\) # ((GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & ((\hs0|decOut[5]~6_combout\))) # (!GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & (!\hs0|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bu1|output[3]~0_combout\,
	datab => \hs0|Mux3~0_combout\,
	datac => \hs0|decOut[5]~6_combout\,
	datad => \Hex420|decOut_0[2]~0clkctrl_outclk\,
	combout => \hs0|decOut[5]~6_combout\);

-- Location: LCCOMB_X76_Y35_N14
\hs0|decOut[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[5]~9_combout\ = \hs0|decOut[5]~6_combout\ $ (((\dp|counter\(0) & !\dp|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|counter\(0),
	datab => \dp|counter\(1),
	datad => \hs0|decOut[5]~6_combout\,
	combout => \hs0|decOut[5]~9_combout\);

-- Location: FF_X76_Y35_N15
\hs0|decOut[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \hs0|decOut[5]~9_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hs0|decOut[5]~_emulated_q\);

-- Location: LCCOMB_X77_Y35_N20
\hs0|decOut[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[5]~8_combout\ = \hs0|decOut[5]~6_combout\ $ (\hs0|decOut[5]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hs0|decOut[5]~6_combout\,
	datad => \hs0|decOut[5]~_emulated_q\,
	combout => \hs0|decOut[5]~8_combout\);

-- Location: LCCOMB_X76_Y35_N12
\hs0|decOut[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[5]~7_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & (\hs0|decOut[5]~8_combout\)) # (!\Hex420|decOut_0[2]~0_combout\ & ((!\hs0|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hs0|decOut[5]~8_combout\,
	datab => \bu1|output[3]~0_combout\,
	datac => \hs0|Mux3~0_combout\,
	datad => \Hex420|decOut_0[2]~0_combout\,
	combout => \hs0|decOut[5]~7_combout\);

-- Location: LCCOMB_X76_Y35_N24
\hs0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|Mux4~0_combout\ = (\set|counter2\(2) & (!\set|counter2\(1))) # (!\set|counter2\(2) & ((\set|counter2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set|counter2\(2),
	datac => \set|counter2\(1),
	datad => \set|counter2\(0),
	combout => \hs0|Mux4~0_combout\);

-- Location: LCCOMB_X76_Y35_N18
\hs0|decOut[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[4]~11_combout\ = (\bu1|output[3]~0_combout\) # ((GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & ((\hs0|decOut[4]~11_combout\))) # (!GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & (\hs0|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bu1|output[3]~0_combout\,
	datab => \hs0|Mux4~0_combout\,
	datac => \hs0|decOut[4]~11_combout\,
	datad => \Hex420|decOut_0[2]~0clkctrl_outclk\,
	combout => \hs0|decOut[4]~11_combout\);

-- Location: LCCOMB_X76_Y35_N30
\hs0|decOut[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[4]~14_combout\ = \hs0|decOut[4]~11_combout\ $ (((!\dp|counter\(1) & \dp|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|counter\(1),
	datab => \dp|counter\(0),
	datad => \hs0|decOut[4]~11_combout\,
	combout => \hs0|decOut[4]~14_combout\);

-- Location: FF_X76_Y35_N31
\hs0|decOut[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \hs0|decOut[4]~14_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hs0|decOut[4]~_emulated_q\);

-- Location: LCCOMB_X76_Y35_N8
\hs0|decOut[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[4]~13_combout\ = \hs0|decOut[4]~_emulated_q\ $ (\hs0|decOut[4]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hs0|decOut[4]~_emulated_q\,
	datad => \hs0|decOut[4]~11_combout\,
	combout => \hs0|decOut[4]~13_combout\);

-- Location: LCCOMB_X75_Y35_N6
\hs0|decOut[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[4]~12_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & (\hs0|decOut[4]~13_combout\)) # (!\Hex420|decOut_0[2]~0_combout\ & ((\hs0|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bu1|output[3]~0_combout\,
	datab => \hs0|decOut[4]~13_combout\,
	datac => \Hex420|decOut_0[2]~0_combout\,
	datad => \hs0|Mux4~0_combout\,
	combout => \hs0|decOut[4]~12_combout\);

-- Location: LCCOMB_X75_Y35_N26
\hs0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|Mux5~0_combout\ = (!\set|counter2\(1) & (\set|counter2\(0) $ (\set|counter2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set|counter2\(0),
	datac => \set|counter2\(2),
	datad => \set|counter2\(1),
	combout => \hs0|Mux5~0_combout\);

-- Location: LCCOMB_X75_Y35_N10
\hs0|decOut[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[3]~16_combout\ = (\bu1|output[3]~0_combout\) # ((GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & ((\hs0|decOut[3]~16_combout\))) # (!GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & (\hs0|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hs0|Mux5~0_combout\,
	datab => \bu1|output[3]~0_combout\,
	datac => \Hex420|decOut_0[2]~0clkctrl_outclk\,
	datad => \hs0|decOut[3]~16_combout\,
	combout => \hs0|decOut[3]~16_combout\);

-- Location: LCCOMB_X76_Y35_N26
\hs0|decOut[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[3]~19_combout\ = \hs0|decOut[3]~16_combout\ $ (((\dp|counter\(1)) # (\dp|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|counter\(1),
	datac => \dp|counter\(0),
	datad => \hs0|decOut[3]~16_combout\,
	combout => \hs0|decOut[3]~19_combout\);

-- Location: FF_X76_Y35_N27
\hs0|decOut[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \hs0|decOut[3]~19_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hs0|decOut[3]~_emulated_q\);

-- Location: LCCOMB_X75_Y35_N14
\hs0|decOut[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[3]~18_combout\ = \hs0|decOut[3]~_emulated_q\ $ (\hs0|decOut[3]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hs0|decOut[3]~_emulated_q\,
	datad => \hs0|decOut[3]~16_combout\,
	combout => \hs0|decOut[3]~18_combout\);

-- Location: LCCOMB_X75_Y35_N12
\hs0|decOut[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[3]~17_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & (\hs0|decOut[3]~18_combout\)) # (!\Hex420|decOut_0[2]~0_combout\ & ((\hs0|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bu1|output[3]~0_combout\,
	datab => \hs0|decOut[3]~18_combout\,
	datac => \hs0|Mux5~0_combout\,
	datad => \Hex420|decOut_0[2]~0_combout\,
	combout => \hs0|decOut[3]~17_combout\);

-- Location: LCCOMB_X75_Y35_N8
\hs0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|Mux6~0_combout\ = (!\set|counter2\(0) & (!\set|counter2\(2) & \set|counter2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set|counter2\(0),
	datac => \set|counter2\(2),
	datad => \set|counter2\(1),
	combout => \hs0|Mux6~0_combout\);

-- Location: LCCOMB_X74_Y35_N16
\hs0|decOut[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[2]~21_combout\ = (\bu1|output[3]~0_combout\) # ((GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & (\hs0|decOut[2]~21_combout\)) # (!GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & ((\hs0|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hs0|decOut[2]~21_combout\,
	datab => \bu1|output[3]~0_combout\,
	datac => \hs0|Mux6~0_combout\,
	datad => \Hex420|decOut_0[2]~0clkctrl_outclk\,
	combout => \hs0|decOut[2]~21_combout\);

-- Location: LCCOMB_X74_Y35_N12
\hs0|decOut[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[2]~24_combout\ = \dp|counter\(1) $ (!\hs0|decOut[2]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|counter\(1),
	datad => \hs0|decOut[2]~21_combout\,
	combout => \hs0|decOut[2]~24_combout\);

-- Location: FF_X74_Y35_N13
\hs0|decOut[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \hs0|decOut[2]~24_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hs0|decOut[2]~_emulated_q\);

-- Location: LCCOMB_X74_Y35_N18
\hs0|decOut[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[2]~23_combout\ = \hs0|decOut[2]~21_combout\ $ (\hs0|decOut[2]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hs0|decOut[2]~21_combout\,
	datad => \hs0|decOut[2]~_emulated_q\,
	combout => \hs0|decOut[2]~23_combout\);

-- Location: LCCOMB_X74_Y35_N28
\hs0|decOut[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[2]~22_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & ((\hs0|decOut[2]~23_combout\))) # (!\Hex420|decOut_0[2]~0_combout\ & (\hs0|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bu1|output[3]~0_combout\,
	datab => \Hex420|decOut_0[2]~0_combout\,
	datac => \hs0|Mux6~0_combout\,
	datad => \hs0|decOut[2]~23_combout\,
	combout => \hs0|decOut[2]~22_combout\);

-- Location: LCCOMB_X75_Y35_N22
\hs0|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|Mux7~0_combout\ = (\set|counter2\(2) & (\set|counter2\(0) $ (\set|counter2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set|counter2\(2),
	datac => \set|counter2\(0),
	datad => \set|counter2\(1),
	combout => \hs0|Mux7~0_combout\);

-- Location: LCCOMB_X74_Y35_N0
\hs0|decOut[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[1]~26_combout\ = (\bu1|output[3]~0_combout\) # ((GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & ((\hs0|decOut[1]~26_combout\))) # (!GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & (\hs0|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hs0|Mux7~0_combout\,
	datab => \bu1|output[3]~0_combout\,
	datac => \hs0|decOut[1]~26_combout\,
	datad => \Hex420|decOut_0[2]~0clkctrl_outclk\,
	combout => \hs0|decOut[1]~26_combout\);

-- Location: LCCOMB_X74_Y35_N2
\hs0|decOut[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[1]~29_combout\ = \dp|counter\(1) $ (!\hs0|decOut[1]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|counter\(1),
	datad => \hs0|decOut[1]~26_combout\,
	combout => \hs0|decOut[1]~29_combout\);

-- Location: FF_X74_Y35_N3
\hs0|decOut[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \hs0|decOut[1]~29_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hs0|decOut[1]~_emulated_q\);

-- Location: LCCOMB_X74_Y35_N4
\hs0|decOut[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[1]~28_combout\ = \hs0|decOut[1]~26_combout\ $ (\hs0|decOut[1]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hs0|decOut[1]~26_combout\,
	datad => \hs0|decOut[1]~_emulated_q\,
	combout => \hs0|decOut[1]~28_combout\);

-- Location: LCCOMB_X74_Y35_N30
\hs0|decOut[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[1]~27_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & (\hs0|decOut[1]~28_combout\)) # (!\Hex420|decOut_0[2]~0_combout\ & ((\hs0|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bu1|output[3]~0_combout\,
	datab => \Hex420|decOut_0[2]~0_combout\,
	datac => \hs0|decOut[1]~28_combout\,
	datad => \hs0|Mux7~0_combout\,
	combout => \hs0|decOut[1]~27_combout\);

-- Location: LCCOMB_X76_Y35_N16
\hs0|decOut[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[0]~32_combout\ = \dp|counter\(1) $ (\hs0|decOut[3]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|counter\(1),
	datad => \hs0|decOut[3]~16_combout\,
	combout => \hs0|decOut[0]~32_combout\);

-- Location: FF_X76_Y35_N17
\hs0|decOut[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \hs0|decOut[0]~32_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hs0|decOut[0]~_emulated_q\);

-- Location: LCCOMB_X75_Y35_N28
\hs0|decOut[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[0]~31_combout\ = \hs0|decOut[3]~16_combout\ $ (\hs0|decOut[0]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hs0|decOut[3]~16_combout\,
	datad => \hs0|decOut[0]~_emulated_q\,
	combout => \hs0|decOut[0]~31_combout\);

-- Location: LCCOMB_X74_Y35_N22
\hs0|decOut[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs0|decOut[0]~30_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & ((\hs0|decOut[0]~31_combout\))) # (!\Hex420|decOut_0[2]~0_combout\ & (\hs0|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bu1|output[3]~0_combout\,
	datab => \hs0|Mux5~0_combout\,
	datac => \Hex420|decOut_0[2]~0_combout\,
	datad => \hs0|decOut[0]~31_combout\,
	combout => \hs0|decOut[0]~30_combout\);

-- Location: LCCOMB_X79_Y35_N20
\hs1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|Mux1~0_combout\ = (\set|counter1\(1)) # (\set|counter1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set|counter1\(1),
	datad => \set|counter1\(2),
	combout => \hs1|Mux1~0_combout\);

-- Location: LCCOMB_X79_Y35_N24
\hs1|decOut[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[6]~1_combout\ = (\bu1|output[3]~0_combout\) # ((GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & (\hs1|decOut[6]~1_combout\)) # (!GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & ((!\hs1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hs1|decOut[6]~1_combout\,
	datab => \hs1|Mux1~0_combout\,
	datac => \bu1|output[3]~0_combout\,
	datad => \Hex420|decOut_0[2]~0clkctrl_outclk\,
	combout => \hs1|decOut[6]~1_combout\);

-- Location: LCCOMB_X79_Y35_N0
\hs1|decOut[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[6]~41_combout\ = !\hs1|decOut[6]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hs1|decOut[6]~1_combout\,
	combout => \hs1|decOut[6]~41_combout\);

-- Location: FF_X79_Y35_N1
\hs1|decOut[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \hs1|decOut[6]~41_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hs1|decOut[6]~_emulated_q\);

-- Location: LCCOMB_X79_Y35_N22
\hs1|decOut[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[6]~3_combout\ = \hs1|decOut[6]~1_combout\ $ (\hs1|decOut[6]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hs1|decOut[6]~1_combout\,
	datad => \hs1|decOut[6]~_emulated_q\,
	combout => \hs1|decOut[6]~3_combout\);

-- Location: LCCOMB_X79_Y35_N28
\hs1|decOut[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[6]~2_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & (\hs1|decOut[6]~3_combout\)) # (!\Hex420|decOut_0[2]~0_combout\ & ((!\hs1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hs1|decOut[6]~3_combout\,
	datab => \hs1|Mux1~0_combout\,
	datac => \Hex420|decOut_0[2]~0_combout\,
	datad => \bu1|output[3]~0_combout\,
	combout => \hs1|decOut[6]~2_combout\);

-- Location: LCCOMB_X77_Y35_N30
\hs1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|Mux2~0_combout\ = (\set|counter1\(2)) # ((!\set|counter1\(1) & !\set|counter1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set|counter1\(1),
	datac => \set|counter1\(0),
	datad => \set|counter1\(2),
	combout => \hs1|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y35_N28
\hs1|decOut[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[5]~6_combout\ = (\bu1|output[3]~0_combout\) # ((GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & ((\hs1|decOut[5]~6_combout\))) # (!GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & (!\hs1|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hs1|Mux2~0_combout\,
	datab => \hs1|decOut[5]~6_combout\,
	datac => \bu1|output[3]~0_combout\,
	datad => \Hex420|decOut_0[2]~0clkctrl_outclk\,
	combout => \hs1|decOut[5]~6_combout\);

-- Location: LCCOMB_X77_Y35_N18
\hs1|decOut[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[5]~9_combout\ = \hs1|decOut[5]~6_combout\ $ (((\dp|counter\(0) & !\dp|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|counter\(0),
	datac => \dp|counter\(1),
	datad => \hs1|decOut[5]~6_combout\,
	combout => \hs1|decOut[5]~9_combout\);

-- Location: FF_X77_Y35_N19
\hs1|decOut[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \hs1|decOut[5]~9_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hs1|decOut[5]~_emulated_q\);

-- Location: LCCOMB_X77_Y35_N24
\hs1|decOut[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[5]~8_combout\ = \hs1|decOut[5]~6_combout\ $ (\hs1|decOut[5]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hs1|decOut[5]~6_combout\,
	datad => \hs1|decOut[5]~_emulated_q\,
	combout => \hs1|decOut[5]~8_combout\);

-- Location: LCCOMB_X79_Y35_N2
\hs1|decOut[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[5]~7_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & (\hs1|decOut[5]~8_combout\)) # (!\Hex420|decOut_0[2]~0_combout\ & ((!\hs1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hs1|decOut[5]~8_combout\,
	datab => \Hex420|decOut_0[2]~0_combout\,
	datac => \hs1|Mux2~0_combout\,
	datad => \bu1|output[3]~0_combout\,
	combout => \hs1|decOut[5]~7_combout\);

-- Location: LCCOMB_X77_Y35_N12
\hs1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|Mux3~0_combout\ = (\set|counter1\(2) & (!\set|counter1\(1))) # (!\set|counter1\(2) & ((\set|counter1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set|counter1\(1),
	datac => \set|counter1\(0),
	datad => \set|counter1\(2),
	combout => \hs1|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y35_N2
\hs1|decOut[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[4]~11_combout\ = (\bu1|output[3]~0_combout\) # ((GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & ((\hs1|decOut[4]~11_combout\))) # (!GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & (\hs1|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hs1|Mux3~0_combout\,
	datab => \hs1|decOut[4]~11_combout\,
	datac => \bu1|output[3]~0_combout\,
	datad => \Hex420|decOut_0[2]~0clkctrl_outclk\,
	combout => \hs1|decOut[4]~11_combout\);

-- Location: LCCOMB_X77_Y35_N10
\hs1|decOut[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[4]~14_combout\ = \hs1|decOut[4]~11_combout\ $ (((\dp|counter\(0) & !\dp|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|counter\(0),
	datac => \dp|counter\(1),
	datad => \hs1|decOut[4]~11_combout\,
	combout => \hs1|decOut[4]~14_combout\);

-- Location: FF_X77_Y35_N11
\hs1|decOut[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \hs1|decOut[4]~14_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hs1|decOut[4]~_emulated_q\);

-- Location: LCCOMB_X77_Y35_N0
\hs1|decOut[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[4]~13_combout\ = \hs1|decOut[4]~11_combout\ $ (\hs1|decOut[4]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hs1|decOut[4]~11_combout\,
	datad => \hs1|decOut[4]~_emulated_q\,
	combout => \hs1|decOut[4]~13_combout\);

-- Location: LCCOMB_X79_Y35_N4
\hs1|decOut[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[4]~12_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & (\hs1|decOut[4]~13_combout\)) # (!\Hex420|decOut_0[2]~0_combout\ & ((\hs1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hs1|decOut[4]~13_combout\,
	datab => \bu1|output[3]~0_combout\,
	datac => \Hex420|decOut_0[2]~0_combout\,
	datad => \hs1|Mux3~0_combout\,
	combout => \hs1|decOut[4]~12_combout\);

-- Location: LCCOMB_X79_Y35_N6
\hs1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|Mux4~0_combout\ = (!\set|counter1\(1) & (\set|counter1\(0) $ (\set|counter1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set|counter1\(1),
	datac => \set|counter1\(0),
	datad => \set|counter1\(2),
	combout => \hs1|Mux4~0_combout\);

-- Location: LCCOMB_X79_Y35_N30
\hs1|decOut[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[3]~16_combout\ = (\bu1|output[3]~0_combout\) # ((GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & (\hs1|decOut[3]~16_combout\)) # (!GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & ((\hs1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hs1|decOut[3]~16_combout\,
	datab => \hs1|Mux4~0_combout\,
	datac => \Hex420|decOut_0[2]~0clkctrl_outclk\,
	datad => \bu1|output[3]~0_combout\,
	combout => \hs1|decOut[3]~16_combout\);

-- Location: LCCOMB_X79_Y35_N18
\hs1|decOut[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[3]~19_combout\ = \hs1|decOut[3]~16_combout\ $ (!\dp|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hs1|decOut[3]~16_combout\,
	datac => \dp|counter\(1),
	combout => \hs1|decOut[3]~19_combout\);

-- Location: FF_X79_Y35_N19
\hs1|decOut[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \hs1|decOut[3]~19_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hs1|decOut[3]~_emulated_q\);

-- Location: LCCOMB_X79_Y35_N16
\hs1|decOut[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[3]~18_combout\ = \hs1|decOut[3]~_emulated_q\ $ (\hs1|decOut[3]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hs1|decOut[3]~_emulated_q\,
	datad => \hs1|decOut[3]~16_combout\,
	combout => \hs1|decOut[3]~18_combout\);

-- Location: LCCOMB_X79_Y35_N14
\hs1|decOut[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[3]~17_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & (\hs1|decOut[3]~18_combout\)) # (!\Hex420|decOut_0[2]~0_combout\ & ((\hs1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bu1|output[3]~0_combout\,
	datab => \hs1|decOut[3]~18_combout\,
	datac => \Hex420|decOut_0[2]~0_combout\,
	datad => \hs1|Mux4~0_combout\,
	combout => \hs1|decOut[3]~17_combout\);

-- Location: LCCOMB_X77_Y35_N22
\hs1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|Mux5~0_combout\ = (\set|counter1\(1) & (!\set|counter1\(0) & !\set|counter1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set|counter1\(1),
	datac => \set|counter1\(0),
	datad => \set|counter1\(2),
	combout => \hs1|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y35_N16
\hs1|decOut[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[2]~21_combout\ = (\bu1|output[3]~0_combout\) # ((GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & ((\hs1|decOut[2]~21_combout\))) # (!GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & (\hs1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hs1|Mux5~0_combout\,
	datab => \hs1|decOut[2]~21_combout\,
	datac => \bu1|output[3]~0_combout\,
	datad => \Hex420|decOut_0[2]~0clkctrl_outclk\,
	combout => \hs1|decOut[2]~21_combout\);

-- Location: LCCOMB_X77_Y35_N14
\hs1|decOut[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[2]~24_combout\ = \dp|counter\(1) $ (\hs1|decOut[2]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|counter\(1),
	datad => \hs1|decOut[2]~21_combout\,
	combout => \hs1|decOut[2]~24_combout\);

-- Location: FF_X77_Y35_N15
\hs1|decOut[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \hs1|decOut[2]~24_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hs1|decOut[2]~_emulated_q\);

-- Location: LCCOMB_X77_Y35_N4
\hs1|decOut[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[2]~23_combout\ = \hs1|decOut[2]~_emulated_q\ $ (\hs1|decOut[2]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hs1|decOut[2]~_emulated_q\,
	datac => \hs1|decOut[2]~21_combout\,
	combout => \hs1|decOut[2]~23_combout\);

-- Location: LCCOMB_X79_Y35_N8
\hs1|decOut[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[2]~22_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & (\hs1|decOut[2]~23_combout\)) # (!\Hex420|decOut_0[2]~0_combout\ & ((\hs1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hs1|decOut[2]~23_combout\,
	datab => \bu1|output[3]~0_combout\,
	datac => \Hex420|decOut_0[2]~0_combout\,
	datad => \hs1|Mux5~0_combout\,
	combout => \hs1|decOut[2]~22_combout\);

-- Location: LCCOMB_X77_Y34_N8
\hs1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|Mux6~0_combout\ = (\set|counter1\(2) & (\set|counter1\(1) $ (\set|counter1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set|counter1\(1),
	datac => \set|counter1\(0),
	datad => \set|counter1\(2),
	combout => \hs1|Mux6~0_combout\);

-- Location: LCCOMB_X77_Y35_N6
\hs1|decOut[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[1]~26_combout\ = (\bu1|output[3]~0_combout\) # ((GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & (\hs1|decOut[1]~26_combout\)) # (!GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & ((\hs1|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hs1|decOut[1]~26_combout\,
	datab => \hs1|Mux6~0_combout\,
	datac => \bu1|output[3]~0_combout\,
	datad => \Hex420|decOut_0[2]~0clkctrl_outclk\,
	combout => \hs1|decOut[1]~26_combout\);

-- Location: LCCOMB_X77_Y35_N26
\hs1|decOut[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[1]~29_combout\ = \dp|counter\(1) $ (\hs1|decOut[1]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|counter\(1),
	datad => \hs1|decOut[1]~26_combout\,
	combout => \hs1|decOut[1]~29_combout\);

-- Location: FF_X77_Y35_N27
\hs1|decOut[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \hs1|decOut[1]~29_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hs1|decOut[1]~_emulated_q\);

-- Location: LCCOMB_X77_Y35_N8
\hs1|decOut[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[1]~28_combout\ = \hs1|decOut[1]~26_combout\ $ (\hs1|decOut[1]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hs1|decOut[1]~26_combout\,
	datad => \hs1|decOut[1]~_emulated_q\,
	combout => \hs1|decOut[1]~28_combout\);

-- Location: LCCOMB_X79_Y35_N10
\hs1|decOut[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[1]~27_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & ((\hs1|decOut[1]~28_combout\))) # (!\Hex420|decOut_0[2]~0_combout\ & (\hs1|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hs1|Mux6~0_combout\,
	datab => \bu1|output[3]~0_combout\,
	datac => \Hex420|decOut_0[2]~0_combout\,
	datad => \hs1|decOut[1]~28_combout\,
	combout => \hs1|decOut[1]~27_combout\);

-- Location: FF_X79_Y35_N13
\hs1|decOut[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \hs1|decOut[3]~16_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hs1|decOut[0]~_emulated_q\);

-- Location: LCCOMB_X79_Y35_N12
\hs1|decOut[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[0]~31_combout\ = \hs1|decOut[3]~16_combout\ $ (\hs1|decOut[0]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hs1|decOut[3]~16_combout\,
	datac => \hs1|decOut[0]~_emulated_q\,
	combout => \hs1|decOut[0]~31_combout\);

-- Location: LCCOMB_X79_Y35_N26
\hs1|decOut[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \hs1|decOut[0]~30_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & (\hs1|decOut[0]~31_combout\)) # (!\Hex420|decOut_0[2]~0_combout\ & ((\hs1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hs1|decOut[0]~31_combout\,
	datab => \hs1|Mux4~0_combout\,
	datac => \Hex420|decOut_0[2]~0_combout\,
	datad => \bu1|output[3]~0_combout\,
	combout => \hs1|decOut[0]~30_combout\);

-- Location: LCCOMB_X77_Y34_N6
\set|comb_proc~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|comb_proc~3_combout\ = (\set|counter2\(1) & (!\set|counter2\(0) & (\set|counter1\(0) & \set|counter1\(1)))) # (!\set|counter2\(1) & ((\set|counter1\(1)) # ((!\set|counter2\(0) & \set|counter1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter2\(1),
	datab => \set|counter2\(0),
	datac => \set|counter1\(0),
	datad => \set|counter1\(1),
	combout => \set|comb_proc~3_combout\);

-- Location: LCCOMB_X75_Y33_N8
\Game|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Equal4~0_combout\ = (!\Game|counter2\(2) & (\Game|counter2\(0) & \Game|counter2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter2\(2),
	datab => \Game|counter2\(0),
	datad => \Game|counter2\(1),
	combout => \Game|Equal4~0_combout\);

-- Location: LCCOMB_X75_Y33_N20
\Game|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Selector5~0_combout\ = (!\Game|PS.S~q\ & (\Game|Equal5~1_combout\ & (!\Game|Equal3~0_combout\ & !\Game|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|PS.S~q\,
	datab => \Game|Equal5~1_combout\,
	datac => \Game|Equal3~0_combout\,
	datad => \Game|Equal4~0_combout\,
	combout => \Game|Selector5~0_combout\);

-- Location: LCCOMB_X77_Y34_N0
\set|comb_proc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|comb_proc~1_combout\ = (\hs1|Mux6~0_combout\ & ((\set|Add2~0_combout\) # ((\set|Add2~4_combout\) # (\set|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|Add2~0_combout\,
	datab => \hs1|Mux6~0_combout\,
	datac => \set|Add2~4_combout\,
	datad => \set|Add2~2_combout\,
	combout => \set|comb_proc~1_combout\);

-- Location: LCCOMB_X76_Y36_N2
\set|comb_proc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|comb_proc~2_combout\ = (\set|comb_proc~1_combout\ & ((\Game|Selector5~0_combout\) # (!\Game|Selector5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Game|Selector5~0_combout\,
	datac => \Game|Selector5~1_combout\,
	datad => \set|comb_proc~1_combout\,
	combout => \set|comb_proc~2_combout\);

-- Location: LCCOMB_X76_Y36_N24
\set|comb_proc~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|comb_proc~4_combout\ = (\set|comb_proc~2_combout\ & (((\set|counter1\(2) & \set|comb_proc~3_combout\)) # (!\set|counter2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter2\(2),
	datab => \set|counter1\(2),
	datac => \set|comb_proc~3_combout\,
	datad => \set|comb_proc~2_combout\,
	combout => \set|comb_proc~4_combout\);

-- Location: LCCOMB_X76_Y36_N30
\set|set_Pt1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|set_Pt1~0_combout\ = (\set|set_Pt2~2_combout\ & \set|comb_proc~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \set|set_Pt2~2_combout\,
	datad => \set|comb_proc~4_combout\,
	combout => \set|set_Pt1~0_combout\);

-- Location: CLKCTRL_G6
\set|PS~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \set|PS~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \set|PS~clkctrl_outclk\);

-- Location: LCCOMB_X76_Y36_N20
\set|set_Pt1\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|set_Pt1~combout\ = (GLOBAL(\set|PS~clkctrl_outclk\) & (\set|set_Pt1~combout\)) # (!GLOBAL(\set|PS~clkctrl_outclk\) & ((\set|set_Pt1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set|set_Pt1~combout\,
	datac => \set|set_Pt1~0_combout\,
	datad => \set|PS~clkctrl_outclk\,
	combout => \set|set_Pt1~combout\);

-- Location: LCCOMB_X75_Y36_N10
\match|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \match|process_0~0_combout\ = (\match|s_set1\(0) & (\match|s_set1\(1) & (\set|set_Pt1~combout\ & !\match|s_set1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \match|s_set1\(0),
	datab => \match|s_set1\(1),
	datac => \set|set_Pt1~combout\,
	datad => \match|s_set1\(2),
	combout => \match|process_0~0_combout\);

-- Location: LCCOMB_X76_Y36_N16
\set|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|LessThan5~0_combout\ = (\set|counter2\(1) & (((!\set|counter1\(0) & \set|counter2\(0))) # (!\set|counter1\(1)))) # (!\set|counter2\(1) & (!\set|counter1\(0) & (\set|counter2\(0) & !\set|counter1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter1\(0),
	datab => \set|counter2\(0),
	datac => \set|counter2\(1),
	datad => \set|counter1\(1),
	combout => \set|LessThan5~0_combout\);

-- Location: LCCOMB_X76_Y36_N18
\set|set_Pt2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|set_Pt2~3_combout\ = (\hs0|Mux7~0_combout\ & ((\set|Add3~0_combout\) # ((\set|Add3~2_combout\) # (\set|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|Add3~0_combout\,
	datab => \hs0|Mux7~0_combout\,
	datac => \set|Add3~2_combout\,
	datad => \set|Add3~4_combout\,
	combout => \set|set_Pt2~3_combout\);

-- Location: LCCOMB_X76_Y36_N12
\set|set_Pt2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|set_Pt2~4_combout\ = (\set|set_Pt2~3_combout\ & (((\set|counter2\(2) & \set|LessThan5~0_combout\)) # (!\set|counter1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter2\(2),
	datab => \set|LessThan5~0_combout\,
	datac => \set|counter1\(2),
	datad => \set|set_Pt2~3_combout\,
	combout => \set|set_Pt2~4_combout\);

-- Location: LCCOMB_X76_Y33_N0
\Game|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Selector6~0_combout\ = (!\Game|PS.S~q\ & ((\Game|counter1\(1) & ((\Game|counter1\(2)) # (!\Game|counter1\(0)))) # (!\Game|counter1\(1) & ((\Game|counter1\(0)) # (!\Game|counter1\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter1\(1),
	datab => \Game|counter1\(0),
	datac => \Game|counter1\(2),
	datad => \Game|PS.S~q\,
	combout => \Game|Selector6~0_combout\);

-- Location: LCCOMB_X76_Y33_N26
\Game|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Selector6~2_combout\ = ((\Game|Equal4~0_combout\ & \Game|Selector6~0_combout\)) # (!\Game|Selector6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Equal4~0_combout\,
	datac => \Game|Selector6~0_combout\,
	datad => \Game|Selector6~1_combout\,
	combout => \Game|Selector6~2_combout\);

-- Location: LCCOMB_X76_Y36_N22
\set|set_Pt2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|set_Pt2~5_combout\ = (\set|set_Pt2~4_combout\ & (\set|set_Pt2~2_combout\ & (\Game|Selector6~2_combout\ & !\set|comb_proc~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|set_Pt2~4_combout\,
	datab => \set|set_Pt2~2_combout\,
	datac => \Game|Selector6~2_combout\,
	datad => \set|comb_proc~4_combout\,
	combout => \set|set_Pt2~5_combout\);

-- Location: LCCOMB_X76_Y36_N26
\set|set_Pt2\ : cycloneive_lcell_comb
-- Equation(s):
-- \set|set_Pt2~combout\ = (GLOBAL(\set|PS~clkctrl_outclk\) & (\set|set_Pt2~combout\)) # (!GLOBAL(\set|PS~clkctrl_outclk\) & ((\set|set_Pt2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|set_Pt2~combout\,
	datac => \set|set_Pt2~5_combout\,
	datad => \set|PS~clkctrl_outclk\,
	combout => \set|set_Pt2~combout\);

-- Location: LCCOMB_X75_Y36_N16
\dp|decOut_n~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|decOut_n~32_combout\ = (\pgl|blink~q\ & ((\set|set_Pt1~combout\) # (\set|set_Pt2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pgl|blink~q\,
	datac => \set|set_Pt1~combout\,
	datad => \set|set_Pt2~combout\,
	combout => \dp|decOut_n~32_combout\);

-- Location: LCCOMB_X75_Y36_N2
\dp|decOut_n~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|decOut_n~33_combout\ = (\match|process_0~0_combout\) # (((\set|set_Pt2~combout\ & \match|process_0~1_combout\)) # (!\dp|decOut_n~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \match|process_0~0_combout\,
	datab => \dp|decOut_n~32_combout\,
	datac => \set|set_Pt2~combout\,
	datad => \match|process_0~1_combout\,
	combout => \dp|decOut_n~33_combout\);

-- Location: LCCOMB_X75_Y36_N20
\dp|decOut_n[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|decOut_n[6]~1_combout\ = (\bu1|output[3]~0_combout\) # ((GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & ((\dp|decOut_n[6]~1_combout\))) # (!GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & (\dp|decOut_n~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bu1|output[3]~0_combout\,
	datab => \dp|decOut_n~33_combout\,
	datac => \Hex420|decOut_0[2]~0clkctrl_outclk\,
	datad => \dp|decOut_n[6]~1_combout\,
	combout => \dp|decOut_n[6]~1_combout\);

-- Location: FF_X75_Y36_N21
\dp|decOut_n[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \dp|decOut_n[6]~1_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|decOut_n[6]~_emulated_q\);

-- Location: LCCOMB_X75_Y36_N30
\dp|decOut_n[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|decOut_n[6]~3_combout\ = \dp|decOut_n[6]~_emulated_q\ $ (\dp|decOut_n[6]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|decOut_n[6]~_emulated_q\,
	datad => \dp|decOut_n[6]~1_combout\,
	combout => \dp|decOut_n[6]~3_combout\);

-- Location: LCCOMB_X74_Y35_N26
\dp|decOut_n[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|decOut_n[6]~2_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & (\dp|decOut_n[6]~3_combout\)) # (!\Hex420|decOut_0[2]~0_combout\ & ((\dp|decOut_n~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bu1|output[3]~0_combout\,
	datab => \dp|decOut_n[6]~3_combout\,
	datac => \Hex420|decOut_0[2]~0_combout\,
	datad => \dp|decOut_n~33_combout\,
	combout => \dp|decOut_n[6]~2_combout\);

-- Location: LCCOMB_X75_Y36_N28
\dp|decOut_n[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|decOut_n[5]~6_combout\ = (\bu1|output[3]~0_combout\) # ((GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & ((\dp|decOut_n[5]~6_combout\))) # (!GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & (!\dp|decOut_n~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bu1|output[3]~0_combout\,
	datab => \dp|decOut_n~32_combout\,
	datac => \Hex420|decOut_0[2]~0clkctrl_outclk\,
	datad => \dp|decOut_n[5]~6_combout\,
	combout => \dp|decOut_n[5]~6_combout\);

-- Location: FF_X75_Y36_N29
\dp|decOut_n[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \dp|decOut_n[5]~6_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|decOut_n[5]~_emulated_q\);

-- Location: LCCOMB_X74_Y36_N20
\dp|decOut_n[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|decOut_n[5]~8_combout\ = \dp|decOut_n[5]~6_combout\ $ (\dp|decOut_n[5]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|decOut_n[5]~6_combout\,
	datad => \dp|decOut_n[5]~_emulated_q\,
	combout => \dp|decOut_n[5]~8_combout\);

-- Location: LCCOMB_X74_Y36_N2
\dp|decOut_n[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|decOut_n[0]~24_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & (\dp|decOut_n[5]~8_combout\)) # (!\Hex420|decOut_0[2]~0_combout\ & ((!\dp|decOut_n~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hex420|decOut_0[2]~0_combout\,
	datab => \bu1|output[3]~0_combout\,
	datac => \dp|decOut_n[5]~8_combout\,
	datad => \dp|decOut_n~32_combout\,
	combout => \dp|decOut_n[0]~24_combout\);

-- Location: LCCOMB_X75_Y36_N4
\dp|decOut_n~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|decOut_n~34_combout\ = ((!\match|process_0~0_combout\ & ((!\set|set_Pt2~combout\) # (!\match|process_0~1_combout\)))) # (!\pgl|blink~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \match|process_0~1_combout\,
	datab => \set|set_Pt2~combout\,
	datac => \pgl|blink~q\,
	datad => \match|process_0~0_combout\,
	combout => \dp|decOut_n~34_combout\);

-- Location: LCCOMB_X75_Y36_N6
\dp|decOut_n[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|decOut_n[4]~11_combout\ = (\bu1|output[3]~0_combout\) # ((GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & ((\dp|decOut_n[4]~11_combout\))) # (!GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & (\dp|decOut_n~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|decOut_n~34_combout\,
	datab => \bu1|output[3]~0_combout\,
	datac => \Hex420|decOut_0[2]~0clkctrl_outclk\,
	datad => \dp|decOut_n[4]~11_combout\,
	combout => \dp|decOut_n[4]~11_combout\);

-- Location: FF_X75_Y36_N7
\dp|decOut_n[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \dp|decOut_n[4]~11_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|decOut_n[4]~_emulated_q\);

-- Location: LCCOMB_X74_Y36_N0
\dp|decOut_n[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|decOut_n[4]~13_combout\ = \dp|decOut_n[4]~11_combout\ $ (\dp|decOut_n[4]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|decOut_n[4]~11_combout\,
	datad => \dp|decOut_n[4]~_emulated_q\,
	combout => \dp|decOut_n[4]~13_combout\);

-- Location: LCCOMB_X74_Y36_N22
\dp|decOut_n[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|decOut_n[4]~12_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & ((\dp|decOut_n[4]~13_combout\))) # (!\Hex420|decOut_0[2]~0_combout\ & (\dp|decOut_n~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|decOut_n~34_combout\,
	datab => \bu1|output[3]~0_combout\,
	datac => \dp|decOut_n[4]~13_combout\,
	datad => \Hex420|decOut_0[2]~0_combout\,
	combout => \dp|decOut_n[4]~12_combout\);

-- Location: LCCOMB_X75_Y36_N0
\dp|decOut_n[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|decOut_n[3]~17_combout\ = \dp|decOut_n[6]~1_combout\ $ (((\dp|counter\(1)) # (!\dp|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|counter\(0),
	datac => \dp|counter\(1),
	datad => \dp|decOut_n[6]~1_combout\,
	combout => \dp|decOut_n[3]~17_combout\);

-- Location: FF_X75_Y36_N1
\dp|decOut_n[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \dp|decOut_n[3]~17_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|decOut_n[3]~_emulated_q\);

-- Location: LCCOMB_X75_Y36_N26
\dp|decOut_n[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|decOut_n[3]~16_combout\ = \dp|decOut_n[6]~1_combout\ $ (\dp|decOut_n[3]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|decOut_n[6]~1_combout\,
	datad => \dp|decOut_n[3]~_emulated_q\,
	combout => \dp|decOut_n[3]~16_combout\);

-- Location: LCCOMB_X74_Y35_N8
\dp|decOut_n[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|decOut_n[3]~15_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & (\dp|decOut_n[3]~16_combout\)) # (!\Hex420|decOut_0[2]~0_combout\ & ((\dp|decOut_n~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bu1|output[3]~0_combout\,
	datab => \dp|decOut_n[3]~16_combout\,
	datac => \Hex420|decOut_0[2]~0_combout\,
	datad => \dp|decOut_n~33_combout\,
	combout => \dp|decOut_n[3]~15_combout\);

-- Location: LCCOMB_X75_Y36_N24
\dp|decOut_n[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|decOut_n[2]~20_combout\ = \dp|decOut_n[5]~6_combout\ $ (((\dp|counter\(0) & !\dp|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|counter\(0),
	datac => \dp|counter\(1),
	datad => \dp|decOut_n[5]~6_combout\,
	combout => \dp|decOut_n[2]~20_combout\);

-- Location: FF_X75_Y36_N25
\dp|decOut_n[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \dp|decOut_n[2]~20_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|decOut_n[2]~_emulated_q\);

-- Location: LCCOMB_X74_Y36_N24
\dp|decOut_n[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|decOut_n[2]~19_combout\ = \dp|decOut_n[5]~6_combout\ $ (\dp|decOut_n[2]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|decOut_n[5]~6_combout\,
	datad => \dp|decOut_n[2]~_emulated_q\,
	combout => \dp|decOut_n[2]~19_combout\);

-- Location: LCCOMB_X74_Y36_N30
\dp|decOut_n[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|decOut_n[2]~18_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & ((\dp|decOut_n[2]~19_combout\))) # (!\Hex420|decOut_0[2]~0_combout\ & (!\dp|decOut_n~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|decOut_n~32_combout\,
	datab => \dp|decOut_n[2]~19_combout\,
	datac => \Hex420|decOut_0[2]~0_combout\,
	datad => \bu1|output[3]~0_combout\,
	combout => \dp|decOut_n[2]~18_combout\);

-- Location: LCCOMB_X75_Y36_N22
\dp|decOut_n[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|decOut_n[1]~23_combout\ = \dp|decOut_n[4]~11_combout\ $ (((!\dp|counter\(1) & \dp|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|counter\(1),
	datac => \dp|counter\(0),
	datad => \dp|decOut_n[4]~11_combout\,
	combout => \dp|decOut_n[1]~23_combout\);

-- Location: FF_X75_Y36_N23
\dp|decOut_n[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \dp|decOut_n[1]~23_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|decOut_n[1]~_emulated_q\);

-- Location: LCCOMB_X74_Y36_N16
\dp|decOut_n[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|decOut_n[1]~22_combout\ = \dp|decOut_n[1]~_emulated_q\ $ (\dp|decOut_n[4]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|decOut_n[1]~_emulated_q\,
	datad => \dp|decOut_n[4]~11_combout\,
	combout => \dp|decOut_n[1]~22_combout\);

-- Location: LCCOMB_X74_Y36_N18
\dp|decOut_n[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|decOut_n[1]~21_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & ((\dp|decOut_n[1]~22_combout\))) # (!\Hex420|decOut_0[2]~0_combout\ & (\dp|decOut_n~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|decOut_n~34_combout\,
	datab => \bu1|output[3]~0_combout\,
	datac => \dp|decOut_n[1]~22_combout\,
	datad => \Hex420|decOut_0[2]~0_combout\,
	combout => \dp|decOut_n[1]~21_combout\);

-- Location: LCCOMB_X76_Y34_N20
\sum|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|Add0~0_combout\ = \set|counter2\(0) $ (\set|counter1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set|counter2\(0),
	datac => \set|counter1\(0),
	combout => \sum|Add0~0_combout\);

-- Location: LCCOMB_X77_Y34_N22
\sum|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|Add0~1_combout\ = \set|counter2\(1) $ (\set|counter1\(1) $ (((\set|counter1\(0) & \set|counter2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter2\(1),
	datab => \set|counter1\(0),
	datac => \set|counter2\(0),
	datad => \set|counter1\(1),
	combout => \sum|Add0~1_combout\);

-- Location: LCCOMB_X76_Y32_N12
\sum|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|Add0~2_combout\ = (\set|counter1\(1) & ((\set|counter2\(1)) # ((\set|counter2\(0) & \set|counter1\(0))))) # (!\set|counter1\(1) & (\set|counter2\(0) & (\set|counter1\(0) & \set|counter2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter2\(0),
	datab => \set|counter1\(0),
	datac => \set|counter1\(1),
	datad => \set|counter2\(1),
	combout => \sum|Add0~2_combout\);

-- Location: LCCOMB_X76_Y32_N20
\sum|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|Add0~4_combout\ = (\set|counter1\(2) & ((\set|counter2\(2)) # (\sum|Add0~2_combout\))) # (!\set|counter1\(2) & (\set|counter2\(2) & \sum|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter1\(2),
	datac => \set|counter2\(2),
	datad => \sum|Add0~2_combout\,
	combout => \sum|Add0~4_combout\);

-- Location: LCCOMB_X76_Y32_N22
\sum|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|Add0~3_combout\ = \set|counter1\(2) $ (\set|counter2\(2) $ (\sum|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set|counter1\(2),
	datac => \set|counter2\(2),
	datad => \sum|Add0~2_combout\,
	combout => \sum|Add0~3_combout\);

-- Location: LCCOMB_X75_Y32_N28
\sum|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|Mux1~0_combout\ = (\sum|Add0~3_combout\ & ((\sum|Add0~0_combout\ & (!\sum|Add0~1_combout\)) # (!\sum|Add0~0_combout\ & ((!\sum|Add0~4_combout\))))) # (!\sum|Add0~3_combout\ & (((\sum|Add0~1_combout\) # (\sum|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|Add0~0_combout\,
	datab => \sum|Add0~1_combout\,
	datac => \sum|Add0~4_combout\,
	datad => \sum|Add0~3_combout\,
	combout => \sum|Mux1~0_combout\);

-- Location: LCCOMB_X75_Y32_N18
\sum|decOut[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[6]~1_combout\ = (\bu1|output[3]~0_combout\) # ((GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & (\sum|decOut[6]~1_combout\)) # (!GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & ((!\sum|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hex420|decOut_0[2]~0clkctrl_outclk\,
	datab => \sum|decOut[6]~1_combout\,
	datac => \bu1|output[3]~0_combout\,
	datad => \sum|Mux1~0_combout\,
	combout => \sum|decOut[6]~1_combout\);

-- Location: LCCOMB_X75_Y32_N0
\sum|decOut[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[6]~4_combout\ = \dp|counter\(1) $ (\sum|decOut[6]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|counter\(1),
	datad => \sum|decOut[6]~1_combout\,
	combout => \sum|decOut[6]~4_combout\);

-- Location: FF_X75_Y32_N1
\sum|decOut[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \sum|decOut[6]~4_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum|decOut[6]~_emulated_q\);

-- Location: LCCOMB_X75_Y32_N6
\sum|decOut[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[6]~3_combout\ = \sum|decOut[6]~1_combout\ $ (\sum|decOut[6]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sum|decOut[6]~1_combout\,
	datad => \sum|decOut[6]~_emulated_q\,
	combout => \sum|decOut[6]~3_combout\);

-- Location: LCCOMB_X75_Y32_N16
\sum|decOut[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[6]~2_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & ((\sum|decOut[6]~3_combout\))) # (!\Hex420|decOut_0[2]~0_combout\ & (!\sum|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hex420|decOut_0[2]~0_combout\,
	datab => \sum|Mux1~0_combout\,
	datac => \bu1|output[3]~0_combout\,
	datad => \sum|decOut[6]~3_combout\,
	combout => \sum|decOut[6]~2_combout\);

-- Location: LCCOMB_X76_Y32_N26
\sum|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|Mux2~0_combout\ = (\sum|Add0~1_combout\ & (!\sum|Add0~4_combout\ & ((\sum|Add0~0_combout\) # (!\sum|Add0~3_combout\)))) # (!\sum|Add0~1_combout\ & (\sum|Add0~0_combout\ & (\sum|Add0~3_combout\ $ (!\sum|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|Add0~1_combout\,
	datab => \sum|Add0~0_combout\,
	datac => \sum|Add0~3_combout\,
	datad => \sum|Add0~4_combout\,
	combout => \sum|Mux2~0_combout\);

-- Location: LCCOMB_X76_Y32_N24
\sum|decOut[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[5]~6_combout\ = (\bu1|output[3]~0_combout\) # ((GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & ((\sum|decOut[5]~6_combout\))) # (!GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & (\sum|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|Mux2~0_combout\,
	datab => \sum|decOut[5]~6_combout\,
	datac => \Hex420|decOut_0[2]~0clkctrl_outclk\,
	datad => \bu1|output[3]~0_combout\,
	combout => \sum|decOut[5]~6_combout\);

-- Location: FF_X76_Y32_N25
\sum|decOut[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \sum|decOut[5]~6_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum|decOut[5]~_emulated_q\);

-- Location: LCCOMB_X76_Y32_N18
\sum|decOut[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[5]~8_combout\ = \sum|decOut[5]~6_combout\ $ (\sum|decOut[5]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sum|decOut[5]~6_combout\,
	datad => \sum|decOut[5]~_emulated_q\,
	combout => \sum|decOut[5]~8_combout\);

-- Location: LCCOMB_X76_Y32_N0
\sum|decOut[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[5]~7_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & ((\sum|decOut[5]~8_combout\))) # (!\Hex420|decOut_0[2]~0_combout\ & (\sum|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hex420|decOut_0[2]~0_combout\,
	datab => \sum|Mux2~0_combout\,
	datac => \bu1|output[3]~0_combout\,
	datad => \sum|decOut[5]~8_combout\,
	combout => \sum|decOut[5]~7_combout\);

-- Location: LCCOMB_X76_Y32_N4
\sum|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|Mux3~0_combout\ = (\sum|Add0~1_combout\ & (\sum|Add0~0_combout\ & ((!\sum|Add0~4_combout\)))) # (!\sum|Add0~1_combout\ & ((\sum|Add0~3_combout\ & ((!\sum|Add0~4_combout\))) # (!\sum|Add0~3_combout\ & (\sum|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|Add0~1_combout\,
	datab => \sum|Add0~0_combout\,
	datac => \sum|Add0~3_combout\,
	datad => \sum|Add0~4_combout\,
	combout => \sum|Mux3~0_combout\);

-- Location: LCCOMB_X76_Y32_N6
\sum|decOut[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[4]~11_combout\ = (\bu1|output[3]~0_combout\) # ((GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & (\sum|decOut[4]~11_combout\)) # (!GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & ((\sum|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|decOut[4]~11_combout\,
	datab => \Hex420|decOut_0[2]~0clkctrl_outclk\,
	datac => \sum|Mux3~0_combout\,
	datad => \bu1|output[3]~0_combout\,
	combout => \sum|decOut[4]~11_combout\);

-- Location: LCCOMB_X76_Y32_N30
\sum|decOut[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[4]~14_combout\ = \dp|counter\(1) $ (!\sum|decOut[4]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|counter\(1),
	datad => \sum|decOut[4]~11_combout\,
	combout => \sum|decOut[4]~14_combout\);

-- Location: FF_X76_Y32_N31
\sum|decOut[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \sum|decOut[4]~14_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum|decOut[4]~_emulated_q\);

-- Location: LCCOMB_X76_Y32_N28
\sum|decOut[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[4]~13_combout\ = \sum|decOut[4]~11_combout\ $ (\sum|decOut[4]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|decOut[4]~11_combout\,
	datad => \sum|decOut[4]~_emulated_q\,
	combout => \sum|decOut[4]~13_combout\);

-- Location: LCCOMB_X76_Y32_N10
\sum|decOut[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[4]~12_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & (\sum|decOut[4]~13_combout\)) # (!\Hex420|decOut_0[2]~0_combout\ & ((\sum|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|decOut[4]~13_combout\,
	datab => \sum|Mux3~0_combout\,
	datac => \bu1|output[3]~0_combout\,
	datad => \Hex420|decOut_0[2]~0_combout\,
	combout => \sum|decOut[4]~12_combout\);

-- Location: LCCOMB_X75_Y32_N2
\sum|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|Mux4~0_combout\ = (\sum|Add0~0_combout\ & (!\sum|Add0~4_combout\ & (\sum|Add0~1_combout\ $ (!\sum|Add0~3_combout\)))) # (!\sum|Add0~0_combout\ & ((\sum|Add0~1_combout\ & (\sum|Add0~4_combout\ & !\sum|Add0~3_combout\)) # (!\sum|Add0~1_combout\ & 
-- (!\sum|Add0~4_combout\ & \sum|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|Add0~0_combout\,
	datab => \sum|Add0~1_combout\,
	datac => \sum|Add0~4_combout\,
	datad => \sum|Add0~3_combout\,
	combout => \sum|Mux4~0_combout\);

-- Location: LCCOMB_X75_Y32_N12
\sum|decOut[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[3]~16_combout\ = (\bu1|output[3]~0_combout\) # ((GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & (\sum|decOut[3]~16_combout\)) # (!GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & ((\sum|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hex420|decOut_0[2]~0clkctrl_outclk\,
	datab => \sum|decOut[3]~16_combout\,
	datac => \bu1|output[3]~0_combout\,
	datad => \sum|Mux4~0_combout\,
	combout => \sum|decOut[3]~16_combout\);

-- Location: LCCOMB_X75_Y32_N22
\sum|decOut[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[3]~19_combout\ = \dp|counter\(1) $ (\sum|decOut[3]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|counter\(1),
	datad => \sum|decOut[3]~16_combout\,
	combout => \sum|decOut[3]~19_combout\);

-- Location: FF_X75_Y32_N23
\sum|decOut[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \sum|decOut[3]~19_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum|decOut[3]~_emulated_q\);

-- Location: LCCOMB_X75_Y32_N4
\sum|decOut[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[3]~18_combout\ = \sum|decOut[3]~16_combout\ $ (\sum|decOut[3]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum|decOut[3]~16_combout\,
	datad => \sum|decOut[3]~_emulated_q\,
	combout => \sum|decOut[3]~18_combout\);

-- Location: LCCOMB_X75_Y32_N30
\sum|decOut[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[3]~17_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & ((\sum|decOut[3]~18_combout\))) # (!\Hex420|decOut_0[2]~0_combout\ & (\sum|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|Mux4~0_combout\,
	datab => \sum|decOut[3]~18_combout\,
	datac => \bu1|output[3]~0_combout\,
	datad => \Hex420|decOut_0[2]~0_combout\,
	combout => \sum|decOut[3]~17_combout\);

-- Location: LCCOMB_X76_Y32_N2
\sum|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|Mux5~0_combout\ = (!\sum|Add0~0_combout\ & ((\sum|Add0~3_combout\ & (!\sum|Add0~1_combout\ & \sum|Add0~4_combout\)) # (!\sum|Add0~3_combout\ & (\sum|Add0~1_combout\ & !\sum|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|Add0~3_combout\,
	datab => \sum|Add0~0_combout\,
	datac => \sum|Add0~1_combout\,
	datad => \sum|Add0~4_combout\,
	combout => \sum|Mux5~0_combout\);

-- Location: LCCOMB_X76_Y32_N16
\sum|decOut[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[2]~21_combout\ = (\bu1|output[3]~0_combout\) # ((GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & (\sum|decOut[2]~21_combout\)) # (!GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & ((\sum|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|decOut[2]~21_combout\,
	datab => \sum|Mux5~0_combout\,
	datac => \Hex420|decOut_0[2]~0clkctrl_outclk\,
	datad => \bu1|output[3]~0_combout\,
	combout => \sum|decOut[2]~21_combout\);

-- Location: FF_X76_Y32_N17
\sum|decOut[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \sum|decOut[2]~21_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum|decOut[2]~_emulated_q\);

-- Location: LCCOMB_X73_Y32_N20
\sum|decOut[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[2]~23_combout\ = \sum|decOut[2]~21_combout\ $ (\sum|decOut[2]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|decOut[2]~21_combout\,
	datad => \sum|decOut[2]~_emulated_q\,
	combout => \sum|decOut[2]~23_combout\);

-- Location: LCCOMB_X75_Y32_N8
\sum|decOut[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[2]~22_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & ((\sum|decOut[2]~23_combout\))) # (!\Hex420|decOut_0[2]~0_combout\ & (\sum|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|Mux5~0_combout\,
	datab => \sum|decOut[2]~23_combout\,
	datac => \Hex420|decOut_0[2]~0_combout\,
	datad => \bu1|output[3]~0_combout\,
	combout => \sum|decOut[2]~22_combout\);

-- Location: LCCOMB_X75_Y32_N24
\sum|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|Mux6~0_combout\ = (\sum|Add0~0_combout\ & ((\sum|Add0~1_combout\ & (\sum|Add0~4_combout\ & !\sum|Add0~3_combout\)) # (!\sum|Add0~1_combout\ & (!\sum|Add0~4_combout\ & \sum|Add0~3_combout\)))) # (!\sum|Add0~0_combout\ & (\sum|Add0~3_combout\ & 
-- (\sum|Add0~1_combout\ $ (\sum|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|Add0~0_combout\,
	datab => \sum|Add0~1_combout\,
	datac => \sum|Add0~4_combout\,
	datad => \sum|Add0~3_combout\,
	combout => \sum|Mux6~0_combout\);

-- Location: LCCOMB_X75_Y32_N10
\sum|decOut[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[1]~26_combout\ = (\bu1|output[3]~0_combout\) # ((GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & (\sum|decOut[1]~26_combout\)) # (!GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & ((\sum|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hex420|decOut_0[2]~0clkctrl_outclk\,
	datab => \sum|decOut[1]~26_combout\,
	datac => \bu1|output[3]~0_combout\,
	datad => \sum|Mux6~0_combout\,
	combout => \sum|decOut[1]~26_combout\);

-- Location: LCCOMB_X75_Y32_N26
\sum|decOut[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[1]~29_combout\ = \sum|decOut[1]~26_combout\ $ (((\dp|counter\(0) & !\dp|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|counter\(0),
	datac => \dp|counter\(1),
	datad => \sum|decOut[1]~26_combout\,
	combout => \sum|decOut[1]~29_combout\);

-- Location: FF_X75_Y32_N27
\sum|decOut[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \sum|decOut[1]~29_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum|decOut[1]~_emulated_q\);

-- Location: LCCOMB_X75_Y32_N20
\sum|decOut[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[1]~28_combout\ = \sum|decOut[1]~26_combout\ $ (\sum|decOut[1]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sum|decOut[1]~26_combout\,
	datac => \sum|decOut[1]~_emulated_q\,
	combout => \sum|decOut[1]~28_combout\);

-- Location: LCCOMB_X75_Y32_N14
\sum|decOut[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[1]~27_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & (\sum|decOut[1]~28_combout\)) # (!\Hex420|decOut_0[2]~0_combout\ & ((\sum|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bu1|output[3]~0_combout\,
	datab => \sum|decOut[1]~28_combout\,
	datac => \sum|Mux6~0_combout\,
	datad => \Hex420|decOut_0[2]~0_combout\,
	combout => \sum|decOut[1]~27_combout\);

-- Location: LCCOMB_X76_Y32_N8
\sum|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|Mux7~0_combout\ = (\sum|Add0~3_combout\ & (!\sum|Add0~1_combout\ & (\sum|Add0~0_combout\ $ (!\sum|Add0~4_combout\)))) # (!\sum|Add0~3_combout\ & (\sum|Add0~0_combout\ & (\sum|Add0~1_combout\ $ (!\sum|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|Add0~3_combout\,
	datab => \sum|Add0~0_combout\,
	datac => \sum|Add0~1_combout\,
	datad => \sum|Add0~4_combout\,
	combout => \sum|Mux7~0_combout\);

-- Location: LCCOMB_X76_Y32_N14
\sum|decOut[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[0]~31_combout\ = (\bu1|output[3]~0_combout\) # ((GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & (\sum|decOut[0]~31_combout\)) # (!GLOBAL(\Hex420|decOut_0[2]~0clkctrl_outclk\) & ((\sum|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|decOut[0]~31_combout\,
	datab => \Hex420|decOut_0[2]~0clkctrl_outclk\,
	datac => \sum|Mux7~0_combout\,
	datad => \bu1|output[3]~0_combout\,
	combout => \sum|decOut[0]~31_combout\);

-- Location: FF_X76_Y32_N15
\sum|decOut[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \sum|decOut[0]~31_combout\,
	clrn => \hs0|ALT_INV_decOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum|decOut[0]~_emulated_q\);

-- Location: LCCOMB_X74_Y35_N20
\sum|decOut[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[0]~33_combout\ = \sum|decOut[0]~_emulated_q\ $ (\sum|decOut[0]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum|decOut[0]~_emulated_q\,
	datad => \sum|decOut[0]~31_combout\,
	combout => \sum|decOut[0]~33_combout\);

-- Location: LCCOMB_X74_Y35_N6
\sum|decOut[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|decOut[0]~32_combout\ = (\bu1|output[3]~0_combout\) # ((\Hex420|decOut_0[2]~0_combout\ & (\sum|decOut[0]~33_combout\)) # (!\Hex420|decOut_0[2]~0_combout\ & ((\sum|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bu1|output[3]~0_combout\,
	datab => \sum|decOut[0]~33_combout\,
	datac => \Hex420|decOut_0[2]~0_combout\,
	datad => \sum|Mux7~0_combout\,
	combout => \sum|decOut[0]~32_combout\);

-- Location: LCCOMB_X74_Y34_N12
\hge|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|Mux0~0_combout\ = (\Game|Tcounter2\(1) & (!\Game|Tcounter2\(3) & ((!\Game|Tcounter2\(2)) # (!\Game|Tcounter2\(0))))) # (!\Game|Tcounter2\(1) & (\Game|Tcounter2\(3) $ (((\Game|Tcounter2\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter2\(3),
	datab => \Game|Tcounter2\(1),
	datac => \Game|Tcounter2\(0),
	datad => \Game|Tcounter2\(2),
	combout => \hge|Mux0~0_combout\);

-- Location: LCCOMB_X75_Y34_N4
\hge|decOut_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|decOut_0~5_combout\ = (\match|win2~q\) # ((\hge|decOut_0[3]~4_combout\ & (!\set|Equal5~0_combout\ & \hge|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hge|decOut_0[3]~4_combout\,
	datab => \set|Equal5~0_combout\,
	datac => \match|win2~q\,
	datad => \hge|Mux0~0_combout\,
	combout => \hge|decOut_0~5_combout\);

-- Location: LCCOMB_X74_Y33_N30
\hge|decOut_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|decOut_0~2_combout\ = (!\Game|counter2\(1) & (((\Game|counter1\(0)) # (!\Game|counter1\(2))) # (!\Game|counter1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter1\(1),
	datab => \Game|counter1\(2),
	datac => \Game|counter1\(0),
	datad => \Game|counter2\(1),
	combout => \hge|decOut_0~2_combout\);

-- Location: LCCOMB_X74_Y33_N20
\Game|dOut2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|dOut2[0]~0_combout\ = (\Game|counter2\(0)) # ((\Game|counter1\(2) & (!\Game|counter1\(0) & \Game|counter1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter2\(0),
	datab => \Game|counter1\(2),
	datac => \Game|counter1\(0),
	datad => \Game|counter1\(1),
	combout => \Game|dOut2[0]~0_combout\);

-- Location: LCCOMB_X74_Y33_N10
\Game|dOut2[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|dOut2[2]~1_combout\ = (\Game|counter2\(2) & (((\Game|counter1\(0)) # (!\Game|counter1\(1))) # (!\Game|counter1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter2\(2),
	datab => \Game|counter1\(2),
	datac => \Game|counter1\(0),
	datad => \Game|counter1\(1),
	combout => \Game|dOut2[2]~1_combout\);

-- Location: LCCOMB_X74_Y33_N28
\hge|decOut_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|decOut_0~3_combout\ = (\Game|dOut2[2]~1_combout\ & (\hge|decOut_0~2_combout\ $ ((!\Game|dOut2[0]~0_combout\)))) # (!\Game|dOut2[2]~1_combout\ & (\hge|decOut_0~2_combout\ & ((\Game|counter2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hge|decOut_0~2_combout\,
	datab => \Game|dOut2[0]~0_combout\,
	datac => \Game|dOut2[2]~1_combout\,
	datad => \Game|counter2\(0),
	combout => \hge|decOut_0~3_combout\);

-- Location: LCCOMB_X74_Y33_N22
\hge|decOut_0[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|decOut_0[6]~6_combout\ = (\match|win1~q\) # ((!\hge|decOut_0~5_combout\ & ((\hge|decOut_0[3]~1_combout\) # (!\hge|decOut_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hge|decOut_0~5_combout\,
	datab => \hge|decOut_0[3]~1_combout\,
	datac => \match|win1~q\,
	datad => \hge|decOut_0~3_combout\,
	combout => \hge|decOut_0[6]~6_combout\);

-- Location: LCCOMB_X73_Y33_N6
\hge|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|Mux1~0_combout\ = (!\Game|Tcounter2\(3) & ((\Game|Tcounter2\(0) & ((\Game|Tcounter2\(1)) # (!\Game|Tcounter2\(2)))) # (!\Game|Tcounter2\(0) & (!\Game|Tcounter2\(2) & \Game|Tcounter2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter2\(3),
	datab => \Game|Tcounter2\(0),
	datac => \Game|Tcounter2\(2),
	datad => \Game|Tcounter2\(1),
	combout => \hge|Mux1~0_combout\);

-- Location: LCCOMB_X73_Y33_N12
\hge|decOut_0[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|decOut_0[5]~7_combout\ = (\Game|dOut2[2]~1_combout\ & (!\hge|decOut_0[3]~1_combout\ & (\Game|dOut2[0]~0_combout\ $ (!\hge|decOut_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|dOut2[0]~0_combout\,
	datab => \Game|dOut2[2]~1_combout\,
	datac => \hge|decOut_0[3]~1_combout\,
	datad => \hge|decOut_0~2_combout\,
	combout => \hge|decOut_0[5]~7_combout\);

-- Location: LCCOMB_X73_Y32_N14
\hge|decOut_0[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|decOut_0[5]~8_combout\ = (\hge|decOut_0[5]~7_combout\) # ((\Hex420|decOut_0[2]~0_combout\) # ((\hge|Mux1~0_combout\ & \hge|decOut_0[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hge|Mux1~0_combout\,
	datab => \hge|decOut_0[3]~1_combout\,
	datac => \hge|decOut_0[5]~7_combout\,
	datad => \Hex420|decOut_0[2]~0_combout\,
	combout => \hge|decOut_0[5]~8_combout\);

-- Location: LCCOMB_X73_Y33_N28
\hge|decOut_0[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|decOut_0[4]~10_combout\ = (\Game|dOut2[0]~0_combout\ & (!\Game|dOut2[2]~1_combout\ & (!\hge|decOut_0[3]~1_combout\ & \hge|decOut_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|dOut2[0]~0_combout\,
	datab => \Game|dOut2[2]~1_combout\,
	datac => \hge|decOut_0[3]~1_combout\,
	datad => \hge|decOut_0~2_combout\,
	combout => \hge|decOut_0[4]~10_combout\);

-- Location: LCCOMB_X72_Y33_N30
\hge|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|Mux2~0_combout\ = (\Game|Tcounter2\(1) & (\Game|Tcounter2\(0) & ((!\Game|Tcounter2\(3))))) # (!\Game|Tcounter2\(1) & ((\Game|Tcounter2\(2) & ((!\Game|Tcounter2\(3)))) # (!\Game|Tcounter2\(2) & (\Game|Tcounter2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter2\(0),
	datab => \Game|Tcounter2\(2),
	datac => \Game|Tcounter2\(3),
	datad => \Game|Tcounter2\(1),
	combout => \hge|Mux2~0_combout\);

-- Location: LCCOMB_X73_Y32_N24
\hge|decOut_0[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|decOut_0[4]~9_combout\ = (\hge|Mux2~0_combout\ & (\hge|decOut_0[3]~4_combout\ & ((!\set|counter2\(0)) # (!\set|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hge|Mux2~0_combout\,
	datab => \set|Equal5~1_combout\,
	datac => \set|counter2\(0),
	datad => \hge|decOut_0[3]~4_combout\,
	combout => \hge|decOut_0[4]~9_combout\);

-- Location: LCCOMB_X73_Y32_N22
\hge|decOut_0[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|decOut_0[4]~11_combout\ = (\match|win1~q\) # ((!\match|win2~q\ & ((\hge|decOut_0[4]~10_combout\) # (\hge|decOut_0[4]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hge|decOut_0[4]~10_combout\,
	datab => \hge|decOut_0[4]~9_combout\,
	datac => \match|win2~q\,
	datad => \match|win1~q\,
	combout => \hge|decOut_0[4]~11_combout\);

-- Location: LCCOMB_X73_Y33_N30
\hge|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|Mux3~0_combout\ = (!\Game|Tcounter2\(3) & ((\Game|Tcounter2\(0) & (\Game|Tcounter2\(2) $ (!\Game|Tcounter2\(1)))) # (!\Game|Tcounter2\(0) & (\Game|Tcounter2\(2) & !\Game|Tcounter2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter2\(3),
	datab => \Game|Tcounter2\(0),
	datac => \Game|Tcounter2\(2),
	datad => \Game|Tcounter2\(1),
	combout => \hge|Mux3~0_combout\);

-- Location: LCCOMB_X73_Y32_N4
\hge|decOut_0[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|decOut_0[3]~12_combout\ = (\match|win1~q\) # ((!\match|win2~q\ & (\hge|decOut_0[3]~1_combout\ & \hge|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \match|win2~q\,
	datab => \hge|decOut_0[3]~1_combout\,
	datac => \hge|Mux3~0_combout\,
	datad => \match|win1~q\,
	combout => \hge|decOut_0[3]~12_combout\);

-- Location: LCCOMB_X72_Y33_N12
\hge|decOut_0[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|decOut_0[2]~13_combout\ = (\match|win2~q\) # ((\hge|decOut_0[3]~1_combout\ & (!\Game|Tcounter2\(3) & \Game|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \match|win2~q\,
	datab => \hge|decOut_0[3]~1_combout\,
	datac => \Game|Tcounter2\(3),
	datad => \Game|Equal1~0_combout\,
	combout => \hge|decOut_0[2]~13_combout\);

-- Location: LCCOMB_X73_Y32_N10
\hge|decOut_0[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|decOut_0[2]~14_combout\ = (!\match|win1~q\ & \hge|decOut_0[2]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \match|win1~q\,
	datad => \hge|decOut_0[2]~13_combout\,
	combout => \hge|decOut_0[2]~14_combout\);

-- Location: LCCOMB_X73_Y33_N20
\hge|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|Mux5~0_combout\ = (!\Game|Tcounter2\(3) & (\Game|Tcounter2\(2) & (\Game|Tcounter2\(0) $ (\Game|Tcounter2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter2\(3),
	datab => \Game|Tcounter2\(0),
	datac => \Game|Tcounter2\(2),
	datad => \Game|Tcounter2\(1),
	combout => \hge|Mux5~0_combout\);

-- Location: LCCOMB_X73_Y32_N8
\hge|decOut_0[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|decOut_0[1]~15_combout\ = (!\Hex420|decOut_0[2]~0_combout\ & ((\hge|decOut_0[4]~10_combout\) # ((\hge|decOut_0[3]~1_combout\ & \hge|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hge|decOut_0[4]~10_combout\,
	datab => \hge|decOut_0[3]~1_combout\,
	datac => \hge|Mux5~0_combout\,
	datad => \Hex420|decOut_0[2]~0_combout\,
	combout => \hge|decOut_0[1]~15_combout\);

-- Location: LCCOMB_X72_Y33_N20
\hge|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|Mux6~0_combout\ = (!\Game|Tcounter2\(3) & (!\Game|Tcounter2\(1) & (\Game|Tcounter2\(0) $ (\Game|Tcounter2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter2\(0),
	datab => \Game|Tcounter2\(2),
	datac => \Game|Tcounter2\(3),
	datad => \Game|Tcounter2\(1),
	combout => \hge|Mux6~0_combout\);

-- Location: LCCOMB_X73_Y32_N2
\hge|decOut_0[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|decOut_0[0]~16_combout\ = (!\match|win2~q\ & ((\hge|decOut_0[5]~7_combout\) # ((\hge|Mux6~0_combout\ & \hge|decOut_0[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hge|decOut_0[5]~7_combout\,
	datab => \match|win2~q\,
	datac => \hge|Mux6~0_combout\,
	datad => \hge|decOut_0[3]~1_combout\,
	combout => \hge|decOut_0[0]~16_combout\);

-- Location: LCCOMB_X73_Y32_N0
\hge|decOut_0[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|decOut_0[0]~17_combout\ = (\match|win1~q\) # (\hge|decOut_0[0]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \match|win1~q\,
	datad => \hge|decOut_0[0]~16_combout\,
	combout => \hge|decOut_0[0]~17_combout\);

-- Location: LCCOMB_X73_Y33_N14
\hge|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|Mux7~2_combout\ = (!\hge|decOut_0[3]~1_combout\ & (!\hge|decOut_0~2_combout\ & ((!\Game|dOut2[2]~1_combout\) # (!\Game|dOut2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|dOut2[0]~0_combout\,
	datab => \Game|dOut2[2]~1_combout\,
	datac => \hge|decOut_0[3]~1_combout\,
	datad => \hge|decOut_0~2_combout\,
	combout => \hge|Mux7~2_combout\);

-- Location: LCCOMB_X73_Y32_N28
\hge|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|Mux7~3_combout\ = ((\match|win2~q\) # (\match|win1~q\)) # (!\hge|Mux7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hge|Mux7~2_combout\,
	datac => \match|win2~q\,
	datad => \match|win1~q\,
	combout => \hge|Mux7~3_combout\);

-- Location: LCCOMB_X73_Y33_N8
\hge|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|Mux8~2_combout\ = (!\hge|decOut_0[3]~1_combout\ & ((\Game|dOut2[0]~0_combout\ & ((!\hge|decOut_0~2_combout\))) # (!\Game|dOut2[0]~0_combout\ & ((\Game|dOut2[2]~1_combout\) # (\hge|decOut_0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|dOut2[0]~0_combout\,
	datab => \Game|dOut2[2]~1_combout\,
	datac => \hge|decOut_0[3]~1_combout\,
	datad => \hge|decOut_0~2_combout\,
	combout => \hge|Mux8~2_combout\);

-- Location: LCCOMB_X73_Y32_N26
\hge|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|Mux8~3_combout\ = ((\match|win2~q\) # (\match|win1~q\)) # (!\hge|Mux8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hge|Mux8~2_combout\,
	datac => \match|win2~q\,
	datad => \match|win1~q\,
	combout => \hge|Mux8~3_combout\);

-- Location: LCCOMB_X73_Y33_N22
\hge|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|Mux9~2_combout\ = (!\hge|decOut_0[3]~1_combout\ & ((\hge|decOut_0~2_combout\ & (!\Game|dOut2[0]~0_combout\)) # (!\hge|decOut_0~2_combout\ & ((\Game|dOut2[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|dOut2[0]~0_combout\,
	datab => \Game|dOut2[2]~1_combout\,
	datac => \hge|decOut_0[3]~1_combout\,
	datad => \hge|decOut_0~2_combout\,
	combout => \hge|Mux9~2_combout\);

-- Location: LCCOMB_X73_Y32_N12
\hge|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|Mux9~3_combout\ = (\hge|Mux9~2_combout\) # ((\match|win2~q\) # (\match|win1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hge|Mux9~2_combout\,
	datac => \match|win2~q\,
	datad => \match|win1~q\,
	combout => \hge|Mux9~3_combout\);

-- Location: LCCOMB_X73_Y33_N16
\hge|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|Mux10~2_combout\ = (!\hge|decOut_0[3]~1_combout\ & (\Game|dOut2[0]~0_combout\ $ (((\hge|decOut_0~2_combout\) # (!\Game|dOut2[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|dOut2[0]~0_combout\,
	datab => \Game|dOut2[2]~1_combout\,
	datac => \hge|decOut_0[3]~1_combout\,
	datad => \hge|decOut_0~2_combout\,
	combout => \hge|Mux10~2_combout\);

-- Location: LCCOMB_X73_Y32_N18
\hge|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|Mux10~3_combout\ = (\hge|Mux10~2_combout\) # ((\match|win2~q\) # (\match|win1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hge|Mux10~2_combout\,
	datac => \match|win2~q\,
	datad => \match|win1~q\,
	combout => \hge|Mux10~3_combout\);

-- Location: LCCOMB_X76_Y33_N4
\hge|decOut_0[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|decOut_0[4]~18_combout\ = (\Game|counter2\(0) & (\Game|Equal8~0_combout\ & !\Game|counter2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter2\(0),
	datac => \Game|Equal8~0_combout\,
	datad => \Game|counter2\(1),
	combout => \hge|decOut_0[4]~18_combout\);

-- Location: LCCOMB_X73_Y33_N10
\hge|decOut_1[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|decOut_1[2]~0_combout\ = (!\Hex420|decOut_0[2]~0_combout\ & ((\hge|decOut_0[3]~1_combout\) # ((\Game|dOut2[2]~1_combout\ & \hge|decOut_0[4]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hex420|decOut_0[2]~0_combout\,
	datab => \Game|dOut2[2]~1_combout\,
	datac => \hge|decOut_0[3]~1_combout\,
	datad => \hge|decOut_0[4]~18_combout\,
	combout => \hge|decOut_1[2]~0_combout\);

-- Location: LCCOMB_X74_Y33_N24
\hge|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|Mux12~2_combout\ = (!\hge|decOut_0[3]~1_combout\ & (((\Game|dOut2[2]~1_combout\ & !\hge|decOut_0~2_combout\)) # (!\Game|dOut2[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|dOut2[2]~1_combout\,
	datab => \Game|dOut2[0]~0_combout\,
	datac => \hge|decOut_0~2_combout\,
	datad => \hge|decOut_0[3]~1_combout\,
	combout => \hge|Mux12~2_combout\);

-- Location: LCCOMB_X75_Y35_N20
\hge|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hge|Mux12~3_combout\ = (\match|win1~q\) # ((\hge|Mux12~2_combout\) # (\match|win2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \match|win1~q\,
	datab => \hge|Mux12~2_combout\,
	datad => \match|win2~q\,
	combout => \hge|Mux12~3_combout\);

-- Location: LCCOMB_X74_Y33_N14
\Game|dOut1[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|dOut1[0]~6_combout\ = (\Game|counter1\(0)) # ((\Game|Equal9~0_combout\ & ((!\Game|counter1\(2)) # (!\Game|counter1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter1\(1),
	datab => \Game|counter1\(2),
	datac => \Game|Equal9~0_combout\,
	datad => \Game|counter1\(0),
	combout => \Game|dOut1[0]~6_combout\);

-- Location: LCCOMB_X74_Y33_N0
\Game|dOut1[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|dOut1[1]~8_combout\ = (!\Game|counter1\(1) & ((\Game|counter2\(0)) # ((!\Game|counter2\(2)) # (!\Game|counter2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter2\(0),
	datab => \Game|counter2\(1),
	datac => \Game|counter2\(2),
	datad => \Game|counter1\(1),
	combout => \Game|dOut1[1]~8_combout\);

-- Location: LCCOMB_X73_Y33_N2
\Game|dOut1[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|dOut1[2]~7_combout\ = (\Game|counter1\(2) & (((\Game|counter1\(1) & !\Game|counter1\(0))) # (!\Game|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Equal9~0_combout\,
	datab => \Game|counter1\(2),
	datac => \Game|counter1\(1),
	datad => \Game|counter1\(0),
	combout => \Game|dOut1[2]~7_combout\);

-- Location: LCCOMB_X74_Y34_N6
\Hex420|decOut_0[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|decOut_0[6]~1_combout\ = (!\hge|decOut_0[3]~1_combout\ & ((\Game|dOut1[0]~6_combout\ & (!\Game|dOut1[1]~8_combout\)) # (!\Game|dOut1[0]~6_combout\ & ((\Game|dOut1[1]~8_combout\) # (!\Game|dOut1[2]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|dOut1[0]~6_combout\,
	datab => \Game|dOut1[1]~8_combout\,
	datac => \hge|decOut_0[3]~1_combout\,
	datad => \Game|dOut1[2]~7_combout\,
	combout => \Hex420|decOut_0[6]~1_combout\);

-- Location: LCCOMB_X74_Y34_N28
\Hex420|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|Mux0~0_combout\ = (\Game|Tcounter1\(2) & (!\Game|Tcounter1\(3) & ((!\Game|Tcounter1\(1)) # (!\Game|Tcounter1\(0))))) # (!\Game|Tcounter1\(2) & ((\Game|Tcounter1\(3) $ (\Game|Tcounter1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter1\(0),
	datab => \Game|Tcounter1\(2),
	datac => \Game|Tcounter1\(3),
	datad => \Game|Tcounter1\(1),
	combout => \Hex420|Mux0~0_combout\);

-- Location: LCCOMB_X74_Y34_N2
\Hex420|decOut_0[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|decOut_0[6]~2_combout\ = (\Hex420|decOut_0[6]~1_combout\) # ((\Hex420|decOut_0[2]~0_combout\) # ((\hge|decOut_0[3]~1_combout\ & !\Hex420|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hex420|decOut_0[6]~1_combout\,
	datab => \Hex420|decOut_0[2]~0_combout\,
	datac => \hge|decOut_0[3]~1_combout\,
	datad => \Hex420|Mux0~0_combout\,
	combout => \Hex420|decOut_0[6]~2_combout\);

-- Location: LCCOMB_X72_Y34_N22
\Hex420|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|Mux1~0_combout\ = (!\Game|Tcounter1\(3) & ((\Game|Tcounter1\(2) & (\Game|Tcounter1\(1) & \Game|Tcounter1\(0))) # (!\Game|Tcounter1\(2) & ((\Game|Tcounter1\(1)) # (\Game|Tcounter1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter1\(2),
	datab => \Game|Tcounter1\(3),
	datac => \Game|Tcounter1\(1),
	datad => \Game|Tcounter1\(0),
	combout => \Hex420|Mux1~0_combout\);

-- Location: LCCOMB_X72_Y33_N22
\Hex420|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|Mux13~2_combout\ = (\Game|counter1\(0) & (((!\Game|counter1\(1) & !\Game|Equal9~0_combout\)))) # (!\Game|counter1\(0) & (\Game|counter1\(1) & ((\Game|counter1\(2)) # (!\Game|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter1\(2),
	datab => \Game|counter1\(0),
	datac => \Game|counter1\(1),
	datad => \Game|Equal9~0_combout\,
	combout => \Hex420|Mux13~2_combout\);

-- Location: LCCOMB_X73_Y33_N24
\Hex420|decOut_0[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|decOut_0[0]~3_combout\ = (!\Hex420|decOut_0[2]~0_combout\ & ((\hge|decOut_0[3]~1_combout\) # ((!\Game|dOut1[2]~7_combout\) # (!\Hex420|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hge|decOut_0[3]~1_combout\,
	datab => \Hex420|Mux13~2_combout\,
	datac => \Hex420|decOut_0[2]~0_combout\,
	datad => \Game|dOut1[2]~7_combout\,
	combout => \Hex420|decOut_0[0]~3_combout\);

-- Location: LCCOMB_X72_Y33_N10
\Hex420|decOut_0[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|decOut_0[5]~4_combout\ = ((\hge|decOut_0[3]~1_combout\ & \Hex420|Mux1~0_combout\)) # (!\Hex420|decOut_0[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hge|decOut_0[3]~1_combout\,
	datac => \Hex420|Mux1~0_combout\,
	datad => \Hex420|decOut_0[0]~3_combout\,
	combout => \Hex420|decOut_0[5]~4_combout\);

-- Location: LCCOMB_X72_Y33_N26
\Hex420|decOut_0[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|decOut_0[4]~5_combout\ = (!\Game|counter1\(2) & (\Game|counter1\(0) & (!\Game|counter1\(1) & !\Game|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter1\(2),
	datab => \Game|counter1\(0),
	datac => \Game|counter1\(1),
	datad => \Game|Equal9~0_combout\,
	combout => \Hex420|decOut_0[4]~5_combout\);

-- Location: LCCOMB_X73_Y34_N28
\Hex420|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|Mux2~0_combout\ = (\Game|Tcounter1\(1) & (((\Game|Tcounter1\(0) & !\Game|Tcounter1\(3))))) # (!\Game|Tcounter1\(1) & ((\Game|Tcounter1\(2) & ((!\Game|Tcounter1\(3)))) # (!\Game|Tcounter1\(2) & (\Game|Tcounter1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter1\(2),
	datab => \Game|Tcounter1\(1),
	datac => \Game|Tcounter1\(0),
	datad => \Game|Tcounter1\(3),
	combout => \Hex420|Mux2~0_combout\);

-- Location: LCCOMB_X73_Y33_N26
\Hex420|decOut_0[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|decOut_0[4]~6_combout\ = (\Hex420|decOut_0[2]~0_combout\) # ((\hge|decOut_0[3]~1_combout\ & ((\Hex420|Mux2~0_combout\))) # (!\hge|decOut_0[3]~1_combout\ & (\Hex420|decOut_0[4]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hex420|decOut_0[4]~5_combout\,
	datab => \hge|decOut_0[3]~1_combout\,
	datac => \Hex420|decOut_0[2]~0_combout\,
	datad => \Hex420|Mux2~0_combout\,
	combout => \Hex420|decOut_0[4]~6_combout\);

-- Location: LCCOMB_X74_Y34_N20
\Hex420|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|Mux3~0_combout\ = (!\Game|Tcounter1\(3) & ((\Game|Tcounter1\(0) & (\Game|Tcounter1\(2) $ (!\Game|Tcounter1\(1)))) # (!\Game|Tcounter1\(0) & (\Game|Tcounter1\(2) & !\Game|Tcounter1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter1\(0),
	datab => \Game|Tcounter1\(2),
	datac => \Game|Tcounter1\(3),
	datad => \Game|Tcounter1\(1),
	combout => \Hex420|Mux3~0_combout\);

-- Location: LCCOMB_X75_Y34_N2
\Hex420|decOut_0[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|decOut_0[3]~7_combout\ = (\Hex420|decOut_0[2]~0_combout\) # ((\hge|decOut_0[3]~4_combout\ & (!\set|Equal5~0_combout\ & \Hex420|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hge|decOut_0[3]~4_combout\,
	datab => \Hex420|decOut_0[2]~0_combout\,
	datac => \set|Equal5~0_combout\,
	datad => \Hex420|Mux3~0_combout\,
	combout => \Hex420|decOut_0[3]~7_combout\);

-- Location: LCCOMB_X74_Y34_N18
\Hex420|decOut_0[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|decOut_0[2]~9_combout\ = (\Hex420|decOut_0[2]~0_combout\) # ((\Hex420|decOut_0[2]~8_combout\ & (!\Game|Tcounter1\(3) & \hge|decOut_0[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hex420|decOut_0[2]~8_combout\,
	datab => \Hex420|decOut_0[2]~0_combout\,
	datac => \Game|Tcounter1\(3),
	datad => \hge|decOut_0[3]~1_combout\,
	combout => \Hex420|decOut_0[2]~9_combout\);

-- Location: LCCOMB_X73_Y34_N2
\Hex420|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|Mux5~0_combout\ = (\Game|Tcounter1\(2) & (!\Game|Tcounter1\(3) & (\Game|Tcounter1\(1) $ (\Game|Tcounter1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter1\(2),
	datab => \Game|Tcounter1\(1),
	datac => \Game|Tcounter1\(0),
	datad => \Game|Tcounter1\(3),
	combout => \Hex420|Mux5~0_combout\);

-- Location: LCCOMB_X73_Y33_N4
\Hex420|decOut_0[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|decOut_0[1]~10_combout\ = (\Hex420|decOut_0[2]~0_combout\) # ((\hge|decOut_0[3]~1_combout\ & (\Hex420|Mux5~0_combout\)) # (!\hge|decOut_0[3]~1_combout\ & ((\Hex420|decOut_0[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hex420|Mux5~0_combout\,
	datab => \hge|decOut_0[3]~1_combout\,
	datac => \Hex420|decOut_0[2]~0_combout\,
	datad => \Hex420|decOut_0[4]~5_combout\,
	combout => \Hex420|decOut_0[1]~10_combout\);

-- Location: LCCOMB_X73_Y34_N26
\Hex420|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|Mux6~0_combout\ = (!\Game|Tcounter1\(1) & (!\Game|Tcounter1\(3) & (\Game|Tcounter1\(2) $ (\Game|Tcounter1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|Tcounter1\(2),
	datab => \Game|Tcounter1\(1),
	datac => \Game|Tcounter1\(0),
	datad => \Game|Tcounter1\(3),
	combout => \Hex420|Mux6~0_combout\);

-- Location: LCCOMB_X73_Y33_N18
\Hex420|decOut_0[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|decOut_0[0]~11_combout\ = ((\hge|decOut_0[3]~1_combout\ & \Hex420|Mux6~0_combout\)) # (!\Hex420|decOut_0[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hge|decOut_0[3]~1_combout\,
	datac => \Hex420|Mux6~0_combout\,
	datad => \Hex420|decOut_0[0]~3_combout\,
	combout => \Hex420|decOut_0[0]~11_combout\);

-- Location: LCCOMB_X74_Y34_N16
\Hex420|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|Mux7~0_combout\ = (!\Game|dOut1[1]~8_combout\ & (!\hge|decOut_0[3]~1_combout\ & ((!\Game|dOut1[2]~7_combout\) # (!\Game|dOut1[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|dOut1[0]~6_combout\,
	datab => \Game|dOut1[1]~8_combout\,
	datac => \hge|decOut_0[3]~1_combout\,
	datad => \Game|dOut1[2]~7_combout\,
	combout => \Hex420|Mux7~0_combout\);

-- Location: LCCOMB_X74_Y34_N22
\Hex420|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|Mux7~1_combout\ = (\Hex420|decOut_0[2]~0_combout\) # (!\Hex420|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hex420|decOut_0[2]~0_combout\,
	datad => \Hex420|Mux7~0_combout\,
	combout => \Hex420|Mux7~1_combout\);

-- Location: LCCOMB_X74_Y34_N24
\Hex420|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|Mux8~0_combout\ = (!\hge|decOut_0[3]~1_combout\ & ((\Game|dOut1[0]~6_combout\ & (!\Game|dOut1[1]~8_combout\)) # (!\Game|dOut1[0]~6_combout\ & ((\Game|dOut1[1]~8_combout\) # (\Game|dOut1[2]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|dOut1[0]~6_combout\,
	datab => \Game|dOut1[1]~8_combout\,
	datac => \hge|decOut_0[3]~1_combout\,
	datad => \Game|dOut1[2]~7_combout\,
	combout => \Hex420|Mux8~0_combout\);

-- Location: LCCOMB_X73_Y32_N6
\Hex420|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|Mux8~1_combout\ = (\Hex420|decOut_0[2]~0_combout\) # (!\Hex420|Mux8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Hex420|Mux8~0_combout\,
	datad => \Hex420|decOut_0[2]~0_combout\,
	combout => \Hex420|Mux8~1_combout\);

-- Location: LCCOMB_X74_Y34_N30
\Hex420|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|Mux9~0_combout\ = (!\hge|decOut_0[3]~1_combout\ & ((\Game|dOut1[1]~8_combout\ & (!\Game|dOut1[0]~6_combout\)) # (!\Game|dOut1[1]~8_combout\ & ((\Game|dOut1[2]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|dOut1[0]~6_combout\,
	datab => \Game|dOut1[1]~8_combout\,
	datac => \hge|decOut_0[3]~1_combout\,
	datad => \Game|dOut1[2]~7_combout\,
	combout => \Hex420|Mux9~0_combout\);

-- Location: LCCOMB_X74_Y34_N4
\Hex420|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|Mux9~1_combout\ = (\Hex420|decOut_0[2]~0_combout\) # (!\Hex420|Mux9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hex420|Mux9~0_combout\,
	datad => \Hex420|decOut_0[2]~0_combout\,
	combout => \Hex420|Mux9~1_combout\);

-- Location: LCCOMB_X74_Y34_N26
\Hex420|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|Mux10~0_combout\ = (!\hge|decOut_0[3]~1_combout\ & (\Game|dOut1[0]~6_combout\ $ (((\Game|dOut1[1]~8_combout\) # (!\Game|dOut1[2]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|dOut1[0]~6_combout\,
	datab => \Game|dOut1[1]~8_combout\,
	datac => \hge|decOut_0[3]~1_combout\,
	datad => \Game|dOut1[2]~7_combout\,
	combout => \Hex420|Mux10~0_combout\);

-- Location: LCCOMB_X74_Y34_N0
\Hex420|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|Mux10~1_combout\ = (\Hex420|decOut_0[2]~0_combout\) # (!\Hex420|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Hex420|Mux10~0_combout\,
	datad => \Hex420|decOut_0[2]~0_combout\,
	combout => \Hex420|Mux10~1_combout\);

-- Location: LCCOMB_X72_Y33_N14
\Hex420|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|Mux11~0_combout\ = (\Game|counter1\(2) & (\Game|counter1\(0) & (!\Game|counter1\(1) & !\Game|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|counter1\(2),
	datab => \Game|counter1\(0),
	datac => \Game|counter1\(1),
	datad => \Game|Equal9~0_combout\,
	combout => \Hex420|Mux11~0_combout\);

-- Location: LCCOMB_X73_Y33_N0
\Hex420|decOut_1[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|decOut_1[2]~0_combout\ = (\Hex420|decOut_0[2]~0_combout\) # ((\hge|decOut_0[3]~1_combout\) # (\Hex420|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hex420|decOut_0[2]~0_combout\,
	datac => \hge|decOut_0[3]~1_combout\,
	datad => \Hex420|Mux11~0_combout\,
	combout => \Hex420|decOut_1[2]~0_combout\);

-- Location: LCCOMB_X74_Y34_N10
\Hex420|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|Mux12~0_combout\ = (!\hge|decOut_0[3]~1_combout\ & (((!\Game|dOut1[1]~8_combout\ & \Game|dOut1[2]~7_combout\)) # (!\Game|dOut1[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|dOut1[0]~6_combout\,
	datab => \Game|dOut1[1]~8_combout\,
	datac => \hge|decOut_0[3]~1_combout\,
	datad => \Game|dOut1[2]~7_combout\,
	combout => \Hex420|Mux12~0_combout\);

-- Location: LCCOMB_X74_Y34_N8
\Hex420|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hex420|Mux12~1_combout\ = (\Hex420|decOut_0[2]~0_combout\) # (!\Hex420|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hex420|decOut_0[2]~0_combout\,
	datad => \Hex420|Mux12~0_combout\,
	combout => \Hex420|Mux12~1_combout\);

-- Location: LCCOMB_X73_Y36_N16
\buf|output1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \buf|output1~0_combout\ = (\pgl|blink~q\ & \Hex420|decOut_0[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pgl|blink~q\,
	datad => \Hex420|decOut_0[2]~0_combout\,
	combout => \buf|output1~0_combout\);

-- Location: LCCOMB_X74_Y36_N28
\buff1|output[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \buff1|output[2]~0_combout\ = (\Hex420|decOut_0[2]~0_combout\ & ((!\pgl|blink~q\))) # (!\Hex420|decOut_0[2]~0_combout\ & (\match|s_set1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \match|s_set1\(2),
	datac => \Hex420|decOut_0[2]~0_combout\,
	datad => \pgl|blink~q\,
	combout => \buff1|output[2]~0_combout\);

-- Location: LCCOMB_X74_Y35_N10
\buff1|output[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \buff1|output[1]~1_combout\ = (\Hex420|decOut_0[2]~0_combout\ & ((\pgl|blink~q\))) # (!\Hex420|decOut_0[2]~0_combout\ & (\match|s_set1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \match|s_set1\(1),
	datac => \pgl|blink~q\,
	datad => \Hex420|decOut_0[2]~0_combout\,
	combout => \buff1|output[1]~1_combout\);

-- Location: LCCOMB_X74_Y36_N10
\buff1|output[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \buff1|output[0]~2_combout\ = (\Hex420|decOut_0[2]~0_combout\ & (!\pgl|blink~q\)) # (!\Hex420|decOut_0[2]~0_combout\ & ((\match|s_set1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hex420|decOut_0[2]~0_combout\,
	datab => \pgl|blink~q\,
	datac => \match|s_set1\(0),
	combout => \buff1|output[0]~2_combout\);

-- Location: LCCOMB_X74_Y35_N24
\buff2|output[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \buff2|output[2]~0_combout\ = (\Hex420|decOut_0[2]~0_combout\ & (!\pgl|blink~q\)) # (!\Hex420|decOut_0[2]~0_combout\ & ((\match|s_set2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hex420|decOut_0[2]~0_combout\,
	datac => \pgl|blink~q\,
	datad => \match|s_set2\(2),
	combout => \buff2|output[2]~0_combout\);

-- Location: LCCOMB_X74_Y36_N12
\buff2|output[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \buff2|output[1]~1_combout\ = (\Hex420|decOut_0[2]~0_combout\ & (\pgl|blink~q\)) # (!\Hex420|decOut_0[2]~0_combout\ & ((\match|s_set2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hex420|decOut_0[2]~0_combout\,
	datac => \pgl|blink~q\,
	datad => \match|s_set2\(1),
	combout => \buff2|output[1]~1_combout\);

-- Location: LCCOMB_X74_Y36_N8
\buff2|output[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \buff2|output[0]~2_combout\ = (\Hex420|decOut_0[2]~0_combout\ & (!\pgl|blink~q\)) # (!\Hex420|decOut_0[2]~0_combout\ & ((\match|s_set2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hex420|decOut_0[2]~0_combout\,
	datab => \pgl|blink~q\,
	datac => \match|s_set2\(0),
	combout => \buff2|output[0]~2_combout\);

-- Location: LCCOMB_X76_Y34_N16
\Game|j1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|j1~0_combout\ = (!\hge|decOut_0[3]~1_combout\ & (!\Game|PS.S~q\ & ((\Game|s_set2~1_combout\) # (\Game|s_set1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hge|decOut_0[3]~1_combout\,
	datab => \Game|s_set2~1_combout\,
	datac => \Game|PS.S~q\,
	datad => \Game|s_set1~4_combout\,
	combout => \Game|j1~0_combout\);

-- Location: LCCOMB_X74_Y34_N14
\Game|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|Add6~0_combout\ = \Game|Tcounter1\(0) $ (\Game|Tcounter2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Game|Tcounter1\(0),
	datad => \Game|Tcounter2\(0),
	combout => \Game|Add6~0_combout\);

-- Location: LCCOMB_X75_Y34_N10
\Game|odd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|odd~0_combout\ = (\hge|decOut_0[3]~1_combout\ & ((\DU1|s_pulsedOut~q\ & ((\Game|odd~q\))) # (!\DU1|s_pulsedOut~q\ & (!\Game|Add6~0_combout\)))) # (!\hge|decOut_0[3]~1_combout\ & (((\Game|odd~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hge|decOut_0[3]~1_combout\,
	datab => \Game|Add6~0_combout\,
	datac => \Game|odd~q\,
	datad => \DU1|s_pulsedOut~q\,
	combout => \Game|odd~0_combout\);

-- Location: FF_X75_Y34_N11
\Game|odd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \Game|odd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Game|odd~q\);

-- Location: LCCOMB_X75_Y34_N0
\Game|j1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|j1~1_combout\ = (\hge|decOut_0[3]~1_combout\ & (\Game|odd~q\ & ((\Game|Add6~0_combout\)))) # (!\hge|decOut_0[3]~1_combout\ & (((!\Game|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|odd~q\,
	datab => \Game|Selector8~0_combout\,
	datac => \hge|decOut_0[3]~1_combout\,
	datad => \Game|Add6~0_combout\,
	combout => \Game|j1~1_combout\);

-- Location: LCCOMB_X76_Y34_N24
\Game|j1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Game|j1~2_combout\ = \Game|j1~q\ $ (((\Game|j1~0_combout\) # (\Game|j1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Game|j1~0_combout\,
	datac => \Game|j1~q\,
	datad => \Game|j1~1_combout\,
	combout => \Game|j1~2_combout\);

-- Location: FF_X76_Y34_N25
\Game|j1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \Game|j1~2_combout\,
	clrn => \DU1|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Game|j1~q\);

-- Location: LCCOMB_X73_Y36_N2
\b0|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b0|output~0_combout\ = (\Hex420|decOut_0[2]~0_combout\ & (\pgl|blink~q\)) # (!\Hex420|decOut_0[2]~0_combout\ & ((!\Game|j1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pgl|blink~q\,
	datac => \Game|j1~q\,
	datad => \Hex420|decOut_0[2]~0_combout\,
	combout => \b0|output~0_combout\);

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

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


