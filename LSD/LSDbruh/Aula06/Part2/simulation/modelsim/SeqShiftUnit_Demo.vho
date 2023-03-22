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

-- DATE "04/22/2022 09:16:05"

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
-- AUD_ADCDAT	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK2_50	=>  Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK3_50	=>  Location: PIN_AG15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET0_INT_N	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_LINK100	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET0_MDIO	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CLK	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_COL	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CRS	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DV	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_ER	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_CLK	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_INT_N	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_LINK100	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET1_MDIO	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CLK	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_COL	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CRS	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[0]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[2]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[3]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DV	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_ER	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_CLK	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENETCLK_25	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FL_RY	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HSMC_CLKIN0	=>  Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IRDA_RXD	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OTG_INT	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SD_WP_N	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SMA_CLKIN	=>  Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TD_CLK27	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[0]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[2]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[3]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[4]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[5]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[6]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[7]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_HS	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_VS	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RTS	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RXD	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \AUD_ADCDAT~padout\ : std_logic;
SIGNAL \CLOCK2_50~padout\ : std_logic;
SIGNAL \CLOCK3_50~padout\ : std_logic;
SIGNAL \ENET0_INT_N~padout\ : std_logic;
SIGNAL \ENET0_LINK100~padout\ : std_logic;
SIGNAL \ENET0_MDIO~padout\ : std_logic;
SIGNAL \ENET0_RX_CLK~padout\ : std_logic;
SIGNAL \ENET0_RX_COL~padout\ : std_logic;
SIGNAL \ENET0_RX_CRS~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~padout\ : std_logic;
SIGNAL \ENET0_RX_DV~padout\ : std_logic;
SIGNAL \ENET0_RX_ER~padout\ : std_logic;
SIGNAL \ENET0_TX_CLK~padout\ : std_logic;
SIGNAL \ENET1_INT_N~padout\ : std_logic;
SIGNAL \ENET1_LINK100~padout\ : std_logic;
SIGNAL \ENET1_MDIO~padout\ : std_logic;
SIGNAL \ENET1_RX_CLK~padout\ : std_logic;
SIGNAL \ENET1_RX_COL~padout\ : std_logic;
SIGNAL \ENET1_RX_CRS~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[0]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[1]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[2]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[3]~padout\ : std_logic;
SIGNAL \ENET1_RX_DV~padout\ : std_logic;
SIGNAL \ENET1_RX_ER~padout\ : std_logic;
SIGNAL \ENET1_TX_CLK~padout\ : std_logic;
SIGNAL \ENETCLK_25~padout\ : std_logic;
SIGNAL \FL_RY~padout\ : std_logic;
SIGNAL \HSMC_CLKIN0~padout\ : std_logic;
SIGNAL \IRDA_RXD~padout\ : std_logic;
SIGNAL \OTG_INT~padout\ : std_logic;
SIGNAL \SD_WP_N~padout\ : std_logic;
SIGNAL \SMA_CLKIN~padout\ : std_logic;
SIGNAL \TD_CLK27~padout\ : std_logic;
SIGNAL \TD_DATA[0]~padout\ : std_logic;
SIGNAL \TD_DATA[1]~padout\ : std_logic;
SIGNAL \TD_DATA[2]~padout\ : std_logic;
SIGNAL \TD_DATA[3]~padout\ : std_logic;
SIGNAL \TD_DATA[4]~padout\ : std_logic;
SIGNAL \TD_DATA[5]~padout\ : std_logic;
SIGNAL \TD_DATA[6]~padout\ : std_logic;
SIGNAL \TD_DATA[7]~padout\ : std_logic;
SIGNAL \TD_HS~padout\ : std_logic;
SIGNAL \TD_VS~padout\ : std_logic;
SIGNAL \UART_RTS~padout\ : std_logic;
SIGNAL \UART_RXD~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \AUD_ADCDAT~ibuf_o\ : std_logic;
SIGNAL \CLOCK2_50~ibuf_o\ : std_logic;
SIGNAL \CLOCK3_50~ibuf_o\ : std_logic;
SIGNAL \ENET0_INT_N~ibuf_o\ : std_logic;
SIGNAL \ENET0_LINK100~ibuf_o\ : std_logic;
SIGNAL \ENET0_MDIO~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_COL~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_CRS~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DV~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_ER~ibuf_o\ : std_logic;
SIGNAL \ENET0_TX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET1_INT_N~ibuf_o\ : std_logic;
SIGNAL \ENET1_LINK100~ibuf_o\ : std_logic;
SIGNAL \ENET1_MDIO~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_COL~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_CRS~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DV~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_ER~ibuf_o\ : std_logic;
SIGNAL \ENET1_TX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENETCLK_25~ibuf_o\ : std_logic;
SIGNAL \FL_RY~ibuf_o\ : std_logic;
SIGNAL \HSMC_CLKIN0~ibuf_o\ : std_logic;
SIGNAL \IRDA_RXD~ibuf_o\ : std_logic;
SIGNAL \OTG_INT~ibuf_o\ : std_logic;
SIGNAL \SD_WP_N~ibuf_o\ : std_logic;
SIGNAL \SMA_CLKIN~ibuf_o\ : std_logic;
SIGNAL \SW[10]~ibuf_o\ : std_logic;
SIGNAL \SW[11]~ibuf_o\ : std_logic;
SIGNAL \SW[12]~ibuf_o\ : std_logic;
SIGNAL \SW[13]~ibuf_o\ : std_logic;
SIGNAL \SW[14]~ibuf_o\ : std_logic;
SIGNAL \SW[15]~ibuf_o\ : std_logic;
SIGNAL \SW[16]~ibuf_o\ : std_logic;
SIGNAL \SW[17]~ibuf_o\ : std_logic;
SIGNAL \TD_CLK27~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[4]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[5]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[6]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[7]~ibuf_o\ : std_logic;
SIGNAL \TD_HS~ibuf_o\ : std_logic;
SIGNAL \TD_VS~ibuf_o\ : std_logic;
SIGNAL \UART_RTS~ibuf_o\ : std_logic;
SIGNAL \UART_RXD~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL SW : std_logic_vector(9 DOWNTO 0);

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

ENTITY 	SeqShiftUnit_Demo IS
    PORT (
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0)
	);
END SeqShiftUnit_Demo;

-- Design Ports Information
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SeqShiftUnit_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkd|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \clkd|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \clkd|LessThan0~2_combout\ : std_logic;
SIGNAL \clkd|LessThan0~3_combout\ : std_logic;
SIGNAL \clkd|clkOut~2_combout\ : std_logic;
SIGNAL \clkd|LessThan0~0_combout\ : std_logic;
SIGNAL \clkd|clkOut~0_combout\ : std_logic;
SIGNAL \clkd|clkOut~1_combout\ : std_logic;
SIGNAL \clkd|LessThan0~1_combout\ : std_logic;
SIGNAL \clkd|LessThan0~6_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[0]~27\ : std_logic;
SIGNAL \clkd|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[1]~29\ : std_logic;
SIGNAL \clkd|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[2]~31\ : std_logic;
SIGNAL \clkd|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[3]~33\ : std_logic;
SIGNAL \clkd|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[4]~35\ : std_logic;
SIGNAL \clkd|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[5]~37\ : std_logic;
SIGNAL \clkd|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[6]~39\ : std_logic;
SIGNAL \clkd|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[7]~41\ : std_logic;
SIGNAL \clkd|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[8]~43\ : std_logic;
SIGNAL \clkd|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[9]~45\ : std_logic;
SIGNAL \clkd|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[10]~47\ : std_logic;
SIGNAL \clkd|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[11]~49\ : std_logic;
SIGNAL \clkd|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[12]~51\ : std_logic;
SIGNAL \clkd|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[13]~53\ : std_logic;
SIGNAL \clkd|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[14]~55\ : std_logic;
SIGNAL \clkd|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[15]~57\ : std_logic;
SIGNAL \clkd|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[16]~59\ : std_logic;
SIGNAL \clkd|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[17]~61\ : std_logic;
SIGNAL \clkd|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[18]~63\ : std_logic;
SIGNAL \clkd|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[19]~65\ : std_logic;
SIGNAL \clkd|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[20]~67\ : std_logic;
SIGNAL \clkd|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[21]~69\ : std_logic;
SIGNAL \clkd|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[22]~71\ : std_logic;
SIGNAL \clkd|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[23]~73\ : std_logic;
SIGNAL \clkd|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \clkd|s_divCounter[24]~75\ : std_logic;
SIGNAL \clkd|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \clkd|clkOut~3_combout\ : std_logic;
SIGNAL \clkd|LessThan0~4_combout\ : std_logic;
SIGNAL \clkd|LessThan0~5_combout\ : std_logic;
SIGNAL \clkd|clkOut~4_combout\ : std_logic;
SIGNAL \clkd|clkOut~5_combout\ : std_logic;
SIGNAL \clkd|clkOut~6_combout\ : std_logic;
SIGNAL \clkd|clkOut~7_combout\ : std_logic;
SIGNAL \clkd|clkOut~8_combout\ : std_logic;
SIGNAL \clkd|clkOut~9_combout\ : std_logic;
SIGNAL \clkd|clkOut~q\ : std_logic;
SIGNAL \clkd|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \ssu|s_shiftReg[6]~1_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \ssu|s_shiftReg[5]~2_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \ssu|s_shiftReg[4]~3_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \ssu|s_shiftReg[3]~4_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \ssu|s_shiftReg[2]~5_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \ssu|s_shiftReg[1]~6_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \ssu|s_shiftReg~10_combout\ : std_logic;
SIGNAL \ssu|s_shiftReg[0]~7_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \ssu|s_shiftReg[7]~8_combout\ : std_logic;
SIGNAL \ssu|s_shiftReg[7]~9_combout\ : std_logic;
SIGNAL \ssu|s_shiftReg[7]~0_combout\ : std_logic;
SIGNAL \ssu|s_shiftReg[7]~feeder_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \ssu|s_shiftReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clkd|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \clkd|ALT_INV_clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clkd|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkd|clkOut~q\);
\clkd|ALT_INV_clkOut~clkctrl_outclk\ <= NOT \clkd|clkOut~clkctrl_outclk\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssu|s_shiftReg\(7),
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
	i => \ssu|s_shiftReg\(6),
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
	i => \ssu|s_shiftReg\(5),
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
	i => \ssu|s_shiftReg\(4),
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
	i => \ssu|s_shiftReg\(3),
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
	i => \ssu|s_shiftReg\(2),
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
	i => \ssu|s_shiftReg\(1),
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
	i => \ssu|s_shiftReg\(0),
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

-- Location: LCCOMB_X60_Y3_N6
\clkd|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[0]~26_combout\ = \clkd|s_divCounter\(0) $ (VCC)
-- \clkd|s_divCounter[0]~27\ = CARRY(\clkd|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(0),
	datad => VCC,
	combout => \clkd|s_divCounter[0]~26_combout\,
	cout => \clkd|s_divCounter[0]~27\);

-- Location: LCCOMB_X59_Y3_N20
\clkd|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|LessThan0~2_combout\ = (((!\clkd|s_divCounter\(13)) # (!\clkd|s_divCounter\(12))) # (!\clkd|s_divCounter\(15))) # (!\clkd|s_divCounter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(14),
	datab => \clkd|s_divCounter\(15),
	datac => \clkd|s_divCounter\(12),
	datad => \clkd|s_divCounter\(13),
	combout => \clkd|LessThan0~2_combout\);

-- Location: LCCOMB_X59_Y3_N16
\clkd|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|LessThan0~3_combout\ = (!\clkd|s_divCounter\(16) & (\clkd|LessThan0~2_combout\ & (!\clkd|s_divCounter\(24) & !\clkd|s_divCounter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(16),
	datab => \clkd|LessThan0~2_combout\,
	datac => \clkd|s_divCounter\(24),
	datad => \clkd|s_divCounter\(18),
	combout => \clkd|LessThan0~3_combout\);

-- Location: LCCOMB_X59_Y3_N6
\clkd|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|clkOut~2_combout\ = (!\clkd|s_divCounter\(7) & (!\clkd|s_divCounter\(8) & (!\clkd|s_divCounter\(9) & !\clkd|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(7),
	datab => \clkd|s_divCounter\(8),
	datac => \clkd|s_divCounter\(9),
	datad => \clkd|s_divCounter\(10),
	combout => \clkd|clkOut~2_combout\);

-- Location: LCCOMB_X60_Y3_N4
\clkd|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|LessThan0~0_combout\ = (!\clkd|s_divCounter\(16) & (!\clkd|s_divCounter\(11) & (!\clkd|s_divCounter\(18) & !\clkd|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(16),
	datab => \clkd|s_divCounter\(11),
	datac => \clkd|s_divCounter\(18),
	datad => \clkd|s_divCounter\(24),
	combout => \clkd|LessThan0~0_combout\);

-- Location: LCCOMB_X59_Y3_N28
\clkd|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|clkOut~0_combout\ = (\clkd|s_divCounter\(0) & (\clkd|s_divCounter\(2) & (\clkd|s_divCounter\(3) & \clkd|s_divCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(0),
	datab => \clkd|s_divCounter\(2),
	datac => \clkd|s_divCounter\(3),
	datad => \clkd|s_divCounter\(1),
	combout => \clkd|clkOut~0_combout\);

-- Location: LCCOMB_X59_Y3_N14
\clkd|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|clkOut~1_combout\ = (\clkd|s_divCounter\(5) & (\clkd|s_divCounter\(4) & \clkd|clkOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkd|s_divCounter\(5),
	datac => \clkd|s_divCounter\(4),
	datad => \clkd|clkOut~0_combout\,
	combout => \clkd|clkOut~1_combout\);

-- Location: LCCOMB_X60_Y3_N2
\clkd|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|LessThan0~1_combout\ = (\clkd|clkOut~2_combout\ & (\clkd|LessThan0~0_combout\ & ((!\clkd|clkOut~1_combout\) # (!\clkd|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(6),
	datab => \clkd|clkOut~2_combout\,
	datac => \clkd|LessThan0~0_combout\,
	datad => \clkd|clkOut~1_combout\,
	combout => \clkd|LessThan0~1_combout\);

-- Location: LCCOMB_X60_Y3_N0
\clkd|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|LessThan0~6_combout\ = (!\clkd|LessThan0~5_combout\ & (!\clkd|LessThan0~3_combout\ & !\clkd|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkd|LessThan0~5_combout\,
	datac => \clkd|LessThan0~3_combout\,
	datad => \clkd|LessThan0~1_combout\,
	combout => \clkd|LessThan0~6_combout\);

-- Location: FF_X60_Y3_N7
\clkd|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkd|s_divCounter[0]~26_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(0));

-- Location: LCCOMB_X60_Y3_N8
\clkd|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[1]~28_combout\ = (\clkd|s_divCounter\(1) & (!\clkd|s_divCounter[0]~27\)) # (!\clkd|s_divCounter\(1) & ((\clkd|s_divCounter[0]~27\) # (GND)))
-- \clkd|s_divCounter[1]~29\ = CARRY((!\clkd|s_divCounter[0]~27\) # (!\clkd|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkd|s_divCounter\(1),
	datad => VCC,
	cin => \clkd|s_divCounter[0]~27\,
	combout => \clkd|s_divCounter[1]~28_combout\,
	cout => \clkd|s_divCounter[1]~29\);

-- Location: FF_X60_Y3_N9
\clkd|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkd|s_divCounter[1]~28_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(1));

-- Location: LCCOMB_X60_Y3_N10
\clkd|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[2]~30_combout\ = (\clkd|s_divCounter\(2) & (\clkd|s_divCounter[1]~29\ $ (GND))) # (!\clkd|s_divCounter\(2) & (!\clkd|s_divCounter[1]~29\ & VCC))
-- \clkd|s_divCounter[2]~31\ = CARRY((\clkd|s_divCounter\(2) & !\clkd|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(2),
	datad => VCC,
	cin => \clkd|s_divCounter[1]~29\,
	combout => \clkd|s_divCounter[2]~30_combout\,
	cout => \clkd|s_divCounter[2]~31\);

-- Location: FF_X60_Y3_N11
\clkd|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkd|s_divCounter[2]~30_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(2));

-- Location: LCCOMB_X60_Y3_N12
\clkd|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[3]~32_combout\ = (\clkd|s_divCounter\(3) & (!\clkd|s_divCounter[2]~31\)) # (!\clkd|s_divCounter\(3) & ((\clkd|s_divCounter[2]~31\) # (GND)))
-- \clkd|s_divCounter[3]~33\ = CARRY((!\clkd|s_divCounter[2]~31\) # (!\clkd|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(3),
	datad => VCC,
	cin => \clkd|s_divCounter[2]~31\,
	combout => \clkd|s_divCounter[3]~32_combout\,
	cout => \clkd|s_divCounter[3]~33\);

-- Location: FF_X60_Y3_N13
\clkd|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkd|s_divCounter[3]~32_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(3));

-- Location: LCCOMB_X60_Y3_N14
\clkd|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[4]~34_combout\ = (\clkd|s_divCounter\(4) & (\clkd|s_divCounter[3]~33\ $ (GND))) # (!\clkd|s_divCounter\(4) & (!\clkd|s_divCounter[3]~33\ & VCC))
-- \clkd|s_divCounter[4]~35\ = CARRY((\clkd|s_divCounter\(4) & !\clkd|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkd|s_divCounter\(4),
	datad => VCC,
	cin => \clkd|s_divCounter[3]~33\,
	combout => \clkd|s_divCounter[4]~34_combout\,
	cout => \clkd|s_divCounter[4]~35\);

-- Location: FF_X60_Y3_N15
\clkd|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkd|s_divCounter[4]~34_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(4));

-- Location: LCCOMB_X60_Y3_N16
\clkd|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[5]~36_combout\ = (\clkd|s_divCounter\(5) & (!\clkd|s_divCounter[4]~35\)) # (!\clkd|s_divCounter\(5) & ((\clkd|s_divCounter[4]~35\) # (GND)))
-- \clkd|s_divCounter[5]~37\ = CARRY((!\clkd|s_divCounter[4]~35\) # (!\clkd|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkd|s_divCounter\(5),
	datad => VCC,
	cin => \clkd|s_divCounter[4]~35\,
	combout => \clkd|s_divCounter[5]~36_combout\,
	cout => \clkd|s_divCounter[5]~37\);

-- Location: FF_X60_Y3_N17
\clkd|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkd|s_divCounter[5]~36_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(5));

-- Location: LCCOMB_X60_Y3_N18
\clkd|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[6]~38_combout\ = (\clkd|s_divCounter\(6) & (\clkd|s_divCounter[5]~37\ $ (GND))) # (!\clkd|s_divCounter\(6) & (!\clkd|s_divCounter[5]~37\ & VCC))
-- \clkd|s_divCounter[6]~39\ = CARRY((\clkd|s_divCounter\(6) & !\clkd|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkd|s_divCounter\(6),
	datad => VCC,
	cin => \clkd|s_divCounter[5]~37\,
	combout => \clkd|s_divCounter[6]~38_combout\,
	cout => \clkd|s_divCounter[6]~39\);

-- Location: FF_X60_Y3_N19
\clkd|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkd|s_divCounter[6]~38_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(6));

-- Location: LCCOMB_X60_Y3_N20
\clkd|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[7]~40_combout\ = (\clkd|s_divCounter\(7) & (!\clkd|s_divCounter[6]~39\)) # (!\clkd|s_divCounter\(7) & ((\clkd|s_divCounter[6]~39\) # (GND)))
-- \clkd|s_divCounter[7]~41\ = CARRY((!\clkd|s_divCounter[6]~39\) # (!\clkd|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkd|s_divCounter\(7),
	datad => VCC,
	cin => \clkd|s_divCounter[6]~39\,
	combout => \clkd|s_divCounter[7]~40_combout\,
	cout => \clkd|s_divCounter[7]~41\);

-- Location: FF_X60_Y3_N21
\clkd|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkd|s_divCounter[7]~40_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(7));

-- Location: LCCOMB_X60_Y3_N22
\clkd|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[8]~42_combout\ = (\clkd|s_divCounter\(8) & (\clkd|s_divCounter[7]~41\ $ (GND))) # (!\clkd|s_divCounter\(8) & (!\clkd|s_divCounter[7]~41\ & VCC))
-- \clkd|s_divCounter[8]~43\ = CARRY((\clkd|s_divCounter\(8) & !\clkd|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(8),
	datad => VCC,
	cin => \clkd|s_divCounter[7]~41\,
	combout => \clkd|s_divCounter[8]~42_combout\,
	cout => \clkd|s_divCounter[8]~43\);

-- Location: FF_X60_Y3_N23
\clkd|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkd|s_divCounter[8]~42_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(8));

-- Location: LCCOMB_X60_Y3_N24
\clkd|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[9]~44_combout\ = (\clkd|s_divCounter\(9) & (!\clkd|s_divCounter[8]~43\)) # (!\clkd|s_divCounter\(9) & ((\clkd|s_divCounter[8]~43\) # (GND)))
-- \clkd|s_divCounter[9]~45\ = CARRY((!\clkd|s_divCounter[8]~43\) # (!\clkd|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkd|s_divCounter\(9),
	datad => VCC,
	cin => \clkd|s_divCounter[8]~43\,
	combout => \clkd|s_divCounter[9]~44_combout\,
	cout => \clkd|s_divCounter[9]~45\);

-- Location: FF_X60_Y3_N25
\clkd|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkd|s_divCounter[9]~44_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(9));

-- Location: LCCOMB_X60_Y3_N26
\clkd|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[10]~46_combout\ = (\clkd|s_divCounter\(10) & (\clkd|s_divCounter[9]~45\ $ (GND))) # (!\clkd|s_divCounter\(10) & (!\clkd|s_divCounter[9]~45\ & VCC))
-- \clkd|s_divCounter[10]~47\ = CARRY((\clkd|s_divCounter\(10) & !\clkd|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(10),
	datad => VCC,
	cin => \clkd|s_divCounter[9]~45\,
	combout => \clkd|s_divCounter[10]~46_combout\,
	cout => \clkd|s_divCounter[10]~47\);

-- Location: FF_X60_Y3_N27
\clkd|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkd|s_divCounter[10]~46_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(10));

-- Location: LCCOMB_X60_Y3_N28
\clkd|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[11]~48_combout\ = (\clkd|s_divCounter\(11) & (!\clkd|s_divCounter[10]~47\)) # (!\clkd|s_divCounter\(11) & ((\clkd|s_divCounter[10]~47\) # (GND)))
-- \clkd|s_divCounter[11]~49\ = CARRY((!\clkd|s_divCounter[10]~47\) # (!\clkd|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkd|s_divCounter\(11),
	datad => VCC,
	cin => \clkd|s_divCounter[10]~47\,
	combout => \clkd|s_divCounter[11]~48_combout\,
	cout => \clkd|s_divCounter[11]~49\);

-- Location: FF_X60_Y3_N29
\clkd|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkd|s_divCounter[11]~48_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(11));

-- Location: LCCOMB_X60_Y3_N30
\clkd|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[12]~50_combout\ = (\clkd|s_divCounter\(12) & (\clkd|s_divCounter[11]~49\ $ (GND))) # (!\clkd|s_divCounter\(12) & (!\clkd|s_divCounter[11]~49\ & VCC))
-- \clkd|s_divCounter[12]~51\ = CARRY((\clkd|s_divCounter\(12) & !\clkd|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(12),
	datad => VCC,
	cin => \clkd|s_divCounter[11]~49\,
	combout => \clkd|s_divCounter[12]~50_combout\,
	cout => \clkd|s_divCounter[12]~51\);

-- Location: FF_X60_Y3_N31
\clkd|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkd|s_divCounter[12]~50_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(12));

-- Location: LCCOMB_X60_Y2_N0
\clkd|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[13]~52_combout\ = (\clkd|s_divCounter\(13) & (!\clkd|s_divCounter[12]~51\)) # (!\clkd|s_divCounter\(13) & ((\clkd|s_divCounter[12]~51\) # (GND)))
-- \clkd|s_divCounter[13]~53\ = CARRY((!\clkd|s_divCounter[12]~51\) # (!\clkd|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkd|s_divCounter\(13),
	datad => VCC,
	cin => \clkd|s_divCounter[12]~51\,
	combout => \clkd|s_divCounter[13]~52_combout\,
	cout => \clkd|s_divCounter[13]~53\);

-- Location: FF_X59_Y3_N1
\clkd|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkd|s_divCounter[13]~52_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(13));

-- Location: LCCOMB_X60_Y2_N2
\clkd|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[14]~54_combout\ = (\clkd|s_divCounter\(14) & (\clkd|s_divCounter[13]~53\ $ (GND))) # (!\clkd|s_divCounter\(14) & (!\clkd|s_divCounter[13]~53\ & VCC))
-- \clkd|s_divCounter[14]~55\ = CARRY((\clkd|s_divCounter\(14) & !\clkd|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkd|s_divCounter\(14),
	datad => VCC,
	cin => \clkd|s_divCounter[13]~53\,
	combout => \clkd|s_divCounter[14]~54_combout\,
	cout => \clkd|s_divCounter[14]~55\);

-- Location: FF_X59_Y3_N31
\clkd|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkd|s_divCounter[14]~54_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(14));

-- Location: LCCOMB_X60_Y2_N4
\clkd|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[15]~56_combout\ = (\clkd|s_divCounter\(15) & (!\clkd|s_divCounter[14]~55\)) # (!\clkd|s_divCounter\(15) & ((\clkd|s_divCounter[14]~55\) # (GND)))
-- \clkd|s_divCounter[15]~57\ = CARRY((!\clkd|s_divCounter[14]~55\) # (!\clkd|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkd|s_divCounter\(15),
	datad => VCC,
	cin => \clkd|s_divCounter[14]~55\,
	combout => \clkd|s_divCounter[15]~56_combout\,
	cout => \clkd|s_divCounter[15]~57\);

-- Location: FF_X59_Y3_N9
\clkd|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkd|s_divCounter[15]~56_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(15));

-- Location: LCCOMB_X60_Y2_N6
\clkd|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[16]~58_combout\ = (\clkd|s_divCounter\(16) & (\clkd|s_divCounter[15]~57\ $ (GND))) # (!\clkd|s_divCounter\(16) & (!\clkd|s_divCounter[15]~57\ & VCC))
-- \clkd|s_divCounter[16]~59\ = CARRY((\clkd|s_divCounter\(16) & !\clkd|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(16),
	datad => VCC,
	cin => \clkd|s_divCounter[15]~57\,
	combout => \clkd|s_divCounter[16]~58_combout\,
	cout => \clkd|s_divCounter[16]~59\);

-- Location: FF_X59_Y3_N27
\clkd|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkd|s_divCounter[16]~58_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(16));

-- Location: LCCOMB_X60_Y2_N8
\clkd|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[17]~60_combout\ = (\clkd|s_divCounter\(17) & (!\clkd|s_divCounter[16]~59\)) # (!\clkd|s_divCounter\(17) & ((\clkd|s_divCounter[16]~59\) # (GND)))
-- \clkd|s_divCounter[17]~61\ = CARRY((!\clkd|s_divCounter[16]~59\) # (!\clkd|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkd|s_divCounter\(17),
	datad => VCC,
	cin => \clkd|s_divCounter[16]~59\,
	combout => \clkd|s_divCounter[17]~60_combout\,
	cout => \clkd|s_divCounter[17]~61\);

-- Location: FF_X60_Y2_N9
\clkd|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkd|s_divCounter[17]~60_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(17));

-- Location: LCCOMB_X60_Y2_N10
\clkd|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[18]~62_combout\ = (\clkd|s_divCounter\(18) & (\clkd|s_divCounter[17]~61\ $ (GND))) # (!\clkd|s_divCounter\(18) & (!\clkd|s_divCounter[17]~61\ & VCC))
-- \clkd|s_divCounter[18]~63\ = CARRY((\clkd|s_divCounter\(18) & !\clkd|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(18),
	datad => VCC,
	cin => \clkd|s_divCounter[17]~61\,
	combout => \clkd|s_divCounter[18]~62_combout\,
	cout => \clkd|s_divCounter[18]~63\);

-- Location: FF_X60_Y2_N11
\clkd|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkd|s_divCounter[18]~62_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(18));

-- Location: LCCOMB_X60_Y2_N12
\clkd|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[19]~64_combout\ = (\clkd|s_divCounter\(19) & (!\clkd|s_divCounter[18]~63\)) # (!\clkd|s_divCounter\(19) & ((\clkd|s_divCounter[18]~63\) # (GND)))
-- \clkd|s_divCounter[19]~65\ = CARRY((!\clkd|s_divCounter[18]~63\) # (!\clkd|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(19),
	datad => VCC,
	cin => \clkd|s_divCounter[18]~63\,
	combout => \clkd|s_divCounter[19]~64_combout\,
	cout => \clkd|s_divCounter[19]~65\);

-- Location: FF_X60_Y2_N13
\clkd|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkd|s_divCounter[19]~64_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(19));

-- Location: LCCOMB_X60_Y2_N14
\clkd|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[20]~66_combout\ = (\clkd|s_divCounter\(20) & (\clkd|s_divCounter[19]~65\ $ (GND))) # (!\clkd|s_divCounter\(20) & (!\clkd|s_divCounter[19]~65\ & VCC))
-- \clkd|s_divCounter[20]~67\ = CARRY((\clkd|s_divCounter\(20) & !\clkd|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkd|s_divCounter\(20),
	datad => VCC,
	cin => \clkd|s_divCounter[19]~65\,
	combout => \clkd|s_divCounter[20]~66_combout\,
	cout => \clkd|s_divCounter[20]~67\);

-- Location: FF_X60_Y2_N15
\clkd|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkd|s_divCounter[20]~66_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(20));

-- Location: LCCOMB_X60_Y2_N16
\clkd|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[21]~68_combout\ = (\clkd|s_divCounter\(21) & (!\clkd|s_divCounter[20]~67\)) # (!\clkd|s_divCounter\(21) & ((\clkd|s_divCounter[20]~67\) # (GND)))
-- \clkd|s_divCounter[21]~69\ = CARRY((!\clkd|s_divCounter[20]~67\) # (!\clkd|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkd|s_divCounter\(21),
	datad => VCC,
	cin => \clkd|s_divCounter[20]~67\,
	combout => \clkd|s_divCounter[21]~68_combout\,
	cout => \clkd|s_divCounter[21]~69\);

-- Location: FF_X60_Y2_N17
\clkd|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkd|s_divCounter[21]~68_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(21));

-- Location: LCCOMB_X60_Y2_N18
\clkd|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[22]~70_combout\ = (\clkd|s_divCounter\(22) & (\clkd|s_divCounter[21]~69\ $ (GND))) # (!\clkd|s_divCounter\(22) & (!\clkd|s_divCounter[21]~69\ & VCC))
-- \clkd|s_divCounter[22]~71\ = CARRY((\clkd|s_divCounter\(22) & !\clkd|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(22),
	datad => VCC,
	cin => \clkd|s_divCounter[21]~69\,
	combout => \clkd|s_divCounter[22]~70_combout\,
	cout => \clkd|s_divCounter[22]~71\);

-- Location: FF_X60_Y2_N19
\clkd|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkd|s_divCounter[22]~70_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(22));

-- Location: LCCOMB_X60_Y2_N20
\clkd|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[23]~72_combout\ = (\clkd|s_divCounter\(23) & (!\clkd|s_divCounter[22]~71\)) # (!\clkd|s_divCounter\(23) & ((\clkd|s_divCounter[22]~71\) # (GND)))
-- \clkd|s_divCounter[23]~73\ = CARRY((!\clkd|s_divCounter[22]~71\) # (!\clkd|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkd|s_divCounter\(23),
	datad => VCC,
	cin => \clkd|s_divCounter[22]~71\,
	combout => \clkd|s_divCounter[23]~72_combout\,
	cout => \clkd|s_divCounter[23]~73\);

-- Location: FF_X60_Y2_N21
\clkd|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkd|s_divCounter[23]~72_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(23));

-- Location: LCCOMB_X60_Y2_N22
\clkd|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[24]~74_combout\ = (\clkd|s_divCounter\(24) & (\clkd|s_divCounter[23]~73\ $ (GND))) # (!\clkd|s_divCounter\(24) & (!\clkd|s_divCounter[23]~73\ & VCC))
-- \clkd|s_divCounter[24]~75\ = CARRY((\clkd|s_divCounter\(24) & !\clkd|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(24),
	datad => VCC,
	cin => \clkd|s_divCounter[23]~73\,
	combout => \clkd|s_divCounter[24]~74_combout\,
	cout => \clkd|s_divCounter[24]~75\);

-- Location: FF_X60_Y2_N23
\clkd|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkd|s_divCounter[24]~74_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(24));

-- Location: LCCOMB_X60_Y2_N24
\clkd|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|s_divCounter[25]~76_combout\ = \clkd|s_divCounter[24]~75\ $ (\clkd|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clkd|s_divCounter\(25),
	cin => \clkd|s_divCounter[24]~75\,
	combout => \clkd|s_divCounter[25]~76_combout\);

-- Location: FF_X60_Y2_N25
\clkd|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkd|s_divCounter[25]~76_combout\,
	sclr => \clkd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|s_divCounter\(25));

-- Location: LCCOMB_X60_Y2_N26
\clkd|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|clkOut~3_combout\ = (\clkd|s_divCounter\(19) & (\clkd|s_divCounter\(21) & (\clkd|s_divCounter\(20) & \clkd|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(19),
	datab => \clkd|s_divCounter\(21),
	datac => \clkd|s_divCounter\(20),
	datad => \clkd|s_divCounter\(22),
	combout => \clkd|clkOut~3_combout\);

-- Location: LCCOMB_X60_Y2_N28
\clkd|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|LessThan0~4_combout\ = ((!\clkd|s_divCounter\(18) & !\clkd|s_divCounter\(17))) # (!\clkd|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(18),
	datac => \clkd|s_divCounter\(17),
	datad => \clkd|s_divCounter\(23),
	combout => \clkd|LessThan0~4_combout\);

-- Location: LCCOMB_X60_Y2_N30
\clkd|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|LessThan0~5_combout\ = ((!\clkd|s_divCounter\(24) & ((\clkd|LessThan0~4_combout\) # (!\clkd|clkOut~3_combout\)))) # (!\clkd|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(24),
	datab => \clkd|s_divCounter\(25),
	datac => \clkd|clkOut~3_combout\,
	datad => \clkd|LessThan0~4_combout\,
	combout => \clkd|LessThan0~5_combout\);

-- Location: LCCOMB_X59_Y3_N4
\clkd|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|clkOut~4_combout\ = (\clkd|s_divCounter\(16) & (!\clkd|s_divCounter\(15) & (!\clkd|s_divCounter\(17) & \clkd|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(16),
	datab => \clkd|s_divCounter\(15),
	datac => \clkd|s_divCounter\(17),
	datad => \clkd|s_divCounter\(11),
	combout => \clkd|clkOut~4_combout\);

-- Location: LCCOMB_X59_Y2_N0
\clkd|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|clkOut~5_combout\ = (!\clkd|s_divCounter\(23) & (!\clkd|s_divCounter\(25) & (\clkd|s_divCounter\(18) & \clkd|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(23),
	datab => \clkd|s_divCounter\(25),
	datac => \clkd|s_divCounter\(18),
	datad => \clkd|s_divCounter\(24),
	combout => \clkd|clkOut~5_combout\);

-- Location: LCCOMB_X59_Y3_N18
\clkd|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|clkOut~6_combout\ = (\clkd|s_divCounter\(13) & (!\clkd|s_divCounter\(6) & (\clkd|s_divCounter\(14) & \clkd|clkOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(13),
	datab => \clkd|s_divCounter\(6),
	datac => \clkd|s_divCounter\(14),
	datad => \clkd|clkOut~5_combout\,
	combout => \clkd|clkOut~6_combout\);

-- Location: LCCOMB_X59_Y3_N12
\clkd|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|clkOut~7_combout\ = (\clkd|s_divCounter\(12) & (\clkd|clkOut~4_combout\ & (\clkd|clkOut~3_combout\ & \clkd|clkOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|s_divCounter\(12),
	datab => \clkd|clkOut~4_combout\,
	datac => \clkd|clkOut~3_combout\,
	datad => \clkd|clkOut~6_combout\,
	combout => \clkd|clkOut~7_combout\);

-- Location: LCCOMB_X59_Y3_N22
\clkd|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|clkOut~8_combout\ = (\clkd|clkOut~q\) # ((\clkd|clkOut~2_combout\ & (\clkd|clkOut~1_combout\ & \clkd|clkOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|clkOut~2_combout\,
	datab => \clkd|clkOut~1_combout\,
	datac => \clkd|clkOut~q\,
	datad => \clkd|clkOut~7_combout\,
	combout => \clkd|clkOut~8_combout\);

-- Location: LCCOMB_X59_Y3_N24
\clkd|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkd|clkOut~9_combout\ = (\clkd|clkOut~8_combout\ & ((\clkd|LessThan0~5_combout\) # ((\clkd|LessThan0~3_combout\) # (\clkd|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkd|LessThan0~5_combout\,
	datab => \clkd|LessThan0~3_combout\,
	datac => \clkd|LessThan0~1_combout\,
	datad => \clkd|clkOut~8_combout\,
	combout => \clkd|clkOut~9_combout\);

-- Location: FF_X59_Y3_N25
\clkd|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkd|clkOut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkd|clkOut~q\);

-- Location: CLKCTRL_G15
\clkd|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkd|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkd|clkOut~clkctrl_outclk\);

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

-- Location: LCCOMB_X114_Y35_N10
\ssu|s_shiftReg[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssu|s_shiftReg[6]~1_combout\ = (\KEY[2]~input_o\ & ((\ssu|s_shiftReg\(5)))) # (!\KEY[2]~input_o\ & (\ssu|s_shiftReg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \ssu|s_shiftReg\(7),
	datad => \ssu|s_shiftReg\(5),
	combout => \ssu|s_shiftReg[6]~1_combout\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

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

-- Location: FF_X114_Y35_N11
\ssu|s_shiftReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkd|ALT_INV_clkOut~clkctrl_outclk\,
	d => \ssu|s_shiftReg[6]~1_combout\,
	asdata => \SW[6]~input_o\,
	sload => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssu|s_shiftReg\(6));

-- Location: LCCOMB_X114_Y35_N12
\ssu|s_shiftReg[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssu|s_shiftReg[5]~2_combout\ = (\KEY[2]~input_o\ & ((\ssu|s_shiftReg\(4)))) # (!\KEY[2]~input_o\ & (\ssu|s_shiftReg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \ssu|s_shiftReg\(6),
	datad => \ssu|s_shiftReg\(4),
	combout => \ssu|s_shiftReg[5]~2_combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X114_Y35_N13
\ssu|s_shiftReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkd|ALT_INV_clkOut~clkctrl_outclk\,
	d => \ssu|s_shiftReg[5]~2_combout\,
	asdata => \SW[5]~input_o\,
	sload => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssu|s_shiftReg\(5));

-- Location: LCCOMB_X114_Y35_N26
\ssu|s_shiftReg[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssu|s_shiftReg[4]~3_combout\ = (\KEY[2]~input_o\ & (\ssu|s_shiftReg\(3))) # (!\KEY[2]~input_o\ & ((\ssu|s_shiftReg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \ssu|s_shiftReg\(3),
	datad => \ssu|s_shiftReg\(5),
	combout => \ssu|s_shiftReg[4]~3_combout\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X114_Y35_N27
\ssu|s_shiftReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkd|ALT_INV_clkOut~clkctrl_outclk\,
	d => \ssu|s_shiftReg[4]~3_combout\,
	asdata => \SW[4]~input_o\,
	sload => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssu|s_shiftReg\(4));

-- Location: LCCOMB_X114_Y35_N16
\ssu|s_shiftReg[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssu|s_shiftReg[3]~4_combout\ = (\KEY[2]~input_o\ & ((\ssu|s_shiftReg\(2)))) # (!\KEY[2]~input_o\ & (\ssu|s_shiftReg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \ssu|s_shiftReg\(4),
	datad => \ssu|s_shiftReg\(2),
	combout => \ssu|s_shiftReg[3]~4_combout\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X114_Y35_N17
\ssu|s_shiftReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkd|ALT_INV_clkOut~clkctrl_outclk\,
	d => \ssu|s_shiftReg[3]~4_combout\,
	asdata => \SW[3]~input_o\,
	sload => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssu|s_shiftReg\(3));

-- Location: LCCOMB_X114_Y35_N6
\ssu|s_shiftReg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssu|s_shiftReg[2]~5_combout\ = (\KEY[2]~input_o\ & (\ssu|s_shiftReg\(1))) # (!\KEY[2]~input_o\ & ((\ssu|s_shiftReg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \ssu|s_shiftReg\(1),
	datad => \ssu|s_shiftReg\(3),
	combout => \ssu|s_shiftReg[2]~5_combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X114_Y35_N7
\ssu|s_shiftReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkd|ALT_INV_clkOut~clkctrl_outclk\,
	d => \ssu|s_shiftReg[2]~5_combout\,
	asdata => \SW[2]~input_o\,
	sload => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssu|s_shiftReg\(2));

-- Location: LCCOMB_X114_Y35_N4
\ssu|s_shiftReg[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssu|s_shiftReg[1]~6_combout\ = (\KEY[2]~input_o\ & (\ssu|s_shiftReg\(0))) # (!\KEY[2]~input_o\ & ((\ssu|s_shiftReg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \ssu|s_shiftReg\(0),
	datad => \ssu|s_shiftReg\(2),
	combout => \ssu|s_shiftReg[1]~6_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X114_Y35_N5
\ssu|s_shiftReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkd|ALT_INV_clkOut~clkctrl_outclk\,
	d => \ssu|s_shiftReg[1]~6_combout\,
	asdata => \SW[1]~input_o\,
	sload => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssu|s_shiftReg\(1));

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

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X114_Y35_N18
\ssu|s_shiftReg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssu|s_shiftReg~10_combout\ = (\KEY[1]~input_o\ & (\KEY[3]~input_o\ & (\SW[8]~input_o\))) # (!\KEY[1]~input_o\ & (((\ssu|s_shiftReg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \ssu|s_shiftReg\(7),
	combout => \ssu|s_shiftReg~10_combout\);

-- Location: LCCOMB_X114_Y35_N22
\ssu|s_shiftReg[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssu|s_shiftReg[0]~7_combout\ = (\KEY[2]~input_o\ & ((\ssu|s_shiftReg~10_combout\))) # (!\KEY[2]~input_o\ & (\ssu|s_shiftReg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \ssu|s_shiftReg\(1),
	datad => \ssu|s_shiftReg~10_combout\,
	combout => \ssu|s_shiftReg[0]~7_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X114_Y35_N23
\ssu|s_shiftReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkd|ALT_INV_clkOut~clkctrl_outclk\,
	d => \ssu|s_shiftReg[0]~7_combout\,
	asdata => \SW[0]~input_o\,
	sload => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssu|s_shiftReg\(0));

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X114_Y35_N30
\ssu|s_shiftReg[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssu|s_shiftReg[7]~8_combout\ = ((\KEY[3]~input_o\ & (\SW[9]~input_o\)) # (!\KEY[3]~input_o\ & ((\ssu|s_shiftReg\(7))))) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \ssu|s_shiftReg\(7),
	combout => \ssu|s_shiftReg[7]~8_combout\);

-- Location: LCCOMB_X114_Y35_N20
\ssu|s_shiftReg[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssu|s_shiftReg[7]~9_combout\ = (\KEY[2]~input_o\ & ((\ssu|s_shiftReg\(6)))) # (!\KEY[2]~input_o\ & (\KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \KEY[2]~input_o\,
	datad => \ssu|s_shiftReg\(6),
	combout => \ssu|s_shiftReg[7]~9_combout\);

-- Location: LCCOMB_X114_Y35_N0
\ssu|s_shiftReg[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssu|s_shiftReg[7]~0_combout\ = (\KEY[2]~input_o\ & (((\ssu|s_shiftReg[7]~9_combout\)))) # (!\KEY[2]~input_o\ & (\ssu|s_shiftReg[7]~8_combout\ & ((\ssu|s_shiftReg\(0)) # (\ssu|s_shiftReg[7]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssu|s_shiftReg\(0),
	datab => \KEY[2]~input_o\,
	datac => \ssu|s_shiftReg[7]~8_combout\,
	datad => \ssu|s_shiftReg[7]~9_combout\,
	combout => \ssu|s_shiftReg[7]~0_combout\);

-- Location: LCCOMB_X114_Y35_N24
\ssu|s_shiftReg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssu|s_shiftReg[7]~feeder_combout\ = \ssu|s_shiftReg[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ssu|s_shiftReg[7]~0_combout\,
	combout => \ssu|s_shiftReg[7]~feeder_combout\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X114_Y35_N25
\ssu|s_shiftReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkd|ALT_INV_clkOut~clkctrl_outclk\,
	d => \ssu|s_shiftReg[7]~feeder_combout\,
	asdata => \SW[7]~input_o\,
	sload => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssu|s_shiftReg\(7));

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


