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

-- DATE "04/13/2023 12:00:06"

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
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_INT	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SD_WP_N	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SMA_CLKIN	=>  Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \SW[0]~padout\ : std_logic;
SIGNAL \SW[10]~padout\ : std_logic;
SIGNAL \SW[11]~padout\ : std_logic;
SIGNAL \SW[12]~padout\ : std_logic;
SIGNAL \SW[13]~padout\ : std_logic;
SIGNAL \SW[14]~padout\ : std_logic;
SIGNAL \SW[15]~padout\ : std_logic;
SIGNAL \SW[16]~padout\ : std_logic;
SIGNAL \SW[17]~padout\ : std_logic;
SIGNAL \SW[1]~padout\ : std_logic;
SIGNAL \SW[2]~padout\ : std_logic;
SIGNAL \SW[3]~padout\ : std_logic;
SIGNAL \SW[4]~padout\ : std_logic;
SIGNAL \SW[5]~padout\ : std_logic;
SIGNAL \SW[6]~padout\ : std_logic;
SIGNAL \SW[7]~padout\ : std_logic;
SIGNAL \SW[8]~padout\ : std_logic;
SIGNAL \SW[9]~padout\ : std_logic;
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
SIGNAL \KEY[2]~ibuf_o\ : std_logic;
SIGNAL \KEY[3]~ibuf_o\ : std_logic;
SIGNAL \OTG_INT~ibuf_o\ : std_logic;
SIGNAL \SD_WP_N~ibuf_o\ : std_logic;
SIGNAL \SMA_CLKIN~ibuf_o\ : std_logic;
SIGNAL \SW[0]~ibuf_o\ : std_logic;
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
SIGNAL KEY : std_logic_vector(1 DOWNTO 0);

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

ENTITY 	mini_projeto IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	LEDG : OUT std_logic_vector(0 DOWNTO 0)
	);
END mini_projeto;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mini_projeto IS
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
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|s_count[3]~34clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst6|s_count~35_combout\ : std_logic;
SIGNAL \inst6|s_count~38_combout\ : std_logic;
SIGNAL \inst6|s_stop~0_combout\ : std_logic;
SIGNAL \inst6|s_count[3]~36_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[5]~37\ : std_logic;
SIGNAL \inst1|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[6]~39\ : std_logic;
SIGNAL \inst1|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[7]~41\ : std_logic;
SIGNAL \inst1|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[8]~43\ : std_logic;
SIGNAL \inst1|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[9]~45\ : std_logic;
SIGNAL \inst1|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[10]~47\ : std_logic;
SIGNAL \inst1|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[11]~49\ : std_logic;
SIGNAL \inst1|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[12]~51\ : std_logic;
SIGNAL \inst1|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[13]~53\ : std_logic;
SIGNAL \inst1|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[14]~55\ : std_logic;
SIGNAL \inst1|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[15]~57\ : std_logic;
SIGNAL \inst1|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[16]~59\ : std_logic;
SIGNAL \inst1|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[17]~61\ : std_logic;
SIGNAL \inst1|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[18]~63\ : std_logic;
SIGNAL \inst1|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[19]~65\ : std_logic;
SIGNAL \inst1|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[20]~67\ : std_logic;
SIGNAL \inst1|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[21]~69\ : std_logic;
SIGNAL \inst1|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[22]~71\ : std_logic;
SIGNAL \inst1|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[23]~73\ : std_logic;
SIGNAL \inst1|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \inst1|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|LessThan0~3_combout\ : std_logic;
SIGNAL \inst1|clkOut~0_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[24]~75\ : std_logic;
SIGNAL \inst1|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \inst1|clkOut~3_combout\ : std_logic;
SIGNAL \inst1|LessThan0~4_combout\ : std_logic;
SIGNAL \inst1|LessThan0~5_combout\ : std_logic;
SIGNAL \inst1|LessThan0~6_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[0]~27\ : std_logic;
SIGNAL \inst1|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[1]~29\ : std_logic;
SIGNAL \inst1|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[2]~31\ : std_logic;
SIGNAL \inst1|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[3]~33\ : std_logic;
SIGNAL \inst1|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \inst1|s_divCounter[4]~35\ : std_logic;
SIGNAL \inst1|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \inst1|clkOut~1_combout\ : std_logic;
SIGNAL \inst1|clkOut~2_combout\ : std_logic;
SIGNAL \inst1|clkOut~4_combout\ : std_logic;
SIGNAL \inst1|clkOut~5_combout\ : std_logic;
SIGNAL \inst1|clkOut~6_combout\ : std_logic;
SIGNAL \inst1|clkOut~7_combout\ : std_logic;
SIGNAL \inst1|clkOut~8_combout\ : std_logic;
SIGNAL \inst1|clkOut~9_combout\ : std_logic;
SIGNAL \inst1|clkOut~q\ : std_logic;
SIGNAL \inst6|s_count[3]~34clkctrl_outclk\ : std_logic;
SIGNAL \inst6|s_count[1]~6_combout\ : std_logic;
SIGNAL \inst6|s_count~37_combout\ : std_logic;
SIGNAL \inst6|s_count[0]~11_combout\ : std_logic;
SIGNAL \inst6|s_count[0]~14_combout\ : std_logic;
SIGNAL \inst6|s_count[3]~0_combout\ : std_logic;
SIGNAL \inst6|s_count[0]~_emulated_q\ : std_logic;
SIGNAL \inst6|s_count[0]~13_combout\ : std_logic;
SIGNAL \inst6|s_count[0]~12_combout\ : std_logic;
SIGNAL \inst6|s_count[1]~9_combout\ : std_logic;
SIGNAL \inst6|s_count[1]~_emulated_q\ : std_logic;
SIGNAL \inst6|s_count[1]~8_combout\ : std_logic;
SIGNAL \inst6|s_count[1]~7_combout\ : std_logic;
SIGNAL \inst6|s_count~39_combout\ : std_logic;
SIGNAL \inst6|s_count[3]~1_combout\ : std_logic;
SIGNAL \inst|decOut_n[6]~7_combout\ : std_logic;
SIGNAL \inst6|s_count[3]~4_combout\ : std_logic;
SIGNAL \inst6|s_count[3]~_emulated_q\ : std_logic;
SIGNAL \inst6|s_count[3]~3_combout\ : std_logic;
SIGNAL \inst6|s_count[3]~2_combout\ : std_logic;
SIGNAL \inst|Equal14~0_combout\ : std_logic;
SIGNAL \inst6|s_count[3]~34_combout\ : std_logic;
SIGNAL \inst6|s_count[2]~33_combout\ : std_logic;
SIGNAL \inst6|s_count[2]~16_combout\ : std_logic;
SIGNAL \inst6|s_count[2]~19_combout\ : std_logic;
SIGNAL \inst6|s_count[2]~_emulated_q\ : std_logic;
SIGNAL \inst6|s_count[2]~18_combout\ : std_logic;
SIGNAL \inst6|s_count[2]~17_combout\ : std_logic;
SIGNAL \inst|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \inst|decOut_n[5]~1_combout\ : std_logic;
SIGNAL \inst|decOut_n[4]~2_combout\ : std_logic;
SIGNAL \inst|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \inst|decOut_n[2]~4_combout\ : std_logic;
SIGNAL \inst|decOut_n[1]~5_combout\ : std_logic;
SIGNAL \inst|decOut_n[0]~6_combout\ : std_logic;
SIGNAL \inst6|s_count[3]~32_combout\ : std_logic;
SIGNAL \inst6|led~combout\ : std_logic;
SIGNAL \inst1|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst6|ALT_INV_s_count[3]~0_combout\ : std_logic;

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
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst6|s_count[3]~34clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|s_count[3]~34_combout\);
\inst6|ALT_INV_s_count[3]~0_combout\ <= NOT \inst6|s_count[3]~0_combout\;
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
	i => \inst|decOut_n[6]~0_combout\,
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
	i => \inst|decOut_n[5]~1_combout\,
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
	i => \inst|decOut_n[4]~2_combout\,
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
	i => \inst|decOut_n[3]~3_combout\,
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
	i => \inst|decOut_n[2]~4_combout\,
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
	i => \inst|decOut_n[1]~5_combout\,
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
	i => \inst|decOut_n[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|led~combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

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

-- Location: LCCOMB_X113_Y40_N10
\inst6|s_count~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count~35_combout\ = (\inst6|s_count[2]~17_combout\ & ((\KEY[0]~input_o\) # (!\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \inst6|s_count[2]~17_combout\,
	datad => \KEY[0]~input_o\,
	combout => \inst6|s_count~35_combout\);

-- Location: LCCOMB_X113_Y40_N12
\inst6|s_count~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count~38_combout\ = (\inst6|s_count[1]~7_combout\ & ((\KEY[0]~input_o\) # (!\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \inst6|s_count[1]~7_combout\,
	datad => \KEY[0]~input_o\,
	combout => \inst6|s_count~38_combout\);

-- Location: LCCOMB_X114_Y40_N10
\inst6|s_stop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_stop~0_combout\ = (!\inst|Equal14~0_combout\ & ((\inst6|s_stop~0_combout\ & (\KEY[1]~input_o\)) # (!\inst6|s_stop~0_combout\ & ((!\KEY[0]~input_o\) # (!\KEY[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_stop~0_combout\,
	datab => \KEY[1]~input_o\,
	datac => \inst|Equal14~0_combout\,
	datad => \KEY[0]~input_o\,
	combout => \inst6|s_stop~0_combout\);

-- Location: LCCOMB_X114_Y40_N20
\inst6|s_count[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count[3]~36_combout\ = (\inst|Equal14~0_combout\) # ((!\inst6|s_stop~0_combout\ & (\KEY[1]~input_o\ & !\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_stop~0_combout\,
	datab => \KEY[1]~input_o\,
	datac => \inst|Equal14~0_combout\,
	datad => \KEY[0]~input_o\,
	combout => \inst6|s_count[3]~36_combout\);

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

-- Location: LCCOMB_X102_Y46_N6
\inst1|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[0]~26_combout\ = \inst1|s_divCounter\(0) $ (VCC)
-- \inst1|s_divCounter[0]~27\ = CARRY(\inst1|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(0),
	datad => VCC,
	combout => \inst1|s_divCounter[0]~26_combout\,
	cout => \inst1|s_divCounter[0]~27\);

-- Location: LCCOMB_X102_Y46_N16
\inst1|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[5]~36_combout\ = (\inst1|s_divCounter\(5) & (!\inst1|s_divCounter[4]~35\)) # (!\inst1|s_divCounter\(5) & ((\inst1|s_divCounter[4]~35\) # (GND)))
-- \inst1|s_divCounter[5]~37\ = CARRY((!\inst1|s_divCounter[4]~35\) # (!\inst1|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(5),
	datad => VCC,
	cin => \inst1|s_divCounter[4]~35\,
	combout => \inst1|s_divCounter[5]~36_combout\,
	cout => \inst1|s_divCounter[5]~37\);

-- Location: LCCOMB_X102_Y46_N18
\inst1|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[6]~38_combout\ = (\inst1|s_divCounter\(6) & (\inst1|s_divCounter[5]~37\ $ (GND))) # (!\inst1|s_divCounter\(6) & (!\inst1|s_divCounter[5]~37\ & VCC))
-- \inst1|s_divCounter[6]~39\ = CARRY((\inst1|s_divCounter\(6) & !\inst1|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(6),
	datad => VCC,
	cin => \inst1|s_divCounter[5]~37\,
	combout => \inst1|s_divCounter[6]~38_combout\,
	cout => \inst1|s_divCounter[6]~39\);

-- Location: FF_X102_Y46_N19
\inst1|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[6]~38_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(6));

-- Location: LCCOMB_X102_Y46_N20
\inst1|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[7]~40_combout\ = (\inst1|s_divCounter\(7) & (!\inst1|s_divCounter[6]~39\)) # (!\inst1|s_divCounter\(7) & ((\inst1|s_divCounter[6]~39\) # (GND)))
-- \inst1|s_divCounter[7]~41\ = CARRY((!\inst1|s_divCounter[6]~39\) # (!\inst1|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(7),
	datad => VCC,
	cin => \inst1|s_divCounter[6]~39\,
	combout => \inst1|s_divCounter[7]~40_combout\,
	cout => \inst1|s_divCounter[7]~41\);

-- Location: FF_X102_Y46_N21
\inst1|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[7]~40_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(7));

-- Location: LCCOMB_X102_Y46_N22
\inst1|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[8]~42_combout\ = (\inst1|s_divCounter\(8) & (\inst1|s_divCounter[7]~41\ $ (GND))) # (!\inst1|s_divCounter\(8) & (!\inst1|s_divCounter[7]~41\ & VCC))
-- \inst1|s_divCounter[8]~43\ = CARRY((\inst1|s_divCounter\(8) & !\inst1|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(8),
	datad => VCC,
	cin => \inst1|s_divCounter[7]~41\,
	combout => \inst1|s_divCounter[8]~42_combout\,
	cout => \inst1|s_divCounter[8]~43\);

-- Location: FF_X102_Y46_N23
\inst1|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[8]~42_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(8));

-- Location: LCCOMB_X102_Y46_N24
\inst1|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[9]~44_combout\ = (\inst1|s_divCounter\(9) & (!\inst1|s_divCounter[8]~43\)) # (!\inst1|s_divCounter\(9) & ((\inst1|s_divCounter[8]~43\) # (GND)))
-- \inst1|s_divCounter[9]~45\ = CARRY((!\inst1|s_divCounter[8]~43\) # (!\inst1|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(9),
	datad => VCC,
	cin => \inst1|s_divCounter[8]~43\,
	combout => \inst1|s_divCounter[9]~44_combout\,
	cout => \inst1|s_divCounter[9]~45\);

-- Location: FF_X102_Y46_N25
\inst1|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[9]~44_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(9));

-- Location: LCCOMB_X102_Y46_N26
\inst1|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[10]~46_combout\ = (\inst1|s_divCounter\(10) & (\inst1|s_divCounter[9]~45\ $ (GND))) # (!\inst1|s_divCounter\(10) & (!\inst1|s_divCounter[9]~45\ & VCC))
-- \inst1|s_divCounter[10]~47\ = CARRY((\inst1|s_divCounter\(10) & !\inst1|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(10),
	datad => VCC,
	cin => \inst1|s_divCounter[9]~45\,
	combout => \inst1|s_divCounter[10]~46_combout\,
	cout => \inst1|s_divCounter[10]~47\);

-- Location: FF_X102_Y46_N27
\inst1|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[10]~46_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(10));

-- Location: LCCOMB_X102_Y46_N28
\inst1|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[11]~48_combout\ = (\inst1|s_divCounter\(11) & (!\inst1|s_divCounter[10]~47\)) # (!\inst1|s_divCounter\(11) & ((\inst1|s_divCounter[10]~47\) # (GND)))
-- \inst1|s_divCounter[11]~49\ = CARRY((!\inst1|s_divCounter[10]~47\) # (!\inst1|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(11),
	datad => VCC,
	cin => \inst1|s_divCounter[10]~47\,
	combout => \inst1|s_divCounter[11]~48_combout\,
	cout => \inst1|s_divCounter[11]~49\);

-- Location: FF_X102_Y46_N29
\inst1|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[11]~48_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(11));

-- Location: LCCOMB_X102_Y46_N30
\inst1|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[12]~50_combout\ = (\inst1|s_divCounter\(12) & (\inst1|s_divCounter[11]~49\ $ (GND))) # (!\inst1|s_divCounter\(12) & (!\inst1|s_divCounter[11]~49\ & VCC))
-- \inst1|s_divCounter[12]~51\ = CARRY((\inst1|s_divCounter\(12) & !\inst1|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(12),
	datad => VCC,
	cin => \inst1|s_divCounter[11]~49\,
	combout => \inst1|s_divCounter[12]~50_combout\,
	cout => \inst1|s_divCounter[12]~51\);

-- Location: FF_X102_Y46_N31
\inst1|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[12]~50_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(12));

-- Location: LCCOMB_X102_Y45_N0
\inst1|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[13]~52_combout\ = (\inst1|s_divCounter\(13) & (!\inst1|s_divCounter[12]~51\)) # (!\inst1|s_divCounter\(13) & ((\inst1|s_divCounter[12]~51\) # (GND)))
-- \inst1|s_divCounter[13]~53\ = CARRY((!\inst1|s_divCounter[12]~51\) # (!\inst1|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(13),
	datad => VCC,
	cin => \inst1|s_divCounter[12]~51\,
	combout => \inst1|s_divCounter[13]~52_combout\,
	cout => \inst1|s_divCounter[13]~53\);

-- Location: FF_X103_Y46_N27
\inst1|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst1|s_divCounter[13]~52_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(13));

-- Location: LCCOMB_X102_Y45_N2
\inst1|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[14]~54_combout\ = (\inst1|s_divCounter\(14) & (\inst1|s_divCounter[13]~53\ $ (GND))) # (!\inst1|s_divCounter\(14) & (!\inst1|s_divCounter[13]~53\ & VCC))
-- \inst1|s_divCounter[14]~55\ = CARRY((\inst1|s_divCounter\(14) & !\inst1|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(14),
	datad => VCC,
	cin => \inst1|s_divCounter[13]~53\,
	combout => \inst1|s_divCounter[14]~54_combout\,
	cout => \inst1|s_divCounter[14]~55\);

-- Location: FF_X102_Y45_N3
\inst1|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[14]~54_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(14));

-- Location: LCCOMB_X102_Y45_N4
\inst1|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[15]~56_combout\ = (\inst1|s_divCounter\(15) & (!\inst1|s_divCounter[14]~55\)) # (!\inst1|s_divCounter\(15) & ((\inst1|s_divCounter[14]~55\) # (GND)))
-- \inst1|s_divCounter[15]~57\ = CARRY((!\inst1|s_divCounter[14]~55\) # (!\inst1|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(15),
	datad => VCC,
	cin => \inst1|s_divCounter[14]~55\,
	combout => \inst1|s_divCounter[15]~56_combout\,
	cout => \inst1|s_divCounter[15]~57\);

-- Location: FF_X102_Y45_N5
\inst1|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[15]~56_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(15));

-- Location: LCCOMB_X102_Y45_N6
\inst1|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[16]~58_combout\ = (\inst1|s_divCounter\(16) & (\inst1|s_divCounter[15]~57\ $ (GND))) # (!\inst1|s_divCounter\(16) & (!\inst1|s_divCounter[15]~57\ & VCC))
-- \inst1|s_divCounter[16]~59\ = CARRY((\inst1|s_divCounter\(16) & !\inst1|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(16),
	datad => VCC,
	cin => \inst1|s_divCounter[15]~57\,
	combout => \inst1|s_divCounter[16]~58_combout\,
	cout => \inst1|s_divCounter[16]~59\);

-- Location: FF_X102_Y45_N7
\inst1|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[16]~58_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(16));

-- Location: LCCOMB_X102_Y45_N8
\inst1|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[17]~60_combout\ = (\inst1|s_divCounter\(17) & (!\inst1|s_divCounter[16]~59\)) # (!\inst1|s_divCounter\(17) & ((\inst1|s_divCounter[16]~59\) # (GND)))
-- \inst1|s_divCounter[17]~61\ = CARRY((!\inst1|s_divCounter[16]~59\) # (!\inst1|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(17),
	datad => VCC,
	cin => \inst1|s_divCounter[16]~59\,
	combout => \inst1|s_divCounter[17]~60_combout\,
	cout => \inst1|s_divCounter[17]~61\);

-- Location: FF_X102_Y45_N9
\inst1|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[17]~60_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(17));

-- Location: LCCOMB_X102_Y45_N10
\inst1|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[18]~62_combout\ = (\inst1|s_divCounter\(18) & (\inst1|s_divCounter[17]~61\ $ (GND))) # (!\inst1|s_divCounter\(18) & (!\inst1|s_divCounter[17]~61\ & VCC))
-- \inst1|s_divCounter[18]~63\ = CARRY((\inst1|s_divCounter\(18) & !\inst1|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(18),
	datad => VCC,
	cin => \inst1|s_divCounter[17]~61\,
	combout => \inst1|s_divCounter[18]~62_combout\,
	cout => \inst1|s_divCounter[18]~63\);

-- Location: FF_X102_Y45_N11
\inst1|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[18]~62_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(18));

-- Location: LCCOMB_X102_Y45_N12
\inst1|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[19]~64_combout\ = (\inst1|s_divCounter\(19) & (!\inst1|s_divCounter[18]~63\)) # (!\inst1|s_divCounter\(19) & ((\inst1|s_divCounter[18]~63\) # (GND)))
-- \inst1|s_divCounter[19]~65\ = CARRY((!\inst1|s_divCounter[18]~63\) # (!\inst1|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(19),
	datad => VCC,
	cin => \inst1|s_divCounter[18]~63\,
	combout => \inst1|s_divCounter[19]~64_combout\,
	cout => \inst1|s_divCounter[19]~65\);

-- Location: FF_X102_Y45_N13
\inst1|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[19]~64_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(19));

-- Location: LCCOMB_X102_Y45_N14
\inst1|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[20]~66_combout\ = (\inst1|s_divCounter\(20) & (\inst1|s_divCounter[19]~65\ $ (GND))) # (!\inst1|s_divCounter\(20) & (!\inst1|s_divCounter[19]~65\ & VCC))
-- \inst1|s_divCounter[20]~67\ = CARRY((\inst1|s_divCounter\(20) & !\inst1|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(20),
	datad => VCC,
	cin => \inst1|s_divCounter[19]~65\,
	combout => \inst1|s_divCounter[20]~66_combout\,
	cout => \inst1|s_divCounter[20]~67\);

-- Location: FF_X102_Y45_N15
\inst1|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[20]~66_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(20));

-- Location: LCCOMB_X102_Y45_N16
\inst1|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[21]~68_combout\ = (\inst1|s_divCounter\(21) & (!\inst1|s_divCounter[20]~67\)) # (!\inst1|s_divCounter\(21) & ((\inst1|s_divCounter[20]~67\) # (GND)))
-- \inst1|s_divCounter[21]~69\ = CARRY((!\inst1|s_divCounter[20]~67\) # (!\inst1|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(21),
	datad => VCC,
	cin => \inst1|s_divCounter[20]~67\,
	combout => \inst1|s_divCounter[21]~68_combout\,
	cout => \inst1|s_divCounter[21]~69\);

-- Location: FF_X102_Y45_N17
\inst1|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[21]~68_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(21));

-- Location: LCCOMB_X102_Y45_N18
\inst1|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[22]~70_combout\ = (\inst1|s_divCounter\(22) & (\inst1|s_divCounter[21]~69\ $ (GND))) # (!\inst1|s_divCounter\(22) & (!\inst1|s_divCounter[21]~69\ & VCC))
-- \inst1|s_divCounter[22]~71\ = CARRY((\inst1|s_divCounter\(22) & !\inst1|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(22),
	datad => VCC,
	cin => \inst1|s_divCounter[21]~69\,
	combout => \inst1|s_divCounter[22]~70_combout\,
	cout => \inst1|s_divCounter[22]~71\);

-- Location: FF_X102_Y45_N19
\inst1|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[22]~70_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(22));

-- Location: LCCOMB_X102_Y45_N20
\inst1|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[23]~72_combout\ = (\inst1|s_divCounter\(23) & (!\inst1|s_divCounter[22]~71\)) # (!\inst1|s_divCounter\(23) & ((\inst1|s_divCounter[22]~71\) # (GND)))
-- \inst1|s_divCounter[23]~73\ = CARRY((!\inst1|s_divCounter[22]~71\) # (!\inst1|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(23),
	datad => VCC,
	cin => \inst1|s_divCounter[22]~71\,
	combout => \inst1|s_divCounter[23]~72_combout\,
	cout => \inst1|s_divCounter[23]~73\);

-- Location: FF_X102_Y45_N21
\inst1|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[23]~72_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(23));

-- Location: LCCOMB_X102_Y45_N22
\inst1|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[24]~74_combout\ = (\inst1|s_divCounter\(24) & (\inst1|s_divCounter[23]~73\ $ (GND))) # (!\inst1|s_divCounter\(24) & (!\inst1|s_divCounter[23]~73\ & VCC))
-- \inst1|s_divCounter[24]~75\ = CARRY((\inst1|s_divCounter\(24) & !\inst1|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(24),
	datad => VCC,
	cin => \inst1|s_divCounter[23]~73\,
	combout => \inst1|s_divCounter[24]~74_combout\,
	cout => \inst1|s_divCounter[24]~75\);

-- Location: FF_X102_Y45_N23
\inst1|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[24]~74_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(24));

-- Location: LCCOMB_X103_Y46_N24
\inst1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~2_combout\ = (((!\inst1|s_divCounter\(15)) # (!\inst1|s_divCounter\(14))) # (!\inst1|s_divCounter\(12))) # (!\inst1|s_divCounter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(13),
	datab => \inst1|s_divCounter\(12),
	datac => \inst1|s_divCounter\(14),
	datad => \inst1|s_divCounter\(15),
	combout => \inst1|LessThan0~2_combout\);

-- Location: LCCOMB_X103_Y46_N4
\inst1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~3_combout\ = (!\inst1|s_divCounter\(16) & (!\inst1|s_divCounter\(24) & (!\inst1|s_divCounter\(18) & \inst1|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(16),
	datab => \inst1|s_divCounter\(24),
	datac => \inst1|s_divCounter\(18),
	datad => \inst1|LessThan0~2_combout\,
	combout => \inst1|LessThan0~3_combout\);

-- Location: LCCOMB_X102_Y46_N0
\inst1|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clkOut~0_combout\ = (!\inst1|s_divCounter\(8) & (!\inst1|s_divCounter\(7) & (!\inst1|s_divCounter\(10) & !\inst1|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(8),
	datab => \inst1|s_divCounter\(7),
	datac => \inst1|s_divCounter\(10),
	datad => \inst1|s_divCounter\(9),
	combout => \inst1|clkOut~0_combout\);

-- Location: LCCOMB_X103_Y46_N10
\inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (!\inst1|s_divCounter\(16) & (!\inst1|s_divCounter\(11) & (!\inst1|s_divCounter\(18) & !\inst1|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(16),
	datab => \inst1|s_divCounter\(11),
	datac => \inst1|s_divCounter\(18),
	datad => \inst1|s_divCounter\(24),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X103_Y46_N14
\inst1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_combout\ = (\inst1|clkOut~0_combout\ & (\inst1|LessThan0~0_combout\ & ((!\inst1|clkOut~2_combout\) # (!\inst1|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|clkOut~0_combout\,
	datab => \inst1|s_divCounter\(6),
	datac => \inst1|clkOut~2_combout\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|LessThan0~1_combout\);

-- Location: LCCOMB_X102_Y45_N24
\inst1|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[25]~76_combout\ = \inst1|s_divCounter[24]~75\ $ (\inst1|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_divCounter\(25),
	cin => \inst1|s_divCounter[24]~75\,
	combout => \inst1|s_divCounter[25]~76_combout\);

-- Location: FF_X102_Y45_N25
\inst1|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[25]~76_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(25));

-- Location: LCCOMB_X102_Y45_N28
\inst1|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clkOut~3_combout\ = (\inst1|s_divCounter\(19) & (\inst1|s_divCounter\(21) & (\inst1|s_divCounter\(20) & \inst1|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(19),
	datab => \inst1|s_divCounter\(21),
	datac => \inst1|s_divCounter\(20),
	datad => \inst1|s_divCounter\(22),
	combout => \inst1|clkOut~3_combout\);

-- Location: LCCOMB_X102_Y45_N30
\inst1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~4_combout\ = ((!\inst1|s_divCounter\(18) & !\inst1|s_divCounter\(17))) # (!\inst1|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(18),
	datac => \inst1|s_divCounter\(17),
	datad => \inst1|s_divCounter\(23),
	combout => \inst1|LessThan0~4_combout\);

-- Location: LCCOMB_X103_Y46_N28
\inst1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~5_combout\ = ((!\inst1|s_divCounter\(24) & ((\inst1|LessThan0~4_combout\) # (!\inst1|clkOut~3_combout\)))) # (!\inst1|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(25),
	datab => \inst1|s_divCounter\(24),
	datac => \inst1|clkOut~3_combout\,
	datad => \inst1|LessThan0~4_combout\,
	combout => \inst1|LessThan0~5_combout\);

-- Location: LCCOMB_X103_Y46_N30
\inst1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~6_combout\ = (!\inst1|LessThan0~3_combout\ & (!\inst1|LessThan0~1_combout\ & !\inst1|LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan0~3_combout\,
	datac => \inst1|LessThan0~1_combout\,
	datad => \inst1|LessThan0~5_combout\,
	combout => \inst1|LessThan0~6_combout\);

-- Location: FF_X102_Y46_N7
\inst1|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[0]~26_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(0));

-- Location: LCCOMB_X102_Y46_N8
\inst1|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[1]~28_combout\ = (\inst1|s_divCounter\(1) & (!\inst1|s_divCounter[0]~27\)) # (!\inst1|s_divCounter\(1) & ((\inst1|s_divCounter[0]~27\) # (GND)))
-- \inst1|s_divCounter[1]~29\ = CARRY((!\inst1|s_divCounter[0]~27\) # (!\inst1|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(1),
	datad => VCC,
	cin => \inst1|s_divCounter[0]~27\,
	combout => \inst1|s_divCounter[1]~28_combout\,
	cout => \inst1|s_divCounter[1]~29\);

-- Location: FF_X102_Y46_N9
\inst1|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[1]~28_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(1));

-- Location: LCCOMB_X102_Y46_N10
\inst1|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[2]~30_combout\ = (\inst1|s_divCounter\(2) & (\inst1|s_divCounter[1]~29\ $ (GND))) # (!\inst1|s_divCounter\(2) & (!\inst1|s_divCounter[1]~29\ & VCC))
-- \inst1|s_divCounter[2]~31\ = CARRY((\inst1|s_divCounter\(2) & !\inst1|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(2),
	datad => VCC,
	cin => \inst1|s_divCounter[1]~29\,
	combout => \inst1|s_divCounter[2]~30_combout\,
	cout => \inst1|s_divCounter[2]~31\);

-- Location: FF_X102_Y46_N11
\inst1|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[2]~30_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(2));

-- Location: LCCOMB_X102_Y46_N12
\inst1|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[3]~32_combout\ = (\inst1|s_divCounter\(3) & (!\inst1|s_divCounter[2]~31\)) # (!\inst1|s_divCounter\(3) & ((\inst1|s_divCounter[2]~31\) # (GND)))
-- \inst1|s_divCounter[3]~33\ = CARRY((!\inst1|s_divCounter[2]~31\) # (!\inst1|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(3),
	datad => VCC,
	cin => \inst1|s_divCounter[2]~31\,
	combout => \inst1|s_divCounter[3]~32_combout\,
	cout => \inst1|s_divCounter[3]~33\);

-- Location: FF_X102_Y46_N13
\inst1|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[3]~32_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(3));

-- Location: LCCOMB_X102_Y46_N14
\inst1|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_divCounter[4]~34_combout\ = (\inst1|s_divCounter\(4) & (\inst1|s_divCounter[3]~33\ $ (GND))) # (!\inst1|s_divCounter\(4) & (!\inst1|s_divCounter[3]~33\ & VCC))
-- \inst1|s_divCounter[4]~35\ = CARRY((\inst1|s_divCounter\(4) & !\inst1|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(4),
	datad => VCC,
	cin => \inst1|s_divCounter[3]~33\,
	combout => \inst1|s_divCounter[4]~34_combout\,
	cout => \inst1|s_divCounter[4]~35\);

-- Location: FF_X102_Y46_N15
\inst1|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[4]~34_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(4));

-- Location: FF_X102_Y46_N17
\inst1|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_divCounter[5]~36_combout\,
	sclr => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_divCounter\(5));

-- Location: LCCOMB_X102_Y46_N2
\inst1|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clkOut~1_combout\ = (\inst1|s_divCounter\(3) & (\inst1|s_divCounter\(1) & (\inst1|s_divCounter\(0) & \inst1|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(3),
	datab => \inst1|s_divCounter\(1),
	datac => \inst1|s_divCounter\(0),
	datad => \inst1|s_divCounter\(2),
	combout => \inst1|clkOut~1_combout\);

-- Location: LCCOMB_X102_Y46_N4
\inst1|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clkOut~2_combout\ = (\inst1|s_divCounter\(5) & (\inst1|s_divCounter\(4) & \inst1|clkOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_divCounter\(5),
	datac => \inst1|s_divCounter\(4),
	datad => \inst1|clkOut~1_combout\,
	combout => \inst1|clkOut~2_combout\);

-- Location: LCCOMB_X103_Y46_N22
\inst1|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clkOut~4_combout\ = (\inst1|s_divCounter\(14) & (\inst1|s_divCounter\(12) & (\inst1|s_divCounter\(13) & !\inst1|s_divCounter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(14),
	datab => \inst1|s_divCounter\(12),
	datac => \inst1|s_divCounter\(13),
	datad => \inst1|s_divCounter\(6),
	combout => \inst1|clkOut~4_combout\);

-- Location: LCCOMB_X102_Y45_N26
\inst1|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clkOut~5_combout\ = (\inst1|s_divCounter\(18) & (!\inst1|s_divCounter\(25) & (\inst1|s_divCounter\(24) & !\inst1|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(18),
	datab => \inst1|s_divCounter\(25),
	datac => \inst1|s_divCounter\(24),
	datad => \inst1|s_divCounter\(23),
	combout => \inst1|clkOut~5_combout\);

-- Location: LCCOMB_X103_Y46_N18
\inst1|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clkOut~6_combout\ = (!\inst1|s_divCounter\(15) & (\inst1|s_divCounter\(11) & (\inst1|s_divCounter\(16) & !\inst1|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_divCounter\(15),
	datab => \inst1|s_divCounter\(11),
	datac => \inst1|s_divCounter\(16),
	datad => \inst1|s_divCounter\(17),
	combout => \inst1|clkOut~6_combout\);

-- Location: LCCOMB_X103_Y46_N16
\inst1|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clkOut~7_combout\ = (\inst1|clkOut~0_combout\ & (\inst1|clkOut~5_combout\ & (\inst1|clkOut~3_combout\ & \inst1|clkOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|clkOut~0_combout\,
	datab => \inst1|clkOut~5_combout\,
	datac => \inst1|clkOut~3_combout\,
	datad => \inst1|clkOut~6_combout\,
	combout => \inst1|clkOut~7_combout\);

-- Location: LCCOMB_X103_Y46_N12
\inst1|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clkOut~8_combout\ = (\inst1|clkOut~q\) # ((\inst1|clkOut~2_combout\ & (\inst1|clkOut~4_combout\ & \inst1|clkOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|clkOut~q\,
	datab => \inst1|clkOut~2_combout\,
	datac => \inst1|clkOut~4_combout\,
	datad => \inst1|clkOut~7_combout\,
	combout => \inst1|clkOut~8_combout\);

-- Location: LCCOMB_X103_Y46_N20
\inst1|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clkOut~9_combout\ = (\inst1|clkOut~8_combout\ & ((\inst1|LessThan0~3_combout\) # ((\inst1|LessThan0~1_combout\) # (\inst1|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|clkOut~8_combout\,
	datab => \inst1|LessThan0~3_combout\,
	datac => \inst1|LessThan0~1_combout\,
	datad => \inst1|LessThan0~5_combout\,
	combout => \inst1|clkOut~9_combout\);

-- Location: FF_X103_Y46_N21
\inst1|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|clkOut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|clkOut~q\);

-- Location: CLKCTRL_G5
\inst6|s_count[3]~34clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|s_count[3]~34clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|s_count[3]~34clkctrl_outclk\);

-- Location: LCCOMB_X113_Y40_N6
\inst6|s_count[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count[1]~6_combout\ = (!\inst6|s_count[3]~36_combout\ & ((GLOBAL(\inst6|s_count[3]~34clkctrl_outclk\) & (\inst6|s_count~38_combout\)) # (!GLOBAL(\inst6|s_count[3]~34clkctrl_outclk\) & ((\inst6|s_count[1]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_count~38_combout\,
	datab => \inst6|s_count[1]~6_combout\,
	datac => \inst6|s_count[3]~36_combout\,
	datad => \inst6|s_count[3]~34clkctrl_outclk\,
	combout => \inst6|s_count[1]~6_combout\);

-- Location: LCCOMB_X113_Y40_N22
\inst6|s_count~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count~37_combout\ = (\inst6|s_count[0]~12_combout\ & ((\KEY[0]~input_o\) # (!\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \inst6|s_count[0]~12_combout\,
	datad => \KEY[0]~input_o\,
	combout => \inst6|s_count~37_combout\);

-- Location: LCCOMB_X113_Y40_N28
\inst6|s_count[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count[0]~11_combout\ = (!\inst6|s_count[3]~36_combout\ & ((GLOBAL(\inst6|s_count[3]~34clkctrl_outclk\) & (\inst6|s_count~37_combout\)) # (!GLOBAL(\inst6|s_count[3]~34clkctrl_outclk\) & ((\inst6|s_count[0]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_count~37_combout\,
	datab => \inst6|s_count[0]~11_combout\,
	datac => \inst6|s_count[3]~36_combout\,
	datad => \inst6|s_count[3]~34clkctrl_outclk\,
	combout => \inst6|s_count[0]~11_combout\);

-- Location: LCCOMB_X113_Y40_N26
\inst6|s_count[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count[0]~14_combout\ = \inst6|s_count[0]~11_combout\ $ (!\inst6|s_count[0]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|s_count[0]~11_combout\,
	datad => \inst6|s_count[0]~12_combout\,
	combout => \inst6|s_count[0]~14_combout\);

-- Location: LCCOMB_X114_Y40_N16
\inst6|s_count[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count[3]~0_combout\ = (\inst6|s_count[3]~36_combout\) # (\inst6|s_count[3]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|s_count[3]~36_combout\,
	datad => \inst6|s_count[3]~34_combout\,
	combout => \inst6|s_count[3]~0_combout\);

-- Location: FF_X113_Y40_N27
\inst6|s_count[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~q\,
	d => \inst6|s_count[0]~14_combout\,
	clrn => \inst6|ALT_INV_s_count[3]~0_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_count[0]~_emulated_q\);

-- Location: LCCOMB_X113_Y40_N24
\inst6|s_count[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count[0]~13_combout\ = \inst6|s_count[0]~_emulated_q\ $ (\inst6|s_count[0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|s_count[0]~_emulated_q\,
	datad => \inst6|s_count[0]~11_combout\,
	combout => \inst6|s_count[0]~13_combout\);

-- Location: LCCOMB_X113_Y40_N30
\inst6|s_count[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count[0]~12_combout\ = (!\inst6|s_count[3]~36_combout\ & ((\inst6|s_count[3]~34_combout\ & (\inst6|s_count~37_combout\)) # (!\inst6|s_count[3]~34_combout\ & ((\inst6|s_count[0]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_count~37_combout\,
	datab => \inst6|s_count[3]~34_combout\,
	datac => \inst6|s_count[3]~36_combout\,
	datad => \inst6|s_count[0]~13_combout\,
	combout => \inst6|s_count[0]~12_combout\);

-- Location: LCCOMB_X113_Y40_N4
\inst6|s_count[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count[1]~9_combout\ = \inst6|s_count[1]~6_combout\ $ (\inst6|s_count[0]~12_combout\ $ (\inst6|s_count[1]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_count[1]~6_combout\,
	datac => \inst6|s_count[0]~12_combout\,
	datad => \inst6|s_count[1]~7_combout\,
	combout => \inst6|s_count[1]~9_combout\);

-- Location: FF_X113_Y40_N5
\inst6|s_count[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~q\,
	d => \inst6|s_count[1]~9_combout\,
	clrn => \inst6|ALT_INV_s_count[3]~0_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_count[1]~_emulated_q\);

-- Location: LCCOMB_X113_Y40_N16
\inst6|s_count[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count[1]~8_combout\ = \inst6|s_count[1]~_emulated_q\ $ (\inst6|s_count[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|s_count[1]~_emulated_q\,
	datad => \inst6|s_count[1]~6_combout\,
	combout => \inst6|s_count[1]~8_combout\);

-- Location: LCCOMB_X113_Y40_N14
\inst6|s_count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count[1]~7_combout\ = (!\inst6|s_count[3]~36_combout\ & ((\inst6|s_count[3]~34_combout\ & (\inst6|s_count~38_combout\)) # (!\inst6|s_count[3]~34_combout\ & ((\inst6|s_count[1]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_count~38_combout\,
	datab => \inst6|s_count[3]~34_combout\,
	datac => \inst6|s_count[3]~36_combout\,
	datad => \inst6|s_count[1]~8_combout\,
	combout => \inst6|s_count[1]~7_combout\);

-- Location: LCCOMB_X114_Y40_N24
\inst6|s_count~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count~39_combout\ = (\inst6|s_count[3]~2_combout\ & ((\KEY[0]~input_o\) # (!\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \inst6|s_count[3]~2_combout\,
	datad => \KEY[0]~input_o\,
	combout => \inst6|s_count~39_combout\);

-- Location: LCCOMB_X114_Y40_N14
\inst6|s_count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count[3]~1_combout\ = (!\inst6|s_count[3]~36_combout\ & ((GLOBAL(\inst6|s_count[3]~34clkctrl_outclk\) & (\inst6|s_count~39_combout\)) # (!GLOBAL(\inst6|s_count[3]~34clkctrl_outclk\) & ((\inst6|s_count[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_count[3]~36_combout\,
	datab => \inst6|s_count~39_combout\,
	datac => \inst6|s_count[3]~1_combout\,
	datad => \inst6|s_count[3]~34clkctrl_outclk\,
	combout => \inst6|s_count[3]~1_combout\);

-- Location: LCCOMB_X114_Y40_N8
\inst|decOut_n[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[6]~7_combout\ = (\inst6|s_count[2]~17_combout\ & (\inst6|s_count[1]~7_combout\ & \inst6|s_count[0]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_count[2]~17_combout\,
	datab => \inst6|s_count[1]~7_combout\,
	datac => \inst6|s_count[0]~12_combout\,
	combout => \inst|decOut_n[6]~7_combout\);

-- Location: LCCOMB_X114_Y40_N28
\inst6|s_count[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count[3]~4_combout\ = \inst6|s_count[3]~2_combout\ $ (\inst6|s_count[3]~1_combout\ $ (((\KEY[1]~input_o\ & \inst|decOut_n[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \inst|decOut_n[6]~7_combout\,
	datac => \inst6|s_count[3]~2_combout\,
	datad => \inst6|s_count[3]~1_combout\,
	combout => \inst6|s_count[3]~4_combout\);

-- Location: FF_X114_Y40_N29
\inst6|s_count[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~q\,
	d => \inst6|s_count[3]~4_combout\,
	clrn => \inst6|ALT_INV_s_count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_count[3]~_emulated_q\);

-- Location: LCCOMB_X114_Y40_N18
\inst6|s_count[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count[3]~3_combout\ = \inst6|s_count[3]~1_combout\ $ (\inst6|s_count[3]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|s_count[3]~1_combout\,
	datad => \inst6|s_count[3]~_emulated_q\,
	combout => \inst6|s_count[3]~3_combout\);

-- Location: LCCOMB_X114_Y40_N22
\inst6|s_count[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count[3]~2_combout\ = (!\inst6|s_count[3]~36_combout\ & ((\inst6|s_count[3]~34_combout\ & (\inst6|s_count~39_combout\)) # (!\inst6|s_count[3]~34_combout\ & ((\inst6|s_count[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_count[3]~36_combout\,
	datab => \inst6|s_count~39_combout\,
	datac => \inst6|s_count[3]~34_combout\,
	datad => \inst6|s_count[3]~3_combout\,
	combout => \inst6|s_count[3]~2_combout\);

-- Location: LCCOMB_X114_Y40_N30
\inst|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal14~0_combout\ = (!\inst6|s_count[2]~17_combout\ & (\inst6|s_count[1]~7_combout\ & (\inst6|s_count[3]~2_combout\ & !\inst6|s_count[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_count[2]~17_combout\,
	datab => \inst6|s_count[1]~7_combout\,
	datac => \inst6|s_count[3]~2_combout\,
	datad => \inst6|s_count[0]~12_combout\,
	combout => \inst|Equal14~0_combout\);

-- Location: LCCOMB_X114_Y40_N26
\inst6|s_count[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count[3]~34_combout\ = (!\inst|Equal14~0_combout\ & \inst6|s_stop~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal14~0_combout\,
	datad => \inst6|s_stop~0_combout\,
	combout => \inst6|s_count[3]~34_combout\);

-- Location: LCCOMB_X113_Y40_N18
\inst6|s_count[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count[2]~33_combout\ = (\inst6|s_count[0]~12_combout\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_count[0]~12_combout\,
	datac => \KEY[1]~input_o\,
	combout => \inst6|s_count[2]~33_combout\);

-- Location: LCCOMB_X113_Y40_N2
\inst6|s_count[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count[2]~16_combout\ = (!\inst6|s_count[3]~36_combout\ & ((GLOBAL(\inst6|s_count[3]~34clkctrl_outclk\) & (\inst6|s_count~35_combout\)) # (!GLOBAL(\inst6|s_count[3]~34clkctrl_outclk\) & ((\inst6|s_count[2]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_count~35_combout\,
	datab => \inst6|s_count[2]~16_combout\,
	datac => \inst6|s_count[3]~36_combout\,
	datad => \inst6|s_count[3]~34clkctrl_outclk\,
	combout => \inst6|s_count[2]~16_combout\);

-- Location: LCCOMB_X113_Y40_N8
\inst6|s_count[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count[2]~19_combout\ = \inst6|s_count[2]~16_combout\ $ (\inst6|s_count[2]~17_combout\ $ (((\inst6|s_count[2]~33_combout\ & \inst6|s_count[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_count[2]~33_combout\,
	datab => \inst6|s_count[2]~16_combout\,
	datac => \inst6|s_count[2]~17_combout\,
	datad => \inst6|s_count[1]~7_combout\,
	combout => \inst6|s_count[2]~19_combout\);

-- Location: FF_X113_Y40_N9
\inst6|s_count[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clkOut~q\,
	d => \inst6|s_count[2]~19_combout\,
	clrn => \inst6|ALT_INV_s_count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_count[2]~_emulated_q\);

-- Location: LCCOMB_X113_Y40_N0
\inst6|s_count[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count[2]~18_combout\ = \inst6|s_count[2]~_emulated_q\ $ (\inst6|s_count[2]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|s_count[2]~_emulated_q\,
	datad => \inst6|s_count[2]~16_combout\,
	combout => \inst6|s_count[2]~18_combout\);

-- Location: LCCOMB_X113_Y40_N20
\inst6|s_count[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count[2]~17_combout\ = (!\inst6|s_count[3]~36_combout\ & ((\inst6|s_count[3]~34_combout\ & (\inst6|s_count~35_combout\)) # (!\inst6|s_count[3]~34_combout\ & ((\inst6|s_count[2]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_count~35_combout\,
	datab => \inst6|s_count[3]~34_combout\,
	datac => \inst6|s_count[3]~36_combout\,
	datad => \inst6|s_count[2]~18_combout\,
	combout => \inst6|s_count[2]~17_combout\);

-- Location: LCCOMB_X114_Y54_N28
\inst|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[6]~0_combout\ = (\inst6|s_count[0]~12_combout\ & (!\inst6|s_count[3]~2_combout\ & (\inst6|s_count[2]~17_combout\ $ (!\inst6|s_count[1]~7_combout\)))) # (!\inst6|s_count[0]~12_combout\ & (!\inst6|s_count[1]~7_combout\ & 
-- (\inst6|s_count[2]~17_combout\ $ (!\inst6|s_count[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_count[2]~17_combout\,
	datab => \inst6|s_count[1]~7_combout\,
	datac => \inst6|s_count[0]~12_combout\,
	datad => \inst6|s_count[3]~2_combout\,
	combout => \inst|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X114_Y54_N14
\inst|decOut_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[5]~1_combout\ = (\inst6|s_count[2]~17_combout\ & (\inst6|s_count[0]~12_combout\ & (\inst6|s_count[1]~7_combout\ $ (\inst6|s_count[3]~2_combout\)))) # (!\inst6|s_count[2]~17_combout\ & (!\inst6|s_count[3]~2_combout\ & 
-- ((\inst6|s_count[1]~7_combout\) # (\inst6|s_count[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_count[2]~17_combout\,
	datab => \inst6|s_count[1]~7_combout\,
	datac => \inst6|s_count[0]~12_combout\,
	datad => \inst6|s_count[3]~2_combout\,
	combout => \inst|decOut_n[5]~1_combout\);

-- Location: LCCOMB_X114_Y54_N4
\inst|decOut_n[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[4]~2_combout\ = (\inst6|s_count[1]~7_combout\ & (((\inst6|s_count[0]~12_combout\ & !\inst6|s_count[3]~2_combout\)))) # (!\inst6|s_count[1]~7_combout\ & ((\inst6|s_count[2]~17_combout\ & ((!\inst6|s_count[3]~2_combout\))) # 
-- (!\inst6|s_count[2]~17_combout\ & (\inst6|s_count[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_count[2]~17_combout\,
	datab => \inst6|s_count[1]~7_combout\,
	datac => \inst6|s_count[0]~12_combout\,
	datad => \inst6|s_count[3]~2_combout\,
	combout => \inst|decOut_n[4]~2_combout\);

-- Location: LCCOMB_X114_Y54_N30
\inst|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[3]~3_combout\ = (\inst6|s_count[1]~7_combout\ & ((\inst6|s_count[2]~17_combout\ & (\inst6|s_count[0]~12_combout\)) # (!\inst6|s_count[2]~17_combout\ & (!\inst6|s_count[0]~12_combout\ & \inst6|s_count[3]~2_combout\)))) # 
-- (!\inst6|s_count[1]~7_combout\ & (!\inst6|s_count[3]~2_combout\ & (\inst6|s_count[2]~17_combout\ $ (\inst6|s_count[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_count[2]~17_combout\,
	datab => \inst6|s_count[1]~7_combout\,
	datac => \inst6|s_count[0]~12_combout\,
	datad => \inst6|s_count[3]~2_combout\,
	combout => \inst|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X114_Y54_N16
\inst|decOut_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[2]~4_combout\ = (\inst6|s_count[2]~17_combout\ & (\inst6|s_count[3]~2_combout\ & ((\inst6|s_count[1]~7_combout\) # (!\inst6|s_count[0]~12_combout\)))) # (!\inst6|s_count[2]~17_combout\ & (\inst6|s_count[1]~7_combout\ & 
-- (!\inst6|s_count[0]~12_combout\ & !\inst6|s_count[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_count[2]~17_combout\,
	datab => \inst6|s_count[1]~7_combout\,
	datac => \inst6|s_count[0]~12_combout\,
	datad => \inst6|s_count[3]~2_combout\,
	combout => \inst|decOut_n[2]~4_combout\);

-- Location: LCCOMB_X114_Y54_N6
\inst|decOut_n[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[1]~5_combout\ = (\inst6|s_count[1]~7_combout\ & ((\inst6|s_count[0]~12_combout\ & ((\inst6|s_count[3]~2_combout\))) # (!\inst6|s_count[0]~12_combout\ & (\inst6|s_count[2]~17_combout\)))) # (!\inst6|s_count[1]~7_combout\ & 
-- (\inst6|s_count[2]~17_combout\ & (\inst6|s_count[0]~12_combout\ $ (\inst6|s_count[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_count[2]~17_combout\,
	datab => \inst6|s_count[1]~7_combout\,
	datac => \inst6|s_count[0]~12_combout\,
	datad => \inst6|s_count[3]~2_combout\,
	combout => \inst|decOut_n[1]~5_combout\);

-- Location: LCCOMB_X114_Y54_N12
\inst|decOut_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[0]~6_combout\ = (\inst6|s_count[2]~17_combout\ & (!\inst6|s_count[1]~7_combout\ & (\inst6|s_count[0]~12_combout\ $ (!\inst6|s_count[3]~2_combout\)))) # (!\inst6|s_count[2]~17_combout\ & (\inst6|s_count[0]~12_combout\ & 
-- (\inst6|s_count[1]~7_combout\ $ (!\inst6|s_count[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_count[2]~17_combout\,
	datab => \inst6|s_count[1]~7_combout\,
	datac => \inst6|s_count[0]~12_combout\,
	datad => \inst6|s_count[3]~2_combout\,
	combout => \inst|decOut_n[0]~6_combout\);

-- Location: LCCOMB_X114_Y40_N6
\inst6|s_count[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_count[3]~32_combout\ = (!\KEY[0]~input_o\ & (\KEY[1]~input_o\ & !\inst6|s_stop~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \inst6|s_stop~0_combout\,
	combout => \inst6|s_count[3]~32_combout\);

-- Location: LCCOMB_X114_Y40_N12
\inst6|led\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|led~combout\ = (\inst|Equal14~0_combout\) # ((!\inst6|s_count[3]~32_combout\ & \inst6|led~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_count[3]~32_combout\,
	datac => \inst|Equal14~0_combout\,
	datad => \inst6|led~combout\,
	combout => \inst6|led~combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


