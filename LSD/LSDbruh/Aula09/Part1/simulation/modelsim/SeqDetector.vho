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

-- DATE "05/27/2022 09:17:06"

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
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \KEY[1]~ibuf_o\ : std_logic;
SIGNAL \KEY[2]~ibuf_o\ : std_logic;
SIGNAL \KEY[3]~ibuf_o\ : std_logic;
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
SIGNAL \SW[1]~ibuf_o\ : std_logic;
SIGNAL \SW[2]~ibuf_o\ : std_logic;
SIGNAL \SW[3]~ibuf_o\ : std_logic;
SIGNAL \SW[4]~ibuf_o\ : std_logic;
SIGNAL \SW[5]~ibuf_o\ : std_logic;
SIGNAL \SW[6]~ibuf_o\ : std_logic;
SIGNAL \SW[7]~ibuf_o\ : std_logic;
SIGNAL \SW[8]~ibuf_o\ : std_logic;
SIGNAL \SW[9]~ibuf_o\ : std_logic;
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
SIGNAL KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL SW : std_logic_vector(0 DOWNTO 0);

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

ENTITY 	SeqDetector IS
    PORT (
	KEY : IN std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(0 DOWNTO 0)
	);
END SeqDetector;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SeqDetector IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divider|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \divider|s_divCounter[0]~28_combout\ : std_logic;
SIGNAL \divider|s_divCounter[16]~61\ : std_logic;
SIGNAL \divider|s_divCounter[17]~62_combout\ : std_logic;
SIGNAL \divider|s_divCounter[17]~63\ : std_logic;
SIGNAL \divider|s_divCounter[18]~64_combout\ : std_logic;
SIGNAL \divider|s_divCounter[18]~65\ : std_logic;
SIGNAL \divider|s_divCounter[19]~66_combout\ : std_logic;
SIGNAL \divider|s_divCounter[19]~67\ : std_logic;
SIGNAL \divider|s_divCounter[20]~68_combout\ : std_logic;
SIGNAL \divider|s_divCounter[20]~69\ : std_logic;
SIGNAL \divider|s_divCounter[21]~70_combout\ : std_logic;
SIGNAL \divider|s_divCounter[21]~71\ : std_logic;
SIGNAL \divider|s_divCounter[22]~72_combout\ : std_logic;
SIGNAL \divider|s_divCounter[22]~73\ : std_logic;
SIGNAL \divider|s_divCounter[23]~74_combout\ : std_logic;
SIGNAL \divider|s_divCounter[23]~75\ : std_logic;
SIGNAL \divider|s_divCounter[24]~76_combout\ : std_logic;
SIGNAL \divider|s_divCounter[24]~77\ : std_logic;
SIGNAL \divider|s_divCounter[25]~78_combout\ : std_logic;
SIGNAL \divider|s_divCounter[25]~79\ : std_logic;
SIGNAL \divider|s_divCounter[26]~80_combout\ : std_logic;
SIGNAL \divider|s_divCounter[26]~81\ : std_logic;
SIGNAL \divider|s_divCounter[27]~82_combout\ : std_logic;
SIGNAL \divider|LessThan0~7_combout\ : std_logic;
SIGNAL \divider|LessThan0~8_combout\ : std_logic;
SIGNAL \divider|LessThan0~6_combout\ : std_logic;
SIGNAL \divider|LessThan0~4_combout\ : std_logic;
SIGNAL \divider|LessThan0~9_combout\ : std_logic;
SIGNAL \divider|LessThan0~10_combout\ : std_logic;
SIGNAL \divider|s_divCounter[0]~29\ : std_logic;
SIGNAL \divider|s_divCounter[1]~30_combout\ : std_logic;
SIGNAL \divider|s_divCounter[1]~31\ : std_logic;
SIGNAL \divider|s_divCounter[2]~32_combout\ : std_logic;
SIGNAL \divider|s_divCounter[2]~33\ : std_logic;
SIGNAL \divider|s_divCounter[3]~34_combout\ : std_logic;
SIGNAL \divider|s_divCounter[3]~35\ : std_logic;
SIGNAL \divider|s_divCounter[4]~36_combout\ : std_logic;
SIGNAL \divider|s_divCounter[4]~37\ : std_logic;
SIGNAL \divider|s_divCounter[5]~38_combout\ : std_logic;
SIGNAL \divider|s_divCounter[5]~39\ : std_logic;
SIGNAL \divider|s_divCounter[6]~40_combout\ : std_logic;
SIGNAL \divider|s_divCounter[6]~41\ : std_logic;
SIGNAL \divider|s_divCounter[7]~42_combout\ : std_logic;
SIGNAL \divider|s_divCounter[7]~43\ : std_logic;
SIGNAL \divider|s_divCounter[8]~44_combout\ : std_logic;
SIGNAL \divider|s_divCounter[8]~45\ : std_logic;
SIGNAL \divider|s_divCounter[9]~46_combout\ : std_logic;
SIGNAL \divider|s_divCounter[9]~47\ : std_logic;
SIGNAL \divider|s_divCounter[10]~48_combout\ : std_logic;
SIGNAL \divider|s_divCounter[10]~49\ : std_logic;
SIGNAL \divider|s_divCounter[11]~50_combout\ : std_logic;
SIGNAL \divider|s_divCounter[11]~51\ : std_logic;
SIGNAL \divider|s_divCounter[12]~52_combout\ : std_logic;
SIGNAL \divider|s_divCounter[12]~53\ : std_logic;
SIGNAL \divider|s_divCounter[13]~54_combout\ : std_logic;
SIGNAL \divider|s_divCounter[13]~55\ : std_logic;
SIGNAL \divider|s_divCounter[14]~56_combout\ : std_logic;
SIGNAL \divider|s_divCounter[14]~57\ : std_logic;
SIGNAL \divider|s_divCounter[15]~58_combout\ : std_logic;
SIGNAL \divider|s_divCounter[15]~59\ : std_logic;
SIGNAL \divider|s_divCounter[16]~60_combout\ : std_logic;
SIGNAL \divider|LessThan0~2_combout\ : std_logic;
SIGNAL \divider|LessThan0~0_combout\ : std_logic;
SIGNAL \divider|clkOut~0_combout\ : std_logic;
SIGNAL \divider|LessThan0~1_combout\ : std_logic;
SIGNAL \divider|LessThan0~3_combout\ : std_logic;
SIGNAL \divider|LessThan0~5_combout\ : std_logic;
SIGNAL \divider|clkOut~2_combout\ : std_logic;
SIGNAL \divider|clkOut~1_combout\ : std_logic;
SIGNAL \divider|clkOut~4_combout\ : std_logic;
SIGNAL \divider|clkOut~3_combout\ : std_logic;
SIGNAL \divider|clkOut~6_combout\ : std_logic;
SIGNAL \divider|clkOut~5_combout\ : std_logic;
SIGNAL \divider|clkOut~7_combout\ : std_logic;
SIGNAL \divider|clkOut~8_combout\ : std_logic;
SIGNAL \divider|clkOut~9_combout\ : std_logic;
SIGNAL \divider|clkOut~feeder_combout\ : std_logic;
SIGNAL \divider|clkOut~q\ : std_logic;
SIGNAL \divider|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \sync_1|q~0_combout\ : std_logic;
SIGNAL \sync_1|q~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \sync_0|q~feeder_combout\ : std_logic;
SIGNAL \sync_0|q~q\ : std_logic;
SIGNAL \sequence|PS~8_combout\ : std_logic;
SIGNAL \sequence|PS.S1~q\ : std_logic;
SIGNAL \sequence|PS~7_combout\ : std_logic;
SIGNAL \sequence|PS.S2~q\ : std_logic;
SIGNAL \sequence|PS~6_combout\ : std_logic;
SIGNAL \sequence|PS.S3~q\ : std_logic;
SIGNAL \sequence|zOut~1_combout\ : std_logic;
SIGNAL \divider|s_divCounter\ : std_logic_vector(27 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\divider|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divider|clkOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sequence|zOut~1_combout\,
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

-- Location: LCCOMB_X54_Y4_N4
\divider|s_divCounter[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[0]~28_combout\ = \divider|s_divCounter\(0) $ (VCC)
-- \divider|s_divCounter[0]~29\ = CARRY(\divider|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(0),
	datad => VCC,
	combout => \divider|s_divCounter[0]~28_combout\,
	cout => \divider|s_divCounter[0]~29\);

-- Location: LCCOMB_X54_Y3_N4
\divider|s_divCounter[16]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[16]~60_combout\ = (\divider|s_divCounter\(16) & (\divider|s_divCounter[15]~59\ $ (GND))) # (!\divider|s_divCounter\(16) & (!\divider|s_divCounter[15]~59\ & VCC))
-- \divider|s_divCounter[16]~61\ = CARRY((\divider|s_divCounter\(16) & !\divider|s_divCounter[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(16),
	datad => VCC,
	cin => \divider|s_divCounter[15]~59\,
	combout => \divider|s_divCounter[16]~60_combout\,
	cout => \divider|s_divCounter[16]~61\);

-- Location: LCCOMB_X54_Y3_N6
\divider|s_divCounter[17]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[17]~62_combout\ = (\divider|s_divCounter\(17) & (!\divider|s_divCounter[16]~61\)) # (!\divider|s_divCounter\(17) & ((\divider|s_divCounter[16]~61\) # (GND)))
-- \divider|s_divCounter[17]~63\ = CARRY((!\divider|s_divCounter[16]~61\) # (!\divider|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(17),
	datad => VCC,
	cin => \divider|s_divCounter[16]~61\,
	combout => \divider|s_divCounter[17]~62_combout\,
	cout => \divider|s_divCounter[17]~63\);

-- Location: FF_X54_Y3_N7
\divider|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[17]~62_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(17));

-- Location: LCCOMB_X54_Y3_N8
\divider|s_divCounter[18]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[18]~64_combout\ = (\divider|s_divCounter\(18) & (\divider|s_divCounter[17]~63\ $ (GND))) # (!\divider|s_divCounter\(18) & (!\divider|s_divCounter[17]~63\ & VCC))
-- \divider|s_divCounter[18]~65\ = CARRY((\divider|s_divCounter\(18) & !\divider|s_divCounter[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(18),
	datad => VCC,
	cin => \divider|s_divCounter[17]~63\,
	combout => \divider|s_divCounter[18]~64_combout\,
	cout => \divider|s_divCounter[18]~65\);

-- Location: FF_X54_Y3_N9
\divider|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[18]~64_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(18));

-- Location: LCCOMB_X54_Y3_N10
\divider|s_divCounter[19]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[19]~66_combout\ = (\divider|s_divCounter\(19) & (!\divider|s_divCounter[18]~65\)) # (!\divider|s_divCounter\(19) & ((\divider|s_divCounter[18]~65\) # (GND)))
-- \divider|s_divCounter[19]~67\ = CARRY((!\divider|s_divCounter[18]~65\) # (!\divider|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(19),
	datad => VCC,
	cin => \divider|s_divCounter[18]~65\,
	combout => \divider|s_divCounter[19]~66_combout\,
	cout => \divider|s_divCounter[19]~67\);

-- Location: FF_X54_Y3_N11
\divider|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[19]~66_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(19));

-- Location: LCCOMB_X54_Y3_N12
\divider|s_divCounter[20]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[20]~68_combout\ = (\divider|s_divCounter\(20) & (\divider|s_divCounter[19]~67\ $ (GND))) # (!\divider|s_divCounter\(20) & (!\divider|s_divCounter[19]~67\ & VCC))
-- \divider|s_divCounter[20]~69\ = CARRY((\divider|s_divCounter\(20) & !\divider|s_divCounter[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(20),
	datad => VCC,
	cin => \divider|s_divCounter[19]~67\,
	combout => \divider|s_divCounter[20]~68_combout\,
	cout => \divider|s_divCounter[20]~69\);

-- Location: FF_X54_Y3_N13
\divider|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[20]~68_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(20));

-- Location: LCCOMB_X54_Y3_N14
\divider|s_divCounter[21]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[21]~70_combout\ = (\divider|s_divCounter\(21) & (!\divider|s_divCounter[20]~69\)) # (!\divider|s_divCounter\(21) & ((\divider|s_divCounter[20]~69\) # (GND)))
-- \divider|s_divCounter[21]~71\ = CARRY((!\divider|s_divCounter[20]~69\) # (!\divider|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(21),
	datad => VCC,
	cin => \divider|s_divCounter[20]~69\,
	combout => \divider|s_divCounter[21]~70_combout\,
	cout => \divider|s_divCounter[21]~71\);

-- Location: FF_X54_Y3_N15
\divider|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[21]~70_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(21));

-- Location: LCCOMB_X54_Y3_N16
\divider|s_divCounter[22]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[22]~72_combout\ = (\divider|s_divCounter\(22) & (\divider|s_divCounter[21]~71\ $ (GND))) # (!\divider|s_divCounter\(22) & (!\divider|s_divCounter[21]~71\ & VCC))
-- \divider|s_divCounter[22]~73\ = CARRY((\divider|s_divCounter\(22) & !\divider|s_divCounter[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(22),
	datad => VCC,
	cin => \divider|s_divCounter[21]~71\,
	combout => \divider|s_divCounter[22]~72_combout\,
	cout => \divider|s_divCounter[22]~73\);

-- Location: FF_X54_Y3_N17
\divider|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[22]~72_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(22));

-- Location: LCCOMB_X54_Y3_N18
\divider|s_divCounter[23]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[23]~74_combout\ = (\divider|s_divCounter\(23) & (!\divider|s_divCounter[22]~73\)) # (!\divider|s_divCounter\(23) & ((\divider|s_divCounter[22]~73\) # (GND)))
-- \divider|s_divCounter[23]~75\ = CARRY((!\divider|s_divCounter[22]~73\) # (!\divider|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(23),
	datad => VCC,
	cin => \divider|s_divCounter[22]~73\,
	combout => \divider|s_divCounter[23]~74_combout\,
	cout => \divider|s_divCounter[23]~75\);

-- Location: FF_X54_Y3_N19
\divider|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[23]~74_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(23));

-- Location: LCCOMB_X54_Y3_N20
\divider|s_divCounter[24]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[24]~76_combout\ = (\divider|s_divCounter\(24) & (\divider|s_divCounter[23]~75\ $ (GND))) # (!\divider|s_divCounter\(24) & (!\divider|s_divCounter[23]~75\ & VCC))
-- \divider|s_divCounter[24]~77\ = CARRY((\divider|s_divCounter\(24) & !\divider|s_divCounter[23]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(24),
	datad => VCC,
	cin => \divider|s_divCounter[23]~75\,
	combout => \divider|s_divCounter[24]~76_combout\,
	cout => \divider|s_divCounter[24]~77\);

-- Location: FF_X54_Y3_N21
\divider|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[24]~76_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(24));

-- Location: LCCOMB_X54_Y3_N22
\divider|s_divCounter[25]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[25]~78_combout\ = (\divider|s_divCounter\(25) & (!\divider|s_divCounter[24]~77\)) # (!\divider|s_divCounter\(25) & ((\divider|s_divCounter[24]~77\) # (GND)))
-- \divider|s_divCounter[25]~79\ = CARRY((!\divider|s_divCounter[24]~77\) # (!\divider|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(25),
	datad => VCC,
	cin => \divider|s_divCounter[24]~77\,
	combout => \divider|s_divCounter[25]~78_combout\,
	cout => \divider|s_divCounter[25]~79\);

-- Location: FF_X54_Y3_N23
\divider|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[25]~78_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(25));

-- Location: LCCOMB_X54_Y3_N24
\divider|s_divCounter[26]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[26]~80_combout\ = (\divider|s_divCounter\(26) & (\divider|s_divCounter[25]~79\ $ (GND))) # (!\divider|s_divCounter\(26) & (!\divider|s_divCounter[25]~79\ & VCC))
-- \divider|s_divCounter[26]~81\ = CARRY((\divider|s_divCounter\(26) & !\divider|s_divCounter[25]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(26),
	datad => VCC,
	cin => \divider|s_divCounter[25]~79\,
	combout => \divider|s_divCounter[26]~80_combout\,
	cout => \divider|s_divCounter[26]~81\);

-- Location: FF_X54_Y3_N25
\divider|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[26]~80_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(26));

-- Location: LCCOMB_X54_Y3_N26
\divider|s_divCounter[27]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[27]~82_combout\ = \divider|s_divCounter\(27) $ (\divider|s_divCounter[26]~81\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(27),
	cin => \divider|s_divCounter[26]~81\,
	combout => \divider|s_divCounter[27]~82_combout\);

-- Location: FF_X54_Y3_N27
\divider|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[27]~82_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(27));

-- Location: LCCOMB_X55_Y4_N12
\divider|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|LessThan0~7_combout\ = ((!\divider|s_divCounter\(27)) # (!\divider|s_divCounter\(26))) # (!\divider|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(25),
	datac => \divider|s_divCounter\(26),
	datad => \divider|s_divCounter\(27),
	combout => \divider|LessThan0~7_combout\);

-- Location: LCCOMB_X54_Y3_N30
\divider|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|LessThan0~8_combout\ = (((!\divider|s_divCounter\(16) & !\divider|s_divCounter\(15))) # (!\divider|s_divCounter\(18))) # (!\divider|s_divCounter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(17),
	datab => \divider|s_divCounter\(16),
	datac => \divider|s_divCounter\(18),
	datad => \divider|s_divCounter\(15),
	combout => \divider|LessThan0~8_combout\);

-- Location: LCCOMB_X55_Y4_N22
\divider|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|LessThan0~6_combout\ = (!\divider|s_divCounter\(24) & (((!\divider|s_divCounter\(23)) # (!\divider|s_divCounter\(21))) # (!\divider|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(22),
	datab => \divider|s_divCounter\(21),
	datac => \divider|s_divCounter\(23),
	datad => \divider|s_divCounter\(24),
	combout => \divider|LessThan0~6_combout\);

-- Location: LCCOMB_X54_Y3_N28
\divider|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|LessThan0~4_combout\ = (!\divider|s_divCounter\(20) & (!\divider|s_divCounter\(24) & !\divider|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(20),
	datab => \divider|s_divCounter\(24),
	datad => \divider|s_divCounter\(19),
	combout => \divider|LessThan0~4_combout\);

-- Location: LCCOMB_X55_Y4_N8
\divider|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|LessThan0~9_combout\ = (\divider|LessThan0~7_combout\) # ((\divider|LessThan0~6_combout\) # ((\divider|LessThan0~8_combout\ & \divider|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|LessThan0~7_combout\,
	datab => \divider|LessThan0~8_combout\,
	datac => \divider|LessThan0~6_combout\,
	datad => \divider|LessThan0~4_combout\,
	combout => \divider|LessThan0~9_combout\);

-- Location: LCCOMB_X55_Y4_N30
\divider|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|LessThan0~10_combout\ = (!\divider|LessThan0~9_combout\ & !\divider|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divider|LessThan0~9_combout\,
	datad => \divider|LessThan0~5_combout\,
	combout => \divider|LessThan0~10_combout\);

-- Location: FF_X54_Y4_N5
\divider|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[0]~28_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(0));

-- Location: LCCOMB_X54_Y4_N6
\divider|s_divCounter[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[1]~30_combout\ = (\divider|s_divCounter\(1) & (!\divider|s_divCounter[0]~29\)) # (!\divider|s_divCounter\(1) & ((\divider|s_divCounter[0]~29\) # (GND)))
-- \divider|s_divCounter[1]~31\ = CARRY((!\divider|s_divCounter[0]~29\) # (!\divider|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(1),
	datad => VCC,
	cin => \divider|s_divCounter[0]~29\,
	combout => \divider|s_divCounter[1]~30_combout\,
	cout => \divider|s_divCounter[1]~31\);

-- Location: FF_X54_Y4_N7
\divider|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[1]~30_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(1));

-- Location: LCCOMB_X54_Y4_N8
\divider|s_divCounter[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[2]~32_combout\ = (\divider|s_divCounter\(2) & (\divider|s_divCounter[1]~31\ $ (GND))) # (!\divider|s_divCounter\(2) & (!\divider|s_divCounter[1]~31\ & VCC))
-- \divider|s_divCounter[2]~33\ = CARRY((\divider|s_divCounter\(2) & !\divider|s_divCounter[1]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(2),
	datad => VCC,
	cin => \divider|s_divCounter[1]~31\,
	combout => \divider|s_divCounter[2]~32_combout\,
	cout => \divider|s_divCounter[2]~33\);

-- Location: FF_X54_Y4_N9
\divider|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[2]~32_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(2));

-- Location: LCCOMB_X54_Y4_N10
\divider|s_divCounter[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[3]~34_combout\ = (\divider|s_divCounter\(3) & (!\divider|s_divCounter[2]~33\)) # (!\divider|s_divCounter\(3) & ((\divider|s_divCounter[2]~33\) # (GND)))
-- \divider|s_divCounter[3]~35\ = CARRY((!\divider|s_divCounter[2]~33\) # (!\divider|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(3),
	datad => VCC,
	cin => \divider|s_divCounter[2]~33\,
	combout => \divider|s_divCounter[3]~34_combout\,
	cout => \divider|s_divCounter[3]~35\);

-- Location: FF_X54_Y4_N11
\divider|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[3]~34_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(3));

-- Location: LCCOMB_X54_Y4_N12
\divider|s_divCounter[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[4]~36_combout\ = (\divider|s_divCounter\(4) & (\divider|s_divCounter[3]~35\ $ (GND))) # (!\divider|s_divCounter\(4) & (!\divider|s_divCounter[3]~35\ & VCC))
-- \divider|s_divCounter[4]~37\ = CARRY((\divider|s_divCounter\(4) & !\divider|s_divCounter[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(4),
	datad => VCC,
	cin => \divider|s_divCounter[3]~35\,
	combout => \divider|s_divCounter[4]~36_combout\,
	cout => \divider|s_divCounter[4]~37\);

-- Location: FF_X54_Y4_N13
\divider|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[4]~36_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(4));

-- Location: LCCOMB_X54_Y4_N14
\divider|s_divCounter[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[5]~38_combout\ = (\divider|s_divCounter\(5) & (!\divider|s_divCounter[4]~37\)) # (!\divider|s_divCounter\(5) & ((\divider|s_divCounter[4]~37\) # (GND)))
-- \divider|s_divCounter[5]~39\ = CARRY((!\divider|s_divCounter[4]~37\) # (!\divider|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(5),
	datad => VCC,
	cin => \divider|s_divCounter[4]~37\,
	combout => \divider|s_divCounter[5]~38_combout\,
	cout => \divider|s_divCounter[5]~39\);

-- Location: FF_X54_Y4_N15
\divider|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[5]~38_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(5));

-- Location: LCCOMB_X54_Y4_N16
\divider|s_divCounter[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[6]~40_combout\ = (\divider|s_divCounter\(6) & (\divider|s_divCounter[5]~39\ $ (GND))) # (!\divider|s_divCounter\(6) & (!\divider|s_divCounter[5]~39\ & VCC))
-- \divider|s_divCounter[6]~41\ = CARRY((\divider|s_divCounter\(6) & !\divider|s_divCounter[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(6),
	datad => VCC,
	cin => \divider|s_divCounter[5]~39\,
	combout => \divider|s_divCounter[6]~40_combout\,
	cout => \divider|s_divCounter[6]~41\);

-- Location: FF_X54_Y4_N17
\divider|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[6]~40_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(6));

-- Location: LCCOMB_X54_Y4_N18
\divider|s_divCounter[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[7]~42_combout\ = (\divider|s_divCounter\(7) & (!\divider|s_divCounter[6]~41\)) # (!\divider|s_divCounter\(7) & ((\divider|s_divCounter[6]~41\) # (GND)))
-- \divider|s_divCounter[7]~43\ = CARRY((!\divider|s_divCounter[6]~41\) # (!\divider|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(7),
	datad => VCC,
	cin => \divider|s_divCounter[6]~41\,
	combout => \divider|s_divCounter[7]~42_combout\,
	cout => \divider|s_divCounter[7]~43\);

-- Location: FF_X54_Y4_N19
\divider|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[7]~42_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(7));

-- Location: LCCOMB_X54_Y4_N20
\divider|s_divCounter[8]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[8]~44_combout\ = (\divider|s_divCounter\(8) & (\divider|s_divCounter[7]~43\ $ (GND))) # (!\divider|s_divCounter\(8) & (!\divider|s_divCounter[7]~43\ & VCC))
-- \divider|s_divCounter[8]~45\ = CARRY((\divider|s_divCounter\(8) & !\divider|s_divCounter[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(8),
	datad => VCC,
	cin => \divider|s_divCounter[7]~43\,
	combout => \divider|s_divCounter[8]~44_combout\,
	cout => \divider|s_divCounter[8]~45\);

-- Location: FF_X54_Y4_N21
\divider|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[8]~44_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(8));

-- Location: LCCOMB_X54_Y4_N22
\divider|s_divCounter[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[9]~46_combout\ = (\divider|s_divCounter\(9) & (!\divider|s_divCounter[8]~45\)) # (!\divider|s_divCounter\(9) & ((\divider|s_divCounter[8]~45\) # (GND)))
-- \divider|s_divCounter[9]~47\ = CARRY((!\divider|s_divCounter[8]~45\) # (!\divider|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(9),
	datad => VCC,
	cin => \divider|s_divCounter[8]~45\,
	combout => \divider|s_divCounter[9]~46_combout\,
	cout => \divider|s_divCounter[9]~47\);

-- Location: FF_X54_Y4_N23
\divider|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[9]~46_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(9));

-- Location: LCCOMB_X54_Y4_N24
\divider|s_divCounter[10]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[10]~48_combout\ = (\divider|s_divCounter\(10) & (\divider|s_divCounter[9]~47\ $ (GND))) # (!\divider|s_divCounter\(10) & (!\divider|s_divCounter[9]~47\ & VCC))
-- \divider|s_divCounter[10]~49\ = CARRY((\divider|s_divCounter\(10) & !\divider|s_divCounter[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(10),
	datad => VCC,
	cin => \divider|s_divCounter[9]~47\,
	combout => \divider|s_divCounter[10]~48_combout\,
	cout => \divider|s_divCounter[10]~49\);

-- Location: FF_X54_Y4_N25
\divider|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[10]~48_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(10));

-- Location: LCCOMB_X54_Y4_N26
\divider|s_divCounter[11]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[11]~50_combout\ = (\divider|s_divCounter\(11) & (!\divider|s_divCounter[10]~49\)) # (!\divider|s_divCounter\(11) & ((\divider|s_divCounter[10]~49\) # (GND)))
-- \divider|s_divCounter[11]~51\ = CARRY((!\divider|s_divCounter[10]~49\) # (!\divider|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(11),
	datad => VCC,
	cin => \divider|s_divCounter[10]~49\,
	combout => \divider|s_divCounter[11]~50_combout\,
	cout => \divider|s_divCounter[11]~51\);

-- Location: FF_X54_Y4_N27
\divider|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[11]~50_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(11));

-- Location: LCCOMB_X54_Y4_N28
\divider|s_divCounter[12]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[12]~52_combout\ = (\divider|s_divCounter\(12) & (\divider|s_divCounter[11]~51\ $ (GND))) # (!\divider|s_divCounter\(12) & (!\divider|s_divCounter[11]~51\ & VCC))
-- \divider|s_divCounter[12]~53\ = CARRY((\divider|s_divCounter\(12) & !\divider|s_divCounter[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(12),
	datad => VCC,
	cin => \divider|s_divCounter[11]~51\,
	combout => \divider|s_divCounter[12]~52_combout\,
	cout => \divider|s_divCounter[12]~53\);

-- Location: FF_X54_Y4_N29
\divider|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[12]~52_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(12));

-- Location: LCCOMB_X54_Y4_N30
\divider|s_divCounter[13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[13]~54_combout\ = (\divider|s_divCounter\(13) & (!\divider|s_divCounter[12]~53\)) # (!\divider|s_divCounter\(13) & ((\divider|s_divCounter[12]~53\) # (GND)))
-- \divider|s_divCounter[13]~55\ = CARRY((!\divider|s_divCounter[12]~53\) # (!\divider|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(13),
	datad => VCC,
	cin => \divider|s_divCounter[12]~53\,
	combout => \divider|s_divCounter[13]~54_combout\,
	cout => \divider|s_divCounter[13]~55\);

-- Location: FF_X54_Y4_N31
\divider|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[13]~54_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(13));

-- Location: LCCOMB_X54_Y3_N0
\divider|s_divCounter[14]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[14]~56_combout\ = (\divider|s_divCounter\(14) & (\divider|s_divCounter[13]~55\ $ (GND))) # (!\divider|s_divCounter\(14) & (!\divider|s_divCounter[13]~55\ & VCC))
-- \divider|s_divCounter[14]~57\ = CARRY((\divider|s_divCounter\(14) & !\divider|s_divCounter[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(14),
	datad => VCC,
	cin => \divider|s_divCounter[13]~55\,
	combout => \divider|s_divCounter[14]~56_combout\,
	cout => \divider|s_divCounter[14]~57\);

-- Location: FF_X54_Y3_N1
\divider|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[14]~56_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(14));

-- Location: LCCOMB_X54_Y3_N2
\divider|s_divCounter[15]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[15]~58_combout\ = (\divider|s_divCounter\(15) & (!\divider|s_divCounter[14]~57\)) # (!\divider|s_divCounter\(15) & ((\divider|s_divCounter[14]~57\) # (GND)))
-- \divider|s_divCounter[15]~59\ = CARRY((!\divider|s_divCounter[14]~57\) # (!\divider|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(15),
	datad => VCC,
	cin => \divider|s_divCounter[14]~57\,
	combout => \divider|s_divCounter[15]~58_combout\,
	cout => \divider|s_divCounter[15]~59\);

-- Location: FF_X54_Y3_N3
\divider|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[15]~58_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(15));

-- Location: FF_X54_Y3_N5
\divider|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_divCounter[16]~60_combout\,
	sclr => \divider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(16));

-- Location: LCCOMB_X54_Y4_N2
\divider|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|LessThan0~2_combout\ = (!\divider|s_divCounter\(11) & (!\divider|s_divCounter\(8) & (!\divider|s_divCounter\(10) & !\divider|s_divCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(11),
	datab => \divider|s_divCounter\(8),
	datac => \divider|s_divCounter\(10),
	datad => \divider|s_divCounter\(7),
	combout => \divider|LessThan0~2_combout\);

-- Location: LCCOMB_X55_Y4_N14
\divider|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|LessThan0~0_combout\ = ((!\divider|s_divCounter\(11) & (!\divider|s_divCounter\(9) & !\divider|s_divCounter\(10)))) # (!\divider|s_divCounter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(11),
	datab => \divider|s_divCounter\(9),
	datac => \divider|s_divCounter\(10),
	datad => \divider|s_divCounter\(12),
	combout => \divider|LessThan0~0_combout\);

-- Location: LCCOMB_X54_Y4_N0
\divider|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~0_combout\ = (\divider|s_divCounter\(1) & (\divider|s_divCounter\(0) & (\divider|s_divCounter\(2) & \divider|s_divCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(1),
	datab => \divider|s_divCounter\(0),
	datac => \divider|s_divCounter\(2),
	datad => \divider|s_divCounter\(3),
	combout => \divider|clkOut~0_combout\);

-- Location: LCCOMB_X55_Y4_N2
\divider|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|LessThan0~1_combout\ = (((!\divider|s_divCounter\(6)) # (!\divider|clkOut~0_combout\)) # (!\divider|s_divCounter\(4))) # (!\divider|s_divCounter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(5),
	datab => \divider|s_divCounter\(4),
	datac => \divider|clkOut~0_combout\,
	datad => \divider|s_divCounter\(6),
	combout => \divider|LessThan0~1_combout\);

-- Location: LCCOMB_X55_Y4_N16
\divider|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|LessThan0~3_combout\ = ((\divider|LessThan0~0_combout\) # ((\divider|LessThan0~2_combout\ & \divider|LessThan0~1_combout\))) # (!\divider|s_divCounter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|LessThan0~2_combout\,
	datab => \divider|s_divCounter\(13),
	datac => \divider|LessThan0~0_combout\,
	datad => \divider|LessThan0~1_combout\,
	combout => \divider|LessThan0~3_combout\);

-- Location: LCCOMB_X55_Y4_N6
\divider|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|LessThan0~5_combout\ = (!\divider|s_divCounter\(16) & (!\divider|s_divCounter\(14) & (\divider|LessThan0~4_combout\ & \divider|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(16),
	datab => \divider|s_divCounter\(14),
	datac => \divider|LessThan0~4_combout\,
	datad => \divider|LessThan0~3_combout\,
	combout => \divider|LessThan0~5_combout\);

-- Location: LCCOMB_X55_Y3_N0
\divider|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~2_combout\ = (\divider|s_divCounter\(14) & (\divider|s_divCounter\(17) & (\divider|s_divCounter\(16) & !\divider|s_divCounter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(14),
	datab => \divider|s_divCounter\(17),
	datac => \divider|s_divCounter\(16),
	datad => \divider|s_divCounter\(15),
	combout => \divider|clkOut~2_combout\);

-- Location: LCCOMB_X55_Y4_N4
\divider|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~1_combout\ = (!\divider|s_divCounter\(9) & (!\divider|s_divCounter\(13) & (\divider|s_divCounter\(11) & \divider|s_divCounter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(9),
	datab => \divider|s_divCounter\(13),
	datac => \divider|s_divCounter\(11),
	datad => \divider|s_divCounter\(12),
	combout => \divider|clkOut~1_combout\);

-- Location: LCCOMB_X55_Y4_N10
\divider|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~4_combout\ = (!\divider|s_divCounter\(6) & (\divider|s_divCounter\(26) & (\divider|s_divCounter\(25) & \divider|s_divCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(6),
	datab => \divider|s_divCounter\(26),
	datac => \divider|s_divCounter\(25),
	datad => \divider|s_divCounter\(8),
	combout => \divider|clkOut~4_combout\);

-- Location: LCCOMB_X55_Y4_N18
\divider|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~3_combout\ = (\divider|s_divCounter\(22) & (\divider|s_divCounter\(21) & (!\divider|s_divCounter\(10) & !\divider|s_divCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(22),
	datab => \divider|s_divCounter\(21),
	datac => \divider|s_divCounter\(10),
	datad => \divider|s_divCounter\(7),
	combout => \divider|clkOut~3_combout\);

-- Location: LCCOMB_X55_Y4_N26
\divider|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~6_combout\ = (\divider|s_divCounter\(5) & (!\divider|s_divCounter\(27) & (\divider|s_divCounter\(4) & \divider|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(5),
	datab => \divider|s_divCounter\(27),
	datac => \divider|s_divCounter\(4),
	datad => \divider|s_divCounter\(24),
	combout => \divider|clkOut~6_combout\);

-- Location: LCCOMB_X55_Y3_N14
\divider|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~5_combout\ = (\divider|s_divCounter\(20) & (!\divider|s_divCounter\(23) & (!\divider|s_divCounter\(19) & !\divider|s_divCounter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(20),
	datab => \divider|s_divCounter\(23),
	datac => \divider|s_divCounter\(19),
	datad => \divider|s_divCounter\(18),
	combout => \divider|clkOut~5_combout\);

-- Location: LCCOMB_X55_Y4_N24
\divider|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~7_combout\ = (\divider|clkOut~4_combout\ & (\divider|clkOut~3_combout\ & (\divider|clkOut~6_combout\ & \divider|clkOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|clkOut~4_combout\,
	datab => \divider|clkOut~3_combout\,
	datac => \divider|clkOut~6_combout\,
	datad => \divider|clkOut~5_combout\,
	combout => \divider|clkOut~7_combout\);

-- Location: LCCOMB_X55_Y4_N28
\divider|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~8_combout\ = (\divider|clkOut~0_combout\ & (\divider|clkOut~2_combout\ & (\divider|clkOut~1_combout\ & \divider|clkOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|clkOut~0_combout\,
	datab => \divider|clkOut~2_combout\,
	datac => \divider|clkOut~1_combout\,
	datad => \divider|clkOut~7_combout\,
	combout => \divider|clkOut~8_combout\);

-- Location: LCCOMB_X55_Y4_N0
\divider|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~9_combout\ = (\divider|LessThan0~5_combout\ & (((\divider|clkOut~q\) # (\divider|clkOut~8_combout\)))) # (!\divider|LessThan0~5_combout\ & (\divider|LessThan0~9_combout\ & ((\divider|clkOut~q\) # (\divider|clkOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|LessThan0~5_combout\,
	datab => \divider|LessThan0~9_combout\,
	datac => \divider|clkOut~q\,
	datad => \divider|clkOut~8_combout\,
	combout => \divider|clkOut~9_combout\);

-- Location: LCCOMB_X55_Y4_N20
\divider|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~feeder_combout\ = \divider|clkOut~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divider|clkOut~9_combout\,
	combout => \divider|clkOut~feeder_combout\);

-- Location: FF_X55_Y4_N21
\divider|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|clkOut~q\);

-- Location: CLKCTRL_G19
\divider|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \divider|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \divider|clkOut~clkctrl_outclk\);

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

-- Location: LCCOMB_X114_Y40_N10
\sync_1|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_1|q~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \sync_1|q~0_combout\);

-- Location: FF_X114_Y40_N11
\sync_1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sync_1|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_1|q~q\);

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

-- Location: LCCOMB_X114_Y40_N16
\sync_0|q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_0|q~feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \sync_0|q~feeder_combout\);

-- Location: FF_X114_Y40_N17
\sync_0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sync_0|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_0|q~q\);

-- Location: LCCOMB_X114_Y40_N18
\sequence|PS~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sequence|PS~8_combout\ = (!\sync_1|q~q\ & \sync_0|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_1|q~q\,
	datac => \sync_0|q~q\,
	combout => \sequence|PS~8_combout\);

-- Location: FF_X114_Y40_N19
\sequence|PS.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clkOut~clkctrl_outclk\,
	d => \sequence|PS~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequence|PS.S1~q\);

-- Location: LCCOMB_X114_Y40_N24
\sequence|PS~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sequence|PS~7_combout\ = (!\sync_1|q~q\ & (!\sync_0|q~q\ & \sequence|PS.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sync_1|q~q\,
	datac => \sync_0|q~q\,
	datad => \sequence|PS.S1~q\,
	combout => \sequence|PS~7_combout\);

-- Location: FF_X114_Y40_N25
\sequence|PS.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clkOut~clkctrl_outclk\,
	d => \sequence|PS~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequence|PS.S2~q\);

-- Location: LCCOMB_X114_Y40_N26
\sequence|PS~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sequence|PS~6_combout\ = (!\sync_1|q~q\ & (!\sync_0|q~q\ & \sequence|PS.S2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sync_1|q~q\,
	datac => \sync_0|q~q\,
	datad => \sequence|PS.S2~q\,
	combout => \sequence|PS~6_combout\);

-- Location: FF_X114_Y40_N27
\sequence|PS.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clkOut~clkctrl_outclk\,
	d => \sequence|PS~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequence|PS.S3~q\);

-- Location: LCCOMB_X114_Y40_N28
\sequence|zOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sequence|zOut~1_combout\ = (\sequence|PS.S3~q\ & \sync_0|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sequence|PS.S3~q\,
	datac => \sync_0|q~q\,
	combout => \sequence|zOut~1_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


