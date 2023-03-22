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

-- DATE "05/26/2022 18:01:41"

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
SIGNAL SW : std_logic_vector(1 DOWNTO 0);

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

ENTITY 	DrinksMachine IS
    PORT (
	LEDR : OUT std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(1 DOWNTO 0)
	);
END DrinksMachine;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DrinksMachine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Selector6~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bruh|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \bruh|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[0]~27\ : std_logic;
SIGNAL \bruh|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[1]~29\ : std_logic;
SIGNAL \bruh|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[2]~31\ : std_logic;
SIGNAL \bruh|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[3]~33\ : std_logic;
SIGNAL \bruh|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[4]~35\ : std_logic;
SIGNAL \bruh|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[5]~37\ : std_logic;
SIGNAL \bruh|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[6]~39\ : std_logic;
SIGNAL \bruh|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[7]~41\ : std_logic;
SIGNAL \bruh|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[8]~43\ : std_logic;
SIGNAL \bruh|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[9]~45\ : std_logic;
SIGNAL \bruh|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[10]~47\ : std_logic;
SIGNAL \bruh|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[11]~49\ : std_logic;
SIGNAL \bruh|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[12]~51\ : std_logic;
SIGNAL \bruh|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[13]~53\ : std_logic;
SIGNAL \bruh|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[14]~55\ : std_logic;
SIGNAL \bruh|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[15]~57\ : std_logic;
SIGNAL \bruh|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[16]~59\ : std_logic;
SIGNAL \bruh|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[17]~61\ : std_logic;
SIGNAL \bruh|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[18]~63\ : std_logic;
SIGNAL \bruh|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[19]~65\ : std_logic;
SIGNAL \bruh|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[20]~67\ : std_logic;
SIGNAL \bruh|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[21]~69\ : std_logic;
SIGNAL \bruh|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[22]~71\ : std_logic;
SIGNAL \bruh|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[23]~73\ : std_logic;
SIGNAL \bruh|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \bruh|s_divCounter[24]~75\ : std_logic;
SIGNAL \bruh|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \bruh|clkOut~0_combout\ : std_logic;
SIGNAL \bruh|LessThan0~0_combout\ : std_logic;
SIGNAL \bruh|LessThan0~1_combout\ : std_logic;
SIGNAL \bruh|clkOut~1_combout\ : std_logic;
SIGNAL \bruh|clkOut~2_combout\ : std_logic;
SIGNAL \bruh|clkOut~3_combout\ : std_logic;
SIGNAL \bruh|LessThan0~2_combout\ : std_logic;
SIGNAL \bruh|LessThan0~3_combout\ : std_logic;
SIGNAL \bruh|LessThan0~4_combout\ : std_logic;
SIGNAL \bruh|clkOut~4_combout\ : std_logic;
SIGNAL \bruh|clkOut~6_combout\ : std_logic;
SIGNAL \bruh|clkOut~5_combout\ : std_logic;
SIGNAL \bruh|clkOut~7_combout\ : std_logic;
SIGNAL \bruh|clkOut~8_combout\ : std_logic;
SIGNAL \bruh|clkOut~9_combout\ : std_logic;
SIGNAL \bruh|clkOut~feeder_combout\ : std_logic;
SIGNAL \bruh|clkOut~q\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst1|s_dirtyIn~q\ : std_logic;
SIGNAL \inst1|s_previousIn~q\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \inst1|Add0~27\ : std_logic;
SIGNAL \inst1|Add0~28_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst1|Add0~29\ : std_logic;
SIGNAL \inst1|Add0~30_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst1|Add0~31\ : std_logic;
SIGNAL \inst1|Add0~32_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst1|Add0~33\ : std_logic;
SIGNAL \inst1|Add0~34_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst1|Add0~35\ : std_logic;
SIGNAL \inst1|Add0~36_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst1|Add0~41\ : std_logic;
SIGNAL \inst1|Add0~42_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[1]~2_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[1]~3_combout\ : std_logic;
SIGNAL \inst1|Add0~37\ : std_logic;
SIGNAL \inst1|Add0~38_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \inst1|Add0~39\ : std_logic;
SIGNAL \inst1|Add0~40_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|LessThan0~3_combout\ : std_logic;
SIGNAL \inst1|LessThan0~4_combout\ : std_logic;
SIGNAL \inst1|LessThan0~5_combout\ : std_logic;
SIGNAL \inst1|LessThan0~6_combout\ : std_logic;
SIGNAL \inst1|LessThan0~7_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[1]~0_combout\ : std_logic;
SIGNAL \inst1|Add0~43\ : std_logic;
SIGNAL \inst1|Add0~44_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[1]~4_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~feeder_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~q\ : std_logic;
SIGNAL \bruh|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst2|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst2|s_dirtyIn~q\ : std_logic;
SIGNAL \inst2|s_previousIn~q\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst2|Add0~19\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst2|Add0~21\ : std_logic;
SIGNAL \inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst2|Add0~23\ : std_logic;
SIGNAL \inst2|Add0~24_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst2|Add0~25\ : std_logic;
SIGNAL \inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \inst2|Add0~27\ : std_logic;
SIGNAL \inst2|Add0~28_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst2|Add0~29\ : std_logic;
SIGNAL \inst2|Add0~30_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst2|Add0~31\ : std_logic;
SIGNAL \inst2|Add0~32_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst2|Add0~33\ : std_logic;
SIGNAL \inst2|Add0~34_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst2|Add0~35\ : std_logic;
SIGNAL \inst2|Add0~36_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \inst2|Add0~37\ : std_logic;
SIGNAL \inst2|Add0~38_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \inst2|Add0~39\ : std_logic;
SIGNAL \inst2|Add0~40_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[19]~2_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[19]~3_combout\ : std_logic;
SIGNAL \inst2|Add0~41\ : std_logic;
SIGNAL \inst2|Add0~42_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \inst2|LessThan0~4_combout\ : std_logic;
SIGNAL \inst2|LessThan0~5_combout\ : std_logic;
SIGNAL \inst2|LessThan0~6_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|LessThan0~3_combout\ : std_logic;
SIGNAL \inst2|LessThan0~7_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[19]~0_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst2|Add0~43\ : std_logic;
SIGNAL \inst2|Add0~44_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[19]~4_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst3|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst3|s_dirtyIn~q\ : std_logic;
SIGNAL \inst3|s_previousIn~feeder_combout\ : std_logic;
SIGNAL \inst3|s_previousIn~q\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst3|Add0~15\ : std_logic;
SIGNAL \inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst3|Add0~17\ : std_logic;
SIGNAL \inst3|Add0~18_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst3|Add0~19\ : std_logic;
SIGNAL \inst3|Add0~20_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst3|Add0~21\ : std_logic;
SIGNAL \inst3|Add0~22_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst3|Add0~23\ : std_logic;
SIGNAL \inst3|Add0~24_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst3|Add0~25\ : std_logic;
SIGNAL \inst3|Add0~26_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst3|Add0~27\ : std_logic;
SIGNAL \inst3|Add0~28_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst3|Add0~29\ : std_logic;
SIGNAL \inst3|Add0~30_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~4_combout\ : std_logic;
SIGNAL \inst3|Add0~31\ : std_logic;
SIGNAL \inst3|Add0~32_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst3|Add0~33\ : std_logic;
SIGNAL \inst3|Add0~34_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst3|Add0~35\ : std_logic;
SIGNAL \inst3|Add0~36_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[18]~17_combout\ : std_logic;
SIGNAL \inst3|Add0~37\ : std_logic;
SIGNAL \inst3|Add0~38_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[19]~18_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst3|Add0~39\ : std_logic;
SIGNAL \inst3|Add0~41\ : std_logic;
SIGNAL \inst3|Add0~42_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[4]~2_combout\ : std_logic;
SIGNAL \inst3|LessThan0~4_combout\ : std_logic;
SIGNAL \inst3|LessThan0~5_combout\ : std_logic;
SIGNAL \inst3|LessThan0~6_combout\ : std_logic;
SIGNAL \inst3|LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|LessThan0~3_combout\ : std_logic;
SIGNAL \inst3|LessThan0~7_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[22]~24_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst3|Add0~43\ : std_logic;
SIGNAL \inst3|Add0~44_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[4]~3_combout\ : std_logic;
SIGNAL \inst3|Add0~40_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[4]~0_combout\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~q\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|Selector6~0clkctrl_outclk\ : std_logic;
SIGNAL \inst|nState.S0_250~combout\ : std_logic;
SIGNAL \inst|pState~13_combout\ : std_logic;
SIGNAL \inst|pState.S0~q\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|nState.S1_229~combout\ : std_logic;
SIGNAL \inst|pState~12_combout\ : std_logic;
SIGNAL \inst|pState.S1~q\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|nState.S2_208~combout\ : std_logic;
SIGNAL \inst|pState~10_combout\ : std_logic;
SIGNAL \inst|pState.S2~q\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|nState.S3_187~combout\ : std_logic;
SIGNAL \inst|pState~11_combout\ : std_logic;
SIGNAL \inst|pState.S3~q\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|nState.S4_166~combout\ : std_logic;
SIGNAL \inst|pState~9_combout\ : std_logic;
SIGNAL \inst|pState.S4~q\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|nState.S5_145~combout\ : std_logic;
SIGNAL \inst|pState~8_combout\ : std_logic;
SIGNAL \inst|pState.S5~q\ : std_logic;
SIGNAL \inst2|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \bruh|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst3|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst1|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst|Selector6~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|Selector6~0_combout\);

\bruh|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \bruh|clkOut~q\);
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
	i => \inst|pState.S5~q\,
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

-- Location: LCCOMB_X73_Y64_N6
\bruh|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[0]~26_combout\ = \bruh|s_divCounter\(0) $ (VCC)
-- \bruh|s_divCounter[0]~27\ = CARRY(\bruh|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bruh|s_divCounter\(0),
	datad => VCC,
	combout => \bruh|s_divCounter[0]~26_combout\,
	cout => \bruh|s_divCounter[0]~27\);

-- Location: FF_X73_Y64_N7
\bruh|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bruh|s_divCounter[0]~26_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(0));

-- Location: LCCOMB_X73_Y64_N8
\bruh|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[1]~28_combout\ = (\bruh|s_divCounter\(1) & (!\bruh|s_divCounter[0]~27\)) # (!\bruh|s_divCounter\(1) & ((\bruh|s_divCounter[0]~27\) # (GND)))
-- \bruh|s_divCounter[1]~29\ = CARRY((!\bruh|s_divCounter[0]~27\) # (!\bruh|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bruh|s_divCounter\(1),
	datad => VCC,
	cin => \bruh|s_divCounter[0]~27\,
	combout => \bruh|s_divCounter[1]~28_combout\,
	cout => \bruh|s_divCounter[1]~29\);

-- Location: FF_X73_Y64_N9
\bruh|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bruh|s_divCounter[1]~28_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(1));

-- Location: LCCOMB_X73_Y64_N10
\bruh|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[2]~30_combout\ = (\bruh|s_divCounter\(2) & (\bruh|s_divCounter[1]~29\ $ (GND))) # (!\bruh|s_divCounter\(2) & (!\bruh|s_divCounter[1]~29\ & VCC))
-- \bruh|s_divCounter[2]~31\ = CARRY((\bruh|s_divCounter\(2) & !\bruh|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bruh|s_divCounter\(2),
	datad => VCC,
	cin => \bruh|s_divCounter[1]~29\,
	combout => \bruh|s_divCounter[2]~30_combout\,
	cout => \bruh|s_divCounter[2]~31\);

-- Location: FF_X73_Y64_N11
\bruh|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bruh|s_divCounter[2]~30_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(2));

-- Location: LCCOMB_X73_Y64_N12
\bruh|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[3]~32_combout\ = (\bruh|s_divCounter\(3) & (!\bruh|s_divCounter[2]~31\)) # (!\bruh|s_divCounter\(3) & ((\bruh|s_divCounter[2]~31\) # (GND)))
-- \bruh|s_divCounter[3]~33\ = CARRY((!\bruh|s_divCounter[2]~31\) # (!\bruh|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bruh|s_divCounter\(3),
	datad => VCC,
	cin => \bruh|s_divCounter[2]~31\,
	combout => \bruh|s_divCounter[3]~32_combout\,
	cout => \bruh|s_divCounter[3]~33\);

-- Location: FF_X73_Y64_N13
\bruh|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bruh|s_divCounter[3]~32_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(3));

-- Location: LCCOMB_X73_Y64_N14
\bruh|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[4]~34_combout\ = (\bruh|s_divCounter\(4) & (\bruh|s_divCounter[3]~33\ $ (GND))) # (!\bruh|s_divCounter\(4) & (!\bruh|s_divCounter[3]~33\ & VCC))
-- \bruh|s_divCounter[4]~35\ = CARRY((\bruh|s_divCounter\(4) & !\bruh|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bruh|s_divCounter\(4),
	datad => VCC,
	cin => \bruh|s_divCounter[3]~33\,
	combout => \bruh|s_divCounter[4]~34_combout\,
	cout => \bruh|s_divCounter[4]~35\);

-- Location: FF_X73_Y64_N15
\bruh|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bruh|s_divCounter[4]~34_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(4));

-- Location: LCCOMB_X73_Y64_N16
\bruh|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[5]~36_combout\ = (\bruh|s_divCounter\(5) & (!\bruh|s_divCounter[4]~35\)) # (!\bruh|s_divCounter\(5) & ((\bruh|s_divCounter[4]~35\) # (GND)))
-- \bruh|s_divCounter[5]~37\ = CARRY((!\bruh|s_divCounter[4]~35\) # (!\bruh|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bruh|s_divCounter\(5),
	datad => VCC,
	cin => \bruh|s_divCounter[4]~35\,
	combout => \bruh|s_divCounter[5]~36_combout\,
	cout => \bruh|s_divCounter[5]~37\);

-- Location: FF_X73_Y64_N17
\bruh|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bruh|s_divCounter[5]~36_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(5));

-- Location: LCCOMB_X73_Y64_N18
\bruh|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[6]~38_combout\ = (\bruh|s_divCounter\(6) & (\bruh|s_divCounter[5]~37\ $ (GND))) # (!\bruh|s_divCounter\(6) & (!\bruh|s_divCounter[5]~37\ & VCC))
-- \bruh|s_divCounter[6]~39\ = CARRY((\bruh|s_divCounter\(6) & !\bruh|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bruh|s_divCounter\(6),
	datad => VCC,
	cin => \bruh|s_divCounter[5]~37\,
	combout => \bruh|s_divCounter[6]~38_combout\,
	cout => \bruh|s_divCounter[6]~39\);

-- Location: FF_X73_Y64_N19
\bruh|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bruh|s_divCounter[6]~38_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(6));

-- Location: LCCOMB_X73_Y64_N20
\bruh|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[7]~40_combout\ = (\bruh|s_divCounter\(7) & (!\bruh|s_divCounter[6]~39\)) # (!\bruh|s_divCounter\(7) & ((\bruh|s_divCounter[6]~39\) # (GND)))
-- \bruh|s_divCounter[7]~41\ = CARRY((!\bruh|s_divCounter[6]~39\) # (!\bruh|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bruh|s_divCounter\(7),
	datad => VCC,
	cin => \bruh|s_divCounter[6]~39\,
	combout => \bruh|s_divCounter[7]~40_combout\,
	cout => \bruh|s_divCounter[7]~41\);

-- Location: FF_X73_Y64_N21
\bruh|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bruh|s_divCounter[7]~40_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(7));

-- Location: LCCOMB_X73_Y64_N22
\bruh|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[8]~42_combout\ = (\bruh|s_divCounter\(8) & (\bruh|s_divCounter[7]~41\ $ (GND))) # (!\bruh|s_divCounter\(8) & (!\bruh|s_divCounter[7]~41\ & VCC))
-- \bruh|s_divCounter[8]~43\ = CARRY((\bruh|s_divCounter\(8) & !\bruh|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bruh|s_divCounter\(8),
	datad => VCC,
	cin => \bruh|s_divCounter[7]~41\,
	combout => \bruh|s_divCounter[8]~42_combout\,
	cout => \bruh|s_divCounter[8]~43\);

-- Location: FF_X73_Y64_N23
\bruh|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bruh|s_divCounter[8]~42_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(8));

-- Location: LCCOMB_X73_Y64_N24
\bruh|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[9]~44_combout\ = (\bruh|s_divCounter\(9) & (!\bruh|s_divCounter[8]~43\)) # (!\bruh|s_divCounter\(9) & ((\bruh|s_divCounter[8]~43\) # (GND)))
-- \bruh|s_divCounter[9]~45\ = CARRY((!\bruh|s_divCounter[8]~43\) # (!\bruh|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bruh|s_divCounter\(9),
	datad => VCC,
	cin => \bruh|s_divCounter[8]~43\,
	combout => \bruh|s_divCounter[9]~44_combout\,
	cout => \bruh|s_divCounter[9]~45\);

-- Location: FF_X73_Y64_N25
\bruh|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bruh|s_divCounter[9]~44_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(9));

-- Location: LCCOMB_X73_Y64_N26
\bruh|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[10]~46_combout\ = (\bruh|s_divCounter\(10) & (\bruh|s_divCounter[9]~45\ $ (GND))) # (!\bruh|s_divCounter\(10) & (!\bruh|s_divCounter[9]~45\ & VCC))
-- \bruh|s_divCounter[10]~47\ = CARRY((\bruh|s_divCounter\(10) & !\bruh|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bruh|s_divCounter\(10),
	datad => VCC,
	cin => \bruh|s_divCounter[9]~45\,
	combout => \bruh|s_divCounter[10]~46_combout\,
	cout => \bruh|s_divCounter[10]~47\);

-- Location: FF_X73_Y64_N27
\bruh|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bruh|s_divCounter[10]~46_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(10));

-- Location: LCCOMB_X73_Y64_N28
\bruh|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[11]~48_combout\ = (\bruh|s_divCounter\(11) & (!\bruh|s_divCounter[10]~47\)) # (!\bruh|s_divCounter\(11) & ((\bruh|s_divCounter[10]~47\) # (GND)))
-- \bruh|s_divCounter[11]~49\ = CARRY((!\bruh|s_divCounter[10]~47\) # (!\bruh|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bruh|s_divCounter\(11),
	datad => VCC,
	cin => \bruh|s_divCounter[10]~47\,
	combout => \bruh|s_divCounter[11]~48_combout\,
	cout => \bruh|s_divCounter[11]~49\);

-- Location: FF_X73_Y64_N29
\bruh|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bruh|s_divCounter[11]~48_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(11));

-- Location: LCCOMB_X73_Y64_N30
\bruh|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[12]~50_combout\ = (\bruh|s_divCounter\(12) & (\bruh|s_divCounter[11]~49\ $ (GND))) # (!\bruh|s_divCounter\(12) & (!\bruh|s_divCounter[11]~49\ & VCC))
-- \bruh|s_divCounter[12]~51\ = CARRY((\bruh|s_divCounter\(12) & !\bruh|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bruh|s_divCounter\(12),
	datad => VCC,
	cin => \bruh|s_divCounter[11]~49\,
	combout => \bruh|s_divCounter[12]~50_combout\,
	cout => \bruh|s_divCounter[12]~51\);

-- Location: FF_X73_Y64_N31
\bruh|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bruh|s_divCounter[12]~50_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(12));

-- Location: LCCOMB_X73_Y63_N0
\bruh|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[13]~52_combout\ = (\bruh|s_divCounter\(13) & (!\bruh|s_divCounter[12]~51\)) # (!\bruh|s_divCounter\(13) & ((\bruh|s_divCounter[12]~51\) # (GND)))
-- \bruh|s_divCounter[13]~53\ = CARRY((!\bruh|s_divCounter[12]~51\) # (!\bruh|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bruh|s_divCounter\(13),
	datad => VCC,
	cin => \bruh|s_divCounter[12]~51\,
	combout => \bruh|s_divCounter[13]~52_combout\,
	cout => \bruh|s_divCounter[13]~53\);

-- Location: FF_X72_Y64_N15
\bruh|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \bruh|s_divCounter[13]~52_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(13));

-- Location: LCCOMB_X73_Y63_N2
\bruh|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[14]~54_combout\ = (\bruh|s_divCounter\(14) & (\bruh|s_divCounter[13]~53\ $ (GND))) # (!\bruh|s_divCounter\(14) & (!\bruh|s_divCounter[13]~53\ & VCC))
-- \bruh|s_divCounter[14]~55\ = CARRY((\bruh|s_divCounter\(14) & !\bruh|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bruh|s_divCounter\(14),
	datad => VCC,
	cin => \bruh|s_divCounter[13]~53\,
	combout => \bruh|s_divCounter[14]~54_combout\,
	cout => \bruh|s_divCounter[14]~55\);

-- Location: FF_X72_Y64_N9
\bruh|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \bruh|s_divCounter[14]~54_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(14));

-- Location: LCCOMB_X73_Y63_N4
\bruh|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[15]~56_combout\ = (\bruh|s_divCounter\(15) & (!\bruh|s_divCounter[14]~55\)) # (!\bruh|s_divCounter\(15) & ((\bruh|s_divCounter[14]~55\) # (GND)))
-- \bruh|s_divCounter[15]~57\ = CARRY((!\bruh|s_divCounter[14]~55\) # (!\bruh|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bruh|s_divCounter\(15),
	datad => VCC,
	cin => \bruh|s_divCounter[14]~55\,
	combout => \bruh|s_divCounter[15]~56_combout\,
	cout => \bruh|s_divCounter[15]~57\);

-- Location: FF_X72_Y64_N3
\bruh|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \bruh|s_divCounter[15]~56_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(15));

-- Location: LCCOMB_X73_Y63_N6
\bruh|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[16]~58_combout\ = (\bruh|s_divCounter\(16) & (\bruh|s_divCounter[15]~57\ $ (GND))) # (!\bruh|s_divCounter\(16) & (!\bruh|s_divCounter[15]~57\ & VCC))
-- \bruh|s_divCounter[16]~59\ = CARRY((\bruh|s_divCounter\(16) & !\bruh|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bruh|s_divCounter\(16),
	datad => VCC,
	cin => \bruh|s_divCounter[15]~57\,
	combout => \bruh|s_divCounter[16]~58_combout\,
	cout => \bruh|s_divCounter[16]~59\);

-- Location: FF_X72_Y64_N31
\bruh|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \bruh|s_divCounter[16]~58_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(16));

-- Location: LCCOMB_X73_Y63_N8
\bruh|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[17]~60_combout\ = (\bruh|s_divCounter\(17) & (!\bruh|s_divCounter[16]~59\)) # (!\bruh|s_divCounter\(17) & ((\bruh|s_divCounter[16]~59\) # (GND)))
-- \bruh|s_divCounter[17]~61\ = CARRY((!\bruh|s_divCounter[16]~59\) # (!\bruh|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bruh|s_divCounter\(17),
	datad => VCC,
	cin => \bruh|s_divCounter[16]~59\,
	combout => \bruh|s_divCounter[17]~60_combout\,
	cout => \bruh|s_divCounter[17]~61\);

-- Location: FF_X73_Y63_N9
\bruh|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bruh|s_divCounter[17]~60_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(17));

-- Location: LCCOMB_X73_Y63_N10
\bruh|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[18]~62_combout\ = (\bruh|s_divCounter\(18) & (\bruh|s_divCounter[17]~61\ $ (GND))) # (!\bruh|s_divCounter\(18) & (!\bruh|s_divCounter[17]~61\ & VCC))
-- \bruh|s_divCounter[18]~63\ = CARRY((\bruh|s_divCounter\(18) & !\bruh|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bruh|s_divCounter\(18),
	datad => VCC,
	cin => \bruh|s_divCounter[17]~61\,
	combout => \bruh|s_divCounter[18]~62_combout\,
	cout => \bruh|s_divCounter[18]~63\);

-- Location: FF_X73_Y63_N11
\bruh|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bruh|s_divCounter[18]~62_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(18));

-- Location: LCCOMB_X73_Y63_N12
\bruh|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[19]~64_combout\ = (\bruh|s_divCounter\(19) & (!\bruh|s_divCounter[18]~63\)) # (!\bruh|s_divCounter\(19) & ((\bruh|s_divCounter[18]~63\) # (GND)))
-- \bruh|s_divCounter[19]~65\ = CARRY((!\bruh|s_divCounter[18]~63\) # (!\bruh|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bruh|s_divCounter\(19),
	datad => VCC,
	cin => \bruh|s_divCounter[18]~63\,
	combout => \bruh|s_divCounter[19]~64_combout\,
	cout => \bruh|s_divCounter[19]~65\);

-- Location: FF_X73_Y63_N13
\bruh|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bruh|s_divCounter[19]~64_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(19));

-- Location: LCCOMB_X73_Y63_N14
\bruh|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[20]~66_combout\ = (\bruh|s_divCounter\(20) & (\bruh|s_divCounter[19]~65\ $ (GND))) # (!\bruh|s_divCounter\(20) & (!\bruh|s_divCounter[19]~65\ & VCC))
-- \bruh|s_divCounter[20]~67\ = CARRY((\bruh|s_divCounter\(20) & !\bruh|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bruh|s_divCounter\(20),
	datad => VCC,
	cin => \bruh|s_divCounter[19]~65\,
	combout => \bruh|s_divCounter[20]~66_combout\,
	cout => \bruh|s_divCounter[20]~67\);

-- Location: FF_X73_Y63_N15
\bruh|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bruh|s_divCounter[20]~66_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(20));

-- Location: LCCOMB_X73_Y63_N16
\bruh|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[21]~68_combout\ = (\bruh|s_divCounter\(21) & (!\bruh|s_divCounter[20]~67\)) # (!\bruh|s_divCounter\(21) & ((\bruh|s_divCounter[20]~67\) # (GND)))
-- \bruh|s_divCounter[21]~69\ = CARRY((!\bruh|s_divCounter[20]~67\) # (!\bruh|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bruh|s_divCounter\(21),
	datad => VCC,
	cin => \bruh|s_divCounter[20]~67\,
	combout => \bruh|s_divCounter[21]~68_combout\,
	cout => \bruh|s_divCounter[21]~69\);

-- Location: FF_X73_Y63_N17
\bruh|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bruh|s_divCounter[21]~68_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(21));

-- Location: LCCOMB_X73_Y63_N18
\bruh|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[22]~70_combout\ = (\bruh|s_divCounter\(22) & (\bruh|s_divCounter[21]~69\ $ (GND))) # (!\bruh|s_divCounter\(22) & (!\bruh|s_divCounter[21]~69\ & VCC))
-- \bruh|s_divCounter[22]~71\ = CARRY((\bruh|s_divCounter\(22) & !\bruh|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bruh|s_divCounter\(22),
	datad => VCC,
	cin => \bruh|s_divCounter[21]~69\,
	combout => \bruh|s_divCounter[22]~70_combout\,
	cout => \bruh|s_divCounter[22]~71\);

-- Location: FF_X73_Y63_N19
\bruh|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bruh|s_divCounter[22]~70_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(22));

-- Location: LCCOMB_X73_Y63_N20
\bruh|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[23]~72_combout\ = (\bruh|s_divCounter\(23) & (!\bruh|s_divCounter[22]~71\)) # (!\bruh|s_divCounter\(23) & ((\bruh|s_divCounter[22]~71\) # (GND)))
-- \bruh|s_divCounter[23]~73\ = CARRY((!\bruh|s_divCounter[22]~71\) # (!\bruh|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bruh|s_divCounter\(23),
	datad => VCC,
	cin => \bruh|s_divCounter[22]~71\,
	combout => \bruh|s_divCounter[23]~72_combout\,
	cout => \bruh|s_divCounter[23]~73\);

-- Location: FF_X73_Y63_N21
\bruh|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bruh|s_divCounter[23]~72_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(23));

-- Location: LCCOMB_X73_Y63_N22
\bruh|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[24]~74_combout\ = (\bruh|s_divCounter\(24) & (\bruh|s_divCounter[23]~73\ $ (GND))) # (!\bruh|s_divCounter\(24) & (!\bruh|s_divCounter[23]~73\ & VCC))
-- \bruh|s_divCounter[24]~75\ = CARRY((\bruh|s_divCounter\(24) & !\bruh|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bruh|s_divCounter\(24),
	datad => VCC,
	cin => \bruh|s_divCounter[23]~73\,
	combout => \bruh|s_divCounter[24]~74_combout\,
	cout => \bruh|s_divCounter[24]~75\);

-- Location: FF_X73_Y63_N23
\bruh|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bruh|s_divCounter[24]~74_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(24));

-- Location: LCCOMB_X73_Y63_N24
\bruh|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|s_divCounter[25]~76_combout\ = \bruh|s_divCounter[24]~75\ $ (\bruh|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \bruh|s_divCounter\(25),
	cin => \bruh|s_divCounter[24]~75\,
	combout => \bruh|s_divCounter[25]~76_combout\);

-- Location: FF_X73_Y63_N25
\bruh|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bruh|s_divCounter[25]~76_combout\,
	sclr => \bruh|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|s_divCounter\(25));

-- Location: LCCOMB_X73_Y63_N26
\bruh|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|clkOut~0_combout\ = (\bruh|s_divCounter\(19) & (\bruh|s_divCounter\(21) & (\bruh|s_divCounter\(20) & \bruh|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bruh|s_divCounter\(19),
	datab => \bruh|s_divCounter\(21),
	datac => \bruh|s_divCounter\(20),
	datad => \bruh|s_divCounter\(22),
	combout => \bruh|clkOut~0_combout\);

-- Location: LCCOMB_X73_Y63_N28
\bruh|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|LessThan0~0_combout\ = (((!\bruh|s_divCounter\(18) & !\bruh|s_divCounter\(17))) # (!\bruh|s_divCounter\(23))) # (!\bruh|clkOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bruh|s_divCounter\(18),
	datab => \bruh|s_divCounter\(17),
	datac => \bruh|clkOut~0_combout\,
	datad => \bruh|s_divCounter\(23),
	combout => \bruh|LessThan0~0_combout\);

-- Location: LCCOMB_X72_Y64_N16
\bruh|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|LessThan0~1_combout\ = (((!\bruh|s_divCounter\(15)) # (!\bruh|s_divCounter\(12))) # (!\bruh|s_divCounter\(13))) # (!\bruh|s_divCounter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bruh|s_divCounter\(14),
	datab => \bruh|s_divCounter\(13),
	datac => \bruh|s_divCounter\(12),
	datad => \bruh|s_divCounter\(15),
	combout => \bruh|LessThan0~1_combout\);

-- Location: LCCOMB_X73_Y64_N0
\bruh|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|clkOut~1_combout\ = (!\bruh|s_divCounter\(8) & (!\bruh|s_divCounter\(7) & (!\bruh|s_divCounter\(10) & !\bruh|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bruh|s_divCounter\(8),
	datab => \bruh|s_divCounter\(7),
	datac => \bruh|s_divCounter\(10),
	datad => \bruh|s_divCounter\(9),
	combout => \bruh|clkOut~1_combout\);

-- Location: LCCOMB_X73_Y64_N2
\bruh|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|clkOut~2_combout\ = (\bruh|s_divCounter\(0) & (\bruh|s_divCounter\(1) & (\bruh|s_divCounter\(3) & \bruh|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bruh|s_divCounter\(0),
	datab => \bruh|s_divCounter\(1),
	datac => \bruh|s_divCounter\(3),
	datad => \bruh|s_divCounter\(2),
	combout => \bruh|clkOut~2_combout\);

-- Location: LCCOMB_X73_Y64_N4
\bruh|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|clkOut~3_combout\ = (\bruh|s_divCounter\(5) & (\bruh|s_divCounter\(4) & \bruh|clkOut~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bruh|s_divCounter\(5),
	datac => \bruh|s_divCounter\(4),
	datad => \bruh|clkOut~2_combout\,
	combout => \bruh|clkOut~3_combout\);

-- Location: LCCOMB_X72_Y64_N24
\bruh|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|LessThan0~2_combout\ = (!\bruh|s_divCounter\(11) & (\bruh|clkOut~1_combout\ & ((!\bruh|clkOut~3_combout\) # (!\bruh|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bruh|s_divCounter\(6),
	datab => \bruh|s_divCounter\(11),
	datac => \bruh|clkOut~1_combout\,
	datad => \bruh|clkOut~3_combout\,
	combout => \bruh|LessThan0~2_combout\);

-- Location: LCCOMB_X72_Y64_N6
\bruh|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|LessThan0~3_combout\ = (!\bruh|s_divCounter\(18) & (!\bruh|s_divCounter\(16) & ((\bruh|LessThan0~1_combout\) # (\bruh|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bruh|s_divCounter\(18),
	datab => \bruh|LessThan0~1_combout\,
	datac => \bruh|s_divCounter\(16),
	datad => \bruh|LessThan0~2_combout\,
	combout => \bruh|LessThan0~3_combout\);

-- Location: LCCOMB_X72_Y64_N26
\bruh|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|LessThan0~4_combout\ = (\bruh|s_divCounter\(25) & ((\bruh|s_divCounter\(24)) # ((!\bruh|LessThan0~0_combout\ & !\bruh|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bruh|s_divCounter\(24),
	datab => \bruh|s_divCounter\(25),
	datac => \bruh|LessThan0~0_combout\,
	datad => \bruh|LessThan0~3_combout\,
	combout => \bruh|LessThan0~4_combout\);

-- Location: LCCOMB_X72_Y64_N4
\bruh|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|clkOut~4_combout\ = (\bruh|s_divCounter\(14) & (\bruh|s_divCounter\(13) & (\bruh|s_divCounter\(12) & !\bruh|s_divCounter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bruh|s_divCounter\(14),
	datab => \bruh|s_divCounter\(13),
	datac => \bruh|s_divCounter\(12),
	datad => \bruh|s_divCounter\(6),
	combout => \bruh|clkOut~4_combout\);

-- Location: LCCOMB_X73_Y63_N30
\bruh|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|clkOut~6_combout\ = (\bruh|s_divCounter\(24) & (!\bruh|s_divCounter\(25) & (!\bruh|s_divCounter\(23) & \bruh|s_divCounter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bruh|s_divCounter\(24),
	datab => \bruh|s_divCounter\(25),
	datac => \bruh|s_divCounter\(23),
	datad => \bruh|s_divCounter\(18),
	combout => \bruh|clkOut~6_combout\);

-- Location: LCCOMB_X72_Y64_N20
\bruh|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|clkOut~5_combout\ = (\bruh|s_divCounter\(16) & (!\bruh|s_divCounter\(15) & (!\bruh|s_divCounter\(17) & \bruh|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bruh|s_divCounter\(16),
	datab => \bruh|s_divCounter\(15),
	datac => \bruh|s_divCounter\(17),
	datad => \bruh|s_divCounter\(11),
	combout => \bruh|clkOut~5_combout\);

-- Location: LCCOMB_X72_Y64_N10
\bruh|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|clkOut~7_combout\ = (\bruh|clkOut~4_combout\ & (\bruh|clkOut~6_combout\ & \bruh|clkOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bruh|clkOut~4_combout\,
	datac => \bruh|clkOut~6_combout\,
	datad => \bruh|clkOut~5_combout\,
	combout => \bruh|clkOut~7_combout\);

-- Location: LCCOMB_X72_Y64_N12
\bruh|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|clkOut~8_combout\ = (\bruh|clkOut~3_combout\ & (\bruh|clkOut~1_combout\ & (\bruh|clkOut~0_combout\ & \bruh|clkOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bruh|clkOut~3_combout\,
	datab => \bruh|clkOut~1_combout\,
	datac => \bruh|clkOut~0_combout\,
	datad => \bruh|clkOut~7_combout\,
	combout => \bruh|clkOut~8_combout\);

-- Location: LCCOMB_X72_Y64_N28
\bruh|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|clkOut~9_combout\ = (!\bruh|LessThan0~4_combout\ & ((\bruh|clkOut~q\) # (\bruh|clkOut~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bruh|clkOut~q\,
	datac => \bruh|LessThan0~4_combout\,
	datad => \bruh|clkOut~8_combout\,
	combout => \bruh|clkOut~9_combout\);

-- Location: LCCOMB_X72_Y64_N18
\bruh|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bruh|clkOut~feeder_combout\ = \bruh|clkOut~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bruh|clkOut~9_combout\,
	combout => \bruh|clkOut~feeder_combout\);

-- Location: FF_X72_Y64_N19
\bruh|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bruh|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruh|clkOut~q\);

-- Location: LCCOMB_X89_Y37_N10
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|s_debounceCnt\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

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

-- Location: FF_X90_Y37_N23
\inst1|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_dirtyIn~q\);

-- Location: FF_X90_Y37_N5
\inst1|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst1|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_previousIn~q\);

-- Location: LCCOMB_X89_Y37_N12
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|s_debounceCnt\(1) & (\inst1|Add0~1\ & VCC)) # (!\inst1|s_debounceCnt\(1) & (!\inst1|Add0~1\))
-- \inst1|Add0~3\ = CARRY((!\inst1|s_debounceCnt\(1) & !\inst1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X89_Y37_N2
\inst1|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~20_combout\ = (\inst1|Add0~2_combout\ & \inst1|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~2_combout\,
	datad => \inst1|s_debounceCnt[1]~4_combout\,
	combout => \inst1|s_debounceCnt~20_combout\);

-- Location: FF_X89_Y37_N3
\inst1|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~20_combout\,
	ena => \inst1|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(1));

-- Location: LCCOMB_X89_Y37_N14
\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|s_debounceCnt\(2) & ((GND) # (!\inst1|Add0~3\))) # (!\inst1|s_debounceCnt\(2) & (\inst1|Add0~3\ $ (GND)))
-- \inst1|Add0~5\ = CARRY((\inst1|s_debounceCnt\(2)) # (!\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X90_Y37_N2
\inst1|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~21_combout\ = (\inst1|Add0~4_combout\ & \inst1|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~4_combout\,
	datad => \inst1|s_debounceCnt[1]~4_combout\,
	combout => \inst1|s_debounceCnt~21_combout\);

-- Location: FF_X90_Y37_N3
\inst1|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~21_combout\,
	ena => \inst1|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(2));

-- Location: LCCOMB_X89_Y37_N16
\inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|s_debounceCnt\(3) & (\inst1|Add0~5\ & VCC)) # (!\inst1|s_debounceCnt\(3) & (!\inst1|Add0~5\))
-- \inst1|Add0~7\ = CARRY((!\inst1|s_debounceCnt\(3) & !\inst1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X89_Y37_N8
\inst1|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~22_combout\ = (\inst1|Add0~6_combout\ & \inst1|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~6_combout\,
	datad => \inst1|s_debounceCnt[1]~4_combout\,
	combout => \inst1|s_debounceCnt~22_combout\);

-- Location: FF_X89_Y37_N9
\inst1|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~22_combout\,
	ena => \inst1|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(3));

-- Location: LCCOMB_X89_Y37_N18
\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|s_debounceCnt\(4) & ((GND) # (!\inst1|Add0~7\))) # (!\inst1|s_debounceCnt\(4) & (\inst1|Add0~7\ $ (GND)))
-- \inst1|Add0~9\ = CARRY((\inst1|s_debounceCnt\(4)) # (!\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X89_Y37_N6
\inst1|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~23_combout\ = (\inst1|Add0~8_combout\ & \inst1|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~8_combout\,
	datad => \inst1|s_debounceCnt[1]~4_combout\,
	combout => \inst1|s_debounceCnt~23_combout\);

-- Location: FF_X89_Y37_N7
\inst1|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~23_combout\,
	ena => \inst1|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(4));

-- Location: LCCOMB_X90_Y37_N16
\inst1|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~5_combout\ = (!\inst1|s_debounceCnt\(3) & (!\inst1|s_debounceCnt\(2) & (!\inst1|s_debounceCnt\(4) & !\inst1|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(3),
	datab => \inst1|s_debounceCnt\(2),
	datac => \inst1|s_debounceCnt\(4),
	datad => \inst1|s_debounceCnt\(1),
	combout => \inst1|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X89_Y37_N20
\inst1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|s_debounceCnt\(5) & (\inst1|Add0~9\ & VCC)) # (!\inst1|s_debounceCnt\(5) & (!\inst1|Add0~9\))
-- \inst1|Add0~11\ = CARRY((!\inst1|s_debounceCnt\(5) & !\inst1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X89_Y37_N0
\inst1|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~27_combout\ = (\inst1|Add0~10_combout\ & \inst1|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~10_combout\,
	datad => \inst1|s_debounceCnt[1]~4_combout\,
	combout => \inst1|s_debounceCnt~27_combout\);

-- Location: FF_X89_Y37_N1
\inst1|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~27_combout\,
	ena => \inst1|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(5));

-- Location: LCCOMB_X89_Y37_N22
\inst1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|s_debounceCnt\(6) & ((GND) # (!\inst1|Add0~11\))) # (!\inst1|s_debounceCnt\(6) & (\inst1|Add0~11\ $ (GND)))
-- \inst1|Add0~13\ = CARRY((\inst1|s_debounceCnt\(6)) # (!\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X90_Y37_N20
\inst1|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~1_combout\ = (\inst1|s_debounceCnt[1]~0_combout\ & ((\inst1|Add0~12_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datac => \inst1|Add0~12_combout\,
	datad => \inst1|s_debounceCnt[1]~0_combout\,
	combout => \inst1|s_debounceCnt~1_combout\);

-- Location: FF_X90_Y37_N21
\inst1|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~1_combout\,
	ena => \inst1|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(6));

-- Location: LCCOMB_X89_Y37_N24
\inst1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|s_debounceCnt\(7) & (\inst1|Add0~13\ & VCC)) # (!\inst1|s_debounceCnt\(7) & (!\inst1|Add0~13\))
-- \inst1|Add0~15\ = CARRY((!\inst1|s_debounceCnt\(7) & !\inst1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X89_Y37_N4
\inst1|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~12_combout\ = (\inst1|Add0~14_combout\ & \inst1|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~14_combout\,
	datad => \inst1|s_debounceCnt[1]~4_combout\,
	combout => \inst1|s_debounceCnt~12_combout\);

-- Location: FF_X89_Y37_N5
\inst1|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~12_combout\,
	ena => \inst1|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(7));

-- Location: LCCOMB_X89_Y37_N26
\inst1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|s_debounceCnt\(8) & ((GND) # (!\inst1|Add0~15\))) # (!\inst1|s_debounceCnt\(8) & (\inst1|Add0~15\ $ (GND)))
-- \inst1|Add0~17\ = CARRY((\inst1|s_debounceCnt\(8)) # (!\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X88_Y37_N0
\inst1|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~13_combout\ = (\inst1|s_debounceCnt[1]~0_combout\ & ((\inst1|Add0~16_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datab => \inst1|Add0~16_combout\,
	datad => \inst1|s_debounceCnt[1]~0_combout\,
	combout => \inst1|s_debounceCnt~13_combout\);

-- Location: FF_X88_Y37_N1
\inst1|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~13_combout\,
	ena => \inst1|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(8));

-- Location: LCCOMB_X89_Y37_N28
\inst1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|s_debounceCnt\(9) & (\inst1|Add0~17\ & VCC)) # (!\inst1|s_debounceCnt\(9) & (!\inst1|Add0~17\))
-- \inst1|Add0~19\ = CARRY((!\inst1|s_debounceCnt\(9) & !\inst1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: LCCOMB_X88_Y37_N6
\inst1|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~14_combout\ = (\inst1|s_debounceCnt[1]~0_combout\ & ((\inst1|Add0~18_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datab => \inst1|Add0~18_combout\,
	datad => \inst1|s_debounceCnt[1]~0_combout\,
	combout => \inst1|s_debounceCnt~14_combout\);

-- Location: FF_X88_Y37_N7
\inst1|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~14_combout\,
	ena => \inst1|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(9));

-- Location: LCCOMB_X89_Y37_N30
\inst1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst1|s_debounceCnt\(10) & ((GND) # (!\inst1|Add0~19\))) # (!\inst1|s_debounceCnt\(10) & (\inst1|Add0~19\ $ (GND)))
-- \inst1|Add0~21\ = CARRY((\inst1|s_debounceCnt\(10)) # (!\inst1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: LCCOMB_X88_Y37_N8
\inst1|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~15_combout\ = (\inst1|Add0~20_combout\ & \inst1|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~20_combout\,
	datad => \inst1|s_debounceCnt[1]~4_combout\,
	combout => \inst1|s_debounceCnt~15_combout\);

-- Location: FF_X88_Y37_N9
\inst1|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~15_combout\,
	ena => \inst1|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(10));

-- Location: LCCOMB_X89_Y36_N0
\inst1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = (\inst1|s_debounceCnt\(11) & (\inst1|Add0~21\ & VCC)) # (!\inst1|s_debounceCnt\(11) & (!\inst1|Add0~21\))
-- \inst1|Add0~23\ = CARRY((!\inst1|s_debounceCnt\(11) & !\inst1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\,
	cout => \inst1|Add0~23\);

-- Location: LCCOMB_X90_Y37_N18
\inst1|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~16_combout\ = (\inst1|s_debounceCnt[1]~0_combout\ & ((\inst1|Add0~22_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datac => \inst1|Add0~22_combout\,
	datad => \inst1|s_debounceCnt[1]~0_combout\,
	combout => \inst1|s_debounceCnt~16_combout\);

-- Location: FF_X90_Y37_N19
\inst1|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~16_combout\,
	ena => \inst1|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(11));

-- Location: LCCOMB_X89_Y36_N2
\inst1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = (\inst1|s_debounceCnt\(12) & ((GND) # (!\inst1|Add0~23\))) # (!\inst1|s_debounceCnt\(12) & (\inst1|Add0~23\ $ (GND)))
-- \inst1|Add0~25\ = CARRY((\inst1|s_debounceCnt\(12)) # (!\inst1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst1|Add0~23\,
	combout => \inst1|Add0~24_combout\,
	cout => \inst1|Add0~25\);

-- Location: LCCOMB_X89_Y36_N28
\inst1|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~8_combout\ = (\inst1|Add0~24_combout\ & \inst1|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~24_combout\,
	datad => \inst1|s_debounceCnt[1]~4_combout\,
	combout => \inst1|s_debounceCnt~8_combout\);

-- Location: FF_X89_Y36_N29
\inst1|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~8_combout\,
	ena => \inst1|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(12));

-- Location: LCCOMB_X89_Y36_N4
\inst1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = (\inst1|s_debounceCnt\(13) & (\inst1|Add0~25\ & VCC)) # (!\inst1|s_debounceCnt\(13) & (!\inst1|Add0~25\))
-- \inst1|Add0~27\ = CARRY((!\inst1|s_debounceCnt\(13) & !\inst1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~26_combout\,
	cout => \inst1|Add0~27\);

-- Location: LCCOMB_X89_Y36_N26
\inst1|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~9_combout\ = (\inst1|Add0~26_combout\ & \inst1|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~26_combout\,
	datad => \inst1|s_debounceCnt[1]~4_combout\,
	combout => \inst1|s_debounceCnt~9_combout\);

-- Location: FF_X89_Y36_N27
\inst1|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~9_combout\,
	ena => \inst1|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(13));

-- Location: LCCOMB_X89_Y36_N6
\inst1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~28_combout\ = (\inst1|s_debounceCnt\(14) & ((GND) # (!\inst1|Add0~27\))) # (!\inst1|s_debounceCnt\(14) & (\inst1|Add0~27\ $ (GND)))
-- \inst1|Add0~29\ = CARRY((\inst1|s_debounceCnt\(14)) # (!\inst1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst1|Add0~27\,
	combout => \inst1|Add0~28_combout\,
	cout => \inst1|Add0~29\);

-- Location: LCCOMB_X90_Y37_N26
\inst1|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~17_combout\ = (\inst1|s_debounceCnt[1]~0_combout\ & ((\inst1|Add0~28_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datac => \inst1|Add0~28_combout\,
	datad => \inst1|s_debounceCnt[1]~0_combout\,
	combout => \inst1|s_debounceCnt~17_combout\);

-- Location: FF_X90_Y37_N27
\inst1|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~17_combout\,
	ena => \inst1|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(14));

-- Location: LCCOMB_X89_Y36_N8
\inst1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~30_combout\ = (\inst1|s_debounceCnt\(15) & (\inst1|Add0~29\ & VCC)) # (!\inst1|s_debounceCnt\(15) & (!\inst1|Add0~29\))
-- \inst1|Add0~31\ = CARRY((!\inst1|s_debounceCnt\(15) & !\inst1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst1|Add0~29\,
	combout => \inst1|Add0~30_combout\,
	cout => \inst1|Add0~31\);

-- Location: LCCOMB_X90_Y37_N30
\inst1|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~5_combout\ = (\inst1|Add0~30_combout\ & \inst1|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~30_combout\,
	datad => \inst1|s_debounceCnt[1]~4_combout\,
	combout => \inst1|s_debounceCnt~5_combout\);

-- Location: FF_X90_Y37_N31
\inst1|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~5_combout\,
	ena => \inst1|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(15));

-- Location: LCCOMB_X89_Y36_N10
\inst1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~32_combout\ = (\inst1|s_debounceCnt\(16) & ((GND) # (!\inst1|Add0~31\))) # (!\inst1|s_debounceCnt\(16) & (\inst1|Add0~31\ $ (GND)))
-- \inst1|Add0~33\ = CARRY((\inst1|s_debounceCnt\(16)) # (!\inst1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst1|Add0~31\,
	combout => \inst1|Add0~32_combout\,
	cout => \inst1|Add0~33\);

-- Location: LCCOMB_X90_Y37_N12
\inst1|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~6_combout\ = (\inst1|Add0~32_combout\ & \inst1|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~32_combout\,
	datad => \inst1|s_debounceCnt[1]~4_combout\,
	combout => \inst1|s_debounceCnt~6_combout\);

-- Location: FF_X90_Y37_N13
\inst1|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~6_combout\,
	ena => \inst1|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(16));

-- Location: LCCOMB_X89_Y36_N12
\inst1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~34_combout\ = (\inst1|s_debounceCnt\(17) & (\inst1|Add0~33\ & VCC)) # (!\inst1|s_debounceCnt\(17) & (!\inst1|Add0~33\))
-- \inst1|Add0~35\ = CARRY((!\inst1|s_debounceCnt\(17) & !\inst1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst1|Add0~33\,
	combout => \inst1|Add0~34_combout\,
	cout => \inst1|Add0~35\);

-- Location: LCCOMB_X87_Y37_N24
\inst1|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~7_combout\ = (\inst1|s_debounceCnt[1]~4_combout\ & \inst1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_debounceCnt[1]~4_combout\,
	datad => \inst1|Add0~34_combout\,
	combout => \inst1|s_debounceCnt~7_combout\);

-- Location: FF_X87_Y37_N25
\inst1|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~7_combout\,
	ena => \inst1|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(17));

-- Location: LCCOMB_X89_Y36_N14
\inst1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~36_combout\ = (\inst1|s_debounceCnt\(18) & ((GND) # (!\inst1|Add0~35\))) # (!\inst1|s_debounceCnt\(18) & (\inst1|Add0~35\ $ (GND)))
-- \inst1|Add0~37\ = CARRY((\inst1|s_debounceCnt\(18)) # (!\inst1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst1|Add0~35\,
	combout => \inst1|Add0~36_combout\,
	cout => \inst1|Add0~37\);

-- Location: LCCOMB_X88_Y37_N4
\inst1|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[18]~18_combout\ = (\inst1|s_debounceCnt[1]~3_combout\ & (\inst1|s_debounceCnt[1]~0_combout\ & ((\inst1|Add0~36_combout\) # (!\inst1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datab => \inst1|s_debounceCnt[1]~3_combout\,
	datac => \inst1|s_debounceCnt[1]~0_combout\,
	datad => \inst1|Add0~36_combout\,
	combout => \inst1|s_debounceCnt[18]~18_combout\);

-- Location: FF_X88_Y37_N5
\inst1|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(18));

-- Location: LCCOMB_X90_Y37_N10
\inst1|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~3_combout\ = (!\inst1|s_debounceCnt\(14) & (!\inst1|s_debounceCnt\(11) & (!\inst1|s_debounceCnt\(19) & !\inst1|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(14),
	datab => \inst1|s_debounceCnt\(11),
	datac => \inst1|s_debounceCnt\(19),
	datad => \inst1|s_debounceCnt\(18),
	combout => \inst1|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X90_Y37_N28
\inst1|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~0_combout\ = (!\inst1|s_debounceCnt\(16) & (!\inst1|s_debounceCnt\(6) & (!\inst1|s_debounceCnt\(15) & !\inst1|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(16),
	datab => \inst1|s_debounceCnt\(6),
	datac => \inst1|s_debounceCnt\(15),
	datad => \inst1|s_debounceCnt\(17),
	combout => \inst1|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X89_Y36_N18
\inst1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~40_combout\ = (\inst1|s_debounceCnt\(20) & ((GND) # (!\inst1|Add0~39\))) # (!\inst1|s_debounceCnt\(20) & (\inst1|Add0~39\ $ (GND)))
-- \inst1|Add0~41\ = CARRY((\inst1|s_debounceCnt\(20)) # (!\inst1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst1|Add0~39\,
	combout => \inst1|Add0~40_combout\,
	cout => \inst1|Add0~41\);

-- Location: LCCOMB_X89_Y36_N20
\inst1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~42_combout\ = (\inst1|s_debounceCnt\(21) & (\inst1|Add0~41\ & VCC)) # (!\inst1|s_debounceCnt\(21) & (!\inst1|Add0~41\))
-- \inst1|Add0~43\ = CARRY((!\inst1|s_debounceCnt\(21) & !\inst1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst1|Add0~41\,
	combout => \inst1|Add0~42_combout\,
	cout => \inst1|Add0~43\);

-- Location: LCCOMB_X89_Y36_N24
\inst1|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[21]~11_combout\ = (\inst1|Add0~42_combout\ & (\inst1|s_debounceCnt[1]~3_combout\ & \inst1|s_debounceCnt[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~42_combout\,
	datac => \inst1|s_debounceCnt[1]~3_combout\,
	datad => \inst1|s_debounceCnt[1]~4_combout\,
	combout => \inst1|s_debounceCnt[21]~11_combout\);

-- Location: FF_X89_Y36_N25
\inst1|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(21));

-- Location: LCCOMB_X90_Y37_N14
\inst1|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~1_combout\ = (!\inst1|s_debounceCnt\(13) & (!\inst1|s_debounceCnt\(20) & (!\inst1|s_debounceCnt\(21) & !\inst1|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(13),
	datab => \inst1|s_debounceCnt\(20),
	datac => \inst1|s_debounceCnt\(21),
	datad => \inst1|s_debounceCnt\(12),
	combout => \inst1|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X88_Y37_N26
\inst1|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~2_combout\ = (!\inst1|s_debounceCnt\(9) & (!\inst1|s_debounceCnt\(8) & (!\inst1|s_debounceCnt\(10) & !\inst1|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(9),
	datab => \inst1|s_debounceCnt\(8),
	datac => \inst1|s_debounceCnt\(10),
	datad => \inst1|s_debounceCnt\(7),
	combout => \inst1|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X90_Y37_N0
\inst1|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~4_combout\ = (\inst1|s_pulsedOut~3_combout\ & (\inst1|s_pulsedOut~0_combout\ & (\inst1|s_pulsedOut~1_combout\ & \inst1|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~3_combout\,
	datab => \inst1|s_pulsedOut~0_combout\,
	datac => \inst1|s_pulsedOut~1_combout\,
	datad => \inst1|s_pulsedOut~2_combout\,
	combout => \inst1|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X90_Y37_N24
\inst1|s_debounceCnt[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[1]~2_combout\ = (\inst1|s_debounceCnt\(0)) # (((\inst1|s_debounceCnt\(5)) # (!\inst1|s_pulsedOut~4_combout\)) # (!\inst1|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(0),
	datab => \inst1|s_pulsedOut~5_combout\,
	datac => \inst1|s_debounceCnt\(5),
	datad => \inst1|s_pulsedOut~4_combout\,
	combout => \inst1|s_debounceCnt[1]~2_combout\);

-- Location: LCCOMB_X90_Y37_N4
\inst1|s_debounceCnt[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[1]~3_combout\ = ((\inst1|s_debounceCnt\(22)) # ((\inst1|s_debounceCnt[1]~2_combout\) # (!\inst1|s_previousIn~q\))) # (!\inst1|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_dirtyIn~q\,
	datab => \inst1|s_debounceCnt\(22),
	datac => \inst1|s_previousIn~q\,
	datad => \inst1|s_debounceCnt[1]~2_combout\,
	combout => \inst1|s_debounceCnt[1]~3_combout\);

-- Location: LCCOMB_X89_Y36_N16
\inst1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~38_combout\ = (\inst1|s_debounceCnt\(19) & (\inst1|Add0~37\ & VCC)) # (!\inst1|s_debounceCnt\(19) & (!\inst1|Add0~37\))
-- \inst1|Add0~39\ = CARRY((!\inst1|s_debounceCnt\(19) & !\inst1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst1|Add0~37\,
	combout => \inst1|Add0~38_combout\,
	cout => \inst1|Add0~39\);

-- Location: LCCOMB_X88_Y37_N18
\inst1|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[19]~19_combout\ = (\inst1|s_debounceCnt[1]~3_combout\ & (\inst1|s_debounceCnt[1]~0_combout\ & ((\inst1|Add0~38_combout\) # (!\inst1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datab => \inst1|s_debounceCnt[1]~3_combout\,
	datac => \inst1|Add0~38_combout\,
	datad => \inst1|s_debounceCnt[1]~0_combout\,
	combout => \inst1|s_debounceCnt[19]~19_combout\);

-- Location: FF_X88_Y37_N19
\inst1|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(19));

-- Location: LCCOMB_X90_Y37_N8
\inst1|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[20]~10_combout\ = (\inst1|Add0~40_combout\ & (\inst1|s_debounceCnt[1]~3_combout\ & \inst1|s_debounceCnt[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~40_combout\,
	datac => \inst1|s_debounceCnt[1]~3_combout\,
	datad => \inst1|s_debounceCnt[1]~4_combout\,
	combout => \inst1|s_debounceCnt[20]~10_combout\);

-- Location: FF_X90_Y37_N9
\inst1|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(20));

-- Location: LCCOMB_X88_Y37_N28
\inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (\inst1|s_debounceCnt\(14) & (\inst1|s_debounceCnt\(8) & (\inst1|s_debounceCnt\(18) & \inst1|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(14),
	datab => \inst1|s_debounceCnt\(8),
	datac => \inst1|s_debounceCnt\(18),
	datad => \inst1|s_debounceCnt\(19),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X88_Y37_N14
\inst1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_combout\ = (\inst1|s_debounceCnt\(9) & \inst1|s_debounceCnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(9),
	datad => \inst1|s_debounceCnt\(11),
	combout => \inst1|LessThan0~1_combout\);

-- Location: LCCOMB_X88_Y37_N24
\inst1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~2_combout\ = (\inst1|s_debounceCnt\(6) & ((\inst1|s_debounceCnt\(0)) # ((\inst1|s_debounceCnt\(5)) # (!\inst1|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(0),
	datab => \inst1|s_debounceCnt\(6),
	datac => \inst1|s_debounceCnt\(5),
	datad => \inst1|s_pulsedOut~5_combout\,
	combout => \inst1|LessThan0~2_combout\);

-- Location: LCCOMB_X88_Y37_N30
\inst1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~3_combout\ = (\inst1|LessThan0~0_combout\ & (\inst1|LessThan0~1_combout\ & ((\inst1|s_debounceCnt\(7)) # (\inst1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(7),
	datab => \inst1|LessThan0~0_combout\,
	datac => \inst1|LessThan0~1_combout\,
	datad => \inst1|LessThan0~2_combout\,
	combout => \inst1|LessThan0~3_combout\);

-- Location: LCCOMB_X87_Y37_N6
\inst1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~4_combout\ = (\inst1|s_debounceCnt\(13)) # ((\inst1|s_debounceCnt\(12)) # ((\inst1|s_debounceCnt\(11) & \inst1|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(11),
	datab => \inst1|s_debounceCnt\(10),
	datac => \inst1|s_debounceCnt\(13),
	datad => \inst1|s_debounceCnt\(12),
	combout => \inst1|LessThan0~4_combout\);

-- Location: LCCOMB_X87_Y37_N28
\inst1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~5_combout\ = (\inst1|s_debounceCnt\(16)) # ((\inst1|s_debounceCnt\(15)) # ((\inst1|s_debounceCnt\(14) & \inst1|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(16),
	datab => \inst1|s_debounceCnt\(15),
	datac => \inst1|s_debounceCnt\(14),
	datad => \inst1|LessThan0~4_combout\,
	combout => \inst1|LessThan0~5_combout\);

-- Location: LCCOMB_X87_Y37_N14
\inst1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~6_combout\ = (\inst1|s_debounceCnt\(18) & (\inst1|s_debounceCnt\(19) & ((\inst1|s_debounceCnt\(17)) # (\inst1|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(18),
	datab => \inst1|s_debounceCnt\(17),
	datac => \inst1|s_debounceCnt\(19),
	datad => \inst1|LessThan0~5_combout\,
	combout => \inst1|LessThan0~6_combout\);

-- Location: LCCOMB_X88_Y37_N20
\inst1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~7_combout\ = (\inst1|s_debounceCnt\(20)) # ((\inst1|s_debounceCnt\(21)) # ((\inst1|LessThan0~3_combout\) # (\inst1|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(20),
	datab => \inst1|s_debounceCnt\(21),
	datac => \inst1|LessThan0~3_combout\,
	datad => \inst1|LessThan0~6_combout\,
	combout => \inst1|LessThan0~7_combout\);

-- Location: LCCOMB_X88_Y37_N2
\inst1|s_debounceCnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[1]~0_combout\ = (\inst1|s_dirtyIn~q\ & ((!\inst1|LessThan0~7_combout\) # (!\inst1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_dirtyIn~q\,
	datac => \inst1|s_debounceCnt\(22),
	datad => \inst1|LessThan0~7_combout\,
	combout => \inst1|s_debounceCnt[1]~0_combout\);

-- Location: LCCOMB_X89_Y36_N22
\inst1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~44_combout\ = \inst1|s_debounceCnt\(22) $ (\inst1|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(22),
	cin => \inst1|Add0~43\,
	combout => \inst1|Add0~44_combout\);

-- Location: LCCOMB_X88_Y37_N10
\inst1|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[22]~25_combout\ = (\inst1|s_dirtyIn~q\ & ((\inst1|s_debounceCnt\(22) & ((!\inst1|LessThan0~7_combout\))) # (!\inst1|s_debounceCnt\(22) & (\inst1|s_debounceCnt[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_dirtyIn~q\,
	datab => \inst1|s_debounceCnt[1]~2_combout\,
	datac => \inst1|s_debounceCnt\(22),
	datad => \inst1|LessThan0~7_combout\,
	combout => \inst1|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X88_Y37_N22
\inst1|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[22]~26_combout\ = (\inst1|s_previousIn~q\ & (((\inst1|Add0~44_combout\ & \inst1|s_debounceCnt[22]~25_combout\)))) # (!\inst1|s_previousIn~q\ & (\inst1|s_debounceCnt[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datab => \inst1|s_debounceCnt[1]~0_combout\,
	datac => \inst1|Add0~44_combout\,
	datad => \inst1|s_debounceCnt[22]~25_combout\,
	combout => \inst1|s_debounceCnt[22]~26_combout\);

-- Location: FF_X88_Y37_N23
\inst1|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(22));

-- Location: LCCOMB_X88_Y37_N12
\inst1|s_debounceCnt[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[1]~4_combout\ = (\inst1|s_previousIn~q\ & (\inst1|s_dirtyIn~q\ & ((!\inst1|LessThan0~7_combout\) # (!\inst1|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datab => \inst1|s_debounceCnt\(22),
	datac => \inst1|s_dirtyIn~q\,
	datad => \inst1|LessThan0~7_combout\,
	combout => \inst1|s_debounceCnt[1]~4_combout\);

-- Location: LCCOMB_X88_Y37_N16
\inst1|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~24_combout\ = (\inst1|Add0~0_combout\ & \inst1|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~0_combout\,
	datad => \inst1|s_debounceCnt[1]~4_combout\,
	combout => \inst1|s_debounceCnt~24_combout\);

-- Location: FF_X88_Y37_N17
\inst1|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~24_combout\,
	ena => \inst1|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(0));

-- Location: LCCOMB_X90_Y37_N22
\inst1|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~6_combout\ = (\inst1|s_debounceCnt\(0) & (!\inst1|s_debounceCnt\(22) & (\inst1|s_dirtyIn~q\ & \inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(0),
	datab => \inst1|s_debounceCnt\(22),
	datac => \inst1|s_dirtyIn~q\,
	datad => \inst1|s_previousIn~q\,
	combout => \inst1|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X90_Y37_N6
\inst1|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~7_combout\ = (\inst1|s_pulsedOut~6_combout\ & (\inst1|s_pulsedOut~5_combout\ & (!\inst1|s_debounceCnt\(5) & \inst1|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~6_combout\,
	datab => \inst1|s_pulsedOut~5_combout\,
	datac => \inst1|s_debounceCnt\(5),
	datad => \inst1|s_pulsedOut~4_combout\,
	combout => \inst1|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X88_Y41_N24
\inst1|s_pulsedOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~feeder_combout\ = \inst1|s_pulsedOut~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_pulsedOut~7_combout\,
	combout => \inst1|s_pulsedOut~feeder_combout\);

-- Location: FF_X88_Y41_N25
\inst1|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_pulsedOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_pulsedOut~q\);

-- Location: CLKCTRL_G10
\bruh|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \bruh|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \bruh|clkOut~clkctrl_outclk\);

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

-- Location: LCCOMB_X91_Y37_N12
\inst2|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_dirtyIn~0_combout\ = !\SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \inst2|s_dirtyIn~0_combout\);

-- Location: FF_X91_Y37_N13
\inst2|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_dirtyIn~q\);

-- Location: FF_X90_Y39_N29
\inst2|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_previousIn~q\);

-- Location: LCCOMB_X91_Y39_N10
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|s_debounceCnt\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X91_Y39_N6
\inst2|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~24_combout\ = (\inst2|s_debounceCnt[19]~4_combout\ & \inst2|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_debounceCnt[19]~4_combout\,
	datad => \inst2|Add0~0_combout\,
	combout => \inst2|s_debounceCnt~24_combout\);

-- Location: FF_X91_Y39_N7
\inst2|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~24_combout\,
	ena => \inst2|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(0));

-- Location: LCCOMB_X91_Y39_N16
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|s_debounceCnt\(3) & (\inst2|Add0~5\ & VCC)) # (!\inst2|s_debounceCnt\(3) & (!\inst2|Add0~5\))
-- \inst2|Add0~7\ = CARRY((!\inst2|s_debounceCnt\(3) & !\inst2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X91_Y39_N18
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|s_debounceCnt\(4) & ((GND) # (!\inst2|Add0~7\))) # (!\inst2|s_debounceCnt\(4) & (\inst2|Add0~7\ $ (GND)))
-- \inst2|Add0~9\ = CARRY((\inst2|s_debounceCnt\(4)) # (!\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X90_Y39_N16
\inst2|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~23_combout\ = (\inst2|Add0~8_combout\ & \inst2|s_debounceCnt[19]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~8_combout\,
	datad => \inst2|s_debounceCnt[19]~4_combout\,
	combout => \inst2|s_debounceCnt~23_combout\);

-- Location: FF_X90_Y39_N17
\inst2|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~23_combout\,
	ena => \inst2|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(4));

-- Location: LCCOMB_X91_Y39_N20
\inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|s_debounceCnt\(5) & (\inst2|Add0~9\ & VCC)) # (!\inst2|s_debounceCnt\(5) & (!\inst2|Add0~9\))
-- \inst2|Add0~11\ = CARRY((!\inst2|s_debounceCnt\(5) & !\inst2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X91_Y39_N8
\inst2|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~27_combout\ = (\inst2|s_debounceCnt[19]~4_combout\ & \inst2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_debounceCnt[19]~4_combout\,
	datad => \inst2|Add0~10_combout\,
	combout => \inst2|s_debounceCnt~27_combout\);

-- Location: FF_X91_Y39_N9
\inst2|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~27_combout\,
	ena => \inst2|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(5));

-- Location: LCCOMB_X91_Y39_N22
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|s_debounceCnt\(6) & ((GND) # (!\inst2|Add0~11\))) # (!\inst2|s_debounceCnt\(6) & (\inst2|Add0~11\ $ (GND)))
-- \inst2|Add0~13\ = CARRY((\inst2|s_debounceCnt\(6)) # (!\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X90_Y39_N20
\inst2|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~1_combout\ = (\inst2|s_debounceCnt[19]~0_combout\ & ((\inst2|Add0~12_combout\) # (!\inst2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_previousIn~q\,
	datab => \inst2|Add0~12_combout\,
	datad => \inst2|s_debounceCnt[19]~0_combout\,
	combout => \inst2|s_debounceCnt~1_combout\);

-- Location: FF_X90_Y39_N21
\inst2|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~1_combout\,
	ena => \inst2|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(6));

-- Location: LCCOMB_X91_Y39_N24
\inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|s_debounceCnt\(7) & (\inst2|Add0~13\ & VCC)) # (!\inst2|s_debounceCnt\(7) & (!\inst2|Add0~13\))
-- \inst2|Add0~15\ = CARRY((!\inst2|s_debounceCnt\(7) & !\inst2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCCOMB_X91_Y39_N4
\inst2|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~12_combout\ = (\inst2|s_debounceCnt[19]~4_combout\ & \inst2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_debounceCnt[19]~4_combout\,
	datad => \inst2|Add0~14_combout\,
	combout => \inst2|s_debounceCnt~12_combout\);

-- Location: FF_X91_Y39_N5
\inst2|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~12_combout\,
	ena => \inst2|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(7));

-- Location: LCCOMB_X91_Y39_N26
\inst2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|s_debounceCnt\(8) & ((GND) # (!\inst2|Add0~15\))) # (!\inst2|s_debounceCnt\(8) & (\inst2|Add0~15\ $ (GND)))
-- \inst2|Add0~17\ = CARRY((\inst2|s_debounceCnt\(8)) # (!\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: LCCOMB_X90_Y39_N10
\inst2|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~13_combout\ = (\inst2|s_debounceCnt[19]~0_combout\ & ((\inst2|Add0~16_combout\) # (!\inst2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_previousIn~q\,
	datac => \inst2|Add0~16_combout\,
	datad => \inst2|s_debounceCnt[19]~0_combout\,
	combout => \inst2|s_debounceCnt~13_combout\);

-- Location: FF_X90_Y39_N11
\inst2|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~13_combout\,
	ena => \inst2|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(8));

-- Location: LCCOMB_X91_Y39_N28
\inst2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = (\inst2|s_debounceCnt\(9) & (\inst2|Add0~17\ & VCC)) # (!\inst2|s_debounceCnt\(9) & (!\inst2|Add0~17\))
-- \inst2|Add0~19\ = CARRY((!\inst2|s_debounceCnt\(9) & !\inst2|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\,
	cout => \inst2|Add0~19\);

-- Location: LCCOMB_X89_Y39_N28
\inst2|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~14_combout\ = (\inst2|s_debounceCnt[19]~0_combout\ & ((\inst2|Add0~18_combout\) # (!\inst2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_previousIn~q\,
	datab => \inst2|Add0~18_combout\,
	datad => \inst2|s_debounceCnt[19]~0_combout\,
	combout => \inst2|s_debounceCnt~14_combout\);

-- Location: FF_X89_Y39_N29
\inst2|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~14_combout\,
	ena => \inst2|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(9));

-- Location: LCCOMB_X91_Y39_N30
\inst2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = (\inst2|s_debounceCnt\(10) & ((GND) # (!\inst2|Add0~19\))) # (!\inst2|s_debounceCnt\(10) & (\inst2|Add0~19\ $ (GND)))
-- \inst2|Add0~21\ = CARRY((\inst2|s_debounceCnt\(10)) # (!\inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~20_combout\,
	cout => \inst2|Add0~21\);

-- Location: LCCOMB_X90_Y39_N12
\inst2|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~15_combout\ = (\inst2|Add0~20_combout\ & \inst2|s_debounceCnt[19]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~20_combout\,
	datad => \inst2|s_debounceCnt[19]~4_combout\,
	combout => \inst2|s_debounceCnt~15_combout\);

-- Location: FF_X90_Y39_N13
\inst2|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~15_combout\,
	ena => \inst2|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(10));

-- Location: LCCOMB_X90_Y39_N22
\inst2|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~2_combout\ = (!\inst2|s_debounceCnt\(8) & (!\inst2|s_debounceCnt\(9) & (!\inst2|s_debounceCnt\(10) & !\inst2|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(8),
	datab => \inst2|s_debounceCnt\(9),
	datac => \inst2|s_debounceCnt\(10),
	datad => \inst2|s_debounceCnt\(7),
	combout => \inst2|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X91_Y38_N0
\inst2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~22_combout\ = (\inst2|s_debounceCnt\(11) & (\inst2|Add0~21\ & VCC)) # (!\inst2|s_debounceCnt\(11) & (!\inst2|Add0~21\))
-- \inst2|Add0~23\ = CARRY((!\inst2|s_debounceCnt\(11) & !\inst2|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst2|Add0~21\,
	combout => \inst2|Add0~22_combout\,
	cout => \inst2|Add0~23\);

-- Location: LCCOMB_X90_Y39_N8
\inst2|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~16_combout\ = (\inst2|s_debounceCnt[19]~0_combout\ & ((\inst2|Add0~22_combout\) # (!\inst2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_previousIn~q\,
	datab => \inst2|Add0~22_combout\,
	datac => \inst2|s_debounceCnt[19]~0_combout\,
	combout => \inst2|s_debounceCnt~16_combout\);

-- Location: FF_X90_Y39_N9
\inst2|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~16_combout\,
	ena => \inst2|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(11));

-- Location: LCCOMB_X91_Y38_N2
\inst2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~24_combout\ = (\inst2|s_debounceCnt\(12) & ((GND) # (!\inst2|Add0~23\))) # (!\inst2|s_debounceCnt\(12) & (\inst2|Add0~23\ $ (GND)))
-- \inst2|Add0~25\ = CARRY((\inst2|s_debounceCnt\(12)) # (!\inst2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst2|Add0~23\,
	combout => \inst2|Add0~24_combout\,
	cout => \inst2|Add0~25\);

-- Location: LCCOMB_X91_Y38_N24
\inst2|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~8_combout\ = (\inst2|s_debounceCnt[19]~4_combout\ & \inst2|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_debounceCnt[19]~4_combout\,
	datad => \inst2|Add0~24_combout\,
	combout => \inst2|s_debounceCnt~8_combout\);

-- Location: FF_X91_Y38_N25
\inst2|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~8_combout\,
	ena => \inst2|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(12));

-- Location: LCCOMB_X91_Y38_N4
\inst2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~26_combout\ = (\inst2|s_debounceCnt\(13) & (\inst2|Add0~25\ & VCC)) # (!\inst2|s_debounceCnt\(13) & (!\inst2|Add0~25\))
-- \inst2|Add0~27\ = CARRY((!\inst2|s_debounceCnt\(13) & !\inst2|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst2|Add0~25\,
	combout => \inst2|Add0~26_combout\,
	cout => \inst2|Add0~27\);

-- Location: LCCOMB_X91_Y38_N30
\inst2|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~9_combout\ = (\inst2|s_debounceCnt[19]~4_combout\ & \inst2|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_debounceCnt[19]~4_combout\,
	datad => \inst2|Add0~26_combout\,
	combout => \inst2|s_debounceCnt~9_combout\);

-- Location: FF_X91_Y38_N31
\inst2|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~9_combout\,
	ena => \inst2|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(13));

-- Location: LCCOMB_X91_Y38_N6
\inst2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~28_combout\ = (\inst2|s_debounceCnt\(14) & ((GND) # (!\inst2|Add0~27\))) # (!\inst2|s_debounceCnt\(14) & (\inst2|Add0~27\ $ (GND)))
-- \inst2|Add0~29\ = CARRY((\inst2|s_debounceCnt\(14)) # (!\inst2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst2|Add0~27\,
	combout => \inst2|Add0~28_combout\,
	cout => \inst2|Add0~29\);

-- Location: LCCOMB_X90_Y39_N18
\inst2|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~17_combout\ = (\inst2|s_debounceCnt[19]~0_combout\ & ((\inst2|Add0~28_combout\) # (!\inst2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_previousIn~q\,
	datac => \inst2|s_debounceCnt[19]~0_combout\,
	datad => \inst2|Add0~28_combout\,
	combout => \inst2|s_debounceCnt~17_combout\);

-- Location: FF_X90_Y39_N19
\inst2|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~17_combout\,
	ena => \inst2|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(14));

-- Location: LCCOMB_X91_Y38_N8
\inst2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~30_combout\ = (\inst2|s_debounceCnt\(15) & (\inst2|Add0~29\ & VCC)) # (!\inst2|s_debounceCnt\(15) & (!\inst2|Add0~29\))
-- \inst2|Add0~31\ = CARRY((!\inst2|s_debounceCnt\(15) & !\inst2|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst2|Add0~29\,
	combout => \inst2|Add0~30_combout\,
	cout => \inst2|Add0~31\);

-- Location: LCCOMB_X90_Y38_N12
\inst2|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~5_combout\ = (\inst2|Add0~30_combout\ & \inst2|s_debounceCnt[19]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~30_combout\,
	datad => \inst2|s_debounceCnt[19]~4_combout\,
	combout => \inst2|s_debounceCnt~5_combout\);

-- Location: FF_X90_Y38_N13
\inst2|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~5_combout\,
	ena => \inst2|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(15));

-- Location: LCCOMB_X91_Y38_N10
\inst2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~32_combout\ = (\inst2|s_debounceCnt\(16) & ((GND) # (!\inst2|Add0~31\))) # (!\inst2|s_debounceCnt\(16) & (\inst2|Add0~31\ $ (GND)))
-- \inst2|Add0~33\ = CARRY((\inst2|s_debounceCnt\(16)) # (!\inst2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst2|Add0~31\,
	combout => \inst2|Add0~32_combout\,
	cout => \inst2|Add0~33\);

-- Location: LCCOMB_X90_Y39_N26
\inst2|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~6_combout\ = (\inst2|Add0~32_combout\ & \inst2|s_debounceCnt[19]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~32_combout\,
	datad => \inst2|s_debounceCnt[19]~4_combout\,
	combout => \inst2|s_debounceCnt~6_combout\);

-- Location: FF_X90_Y39_N27
\inst2|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~6_combout\,
	ena => \inst2|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(16));

-- Location: LCCOMB_X91_Y38_N12
\inst2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~34_combout\ = (\inst2|s_debounceCnt\(17) & (\inst2|Add0~33\ & VCC)) # (!\inst2|s_debounceCnt\(17) & (!\inst2|Add0~33\))
-- \inst2|Add0~35\ = CARRY((!\inst2|s_debounceCnt\(17) & !\inst2|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst2|Add0~33\,
	combout => \inst2|Add0~34_combout\,
	cout => \inst2|Add0~35\);

-- Location: LCCOMB_X90_Y38_N10
\inst2|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~7_combout\ = (\inst2|Add0~34_combout\ & \inst2|s_debounceCnt[19]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~34_combout\,
	datad => \inst2|s_debounceCnt[19]~4_combout\,
	combout => \inst2|s_debounceCnt~7_combout\);

-- Location: FF_X90_Y38_N11
\inst2|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~7_combout\,
	ena => \inst2|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(17));

-- Location: LCCOMB_X90_Y39_N4
\inst2|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~0_combout\ = (!\inst2|s_debounceCnt\(16) & (!\inst2|s_debounceCnt\(6) & (!\inst2|s_debounceCnt\(15) & !\inst2|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(16),
	datab => \inst2|s_debounceCnt\(6),
	datac => \inst2|s_debounceCnt\(15),
	datad => \inst2|s_debounceCnt\(17),
	combout => \inst2|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X91_Y38_N14
\inst2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~36_combout\ = (\inst2|s_debounceCnt\(18) & ((GND) # (!\inst2|Add0~35\))) # (!\inst2|s_debounceCnt\(18) & (\inst2|Add0~35\ $ (GND)))
-- \inst2|Add0~37\ = CARRY((\inst2|s_debounceCnt\(18)) # (!\inst2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst2|Add0~35\,
	combout => \inst2|Add0~36_combout\,
	cout => \inst2|Add0~37\);

-- Location: LCCOMB_X90_Y38_N26
\inst2|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[18]~18_combout\ = (\inst2|s_debounceCnt[19]~0_combout\ & (\inst2|s_debounceCnt[19]~3_combout\ & ((\inst2|Add0~36_combout\) # (!\inst2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt[19]~0_combout\,
	datab => \inst2|s_previousIn~q\,
	datac => \inst2|s_debounceCnt[19]~3_combout\,
	datad => \inst2|Add0~36_combout\,
	combout => \inst2|s_debounceCnt[18]~18_combout\);

-- Location: FF_X90_Y38_N27
\inst2|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(18));

-- Location: LCCOMB_X91_Y38_N16
\inst2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~38_combout\ = (\inst2|s_debounceCnt\(19) & (\inst2|Add0~37\ & VCC)) # (!\inst2|s_debounceCnt\(19) & (!\inst2|Add0~37\))
-- \inst2|Add0~39\ = CARRY((!\inst2|s_debounceCnt\(19) & !\inst2|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst2|Add0~37\,
	combout => \inst2|Add0~38_combout\,
	cout => \inst2|Add0~39\);

-- Location: LCCOMB_X90_Y39_N0
\inst2|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[19]~19_combout\ = (\inst2|s_debounceCnt[19]~3_combout\ & (\inst2|s_debounceCnt[19]~0_combout\ & ((\inst2|Add0~38_combout\) # (!\inst2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_previousIn~q\,
	datab => \inst2|s_debounceCnt[19]~3_combout\,
	datac => \inst2|s_debounceCnt[19]~0_combout\,
	datad => \inst2|Add0~38_combout\,
	combout => \inst2|s_debounceCnt[19]~19_combout\);

-- Location: FF_X90_Y39_N1
\inst2|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(19));

-- Location: LCCOMB_X91_Y38_N18
\inst2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~40_combout\ = (\inst2|s_debounceCnt\(20) & ((GND) # (!\inst2|Add0~39\))) # (!\inst2|s_debounceCnt\(20) & (\inst2|Add0~39\ $ (GND)))
-- \inst2|Add0~41\ = CARRY((\inst2|s_debounceCnt\(20)) # (!\inst2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst2|Add0~39\,
	combout => \inst2|Add0~40_combout\,
	cout => \inst2|Add0~41\);

-- Location: LCCOMB_X90_Y38_N24
\inst2|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[20]~10_combout\ = (\inst2|s_debounceCnt[19]~4_combout\ & (\inst2|s_debounceCnt[19]~3_combout\ & \inst2|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt[19]~4_combout\,
	datac => \inst2|s_debounceCnt[19]~3_combout\,
	datad => \inst2|Add0~40_combout\,
	combout => \inst2|s_debounceCnt[20]~10_combout\);

-- Location: FF_X90_Y38_N25
\inst2|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(20));

-- Location: LCCOMB_X91_Y38_N26
\inst2|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~1_combout\ = (!\inst2|s_debounceCnt\(13) & (!\inst2|s_debounceCnt\(21) & (!\inst2|s_debounceCnt\(12) & !\inst2|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(13),
	datab => \inst2|s_debounceCnt\(21),
	datac => \inst2|s_debounceCnt\(12),
	datad => \inst2|s_debounceCnt\(20),
	combout => \inst2|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X90_Y39_N14
\inst2|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~3_combout\ = (!\inst2|s_debounceCnt\(14) & (!\inst2|s_debounceCnt\(19) & (!\inst2|s_debounceCnt\(11) & !\inst2|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(14),
	datab => \inst2|s_debounceCnt\(19),
	datac => \inst2|s_debounceCnt\(11),
	datad => \inst2|s_debounceCnt\(18),
	combout => \inst2|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X90_Y39_N24
\inst2|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~4_combout\ = (\inst2|s_pulsedOut~2_combout\ & (\inst2|s_pulsedOut~0_combout\ & (\inst2|s_pulsedOut~1_combout\ & \inst2|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_pulsedOut~2_combout\,
	datab => \inst2|s_pulsedOut~0_combout\,
	datac => \inst2|s_pulsedOut~1_combout\,
	datad => \inst2|s_pulsedOut~3_combout\,
	combout => \inst2|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X90_Y39_N2
\inst2|s_debounceCnt[19]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[19]~2_combout\ = ((\inst2|s_debounceCnt\(0)) # ((\inst2|s_debounceCnt\(5)) # (!\inst2|s_pulsedOut~4_combout\))) # (!\inst2|s_pulsedOut~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_pulsedOut~5_combout\,
	datab => \inst2|s_debounceCnt\(0),
	datac => \inst2|s_debounceCnt\(5),
	datad => \inst2|s_pulsedOut~4_combout\,
	combout => \inst2|s_debounceCnt[19]~2_combout\);

-- Location: LCCOMB_X90_Y39_N28
\inst2|s_debounceCnt[19]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[19]~3_combout\ = (\inst2|s_debounceCnt\(22)) # (((\inst2|s_debounceCnt[19]~2_combout\) # (!\inst2|s_previousIn~q\)) # (!\inst2|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(22),
	datab => \inst2|s_dirtyIn~q\,
	datac => \inst2|s_previousIn~q\,
	datad => \inst2|s_debounceCnt[19]~2_combout\,
	combout => \inst2|s_debounceCnt[19]~3_combout\);

-- Location: LCCOMB_X91_Y38_N20
\inst2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~42_combout\ = (\inst2|s_debounceCnt\(21) & (\inst2|Add0~41\ & VCC)) # (!\inst2|s_debounceCnt\(21) & (!\inst2|Add0~41\))
-- \inst2|Add0~43\ = CARRY((!\inst2|s_debounceCnt\(21) & !\inst2|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst2|Add0~41\,
	combout => \inst2|Add0~42_combout\,
	cout => \inst2|Add0~43\);

-- Location: LCCOMB_X91_Y38_N28
\inst2|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[21]~11_combout\ = (\inst2|s_debounceCnt[19]~4_combout\ & (\inst2|s_debounceCnt[19]~3_combout\ & \inst2|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt[19]~4_combout\,
	datac => \inst2|s_debounceCnt[19]~3_combout\,
	datad => \inst2|Add0~42_combout\,
	combout => \inst2|s_debounceCnt[21]~11_combout\);

-- Location: FF_X91_Y38_N29
\inst2|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(21));

-- Location: LCCOMB_X90_Y38_N6
\inst2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~4_combout\ = (\inst2|s_debounceCnt\(13)) # ((\inst2|s_debounceCnt\(12)) # ((\inst2|s_debounceCnt\(10) & \inst2|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(13),
	datab => \inst2|s_debounceCnt\(12),
	datac => \inst2|s_debounceCnt\(10),
	datad => \inst2|s_debounceCnt\(11),
	combout => \inst2|LessThan0~4_combout\);

-- Location: LCCOMB_X90_Y38_N28
\inst2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~5_combout\ = (\inst2|s_debounceCnt\(15)) # ((\inst2|s_debounceCnt\(16)) # ((\inst2|s_debounceCnt\(14) & \inst2|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(15),
	datab => \inst2|s_debounceCnt\(16),
	datac => \inst2|s_debounceCnt\(14),
	datad => \inst2|LessThan0~4_combout\,
	combout => \inst2|LessThan0~5_combout\);

-- Location: LCCOMB_X90_Y38_N14
\inst2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~6_combout\ = (\inst2|s_debounceCnt\(19) & (\inst2|s_debounceCnt\(18) & ((\inst2|s_debounceCnt\(17)) # (\inst2|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(17),
	datab => \inst2|s_debounceCnt\(19),
	datac => \inst2|s_debounceCnt\(18),
	datad => \inst2|LessThan0~5_combout\,
	combout => \inst2|LessThan0~6_combout\);

-- Location: LCCOMB_X90_Y38_N8
\inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (\inst2|s_debounceCnt\(18) & (\inst2|s_debounceCnt\(8) & (\inst2|s_debounceCnt\(14) & \inst2|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(18),
	datab => \inst2|s_debounceCnt\(8),
	datac => \inst2|s_debounceCnt\(14),
	datad => \inst2|s_debounceCnt\(19),
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X89_Y39_N30
\inst2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = (\inst2|s_debounceCnt\(9) & \inst2|s_debounceCnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(9),
	datac => \inst2|s_debounceCnt\(11),
	combout => \inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X90_Y38_N18
\inst2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~2_combout\ = (\inst2|s_debounceCnt\(6) & ((\inst2|s_debounceCnt\(5)) # ((\inst2|s_debounceCnt\(0)) # (!\inst2|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(5),
	datab => \inst2|s_debounceCnt\(0),
	datac => \inst2|s_pulsedOut~5_combout\,
	datad => \inst2|s_debounceCnt\(6),
	combout => \inst2|LessThan0~2_combout\);

-- Location: LCCOMB_X90_Y38_N20
\inst2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~3_combout\ = (\inst2|LessThan0~0_combout\ & (\inst2|LessThan0~1_combout\ & ((\inst2|s_debounceCnt\(7)) # (\inst2|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(7),
	datab => \inst2|LessThan0~0_combout\,
	datac => \inst2|LessThan0~1_combout\,
	datad => \inst2|LessThan0~2_combout\,
	combout => \inst2|LessThan0~3_combout\);

-- Location: LCCOMB_X90_Y38_N16
\inst2|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~7_combout\ = (\inst2|s_debounceCnt\(21)) # ((\inst2|s_debounceCnt\(20)) # ((\inst2|LessThan0~6_combout\) # (\inst2|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(21),
	datab => \inst2|s_debounceCnt\(20),
	datac => \inst2|LessThan0~6_combout\,
	datad => \inst2|LessThan0~3_combout\,
	combout => \inst2|LessThan0~7_combout\);

-- Location: LCCOMB_X90_Y38_N22
\inst2|s_debounceCnt[19]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[19]~0_combout\ = (\inst2|s_dirtyIn~q\ & ((!\inst2|LessThan0~7_combout\) # (!\inst2|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_dirtyIn~q\,
	datac => \inst2|s_debounceCnt\(22),
	datad => \inst2|LessThan0~7_combout\,
	combout => \inst2|s_debounceCnt[19]~0_combout\);

-- Location: LCCOMB_X90_Y38_N30
\inst2|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[22]~25_combout\ = (\inst2|s_dirtyIn~q\ & ((\inst2|s_debounceCnt\(22) & (!\inst2|LessThan0~7_combout\)) # (!\inst2|s_debounceCnt\(22) & ((\inst2|s_debounceCnt[19]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_dirtyIn~q\,
	datab => \inst2|LessThan0~7_combout\,
	datac => \inst2|s_debounceCnt\(22),
	datad => \inst2|s_debounceCnt[19]~2_combout\,
	combout => \inst2|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X91_Y38_N22
\inst2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~44_combout\ = \inst2|s_debounceCnt\(22) $ (\inst2|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(22),
	cin => \inst2|Add0~43\,
	combout => \inst2|Add0~44_combout\);

-- Location: LCCOMB_X90_Y38_N4
\inst2|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[22]~26_combout\ = (\inst2|s_previousIn~q\ & (((\inst2|s_debounceCnt[22]~25_combout\ & \inst2|Add0~44_combout\)))) # (!\inst2|s_previousIn~q\ & (\inst2|s_debounceCnt[19]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt[19]~0_combout\,
	datab => \inst2|s_previousIn~q\,
	datac => \inst2|s_debounceCnt[22]~25_combout\,
	datad => \inst2|Add0~44_combout\,
	combout => \inst2|s_debounceCnt[22]~26_combout\);

-- Location: FF_X90_Y38_N5
\inst2|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(22));

-- Location: LCCOMB_X90_Y38_N0
\inst2|s_debounceCnt[19]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[19]~4_combout\ = (\inst2|s_dirtyIn~q\ & (\inst2|s_previousIn~q\ & ((!\inst2|LessThan0~7_combout\) # (!\inst2|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_dirtyIn~q\,
	datab => \inst2|s_previousIn~q\,
	datac => \inst2|s_debounceCnt\(22),
	datad => \inst2|LessThan0~7_combout\,
	combout => \inst2|s_debounceCnt[19]~4_combout\);

-- Location: LCCOMB_X91_Y39_N12
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|s_debounceCnt\(1) & (\inst2|Add0~1\ & VCC)) # (!\inst2|s_debounceCnt\(1) & (!\inst2|Add0~1\))
-- \inst2|Add0~3\ = CARRY((!\inst2|s_debounceCnt\(1) & !\inst2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X91_Y39_N2
\inst2|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~20_combout\ = (\inst2|s_debounceCnt[19]~4_combout\ & \inst2|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_debounceCnt[19]~4_combout\,
	datad => \inst2|Add0~2_combout\,
	combout => \inst2|s_debounceCnt~20_combout\);

-- Location: FF_X91_Y39_N3
\inst2|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~20_combout\,
	ena => \inst2|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(1));

-- Location: LCCOMB_X91_Y39_N14
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|s_debounceCnt\(2) & ((GND) # (!\inst2|Add0~3\))) # (!\inst2|s_debounceCnt\(2) & (\inst2|Add0~3\ $ (GND)))
-- \inst2|Add0~5\ = CARRY((\inst2|s_debounceCnt\(2)) # (!\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X91_Y39_N0
\inst2|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~21_combout\ = (\inst2|Add0~4_combout\ & \inst2|s_debounceCnt[19]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~4_combout\,
	datac => \inst2|s_debounceCnt[19]~4_combout\,
	combout => \inst2|s_debounceCnt~21_combout\);

-- Location: FF_X91_Y39_N1
\inst2|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~21_combout\,
	ena => \inst2|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(2));

-- Location: LCCOMB_X90_Y39_N6
\inst2|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~22_combout\ = (\inst2|Add0~6_combout\ & \inst2|s_debounceCnt[19]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~6_combout\,
	datad => \inst2|s_debounceCnt[19]~4_combout\,
	combout => \inst2|s_debounceCnt~22_combout\);

-- Location: FF_X90_Y39_N7
\inst2|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~22_combout\,
	ena => \inst2|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(3));

-- Location: LCCOMB_X90_Y39_N30
\inst2|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~5_combout\ = (!\inst2|s_debounceCnt\(3) & (!\inst2|s_debounceCnt\(4) & (!\inst2|s_debounceCnt\(2) & !\inst2|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(3),
	datab => \inst2|s_debounceCnt\(4),
	datac => \inst2|s_debounceCnt\(2),
	datad => \inst2|s_debounceCnt\(1),
	combout => \inst2|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X90_Y38_N2
\inst2|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~6_combout\ = (\inst2|s_dirtyIn~q\ & (\inst2|s_previousIn~q\ & (!\inst2|s_debounceCnt\(22) & \inst2|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_dirtyIn~q\,
	datab => \inst2|s_previousIn~q\,
	datac => \inst2|s_debounceCnt\(22),
	datad => \inst2|s_debounceCnt\(0),
	combout => \inst2|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X86_Y41_N20
\inst2|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~7_combout\ = (\inst2|s_pulsedOut~5_combout\ & (!\inst2|s_debounceCnt\(5) & (\inst2|s_pulsedOut~4_combout\ & \inst2|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_pulsedOut~5_combout\,
	datab => \inst2|s_debounceCnt\(5),
	datac => \inst2|s_pulsedOut~4_combout\,
	datad => \inst2|s_pulsedOut~6_combout\,
	combout => \inst2|s_pulsedOut~7_combout\);

-- Location: FF_X86_Y41_N21
\inst2|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_pulsedOut~q\);

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

-- Location: LCCOMB_X85_Y34_N6
\inst3|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_dirtyIn~0_combout\ = !\SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \inst3|s_dirtyIn~0_combout\);

-- Location: FF_X85_Y34_N7
\inst3|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_dirtyIn~q\);

-- Location: LCCOMB_X85_Y34_N0
\inst3|s_previousIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_previousIn~feeder_combout\ = \inst3|s_dirtyIn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|s_dirtyIn~q\,
	combout => \inst3|s_previousIn~feeder_combout\);

-- Location: FF_X85_Y34_N1
\inst3|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_previousIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_previousIn~q\);

-- Location: LCCOMB_X88_Y35_N10
\inst3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = \inst3|s_debounceCnt\(0) $ (VCC)
-- \inst3|Add0~1\ = CARRY(\inst3|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

-- Location: LCCOMB_X87_Y34_N0
\inst3|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~23_combout\ = (\inst3|s_previousIn~q\ & (\inst3|Add0~0_combout\ & \inst3|s_debounceCnt[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~0_combout\,
	datad => \inst3|s_debounceCnt[4]~0_combout\,
	combout => \inst3|s_debounceCnt~23_combout\);

-- Location: FF_X87_Y34_N1
\inst3|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~23_combout\,
	ena => \inst3|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(0));

-- Location: LCCOMB_X87_Y34_N22
\inst3|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~5_combout\ = (!\inst3|s_debounceCnt\(1) & (!\inst3|s_debounceCnt\(2) & (!\inst3|s_debounceCnt\(3) & !\inst3|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(1),
	datab => \inst3|s_debounceCnt\(2),
	datac => \inst3|s_debounceCnt\(3),
	datad => \inst3|s_debounceCnt\(4),
	combout => \inst3|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X88_Y35_N20
\inst3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst3|s_debounceCnt\(5) & (\inst3|Add0~9\ & VCC)) # (!\inst3|s_debounceCnt\(5) & (!\inst3|Add0~9\))
-- \inst3|Add0~11\ = CARRY((!\inst3|s_debounceCnt\(5) & !\inst3|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: LCCOMB_X88_Y35_N22
\inst3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = (\inst3|s_debounceCnt\(6) & ((GND) # (!\inst3|Add0~11\))) # (!\inst3|s_debounceCnt\(6) & (\inst3|Add0~11\ $ (GND)))
-- \inst3|Add0~13\ = CARRY((\inst3|s_debounceCnt\(6)) # (!\inst3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: LCCOMB_X87_Y34_N24
\inst3|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~1_combout\ = (\inst3|s_debounceCnt[4]~0_combout\ & ((\inst3|Add0~12_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~12_combout\,
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|s_debounceCnt[4]~0_combout\,
	combout => \inst3|s_debounceCnt~1_combout\);

-- Location: FF_X87_Y34_N25
\inst3|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~1_combout\,
	ena => \inst3|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(6));

-- Location: LCCOMB_X88_Y35_N24
\inst3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = (\inst3|s_debounceCnt\(7) & (\inst3|Add0~13\ & VCC)) # (!\inst3|s_debounceCnt\(7) & (!\inst3|Add0~13\))
-- \inst3|Add0~15\ = CARRY((!\inst3|s_debounceCnt\(7) & !\inst3|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\,
	cout => \inst3|Add0~15\);

-- Location: LCCOMB_X86_Y34_N0
\inst3|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~11_combout\ = (\inst3|s_debounceCnt[4]~0_combout\ & (\inst3|s_previousIn~q\ & \inst3|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt[4]~0_combout\,
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|Add0~14_combout\,
	combout => \inst3|s_debounceCnt~11_combout\);

-- Location: FF_X86_Y34_N1
\inst3|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~11_combout\,
	ena => \inst3|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(7));

-- Location: LCCOMB_X88_Y35_N26
\inst3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~16_combout\ = (\inst3|s_debounceCnt\(8) & ((GND) # (!\inst3|Add0~15\))) # (!\inst3|s_debounceCnt\(8) & (\inst3|Add0~15\ $ (GND)))
-- \inst3|Add0~17\ = CARRY((\inst3|s_debounceCnt\(8)) # (!\inst3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst3|Add0~15\,
	combout => \inst3|Add0~16_combout\,
	cout => \inst3|Add0~17\);

-- Location: LCCOMB_X86_Y34_N30
\inst3|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~12_combout\ = (\inst3|s_debounceCnt[4]~0_combout\ & ((\inst3|Add0~16_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~16_combout\,
	datad => \inst3|s_debounceCnt[4]~0_combout\,
	combout => \inst3|s_debounceCnt~12_combout\);

-- Location: FF_X86_Y34_N31
\inst3|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~12_combout\,
	ena => \inst3|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(8));

-- Location: LCCOMB_X88_Y35_N28
\inst3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~18_combout\ = (\inst3|s_debounceCnt\(9) & (\inst3|Add0~17\ & VCC)) # (!\inst3|s_debounceCnt\(9) & (!\inst3|Add0~17\))
-- \inst3|Add0~19\ = CARRY((!\inst3|s_debounceCnt\(9) & !\inst3|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst3|Add0~17\,
	combout => \inst3|Add0~18_combout\,
	cout => \inst3|Add0~19\);

-- Location: LCCOMB_X86_Y34_N20
\inst3|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~13_combout\ = (\inst3|s_debounceCnt[4]~0_combout\ & ((\inst3|Add0~18_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~18_combout\,
	datad => \inst3|s_debounceCnt[4]~0_combout\,
	combout => \inst3|s_debounceCnt~13_combout\);

-- Location: FF_X86_Y34_N21
\inst3|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~13_combout\,
	ena => \inst3|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(9));

-- Location: LCCOMB_X88_Y35_N30
\inst3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~20_combout\ = (\inst3|s_debounceCnt\(10) & ((GND) # (!\inst3|Add0~19\))) # (!\inst3|s_debounceCnt\(10) & (\inst3|Add0~19\ $ (GND)))
-- \inst3|Add0~21\ = CARRY((\inst3|s_debounceCnt\(10)) # (!\inst3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst3|Add0~19\,
	combout => \inst3|Add0~20_combout\,
	cout => \inst3|Add0~21\);

-- Location: LCCOMB_X86_Y34_N18
\inst3|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~14_combout\ = (\inst3|s_previousIn~q\ & (\inst3|Add0~20_combout\ & \inst3|s_debounceCnt[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~20_combout\,
	datad => \inst3|s_debounceCnt[4]~0_combout\,
	combout => \inst3|s_debounceCnt~14_combout\);

-- Location: FF_X86_Y34_N19
\inst3|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~14_combout\,
	ena => \inst3|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(10));

-- Location: LCCOMB_X88_Y34_N0
\inst3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~22_combout\ = (\inst3|s_debounceCnt\(11) & (\inst3|Add0~21\ & VCC)) # (!\inst3|s_debounceCnt\(11) & (!\inst3|Add0~21\))
-- \inst3|Add0~23\ = CARRY((!\inst3|s_debounceCnt\(11) & !\inst3|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst3|Add0~21\,
	combout => \inst3|Add0~22_combout\,
	cout => \inst3|Add0~23\);

-- Location: LCCOMB_X86_Y34_N26
\inst3|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~15_combout\ = (\inst3|s_debounceCnt[4]~0_combout\ & ((\inst3|Add0~22_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~22_combout\,
	datad => \inst3|s_debounceCnt[4]~0_combout\,
	combout => \inst3|s_debounceCnt~15_combout\);

-- Location: FF_X86_Y34_N27
\inst3|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~15_combout\,
	ena => \inst3|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(11));

-- Location: LCCOMB_X88_Y34_N2
\inst3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~24_combout\ = (\inst3|s_debounceCnt\(12) & ((GND) # (!\inst3|Add0~23\))) # (!\inst3|s_debounceCnt\(12) & (\inst3|Add0~23\ $ (GND)))
-- \inst3|Add0~25\ = CARRY((\inst3|s_debounceCnt\(12)) # (!\inst3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst3|Add0~23\,
	combout => \inst3|Add0~24_combout\,
	cout => \inst3|Add0~25\);

-- Location: LCCOMB_X88_Y34_N24
\inst3|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~7_combout\ = (\inst3|s_previousIn~q\ & (\inst3|Add0~24_combout\ & \inst3|s_debounceCnt[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datab => \inst3|Add0~24_combout\,
	datad => \inst3|s_debounceCnt[4]~0_combout\,
	combout => \inst3|s_debounceCnt~7_combout\);

-- Location: FF_X88_Y34_N25
\inst3|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~7_combout\,
	ena => \inst3|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(12));

-- Location: LCCOMB_X88_Y34_N4
\inst3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~26_combout\ = (\inst3|s_debounceCnt\(13) & (\inst3|Add0~25\ & VCC)) # (!\inst3|s_debounceCnt\(13) & (!\inst3|Add0~25\))
-- \inst3|Add0~27\ = CARRY((!\inst3|s_debounceCnt\(13) & !\inst3|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst3|Add0~25\,
	combout => \inst3|Add0~26_combout\,
	cout => \inst3|Add0~27\);

-- Location: LCCOMB_X88_Y34_N26
\inst3|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~8_combout\ = (\inst3|s_previousIn~q\ & (\inst3|Add0~26_combout\ & \inst3|s_debounceCnt[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~26_combout\,
	datad => \inst3|s_debounceCnt[4]~0_combout\,
	combout => \inst3|s_debounceCnt~8_combout\);

-- Location: FF_X88_Y34_N27
\inst3|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~8_combout\,
	ena => \inst3|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(13));

-- Location: LCCOMB_X88_Y34_N6
\inst3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~28_combout\ = (\inst3|s_debounceCnt\(14) & ((GND) # (!\inst3|Add0~27\))) # (!\inst3|s_debounceCnt\(14) & (\inst3|Add0~27\ $ (GND)))
-- \inst3|Add0~29\ = CARRY((\inst3|s_debounceCnt\(14)) # (!\inst3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst3|Add0~27\,
	combout => \inst3|Add0~28_combout\,
	cout => \inst3|Add0~29\);

-- Location: LCCOMB_X86_Y34_N24
\inst3|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~16_combout\ = (\inst3|s_debounceCnt[4]~0_combout\ & ((\inst3|Add0~28_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~28_combout\,
	datad => \inst3|s_debounceCnt[4]~0_combout\,
	combout => \inst3|s_debounceCnt~16_combout\);

-- Location: FF_X86_Y34_N25
\inst3|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~16_combout\,
	ena => \inst3|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(14));

-- Location: LCCOMB_X88_Y34_N8
\inst3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~30_combout\ = (\inst3|s_debounceCnt\(15) & (\inst3|Add0~29\ & VCC)) # (!\inst3|s_debounceCnt\(15) & (!\inst3|Add0~29\))
-- \inst3|Add0~31\ = CARRY((!\inst3|s_debounceCnt\(15) & !\inst3|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst3|Add0~29\,
	combout => \inst3|Add0~30_combout\,
	cout => \inst3|Add0~31\);

-- Location: LCCOMB_X88_Y34_N28
\inst3|s_debounceCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~4_combout\ = (\inst3|s_previousIn~q\ & (\inst3|Add0~30_combout\ & \inst3|s_debounceCnt[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~30_combout\,
	datad => \inst3|s_debounceCnt[4]~0_combout\,
	combout => \inst3|s_debounceCnt~4_combout\);

-- Location: FF_X88_Y34_N29
\inst3|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~4_combout\,
	ena => \inst3|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(15));

-- Location: LCCOMB_X88_Y34_N10
\inst3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~32_combout\ = (\inst3|s_debounceCnt\(16) & ((GND) # (!\inst3|Add0~31\))) # (!\inst3|s_debounceCnt\(16) & (\inst3|Add0~31\ $ (GND)))
-- \inst3|Add0~33\ = CARRY((\inst3|s_debounceCnt\(16)) # (!\inst3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst3|Add0~31\,
	combout => \inst3|Add0~32_combout\,
	cout => \inst3|Add0~33\);

-- Location: LCCOMB_X88_Y34_N30
\inst3|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~5_combout\ = (\inst3|s_previousIn~q\ & (\inst3|s_debounceCnt[4]~0_combout\ & \inst3|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datac => \inst3|s_debounceCnt[4]~0_combout\,
	datad => \inst3|Add0~32_combout\,
	combout => \inst3|s_debounceCnt~5_combout\);

-- Location: FF_X88_Y34_N31
\inst3|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~5_combout\,
	ena => \inst3|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(16));

-- Location: LCCOMB_X88_Y34_N12
\inst3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~34_combout\ = (\inst3|s_debounceCnt\(17) & (\inst3|Add0~33\ & VCC)) # (!\inst3|s_debounceCnt\(17) & (!\inst3|Add0~33\))
-- \inst3|Add0~35\ = CARRY((!\inst3|s_debounceCnt\(17) & !\inst3|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst3|Add0~33\,
	combout => \inst3|Add0~34_combout\,
	cout => \inst3|Add0~35\);

-- Location: LCCOMB_X87_Y34_N2
\inst3|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~6_combout\ = (\inst3|s_previousIn~q\ & (\inst3|Add0~34_combout\ & \inst3|s_debounceCnt[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~34_combout\,
	datad => \inst3|s_debounceCnt[4]~0_combout\,
	combout => \inst3|s_debounceCnt~6_combout\);

-- Location: FF_X87_Y34_N3
\inst3|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~6_combout\,
	ena => \inst3|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(17));

-- Location: LCCOMB_X88_Y34_N14
\inst3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~36_combout\ = (\inst3|s_debounceCnt\(18) & ((GND) # (!\inst3|Add0~35\))) # (!\inst3|s_debounceCnt\(18) & (\inst3|Add0~35\ $ (GND)))
-- \inst3|Add0~37\ = CARRY((\inst3|s_debounceCnt\(18)) # (!\inst3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst3|Add0~35\,
	combout => \inst3|Add0~36_combout\,
	cout => \inst3|Add0~37\);

-- Location: LCCOMB_X87_Y34_N12
\inst3|s_debounceCnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[18]~17_combout\ = (\inst3|s_debounceCnt[4]~3_combout\ & (\inst3|s_debounceCnt[4]~0_combout\ & ((\inst3|Add0~36_combout\) # (!\inst3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt[4]~3_combout\,
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~36_combout\,
	datad => \inst3|s_debounceCnt[4]~0_combout\,
	combout => \inst3|s_debounceCnt[18]~17_combout\);

-- Location: FF_X87_Y34_N13
\inst3|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(18));

-- Location: LCCOMB_X88_Y34_N16
\inst3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~38_combout\ = (\inst3|s_debounceCnt\(19) & (\inst3|Add0~37\ & VCC)) # (!\inst3|s_debounceCnt\(19) & (!\inst3|Add0~37\))
-- \inst3|Add0~39\ = CARRY((!\inst3|s_debounceCnt\(19) & !\inst3|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst3|Add0~37\,
	combout => \inst3|Add0~38_combout\,
	cout => \inst3|Add0~39\);

-- Location: LCCOMB_X86_Y34_N6
\inst3|s_debounceCnt[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[19]~18_combout\ = (\inst3|s_debounceCnt[4]~0_combout\ & (\inst3|s_debounceCnt[4]~3_combout\ & ((\inst3|Add0~38_combout\) # (!\inst3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt[4]~0_combout\,
	datab => \inst3|s_debounceCnt[4]~3_combout\,
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|Add0~38_combout\,
	combout => \inst3|s_debounceCnt[19]~18_combout\);

-- Location: FF_X86_Y34_N7
\inst3|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(19));

-- Location: LCCOMB_X86_Y34_N12
\inst3|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~3_combout\ = (!\inst3|s_debounceCnt\(19) & (!\inst3|s_debounceCnt\(18) & (!\inst3|s_debounceCnt\(11) & !\inst3|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(19),
	datab => \inst3|s_debounceCnt\(18),
	datac => \inst3|s_debounceCnt\(11),
	datad => \inst3|s_debounceCnt\(14),
	combout => \inst3|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X86_Y34_N4
\inst3|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~2_combout\ = (!\inst3|s_debounceCnt\(8) & (!\inst3|s_debounceCnt\(9) & (!\inst3|s_debounceCnt\(10) & !\inst3|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(8),
	datab => \inst3|s_debounceCnt\(9),
	datac => \inst3|s_debounceCnt\(10),
	datad => \inst3|s_debounceCnt\(7),
	combout => \inst3|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X86_Y34_N8
\inst3|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~0_combout\ = (!\inst3|s_debounceCnt\(16) & (!\inst3|s_debounceCnt\(6) & (!\inst3|s_debounceCnt\(15) & !\inst3|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(16),
	datab => \inst3|s_debounceCnt\(6),
	datac => \inst3|s_debounceCnt\(15),
	datad => \inst3|s_debounceCnt\(17),
	combout => \inst3|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X88_Y34_N18
\inst3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~40_combout\ = (\inst3|s_debounceCnt\(20) & ((GND) # (!\inst3|Add0~39\))) # (!\inst3|s_debounceCnt\(20) & (\inst3|Add0~39\ $ (GND)))
-- \inst3|Add0~41\ = CARRY((\inst3|s_debounceCnt\(20)) # (!\inst3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst3|Add0~39\,
	combout => \inst3|Add0~40_combout\,
	cout => \inst3|Add0~41\);

-- Location: LCCOMB_X88_Y34_N20
\inst3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~42_combout\ = (\inst3|s_debounceCnt\(21) & (\inst3|Add0~41\ & VCC)) # (!\inst3|s_debounceCnt\(21) & (!\inst3|Add0~41\))
-- \inst3|Add0~43\ = CARRY((!\inst3|s_debounceCnt\(21) & !\inst3|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst3|Add0~41\,
	combout => \inst3|Add0~42_combout\,
	cout => \inst3|Add0~43\);

-- Location: LCCOMB_X87_Y34_N18
\inst3|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[21]~10_combout\ = (\inst3|s_debounceCnt[4]~3_combout\ & (\inst3|s_previousIn~q\ & (\inst3|Add0~42_combout\ & \inst3|s_debounceCnt[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt[4]~3_combout\,
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~42_combout\,
	datad => \inst3|s_debounceCnt[4]~0_combout\,
	combout => \inst3|s_debounceCnt[21]~10_combout\);

-- Location: FF_X87_Y34_N19
\inst3|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(21));

-- Location: LCCOMB_X86_Y34_N2
\inst3|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~1_combout\ = (!\inst3|s_debounceCnt\(20) & (!\inst3|s_debounceCnt\(21) & (!\inst3|s_debounceCnt\(12) & !\inst3|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(20),
	datab => \inst3|s_debounceCnt\(21),
	datac => \inst3|s_debounceCnt\(12),
	datad => \inst3|s_debounceCnt\(13),
	combout => \inst3|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X86_Y34_N14
\inst3|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~4_combout\ = (\inst3|s_pulsedOut~3_combout\ & (\inst3|s_pulsedOut~2_combout\ & (\inst3|s_pulsedOut~0_combout\ & \inst3|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pulsedOut~3_combout\,
	datab => \inst3|s_pulsedOut~2_combout\,
	datac => \inst3|s_pulsedOut~0_combout\,
	datad => \inst3|s_pulsedOut~1_combout\,
	combout => \inst3|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X87_Y34_N10
\inst3|s_debounceCnt[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[4]~2_combout\ = (\inst3|s_debounceCnt\(5)) # ((\inst3|s_debounceCnt\(0)) # ((!\inst3|s_pulsedOut~4_combout\) # (!\inst3|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(5),
	datab => \inst3|s_debounceCnt\(0),
	datac => \inst3|s_pulsedOut~5_combout\,
	datad => \inst3|s_pulsedOut~4_combout\,
	combout => \inst3|s_debounceCnt[4]~2_combout\);

-- Location: LCCOMB_X86_Y34_N28
\inst3|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~4_combout\ = (\inst3|s_debounceCnt\(19) & (\inst3|s_debounceCnt\(8) & (\inst3|s_debounceCnt\(18) & \inst3|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(19),
	datab => \inst3|s_debounceCnt\(8),
	datac => \inst3|s_debounceCnt\(18),
	datad => \inst3|s_debounceCnt\(14),
	combout => \inst3|LessThan0~4_combout\);

-- Location: LCCOMB_X85_Y34_N30
\inst3|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~5_combout\ = (\inst3|s_debounceCnt\(11) & (\inst3|s_debounceCnt\(9) & \inst3|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(11),
	datac => \inst3|s_debounceCnt\(9),
	datad => \inst3|LessThan0~4_combout\,
	combout => \inst3|LessThan0~5_combout\);

-- Location: LCCOMB_X86_Y34_N10
\inst3|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~6_combout\ = (\inst3|s_debounceCnt\(6) & ((\inst3|s_debounceCnt\(5)) # ((\inst3|s_debounceCnt\(0)) # (!\inst3|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(5),
	datab => \inst3|s_debounceCnt\(6),
	datac => \inst3|s_debounceCnt\(0),
	datad => \inst3|s_pulsedOut~5_combout\,
	combout => \inst3|LessThan0~6_combout\);

-- Location: LCCOMB_X86_Y34_N16
\inst3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~1_combout\ = (\inst3|s_debounceCnt\(12)) # ((\inst3|s_debounceCnt\(13)) # ((\inst3|s_debounceCnt\(11) & \inst3|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(11),
	datab => \inst3|s_debounceCnt\(10),
	datac => \inst3|s_debounceCnt\(12),
	datad => \inst3|s_debounceCnt\(13),
	combout => \inst3|LessThan0~1_combout\);

-- Location: LCCOMB_X86_Y34_N22
\inst3|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~2_combout\ = (\inst3|s_debounceCnt\(16)) # ((\inst3|s_debounceCnt\(15)) # ((\inst3|s_debounceCnt\(14) & \inst3|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(16),
	datab => \inst3|s_debounceCnt\(14),
	datac => \inst3|s_debounceCnt\(15),
	datad => \inst3|LessThan0~1_combout\,
	combout => \inst3|LessThan0~2_combout\);

-- Location: LCCOMB_X85_Y34_N12
\inst3|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~3_combout\ = (\inst3|s_debounceCnt\(19) & (\inst3|s_debounceCnt\(18) & ((\inst3|s_debounceCnt\(17)) # (\inst3|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(19),
	datab => \inst3|s_debounceCnt\(18),
	datac => \inst3|s_debounceCnt\(17),
	datad => \inst3|LessThan0~2_combout\,
	combout => \inst3|LessThan0~3_combout\);

-- Location: LCCOMB_X85_Y34_N16
\inst3|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~7_combout\ = (\inst3|LessThan0~3_combout\) # ((\inst3|LessThan0~5_combout\ & ((\inst3|s_debounceCnt\(7)) # (\inst3|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan0~5_combout\,
	datab => \inst3|s_debounceCnt\(7),
	datac => \inst3|LessThan0~6_combout\,
	datad => \inst3|LessThan0~3_combout\,
	combout => \inst3|LessThan0~7_combout\);

-- Location: LCCOMB_X87_Y34_N6
\inst3|s_debounceCnt[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[22]~24_combout\ = (\inst3|s_debounceCnt\(22) & (\inst3|LessThan0~0_combout\ & ((!\inst3|LessThan0~7_combout\)))) # (!\inst3|s_debounceCnt\(22) & (((\inst3|s_debounceCnt[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(22),
	datab => \inst3|LessThan0~0_combout\,
	datac => \inst3|s_debounceCnt[4]~2_combout\,
	datad => \inst3|LessThan0~7_combout\,
	combout => \inst3|s_debounceCnt[22]~24_combout\);

-- Location: LCCOMB_X85_Y34_N20
\inst3|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[22]~25_combout\ = (\inst3|s_previousIn~q\ & (\inst3|s_dirtyIn~q\)) # (!\inst3|s_previousIn~q\ & ((\inst3|s_debounceCnt[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_dirtyIn~q\,
	datab => \inst3|s_previousIn~q\,
	datad => \inst3|s_debounceCnt[4]~0_combout\,
	combout => \inst3|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X88_Y34_N22
\inst3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~44_combout\ = \inst3|Add0~43\ $ (\inst3|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|s_debounceCnt\(22),
	cin => \inst3|Add0~43\,
	combout => \inst3|Add0~44_combout\);

-- Location: LCCOMB_X87_Y34_N30
\inst3|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[22]~26_combout\ = (\inst3|s_debounceCnt[22]~25_combout\ & (((\inst3|s_debounceCnt[22]~24_combout\ & \inst3|Add0~44_combout\)) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt[22]~24_combout\,
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|s_debounceCnt[22]~25_combout\,
	datad => \inst3|Add0~44_combout\,
	combout => \inst3|s_debounceCnt[22]~26_combout\);

-- Location: FF_X87_Y34_N31
\inst3|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(22));

-- Location: LCCOMB_X87_Y34_N8
\inst3|s_debounceCnt[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[4]~3_combout\ = (\inst3|s_debounceCnt\(22)) # (((\inst3|s_debounceCnt[4]~2_combout\) # (!\inst3|s_previousIn~q\)) # (!\inst3|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(22),
	datab => \inst3|s_dirtyIn~q\,
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|s_debounceCnt[4]~2_combout\,
	combout => \inst3|s_debounceCnt[4]~3_combout\);

-- Location: LCCOMB_X87_Y34_N4
\inst3|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[20]~9_combout\ = (\inst3|s_debounceCnt[4]~3_combout\ & (\inst3|s_previousIn~q\ & (\inst3|s_debounceCnt[4]~0_combout\ & \inst3|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt[4]~3_combout\,
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|s_debounceCnt[4]~0_combout\,
	datad => \inst3|Add0~40_combout\,
	combout => \inst3|s_debounceCnt[20]~9_combout\);

-- Location: FF_X87_Y34_N5
\inst3|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(20));

-- Location: LCCOMB_X85_Y34_N14
\inst3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = (!\inst3|s_debounceCnt\(20) & !\inst3|s_debounceCnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|s_debounceCnt\(20),
	datad => \inst3|s_debounceCnt\(21),
	combout => \inst3|LessThan0~0_combout\);

-- Location: LCCOMB_X85_Y34_N10
\inst3|s_debounceCnt[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[4]~0_combout\ = (\inst3|s_dirtyIn~q\ & (((\inst3|LessThan0~0_combout\ & !\inst3|LessThan0~7_combout\)) # (!\inst3|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_dirtyIn~q\,
	datab => \inst3|LessThan0~0_combout\,
	datac => \inst3|s_debounceCnt\(22),
	datad => \inst3|LessThan0~7_combout\,
	combout => \inst3|s_debounceCnt[4]~0_combout\);

-- Location: LCCOMB_X88_Y35_N12
\inst3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst3|s_debounceCnt\(1) & (\inst3|Add0~1\ & VCC)) # (!\inst3|s_debounceCnt\(1) & (!\inst3|Add0~1\))
-- \inst3|Add0~3\ = CARRY((!\inst3|s_debounceCnt\(1) & !\inst3|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: LCCOMB_X87_Y34_N26
\inst3|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~19_combout\ = (\inst3|s_previousIn~q\ & (\inst3|s_debounceCnt[4]~0_combout\ & \inst3|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|s_debounceCnt[4]~0_combout\,
	datad => \inst3|Add0~2_combout\,
	combout => \inst3|s_debounceCnt~19_combout\);

-- Location: FF_X87_Y34_N27
\inst3|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~19_combout\,
	ena => \inst3|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(1));

-- Location: LCCOMB_X88_Y35_N14
\inst3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = (\inst3|s_debounceCnt\(2) & ((GND) # (!\inst3|Add0~3\))) # (!\inst3|s_debounceCnt\(2) & (\inst3|Add0~3\ $ (GND)))
-- \inst3|Add0~5\ = CARRY((\inst3|s_debounceCnt\(2)) # (!\inst3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: LCCOMB_X87_Y34_N16
\inst3|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~20_combout\ = (\inst3|Add0~4_combout\ & (\inst3|s_previousIn~q\ & \inst3|s_debounceCnt[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~4_combout\,
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|s_debounceCnt[4]~0_combout\,
	combout => \inst3|s_debounceCnt~20_combout\);

-- Location: FF_X87_Y34_N17
\inst3|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~20_combout\,
	ena => \inst3|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(2));

-- Location: LCCOMB_X88_Y35_N16
\inst3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst3|s_debounceCnt\(3) & (\inst3|Add0~5\ & VCC)) # (!\inst3|s_debounceCnt\(3) & (!\inst3|Add0~5\))
-- \inst3|Add0~7\ = CARRY((!\inst3|s_debounceCnt\(3) & !\inst3|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: LCCOMB_X87_Y34_N14
\inst3|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~21_combout\ = (\inst3|s_previousIn~q\ & (\inst3|Add0~6_combout\ & \inst3|s_debounceCnt[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~6_combout\,
	datad => \inst3|s_debounceCnt[4]~0_combout\,
	combout => \inst3|s_debounceCnt~21_combout\);

-- Location: FF_X87_Y34_N15
\inst3|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~21_combout\,
	ena => \inst3|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(3));

-- Location: LCCOMB_X88_Y35_N18
\inst3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = (\inst3|s_debounceCnt\(4) & ((GND) # (!\inst3|Add0~7\))) # (!\inst3|s_debounceCnt\(4) & (\inst3|Add0~7\ $ (GND)))
-- \inst3|Add0~9\ = CARRY((\inst3|s_debounceCnt\(4)) # (!\inst3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: LCCOMB_X87_Y34_N28
\inst3|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~22_combout\ = (\inst3|Add0~8_combout\ & (\inst3|s_previousIn~q\ & \inst3|s_debounceCnt[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~8_combout\,
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|s_debounceCnt[4]~0_combout\,
	combout => \inst3|s_debounceCnt~22_combout\);

-- Location: FF_X87_Y34_N29
\inst3|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~22_combout\,
	ena => \inst3|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(4));

-- Location: LCCOMB_X87_Y34_N20
\inst3|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~27_combout\ = (\inst3|s_previousIn~q\ & (\inst3|Add0~10_combout\ & \inst3|s_debounceCnt[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~10_combout\,
	datad => \inst3|s_debounceCnt[4]~0_combout\,
	combout => \inst3|s_debounceCnt~27_combout\);

-- Location: FF_X87_Y34_N21
\inst3|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~27_combout\,
	ena => \inst3|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(5));

-- Location: LCCOMB_X85_Y34_N24
\inst3|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~6_combout\ = (\inst3|s_dirtyIn~q\ & (\inst3|s_previousIn~q\ & (!\inst3|s_debounceCnt\(22) & \inst3|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_dirtyIn~q\,
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|s_debounceCnt\(22),
	datad => \inst3|s_debounceCnt\(0),
	combout => \inst3|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X86_Y41_N18
\inst3|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~7_combout\ = (!\inst3|s_debounceCnt\(5) & (\inst3|s_pulsedOut~5_combout\ & (\inst3|s_pulsedOut~4_combout\ & \inst3|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(5),
	datab => \inst3|s_pulsedOut~5_combout\,
	datac => \inst3|s_pulsedOut~4_combout\,
	datad => \inst3|s_pulsedOut~6_combout\,
	combout => \inst3|s_pulsedOut~7_combout\);

-- Location: FF_X86_Y41_N19
\inst3|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst3|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pulsedOut~q\);

-- Location: LCCOMB_X86_Y41_N24
\inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (\inst3|s_pulsedOut~q\) # ((\inst|pState.S5~q\) # (\inst2|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pulsedOut~q\,
	datac => \inst|pState.S5~q\,
	datad => \inst2|s_pulsedOut~q\,
	combout => \inst|Selector6~0_combout\);

-- Location: CLKCTRL_G6
\inst|Selector6~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|Selector6~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|Selector6~0clkctrl_outclk\);

-- Location: LCCOMB_X87_Y41_N0
\inst|nState.S0_250\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nState.S0_250~combout\ = (GLOBAL(\inst|Selector6~0clkctrl_outclk\) & (\inst|pState.S5~q\)) # (!GLOBAL(\inst|Selector6~0clkctrl_outclk\) & ((\inst|nState.S0_250~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pState.S5~q\,
	datab => \inst|nState.S0_250~combout\,
	datad => \inst|Selector6~0clkctrl_outclk\,
	combout => \inst|nState.S0_250~combout\);

-- Location: LCCOMB_X87_Y41_N22
\inst|pState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pState~13_combout\ = (!\inst1|s_pulsedOut~q\ & !\inst|nState.S0_250~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_pulsedOut~q\,
	datad => \inst|nState.S0_250~combout\,
	combout => \inst|pState~13_combout\);

-- Location: FF_X87_Y41_N23
\inst|pState.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bruh|clkOut~clkctrl_outclk\,
	d => \inst|pState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pState.S0~q\);

-- Location: LCCOMB_X86_Y41_N28
\inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\inst2|s_pulsedOut~q\ & !\inst|pState.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_pulsedOut~q\,
	datad => \inst|pState.S0~q\,
	combout => \inst|Selector2~0_combout\);

-- Location: LCCOMB_X87_Y41_N18
\inst|nState.S1_229\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nState.S1_229~combout\ = (GLOBAL(\inst|Selector6~0clkctrl_outclk\) & ((\inst|Selector2~0_combout\))) # (!GLOBAL(\inst|Selector6~0clkctrl_outclk\) & (\inst|nState.S1_229~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|nState.S1_229~combout\,
	datac => \inst|Selector2~0_combout\,
	datad => \inst|Selector6~0clkctrl_outclk\,
	combout => \inst|nState.S1_229~combout\);

-- Location: LCCOMB_X87_Y41_N6
\inst|pState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pState~12_combout\ = (!\inst1|s_pulsedOut~q\ & \inst|nState.S1_229~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_pulsedOut~q\,
	datad => \inst|nState.S1_229~combout\,
	combout => \inst|pState~12_combout\);

-- Location: FF_X87_Y41_N7
\inst|pState.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bruh|clkOut~clkctrl_outclk\,
	d => \inst|pState~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pState.S1~q\);

-- Location: LCCOMB_X87_Y41_N4
\inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (\inst2|s_pulsedOut~q\ & \inst|pState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_pulsedOut~q\,
	datad => \inst|pState.S1~q\,
	combout => \inst|Selector3~0_combout\);

-- Location: LCCOMB_X87_Y41_N10
\inst|nState.S2_208\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nState.S2_208~combout\ = (GLOBAL(\inst|Selector6~0clkctrl_outclk\) & ((\inst|Selector3~0_combout\))) # (!GLOBAL(\inst|Selector6~0clkctrl_outclk\) & (\inst|nState.S2_208~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nState.S2_208~combout\,
	datac => \inst|Selector3~0_combout\,
	datad => \inst|Selector6~0clkctrl_outclk\,
	combout => \inst|nState.S2_208~combout\);

-- Location: LCCOMB_X87_Y41_N28
\inst|pState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pState~10_combout\ = (!\inst1|s_pulsedOut~q\ & \inst|nState.S2_208~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_pulsedOut~q\,
	datad => \inst|nState.S2_208~combout\,
	combout => \inst|pState~10_combout\);

-- Location: FF_X87_Y41_N29
\inst|pState.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bruh|clkOut~clkctrl_outclk\,
	d => \inst|pState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pState.S2~q\);

-- Location: LCCOMB_X87_Y41_N26
\inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (\inst2|s_pulsedOut~q\ & ((\inst|pState.S2~q\))) # (!\inst2|s_pulsedOut~q\ & (!\inst|pState.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_pulsedOut~q\,
	datac => \inst|pState.S0~q\,
	datad => \inst|pState.S2~q\,
	combout => \inst|Selector4~0_combout\);

-- Location: LCCOMB_X87_Y41_N14
\inst|nState.S3_187\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nState.S3_187~combout\ = (GLOBAL(\inst|Selector6~0clkctrl_outclk\) & (\inst|Selector4~0_combout\)) # (!GLOBAL(\inst|Selector6~0clkctrl_outclk\) & ((\inst|nState.S3_187~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector4~0_combout\,
	datac => \inst|nState.S3_187~combout\,
	datad => \inst|Selector6~0clkctrl_outclk\,
	combout => \inst|nState.S3_187~combout\);

-- Location: LCCOMB_X87_Y41_N8
\inst|pState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pState~11_combout\ = (!\inst1|s_pulsedOut~q\ & \inst|nState.S3_187~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_pulsedOut~q\,
	datac => \inst|nState.S3_187~combout\,
	combout => \inst|pState~11_combout\);

-- Location: FF_X87_Y41_N9
\inst|pState.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bruh|clkOut~clkctrl_outclk\,
	d => \inst|pState~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pState.S3~q\);

-- Location: LCCOMB_X87_Y41_N30
\inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = (\inst2|s_pulsedOut~q\ & (\inst|pState.S3~q\)) # (!\inst2|s_pulsedOut~q\ & ((\inst|pState.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_pulsedOut~q\,
	datac => \inst|pState.S3~q\,
	datad => \inst|pState.S1~q\,
	combout => \inst|Selector5~0_combout\);

-- Location: LCCOMB_X87_Y41_N24
\inst|nState.S4_166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nState.S4_166~combout\ = (GLOBAL(\inst|Selector6~0clkctrl_outclk\) & (\inst|Selector5~0_combout\)) # (!GLOBAL(\inst|Selector6~0clkctrl_outclk\) & ((\inst|nState.S4_166~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector5~0_combout\,
	datab => \inst|nState.S4_166~combout\,
	datad => \inst|Selector6~0clkctrl_outclk\,
	combout => \inst|nState.S4_166~combout\);

-- Location: LCCOMB_X87_Y41_N12
\inst|pState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pState~9_combout\ = (!\inst1|s_pulsedOut~q\ & \inst|nState.S4_166~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_pulsedOut~q\,
	datad => \inst|nState.S4_166~combout\,
	combout => \inst|pState~9_combout\);

-- Location: FF_X87_Y41_N13
\inst|pState.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bruh|clkOut~clkctrl_outclk\,
	d => \inst|pState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pState.S4~q\);

-- Location: LCCOMB_X87_Y41_N16
\inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\inst|pState.S4~q\) # ((!\inst2|s_pulsedOut~q\ & ((\inst|pState.S3~q\) # (\inst|pState.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pState.S4~q\,
	datab => \inst2|s_pulsedOut~q\,
	datac => \inst|pState.S3~q\,
	datad => \inst|pState.S2~q\,
	combout => \inst|Selector0~0_combout\);

-- Location: LCCOMB_X87_Y41_N2
\inst|nState.S5_145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nState.S5_145~combout\ = (GLOBAL(\inst|Selector6~0clkctrl_outclk\) & (\inst|Selector0~0_combout\)) # (!GLOBAL(\inst|Selector6~0clkctrl_outclk\) & ((\inst|nState.S5_145~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector0~0_combout\,
	datab => \inst|nState.S5_145~combout\,
	datad => \inst|Selector6~0clkctrl_outclk\,
	combout => \inst|nState.S5_145~combout\);

-- Location: LCCOMB_X87_Y41_N20
\inst|pState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pState~8_combout\ = (!\inst1|s_pulsedOut~q\ & \inst|nState.S5_145~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_pulsedOut~q\,
	datad => \inst|nState.S5_145~combout\,
	combout => \inst|pState~8_combout\);

-- Location: FF_X87_Y41_N21
\inst|pState.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bruh|clkOut~q\,
	d => \inst|pState~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pState.S5~q\);

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


