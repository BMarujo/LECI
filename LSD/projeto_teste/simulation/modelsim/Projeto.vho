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

-- DATE "04/13/2023 10:20:27"

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
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \SW[0]~ibuf_o\ : std_logic;
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
SIGNAL SW : std_logic_vector(1 DOWNTO 1);

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

ENTITY 	Projeto IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 1);
	KEY : IN std_logic_vector(0 DOWNTO 0)
	);
END Projeto;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Projeto IS
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
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 1);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|output~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[0]~25_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[7]~40\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[8]~41_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[8]~42\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[9]~43_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[9]~44\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[10]~45_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[10]~46\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[11]~47_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[11]~48\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[12]~49_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[12]~50\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[13]~51_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[13]~52\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[14]~53_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[14]~54\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[15]~55_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[15]~56\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[16]~57_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[16]~58\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[17]~59_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[17]~60\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[18]~61_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[18]~62\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[19]~63_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[19]~64\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[20]~65_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[20]~66\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[21]~67_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[21]~68\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[22]~69_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[22]~70\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[23]~71_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[23]~72\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[24]~73_combout\ : std_logic;
SIGNAL \inst3242342342|clkOut~0_combout\ : std_logic;
SIGNAL \inst3242342342|clkOut~2_combout\ : std_logic;
SIGNAL \inst3242342342|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3242342342|LessThan0~1_combout\ : std_logic;
SIGNAL \inst3242342342|LessThan0~2_combout\ : std_logic;
SIGNAL \inst3242342342|LessThan0~3_combout\ : std_logic;
SIGNAL \inst3242342342|LessThan0~4_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[0]~26\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[1]~27_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[1]~28\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[2]~29_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[2]~30\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[3]~31_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[3]~32\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[4]~33_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[4]~34\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[5]~35_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[5]~36\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[6]~37_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[6]~38\ : std_logic;
SIGNAL \inst3242342342|s_divCounter[7]~39_combout\ : std_logic;
SIGNAL \inst3242342342|clkOut~1_combout\ : std_logic;
SIGNAL \inst3242342342|clkOut~3_combout\ : std_logic;
SIGNAL \inst3242342342|clkOut~4_combout\ : std_logic;
SIGNAL \inst3242342342|clkOut~6_combout\ : std_logic;
SIGNAL \inst3242342342|clkOut~5_combout\ : std_logic;
SIGNAL \inst3242342342|clkOut~7_combout\ : std_logic;
SIGNAL \inst3242342342|clkOut~8_combout\ : std_logic;
SIGNAL \inst3242342342|clkOut~q\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[0]~27\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[1]~29\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[2]~31\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[3]~33\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[4]~35\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[5]~37\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[6]~39\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[7]~41\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[8]~43\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[9]~45\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[10]~47\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[11]~49\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[12]~51\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[13]~53\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[14]~55\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \inst2147483647|LessThan0~5_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[15]~57\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[16]~59\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[17]~61\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[18]~63\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[19]~65\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[20]~67\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[21]~69\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[22]~71\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[23]~73\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \inst2147483647|LessThan0~4_combout\ : std_logic;
SIGNAL \inst2147483647|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2147483647|clkOut~3_combout\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[24]~75\ : std_logic;
SIGNAL \inst2147483647|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \inst2147483647|LessThan0~3_combout\ : std_logic;
SIGNAL \inst2147483647|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2147483647|clkOut~0_combout\ : std_logic;
SIGNAL \inst2147483647|clkOut~1_combout\ : std_logic;
SIGNAL \inst2147483647|clkOut~2_combout\ : std_logic;
SIGNAL \inst2147483647|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2147483647|LessThan0~6_combout\ : std_logic;
SIGNAL \inst2147483647|clkOut~5_combout\ : std_logic;
SIGNAL \inst2147483647|clkOut~6_combout\ : std_logic;
SIGNAL \inst2147483647|clkOut~4_combout\ : std_logic;
SIGNAL \inst2147483647|clkOut~7_combout\ : std_logic;
SIGNAL \inst2147483647|clkOut~8_combout\ : std_logic;
SIGNAL \inst2147483647|clkOut~9_combout\ : std_logic;
SIGNAL \inst2147483647|clkOut~q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst|output~combout\ : std_logic;
SIGNAL \inst|output~clkctrl_outclk\ : std_logic;
SIGNAL \inst345345|s_count[0]~2_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst345345|Add0~0_combout\ : std_logic;
SIGNAL \inst345345|s_count[2]~0_combout\ : std_logic;
SIGNAL \inst345345|s_count[3]~1_combout\ : std_logic;
SIGNAL \inst1t3534|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \inst1t3534|decOut_n[5]~1_combout\ : std_logic;
SIGNAL \inst1t3534|decOut_n[4]~2_combout\ : std_logic;
SIGNAL \inst1t3534|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \inst1t3534|decOut_n[2]~4_combout\ : std_logic;
SIGNAL \inst1t3534|decOut_n[1]~5_combout\ : std_logic;
SIGNAL \inst1t3534|decOut_n[0]~6_combout\ : std_logic;
SIGNAL \inst3242342342|s_divCounter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst2147483647|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst345345|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst|output~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|output~combout\);
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
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
	i => \inst1t3534|decOut_n[6]~0_combout\,
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
	i => \inst1t3534|decOut_n[5]~1_combout\,
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
	i => \inst1t3534|decOut_n[4]~2_combout\,
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
	i => \inst1t3534|decOut_n[3]~3_combout\,
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
	i => \inst1t3534|decOut_n[2]~4_combout\,
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
	i => \inst1t3534|decOut_n[1]~5_combout\,
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
	i => \inst1t3534|decOut_n[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

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

-- Location: LCCOMB_X80_Y31_N8
\inst3242342342|s_divCounter[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[0]~25_combout\ = \inst3242342342|s_divCounter\(0) $ (VCC)
-- \inst3242342342|s_divCounter[0]~26\ = CARRY(\inst3242342342|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3242342342|s_divCounter\(0),
	datad => VCC,
	combout => \inst3242342342|s_divCounter[0]~25_combout\,
	cout => \inst3242342342|s_divCounter[0]~26\);

-- Location: LCCOMB_X80_Y31_N22
\inst3242342342|s_divCounter[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[7]~39_combout\ = (\inst3242342342|s_divCounter\(7) & (!\inst3242342342|s_divCounter[6]~38\)) # (!\inst3242342342|s_divCounter\(7) & ((\inst3242342342|s_divCounter[6]~38\) # (GND)))
-- \inst3242342342|s_divCounter[7]~40\ = CARRY((!\inst3242342342|s_divCounter[6]~38\) # (!\inst3242342342|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|s_divCounter\(7),
	datad => VCC,
	cin => \inst3242342342|s_divCounter[6]~38\,
	combout => \inst3242342342|s_divCounter[7]~39_combout\,
	cout => \inst3242342342|s_divCounter[7]~40\);

-- Location: LCCOMB_X80_Y31_N24
\inst3242342342|s_divCounter[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[8]~41_combout\ = (\inst3242342342|s_divCounter\(8) & (\inst3242342342|s_divCounter[7]~40\ $ (GND))) # (!\inst3242342342|s_divCounter\(8) & (!\inst3242342342|s_divCounter[7]~40\ & VCC))
-- \inst3242342342|s_divCounter[8]~42\ = CARRY((\inst3242342342|s_divCounter\(8) & !\inst3242342342|s_divCounter[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3242342342|s_divCounter\(8),
	datad => VCC,
	cin => \inst3242342342|s_divCounter[7]~40\,
	combout => \inst3242342342|s_divCounter[8]~41_combout\,
	cout => \inst3242342342|s_divCounter[8]~42\);

-- Location: FF_X80_Y31_N25
\inst3242342342|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3242342342|s_divCounter[8]~41_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(8));

-- Location: LCCOMB_X80_Y31_N26
\inst3242342342|s_divCounter[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[9]~43_combout\ = (\inst3242342342|s_divCounter\(9) & (!\inst3242342342|s_divCounter[8]~42\)) # (!\inst3242342342|s_divCounter\(9) & ((\inst3242342342|s_divCounter[8]~42\) # (GND)))
-- \inst3242342342|s_divCounter[9]~44\ = CARRY((!\inst3242342342|s_divCounter[8]~42\) # (!\inst3242342342|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|s_divCounter\(9),
	datad => VCC,
	cin => \inst3242342342|s_divCounter[8]~42\,
	combout => \inst3242342342|s_divCounter[9]~43_combout\,
	cout => \inst3242342342|s_divCounter[9]~44\);

-- Location: FF_X80_Y31_N27
\inst3242342342|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3242342342|s_divCounter[9]~43_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(9));

-- Location: LCCOMB_X80_Y31_N28
\inst3242342342|s_divCounter[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[10]~45_combout\ = (\inst3242342342|s_divCounter\(10) & (\inst3242342342|s_divCounter[9]~44\ $ (GND))) # (!\inst3242342342|s_divCounter\(10) & (!\inst3242342342|s_divCounter[9]~44\ & VCC))
-- \inst3242342342|s_divCounter[10]~46\ = CARRY((\inst3242342342|s_divCounter\(10) & !\inst3242342342|s_divCounter[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3242342342|s_divCounter\(10),
	datad => VCC,
	cin => \inst3242342342|s_divCounter[9]~44\,
	combout => \inst3242342342|s_divCounter[10]~45_combout\,
	cout => \inst3242342342|s_divCounter[10]~46\);

-- Location: FF_X80_Y31_N29
\inst3242342342|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3242342342|s_divCounter[10]~45_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(10));

-- Location: LCCOMB_X80_Y31_N30
\inst3242342342|s_divCounter[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[11]~47_combout\ = (\inst3242342342|s_divCounter\(11) & (!\inst3242342342|s_divCounter[10]~46\)) # (!\inst3242342342|s_divCounter\(11) & ((\inst3242342342|s_divCounter[10]~46\) # (GND)))
-- \inst3242342342|s_divCounter[11]~48\ = CARRY((!\inst3242342342|s_divCounter[10]~46\) # (!\inst3242342342|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|s_divCounter\(11),
	datad => VCC,
	cin => \inst3242342342|s_divCounter[10]~46\,
	combout => \inst3242342342|s_divCounter[11]~47_combout\,
	cout => \inst3242342342|s_divCounter[11]~48\);

-- Location: FF_X80_Y31_N31
\inst3242342342|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3242342342|s_divCounter[11]~47_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(11));

-- Location: LCCOMB_X80_Y30_N0
\inst3242342342|s_divCounter[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[12]~49_combout\ = (\inst3242342342|s_divCounter\(12) & (\inst3242342342|s_divCounter[11]~48\ $ (GND))) # (!\inst3242342342|s_divCounter\(12) & (!\inst3242342342|s_divCounter[11]~48\ & VCC))
-- \inst3242342342|s_divCounter[12]~50\ = CARRY((\inst3242342342|s_divCounter\(12) & !\inst3242342342|s_divCounter[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|s_divCounter\(12),
	datad => VCC,
	cin => \inst3242342342|s_divCounter[11]~48\,
	combout => \inst3242342342|s_divCounter[12]~49_combout\,
	cout => \inst3242342342|s_divCounter[12]~50\);

-- Location: FF_X79_Y31_N7
\inst3242342342|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3242342342|s_divCounter[12]~49_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(12));

-- Location: LCCOMB_X80_Y30_N2
\inst3242342342|s_divCounter[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[13]~51_combout\ = (\inst3242342342|s_divCounter\(13) & (!\inst3242342342|s_divCounter[12]~50\)) # (!\inst3242342342|s_divCounter\(13) & ((\inst3242342342|s_divCounter[12]~50\) # (GND)))
-- \inst3242342342|s_divCounter[13]~52\ = CARRY((!\inst3242342342|s_divCounter[12]~50\) # (!\inst3242342342|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3242342342|s_divCounter\(13),
	datad => VCC,
	cin => \inst3242342342|s_divCounter[12]~50\,
	combout => \inst3242342342|s_divCounter[13]~51_combout\,
	cout => \inst3242342342|s_divCounter[13]~52\);

-- Location: FF_X79_Y31_N21
\inst3242342342|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3242342342|s_divCounter[13]~51_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(13));

-- Location: LCCOMB_X80_Y30_N4
\inst3242342342|s_divCounter[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[14]~53_combout\ = (\inst3242342342|s_divCounter\(14) & (\inst3242342342|s_divCounter[13]~52\ $ (GND))) # (!\inst3242342342|s_divCounter\(14) & (!\inst3242342342|s_divCounter[13]~52\ & VCC))
-- \inst3242342342|s_divCounter[14]~54\ = CARRY((\inst3242342342|s_divCounter\(14) & !\inst3242342342|s_divCounter[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3242342342|s_divCounter\(14),
	datad => VCC,
	cin => \inst3242342342|s_divCounter[13]~52\,
	combout => \inst3242342342|s_divCounter[14]~53_combout\,
	cout => \inst3242342342|s_divCounter[14]~54\);

-- Location: FF_X79_Y31_N11
\inst3242342342|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3242342342|s_divCounter[14]~53_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(14));

-- Location: LCCOMB_X80_Y30_N6
\inst3242342342|s_divCounter[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[15]~55_combout\ = (\inst3242342342|s_divCounter\(15) & (!\inst3242342342|s_divCounter[14]~54\)) # (!\inst3242342342|s_divCounter\(15) & ((\inst3242342342|s_divCounter[14]~54\) # (GND)))
-- \inst3242342342|s_divCounter[15]~56\ = CARRY((!\inst3242342342|s_divCounter[14]~54\) # (!\inst3242342342|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3242342342|s_divCounter\(15),
	datad => VCC,
	cin => \inst3242342342|s_divCounter[14]~54\,
	combout => \inst3242342342|s_divCounter[15]~55_combout\,
	cout => \inst3242342342|s_divCounter[15]~56\);

-- Location: FF_X79_Y31_N25
\inst3242342342|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3242342342|s_divCounter[15]~55_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(15));

-- Location: LCCOMB_X80_Y30_N8
\inst3242342342|s_divCounter[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[16]~57_combout\ = (\inst3242342342|s_divCounter\(16) & (\inst3242342342|s_divCounter[15]~56\ $ (GND))) # (!\inst3242342342|s_divCounter\(16) & (!\inst3242342342|s_divCounter[15]~56\ & VCC))
-- \inst3242342342|s_divCounter[16]~58\ = CARRY((\inst3242342342|s_divCounter\(16) & !\inst3242342342|s_divCounter[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|s_divCounter\(16),
	datad => VCC,
	cin => \inst3242342342|s_divCounter[15]~56\,
	combout => \inst3242342342|s_divCounter[16]~57_combout\,
	cout => \inst3242342342|s_divCounter[16]~58\);

-- Location: FF_X79_Y31_N27
\inst3242342342|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3242342342|s_divCounter[16]~57_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(16));

-- Location: LCCOMB_X80_Y30_N10
\inst3242342342|s_divCounter[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[17]~59_combout\ = (\inst3242342342|s_divCounter\(17) & (!\inst3242342342|s_divCounter[16]~58\)) # (!\inst3242342342|s_divCounter\(17) & ((\inst3242342342|s_divCounter[16]~58\) # (GND)))
-- \inst3242342342|s_divCounter[17]~60\ = CARRY((!\inst3242342342|s_divCounter[16]~58\) # (!\inst3242342342|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|s_divCounter\(17),
	datad => VCC,
	cin => \inst3242342342|s_divCounter[16]~58\,
	combout => \inst3242342342|s_divCounter[17]~59_combout\,
	cout => \inst3242342342|s_divCounter[17]~60\);

-- Location: FF_X79_Y31_N29
\inst3242342342|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3242342342|s_divCounter[17]~59_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(17));

-- Location: LCCOMB_X80_Y30_N12
\inst3242342342|s_divCounter[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[18]~61_combout\ = (\inst3242342342|s_divCounter\(18) & (\inst3242342342|s_divCounter[17]~60\ $ (GND))) # (!\inst3242342342|s_divCounter\(18) & (!\inst3242342342|s_divCounter[17]~60\ & VCC))
-- \inst3242342342|s_divCounter[18]~62\ = CARRY((\inst3242342342|s_divCounter\(18) & !\inst3242342342|s_divCounter[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|s_divCounter\(18),
	datad => VCC,
	cin => \inst3242342342|s_divCounter[17]~60\,
	combout => \inst3242342342|s_divCounter[18]~61_combout\,
	cout => \inst3242342342|s_divCounter[18]~62\);

-- Location: FF_X80_Y30_N13
\inst3242342342|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3242342342|s_divCounter[18]~61_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(18));

-- Location: LCCOMB_X80_Y30_N14
\inst3242342342|s_divCounter[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[19]~63_combout\ = (\inst3242342342|s_divCounter\(19) & (!\inst3242342342|s_divCounter[18]~62\)) # (!\inst3242342342|s_divCounter\(19) & ((\inst3242342342|s_divCounter[18]~62\) # (GND)))
-- \inst3242342342|s_divCounter[19]~64\ = CARRY((!\inst3242342342|s_divCounter[18]~62\) # (!\inst3242342342|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3242342342|s_divCounter\(19),
	datad => VCC,
	cin => \inst3242342342|s_divCounter[18]~62\,
	combout => \inst3242342342|s_divCounter[19]~63_combout\,
	cout => \inst3242342342|s_divCounter[19]~64\);

-- Location: FF_X80_Y30_N15
\inst3242342342|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3242342342|s_divCounter[19]~63_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(19));

-- Location: LCCOMB_X80_Y30_N16
\inst3242342342|s_divCounter[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[20]~65_combout\ = (\inst3242342342|s_divCounter\(20) & (\inst3242342342|s_divCounter[19]~64\ $ (GND))) # (!\inst3242342342|s_divCounter\(20) & (!\inst3242342342|s_divCounter[19]~64\ & VCC))
-- \inst3242342342|s_divCounter[20]~66\ = CARRY((\inst3242342342|s_divCounter\(20) & !\inst3242342342|s_divCounter[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3242342342|s_divCounter\(20),
	datad => VCC,
	cin => \inst3242342342|s_divCounter[19]~64\,
	combout => \inst3242342342|s_divCounter[20]~65_combout\,
	cout => \inst3242342342|s_divCounter[20]~66\);

-- Location: FF_X80_Y30_N17
\inst3242342342|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3242342342|s_divCounter[20]~65_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(20));

-- Location: LCCOMB_X80_Y30_N18
\inst3242342342|s_divCounter[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[21]~67_combout\ = (\inst3242342342|s_divCounter\(21) & (!\inst3242342342|s_divCounter[20]~66\)) # (!\inst3242342342|s_divCounter\(21) & ((\inst3242342342|s_divCounter[20]~66\) # (GND)))
-- \inst3242342342|s_divCounter[21]~68\ = CARRY((!\inst3242342342|s_divCounter[20]~66\) # (!\inst3242342342|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3242342342|s_divCounter\(21),
	datad => VCC,
	cin => \inst3242342342|s_divCounter[20]~66\,
	combout => \inst3242342342|s_divCounter[21]~67_combout\,
	cout => \inst3242342342|s_divCounter[21]~68\);

-- Location: FF_X80_Y30_N19
\inst3242342342|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3242342342|s_divCounter[21]~67_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(21));

-- Location: LCCOMB_X80_Y30_N20
\inst3242342342|s_divCounter[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[22]~69_combout\ = (\inst3242342342|s_divCounter\(22) & (\inst3242342342|s_divCounter[21]~68\ $ (GND))) # (!\inst3242342342|s_divCounter\(22) & (!\inst3242342342|s_divCounter[21]~68\ & VCC))
-- \inst3242342342|s_divCounter[22]~70\ = CARRY((\inst3242342342|s_divCounter\(22) & !\inst3242342342|s_divCounter[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3242342342|s_divCounter\(22),
	datad => VCC,
	cin => \inst3242342342|s_divCounter[21]~68\,
	combout => \inst3242342342|s_divCounter[22]~69_combout\,
	cout => \inst3242342342|s_divCounter[22]~70\);

-- Location: FF_X80_Y30_N21
\inst3242342342|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3242342342|s_divCounter[22]~69_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(22));

-- Location: LCCOMB_X80_Y30_N22
\inst3242342342|s_divCounter[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[23]~71_combout\ = (\inst3242342342|s_divCounter\(23) & (!\inst3242342342|s_divCounter[22]~70\)) # (!\inst3242342342|s_divCounter\(23) & ((\inst3242342342|s_divCounter[22]~70\) # (GND)))
-- \inst3242342342|s_divCounter[23]~72\ = CARRY((!\inst3242342342|s_divCounter[22]~70\) # (!\inst3242342342|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|s_divCounter\(23),
	datad => VCC,
	cin => \inst3242342342|s_divCounter[22]~70\,
	combout => \inst3242342342|s_divCounter[23]~71_combout\,
	cout => \inst3242342342|s_divCounter[23]~72\);

-- Location: FF_X80_Y30_N23
\inst3242342342|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3242342342|s_divCounter[23]~71_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(23));

-- Location: LCCOMB_X80_Y30_N24
\inst3242342342|s_divCounter[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[24]~73_combout\ = \inst3242342342|s_divCounter[23]~72\ $ (!\inst3242342342|s_divCounter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3242342342|s_divCounter\(24),
	cin => \inst3242342342|s_divCounter[23]~72\,
	combout => \inst3242342342|s_divCounter[24]~73_combout\);

-- Location: FF_X80_Y30_N25
\inst3242342342|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3242342342|s_divCounter[24]~73_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(24));

-- Location: LCCOMB_X80_Y30_N26
\inst3242342342|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|clkOut~0_combout\ = (\inst3242342342|s_divCounter\(18) & (\inst3242342342|s_divCounter\(21) & (\inst3242342342|s_divCounter\(19) & \inst3242342342|s_divCounter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|s_divCounter\(18),
	datab => \inst3242342342|s_divCounter\(21),
	datac => \inst3242342342|s_divCounter\(19),
	datad => \inst3242342342|s_divCounter\(20),
	combout => \inst3242342342|clkOut~0_combout\);

-- Location: LCCOMB_X80_Y31_N6
\inst3242342342|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|clkOut~2_combout\ = (\inst3242342342|s_divCounter\(1) & (\inst3242342342|s_divCounter\(0) & (\inst3242342342|s_divCounter\(3) & \inst3242342342|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|s_divCounter\(1),
	datab => \inst3242342342|s_divCounter\(0),
	datac => \inst3242342342|s_divCounter\(3),
	datad => \inst3242342342|s_divCounter\(2),
	combout => \inst3242342342|clkOut~2_combout\);

-- Location: LCCOMB_X80_Y31_N0
\inst3242342342|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|LessThan0~0_combout\ = (\inst3242342342|clkOut~1_combout\ & (((!\inst3242342342|clkOut~2_combout\) # (!\inst3242342342|s_divCounter\(4))) # (!\inst3242342342|s_divCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|s_divCounter\(5),
	datab => \inst3242342342|s_divCounter\(4),
	datac => \inst3242342342|clkOut~1_combout\,
	datad => \inst3242342342|clkOut~2_combout\,
	combout => \inst3242342342|LessThan0~0_combout\);

-- Location: LCCOMB_X79_Y31_N16
\inst3242342342|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|LessThan0~1_combout\ = (((!\inst3242342342|s_divCounter\(12)) # (!\inst3242342342|s_divCounter\(11))) # (!\inst3242342342|s_divCounter\(13))) # (!\inst3242342342|s_divCounter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|s_divCounter\(14),
	datab => \inst3242342342|s_divCounter\(13),
	datac => \inst3242342342|s_divCounter\(11),
	datad => \inst3242342342|s_divCounter\(12),
	combout => \inst3242342342|LessThan0~1_combout\);

-- Location: LCCOMB_X79_Y31_N2
\inst3242342342|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|LessThan0~2_combout\ = (!\inst3242342342|s_divCounter\(15) & ((\inst3242342342|LessThan0~1_combout\) # ((!\inst3242342342|s_divCounter\(10) & \inst3242342342|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|s_divCounter\(15),
	datab => \inst3242342342|s_divCounter\(10),
	datac => \inst3242342342|LessThan0~0_combout\,
	datad => \inst3242342342|LessThan0~1_combout\,
	combout => \inst3242342342|LessThan0~2_combout\);

-- Location: LCCOMB_X79_Y31_N12
\inst3242342342|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|LessThan0~3_combout\ = (\inst3242342342|s_divCounter\(22) & ((\inst3242342342|s_divCounter\(17)) # ((\inst3242342342|s_divCounter\(16) & !\inst3242342342|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|s_divCounter\(22),
	datab => \inst3242342342|s_divCounter\(17),
	datac => \inst3242342342|s_divCounter\(16),
	datad => \inst3242342342|LessThan0~2_combout\,
	combout => \inst3242342342|LessThan0~3_combout\);

-- Location: LCCOMB_X79_Y31_N18
\inst3242342342|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|LessThan0~4_combout\ = (\inst3242342342|s_divCounter\(24) & ((\inst3242342342|s_divCounter\(23)) # ((\inst3242342342|clkOut~0_combout\ & \inst3242342342|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|s_divCounter\(24),
	datab => \inst3242342342|s_divCounter\(23),
	datac => \inst3242342342|clkOut~0_combout\,
	datad => \inst3242342342|LessThan0~3_combout\,
	combout => \inst3242342342|LessThan0~4_combout\);

-- Location: FF_X80_Y31_N9
\inst3242342342|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3242342342|s_divCounter[0]~25_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(0));

-- Location: LCCOMB_X80_Y31_N10
\inst3242342342|s_divCounter[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[1]~27_combout\ = (\inst3242342342|s_divCounter\(1) & (!\inst3242342342|s_divCounter[0]~26\)) # (!\inst3242342342|s_divCounter\(1) & ((\inst3242342342|s_divCounter[0]~26\) # (GND)))
-- \inst3242342342|s_divCounter[1]~28\ = CARRY((!\inst3242342342|s_divCounter[0]~26\) # (!\inst3242342342|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|s_divCounter\(1),
	datad => VCC,
	cin => \inst3242342342|s_divCounter[0]~26\,
	combout => \inst3242342342|s_divCounter[1]~27_combout\,
	cout => \inst3242342342|s_divCounter[1]~28\);

-- Location: FF_X80_Y31_N11
\inst3242342342|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3242342342|s_divCounter[1]~27_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(1));

-- Location: LCCOMB_X80_Y31_N12
\inst3242342342|s_divCounter[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[2]~29_combout\ = (\inst3242342342|s_divCounter\(2) & (\inst3242342342|s_divCounter[1]~28\ $ (GND))) # (!\inst3242342342|s_divCounter\(2) & (!\inst3242342342|s_divCounter[1]~28\ & VCC))
-- \inst3242342342|s_divCounter[2]~30\ = CARRY((\inst3242342342|s_divCounter\(2) & !\inst3242342342|s_divCounter[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|s_divCounter\(2),
	datad => VCC,
	cin => \inst3242342342|s_divCounter[1]~28\,
	combout => \inst3242342342|s_divCounter[2]~29_combout\,
	cout => \inst3242342342|s_divCounter[2]~30\);

-- Location: FF_X80_Y31_N13
\inst3242342342|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3242342342|s_divCounter[2]~29_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(2));

-- Location: LCCOMB_X80_Y31_N14
\inst3242342342|s_divCounter[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[3]~31_combout\ = (\inst3242342342|s_divCounter\(3) & (!\inst3242342342|s_divCounter[2]~30\)) # (!\inst3242342342|s_divCounter\(3) & ((\inst3242342342|s_divCounter[2]~30\) # (GND)))
-- \inst3242342342|s_divCounter[3]~32\ = CARRY((!\inst3242342342|s_divCounter[2]~30\) # (!\inst3242342342|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3242342342|s_divCounter\(3),
	datad => VCC,
	cin => \inst3242342342|s_divCounter[2]~30\,
	combout => \inst3242342342|s_divCounter[3]~31_combout\,
	cout => \inst3242342342|s_divCounter[3]~32\);

-- Location: FF_X80_Y31_N15
\inst3242342342|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3242342342|s_divCounter[3]~31_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(3));

-- Location: LCCOMB_X80_Y31_N16
\inst3242342342|s_divCounter[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[4]~33_combout\ = (\inst3242342342|s_divCounter\(4) & (\inst3242342342|s_divCounter[3]~32\ $ (GND))) # (!\inst3242342342|s_divCounter\(4) & (!\inst3242342342|s_divCounter[3]~32\ & VCC))
-- \inst3242342342|s_divCounter[4]~34\ = CARRY((\inst3242342342|s_divCounter\(4) & !\inst3242342342|s_divCounter[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3242342342|s_divCounter\(4),
	datad => VCC,
	cin => \inst3242342342|s_divCounter[3]~32\,
	combout => \inst3242342342|s_divCounter[4]~33_combout\,
	cout => \inst3242342342|s_divCounter[4]~34\);

-- Location: FF_X80_Y31_N17
\inst3242342342|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3242342342|s_divCounter[4]~33_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(4));

-- Location: LCCOMB_X80_Y31_N18
\inst3242342342|s_divCounter[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[5]~35_combout\ = (\inst3242342342|s_divCounter\(5) & (!\inst3242342342|s_divCounter[4]~34\)) # (!\inst3242342342|s_divCounter\(5) & ((\inst3242342342|s_divCounter[4]~34\) # (GND)))
-- \inst3242342342|s_divCounter[5]~36\ = CARRY((!\inst3242342342|s_divCounter[4]~34\) # (!\inst3242342342|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3242342342|s_divCounter\(5),
	datad => VCC,
	cin => \inst3242342342|s_divCounter[4]~34\,
	combout => \inst3242342342|s_divCounter[5]~35_combout\,
	cout => \inst3242342342|s_divCounter[5]~36\);

-- Location: FF_X80_Y31_N19
\inst3242342342|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3242342342|s_divCounter[5]~35_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(5));

-- Location: LCCOMB_X80_Y31_N20
\inst3242342342|s_divCounter[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|s_divCounter[6]~37_combout\ = (\inst3242342342|s_divCounter\(6) & (\inst3242342342|s_divCounter[5]~36\ $ (GND))) # (!\inst3242342342|s_divCounter\(6) & (!\inst3242342342|s_divCounter[5]~36\ & VCC))
-- \inst3242342342|s_divCounter[6]~38\ = CARRY((\inst3242342342|s_divCounter\(6) & !\inst3242342342|s_divCounter[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3242342342|s_divCounter\(6),
	datad => VCC,
	cin => \inst3242342342|s_divCounter[5]~36\,
	combout => \inst3242342342|s_divCounter[6]~37_combout\,
	cout => \inst3242342342|s_divCounter[6]~38\);

-- Location: FF_X80_Y31_N21
\inst3242342342|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3242342342|s_divCounter[6]~37_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(6));

-- Location: FF_X80_Y31_N23
\inst3242342342|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3242342342|s_divCounter[7]~39_combout\,
	sclr => \inst3242342342|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|s_divCounter\(7));

-- Location: LCCOMB_X80_Y31_N4
\inst3242342342|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|clkOut~1_combout\ = (!\inst3242342342|s_divCounter\(7) & (!\inst3242342342|s_divCounter\(8) & (!\inst3242342342|s_divCounter\(9) & !\inst3242342342|s_divCounter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|s_divCounter\(7),
	datab => \inst3242342342|s_divCounter\(8),
	datac => \inst3242342342|s_divCounter\(9),
	datad => \inst3242342342|s_divCounter\(6),
	combout => \inst3242342342|clkOut~1_combout\);

-- Location: LCCOMB_X79_Y31_N4
\inst3242342342|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|clkOut~3_combout\ = (\inst3242342342|clkOut~1_combout\ & (\inst3242342342|s_divCounter\(4) & (\inst3242342342|clkOut~0_combout\ & \inst3242342342|clkOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|clkOut~1_combout\,
	datab => \inst3242342342|s_divCounter\(4),
	datac => \inst3242342342|clkOut~0_combout\,
	datad => \inst3242342342|clkOut~2_combout\,
	combout => \inst3242342342|clkOut~3_combout\);

-- Location: LCCOMB_X79_Y31_N14
\inst3242342342|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|clkOut~4_combout\ = (\inst3242342342|s_divCounter\(12) & (\inst3242342342|s_divCounter\(13) & (\inst3242342342|s_divCounter\(11) & !\inst3242342342|s_divCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|s_divCounter\(12),
	datab => \inst3242342342|s_divCounter\(13),
	datac => \inst3242342342|s_divCounter\(11),
	datad => \inst3242342342|s_divCounter\(5),
	combout => \inst3242342342|clkOut~4_combout\);

-- Location: LCCOMB_X80_Y30_N28
\inst3242342342|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|clkOut~6_combout\ = (!\inst3242342342|s_divCounter\(22) & (!\inst3242342342|s_divCounter\(24) & (\inst3242342342|s_divCounter\(23) & \inst3242342342|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|s_divCounter\(22),
	datab => \inst3242342342|s_divCounter\(24),
	datac => \inst3242342342|s_divCounter\(23),
	datad => \inst3242342342|s_divCounter\(17),
	combout => \inst3242342342|clkOut~6_combout\);

-- Location: LCCOMB_X79_Y31_N0
\inst3242342342|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|clkOut~5_combout\ = (!\inst3242342342|s_divCounter\(14) & (\inst3242342342|s_divCounter\(15) & (!\inst3242342342|s_divCounter\(16) & \inst3242342342|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|s_divCounter\(14),
	datab => \inst3242342342|s_divCounter\(15),
	datac => \inst3242342342|s_divCounter\(16),
	datad => \inst3242342342|s_divCounter\(10),
	combout => \inst3242342342|clkOut~5_combout\);

-- Location: LCCOMB_X79_Y31_N22
\inst3242342342|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|clkOut~7_combout\ = (\inst3242342342|clkOut~4_combout\ & (\inst3242342342|clkOut~6_combout\ & \inst3242342342|clkOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3242342342|clkOut~4_combout\,
	datac => \inst3242342342|clkOut~6_combout\,
	datad => \inst3242342342|clkOut~5_combout\,
	combout => \inst3242342342|clkOut~7_combout\);

-- Location: LCCOMB_X75_Y18_N30
\inst3242342342|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3242342342|clkOut~8_combout\ = (!\inst3242342342|LessThan0~4_combout\ & ((\inst3242342342|clkOut~q\) # ((\inst3242342342|clkOut~3_combout\ & \inst3242342342|clkOut~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|clkOut~3_combout\,
	datab => \inst3242342342|clkOut~7_combout\,
	datac => \inst3242342342|clkOut~q\,
	datad => \inst3242342342|LessThan0~4_combout\,
	combout => \inst3242342342|clkOut~8_combout\);

-- Location: FF_X75_Y18_N31
\inst3242342342|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst3242342342|clkOut~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3242342342|clkOut~q\);

-- Location: LCCOMB_X74_Y19_N6
\inst2147483647|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[0]~26_combout\ = \inst2147483647|s_divCounter\(0) $ (VCC)
-- \inst2147483647|s_divCounter[0]~27\ = CARRY(\inst2147483647|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|s_divCounter\(0),
	datad => VCC,
	combout => \inst2147483647|s_divCounter[0]~26_combout\,
	cout => \inst2147483647|s_divCounter[0]~27\);

-- Location: FF_X74_Y19_N7
\inst2147483647|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[0]~26_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(0));

-- Location: LCCOMB_X74_Y19_N8
\inst2147483647|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[1]~28_combout\ = (\inst2147483647|s_divCounter\(1) & (!\inst2147483647|s_divCounter[0]~27\)) # (!\inst2147483647|s_divCounter\(1) & ((\inst2147483647|s_divCounter[0]~27\) # (GND)))
-- \inst2147483647|s_divCounter[1]~29\ = CARRY((!\inst2147483647|s_divCounter[0]~27\) # (!\inst2147483647|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2147483647|s_divCounter\(1),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[0]~27\,
	combout => \inst2147483647|s_divCounter[1]~28_combout\,
	cout => \inst2147483647|s_divCounter[1]~29\);

-- Location: FF_X74_Y19_N9
\inst2147483647|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[1]~28_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(1));

-- Location: LCCOMB_X74_Y19_N10
\inst2147483647|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[2]~30_combout\ = (\inst2147483647|s_divCounter\(2) & (\inst2147483647|s_divCounter[1]~29\ $ (GND))) # (!\inst2147483647|s_divCounter\(2) & (!\inst2147483647|s_divCounter[1]~29\ & VCC))
-- \inst2147483647|s_divCounter[2]~31\ = CARRY((\inst2147483647|s_divCounter\(2) & !\inst2147483647|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|s_divCounter\(2),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[1]~29\,
	combout => \inst2147483647|s_divCounter[2]~30_combout\,
	cout => \inst2147483647|s_divCounter[2]~31\);

-- Location: FF_X74_Y19_N11
\inst2147483647|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[2]~30_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(2));

-- Location: LCCOMB_X74_Y19_N12
\inst2147483647|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[3]~32_combout\ = (\inst2147483647|s_divCounter\(3) & (!\inst2147483647|s_divCounter[2]~31\)) # (!\inst2147483647|s_divCounter\(3) & ((\inst2147483647|s_divCounter[2]~31\) # (GND)))
-- \inst2147483647|s_divCounter[3]~33\ = CARRY((!\inst2147483647|s_divCounter[2]~31\) # (!\inst2147483647|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|s_divCounter\(3),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[2]~31\,
	combout => \inst2147483647|s_divCounter[3]~32_combout\,
	cout => \inst2147483647|s_divCounter[3]~33\);

-- Location: FF_X74_Y19_N13
\inst2147483647|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[3]~32_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(3));

-- Location: LCCOMB_X74_Y19_N14
\inst2147483647|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[4]~34_combout\ = (\inst2147483647|s_divCounter\(4) & (\inst2147483647|s_divCounter[3]~33\ $ (GND))) # (!\inst2147483647|s_divCounter\(4) & (!\inst2147483647|s_divCounter[3]~33\ & VCC))
-- \inst2147483647|s_divCounter[4]~35\ = CARRY((\inst2147483647|s_divCounter\(4) & !\inst2147483647|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2147483647|s_divCounter\(4),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[3]~33\,
	combout => \inst2147483647|s_divCounter[4]~34_combout\,
	cout => \inst2147483647|s_divCounter[4]~35\);

-- Location: FF_X74_Y19_N15
\inst2147483647|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[4]~34_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(4));

-- Location: LCCOMB_X74_Y19_N16
\inst2147483647|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[5]~36_combout\ = (\inst2147483647|s_divCounter\(5) & (!\inst2147483647|s_divCounter[4]~35\)) # (!\inst2147483647|s_divCounter\(5) & ((\inst2147483647|s_divCounter[4]~35\) # (GND)))
-- \inst2147483647|s_divCounter[5]~37\ = CARRY((!\inst2147483647|s_divCounter[4]~35\) # (!\inst2147483647|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2147483647|s_divCounter\(5),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[4]~35\,
	combout => \inst2147483647|s_divCounter[5]~36_combout\,
	cout => \inst2147483647|s_divCounter[5]~37\);

-- Location: FF_X74_Y19_N17
\inst2147483647|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[5]~36_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(5));

-- Location: LCCOMB_X74_Y19_N18
\inst2147483647|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[6]~38_combout\ = (\inst2147483647|s_divCounter\(6) & (\inst2147483647|s_divCounter[5]~37\ $ (GND))) # (!\inst2147483647|s_divCounter\(6) & (!\inst2147483647|s_divCounter[5]~37\ & VCC))
-- \inst2147483647|s_divCounter[6]~39\ = CARRY((\inst2147483647|s_divCounter\(6) & !\inst2147483647|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2147483647|s_divCounter\(6),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[5]~37\,
	combout => \inst2147483647|s_divCounter[6]~38_combout\,
	cout => \inst2147483647|s_divCounter[6]~39\);

-- Location: FF_X74_Y19_N19
\inst2147483647|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[6]~38_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(6));

-- Location: LCCOMB_X74_Y19_N20
\inst2147483647|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[7]~40_combout\ = (\inst2147483647|s_divCounter\(7) & (!\inst2147483647|s_divCounter[6]~39\)) # (!\inst2147483647|s_divCounter\(7) & ((\inst2147483647|s_divCounter[6]~39\) # (GND)))
-- \inst2147483647|s_divCounter[7]~41\ = CARRY((!\inst2147483647|s_divCounter[6]~39\) # (!\inst2147483647|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2147483647|s_divCounter\(7),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[6]~39\,
	combout => \inst2147483647|s_divCounter[7]~40_combout\,
	cout => \inst2147483647|s_divCounter[7]~41\);

-- Location: FF_X74_Y19_N21
\inst2147483647|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[7]~40_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(7));

-- Location: LCCOMB_X74_Y19_N22
\inst2147483647|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[8]~42_combout\ = (\inst2147483647|s_divCounter\(8) & (\inst2147483647|s_divCounter[7]~41\ $ (GND))) # (!\inst2147483647|s_divCounter\(8) & (!\inst2147483647|s_divCounter[7]~41\ & VCC))
-- \inst2147483647|s_divCounter[8]~43\ = CARRY((\inst2147483647|s_divCounter\(8) & !\inst2147483647|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|s_divCounter\(8),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[7]~41\,
	combout => \inst2147483647|s_divCounter[8]~42_combout\,
	cout => \inst2147483647|s_divCounter[8]~43\);

-- Location: FF_X74_Y19_N23
\inst2147483647|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[8]~42_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(8));

-- Location: LCCOMB_X74_Y19_N24
\inst2147483647|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[9]~44_combout\ = (\inst2147483647|s_divCounter\(9) & (!\inst2147483647|s_divCounter[8]~43\)) # (!\inst2147483647|s_divCounter\(9) & ((\inst2147483647|s_divCounter[8]~43\) # (GND)))
-- \inst2147483647|s_divCounter[9]~45\ = CARRY((!\inst2147483647|s_divCounter[8]~43\) # (!\inst2147483647|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2147483647|s_divCounter\(9),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[8]~43\,
	combout => \inst2147483647|s_divCounter[9]~44_combout\,
	cout => \inst2147483647|s_divCounter[9]~45\);

-- Location: FF_X74_Y19_N25
\inst2147483647|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[9]~44_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(9));

-- Location: LCCOMB_X74_Y19_N26
\inst2147483647|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[10]~46_combout\ = (\inst2147483647|s_divCounter\(10) & (\inst2147483647|s_divCounter[9]~45\ $ (GND))) # (!\inst2147483647|s_divCounter\(10) & (!\inst2147483647|s_divCounter[9]~45\ & VCC))
-- \inst2147483647|s_divCounter[10]~47\ = CARRY((\inst2147483647|s_divCounter\(10) & !\inst2147483647|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|s_divCounter\(10),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[9]~45\,
	combout => \inst2147483647|s_divCounter[10]~46_combout\,
	cout => \inst2147483647|s_divCounter[10]~47\);

-- Location: FF_X74_Y19_N27
\inst2147483647|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[10]~46_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(10));

-- Location: LCCOMB_X74_Y19_N28
\inst2147483647|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[11]~48_combout\ = (\inst2147483647|s_divCounter\(11) & (!\inst2147483647|s_divCounter[10]~47\)) # (!\inst2147483647|s_divCounter\(11) & ((\inst2147483647|s_divCounter[10]~47\) # (GND)))
-- \inst2147483647|s_divCounter[11]~49\ = CARRY((!\inst2147483647|s_divCounter[10]~47\) # (!\inst2147483647|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|s_divCounter\(11),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[10]~47\,
	combout => \inst2147483647|s_divCounter[11]~48_combout\,
	cout => \inst2147483647|s_divCounter[11]~49\);

-- Location: FF_X75_Y18_N21
\inst2147483647|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2147483647|s_divCounter[11]~48_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(11));

-- Location: LCCOMB_X74_Y19_N30
\inst2147483647|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[12]~50_combout\ = (\inst2147483647|s_divCounter\(12) & (\inst2147483647|s_divCounter[11]~49\ $ (GND))) # (!\inst2147483647|s_divCounter\(12) & (!\inst2147483647|s_divCounter[11]~49\ & VCC))
-- \inst2147483647|s_divCounter[12]~51\ = CARRY((\inst2147483647|s_divCounter\(12) & !\inst2147483647|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2147483647|s_divCounter\(12),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[11]~49\,
	combout => \inst2147483647|s_divCounter[12]~50_combout\,
	cout => \inst2147483647|s_divCounter[12]~51\);

-- Location: FF_X75_Y18_N1
\inst2147483647|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2147483647|s_divCounter[12]~50_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(12));

-- Location: LCCOMB_X74_Y18_N0
\inst2147483647|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[13]~52_combout\ = (\inst2147483647|s_divCounter\(13) & (!\inst2147483647|s_divCounter[12]~51\)) # (!\inst2147483647|s_divCounter\(13) & ((\inst2147483647|s_divCounter[12]~51\) # (GND)))
-- \inst2147483647|s_divCounter[13]~53\ = CARRY((!\inst2147483647|s_divCounter[12]~51\) # (!\inst2147483647|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2147483647|s_divCounter\(13),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[12]~51\,
	combout => \inst2147483647|s_divCounter[13]~52_combout\,
	cout => \inst2147483647|s_divCounter[13]~53\);

-- Location: FF_X74_Y18_N1
\inst2147483647|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[13]~52_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(13));

-- Location: LCCOMB_X74_Y18_N2
\inst2147483647|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[14]~54_combout\ = (\inst2147483647|s_divCounter\(14) & (\inst2147483647|s_divCounter[13]~53\ $ (GND))) # (!\inst2147483647|s_divCounter\(14) & (!\inst2147483647|s_divCounter[13]~53\ & VCC))
-- \inst2147483647|s_divCounter[14]~55\ = CARRY((\inst2147483647|s_divCounter\(14) & !\inst2147483647|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2147483647|s_divCounter\(14),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[13]~53\,
	combout => \inst2147483647|s_divCounter[14]~54_combout\,
	cout => \inst2147483647|s_divCounter[14]~55\);

-- Location: FF_X74_Y18_N3
\inst2147483647|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[14]~54_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(14));

-- Location: LCCOMB_X74_Y18_N4
\inst2147483647|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[15]~56_combout\ = (\inst2147483647|s_divCounter\(15) & (!\inst2147483647|s_divCounter[14]~55\)) # (!\inst2147483647|s_divCounter\(15) & ((\inst2147483647|s_divCounter[14]~55\) # (GND)))
-- \inst2147483647|s_divCounter[15]~57\ = CARRY((!\inst2147483647|s_divCounter[14]~55\) # (!\inst2147483647|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2147483647|s_divCounter\(15),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[14]~55\,
	combout => \inst2147483647|s_divCounter[15]~56_combout\,
	cout => \inst2147483647|s_divCounter[15]~57\);

-- Location: FF_X74_Y18_N5
\inst2147483647|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[15]~56_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(15));

-- Location: LCCOMB_X75_Y18_N2
\inst2147483647|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|LessThan0~5_combout\ = (((!\inst2147483647|s_divCounter\(12)) # (!\inst2147483647|s_divCounter\(13))) # (!\inst2147483647|s_divCounter\(15))) # (!\inst2147483647|s_divCounter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|s_divCounter\(14),
	datab => \inst2147483647|s_divCounter\(15),
	datac => \inst2147483647|s_divCounter\(13),
	datad => \inst2147483647|s_divCounter\(12),
	combout => \inst2147483647|LessThan0~5_combout\);

-- Location: LCCOMB_X74_Y18_N6
\inst2147483647|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[16]~58_combout\ = (\inst2147483647|s_divCounter\(16) & (\inst2147483647|s_divCounter[15]~57\ $ (GND))) # (!\inst2147483647|s_divCounter\(16) & (!\inst2147483647|s_divCounter[15]~57\ & VCC))
-- \inst2147483647|s_divCounter[16]~59\ = CARRY((\inst2147483647|s_divCounter\(16) & !\inst2147483647|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|s_divCounter\(16),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[15]~57\,
	combout => \inst2147483647|s_divCounter[16]~58_combout\,
	cout => \inst2147483647|s_divCounter[16]~59\);

-- Location: FF_X74_Y18_N7
\inst2147483647|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[16]~58_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(16));

-- Location: LCCOMB_X74_Y18_N8
\inst2147483647|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[17]~60_combout\ = (\inst2147483647|s_divCounter\(17) & (!\inst2147483647|s_divCounter[16]~59\)) # (!\inst2147483647|s_divCounter\(17) & ((\inst2147483647|s_divCounter[16]~59\) # (GND)))
-- \inst2147483647|s_divCounter[17]~61\ = CARRY((!\inst2147483647|s_divCounter[16]~59\) # (!\inst2147483647|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2147483647|s_divCounter\(17),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[16]~59\,
	combout => \inst2147483647|s_divCounter[17]~60_combout\,
	cout => \inst2147483647|s_divCounter[17]~61\);

-- Location: FF_X74_Y18_N9
\inst2147483647|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[17]~60_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(17));

-- Location: LCCOMB_X74_Y18_N10
\inst2147483647|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[18]~62_combout\ = (\inst2147483647|s_divCounter\(18) & (\inst2147483647|s_divCounter[17]~61\ $ (GND))) # (!\inst2147483647|s_divCounter\(18) & (!\inst2147483647|s_divCounter[17]~61\ & VCC))
-- \inst2147483647|s_divCounter[18]~63\ = CARRY((\inst2147483647|s_divCounter\(18) & !\inst2147483647|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|s_divCounter\(18),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[17]~61\,
	combout => \inst2147483647|s_divCounter[18]~62_combout\,
	cout => \inst2147483647|s_divCounter[18]~63\);

-- Location: FF_X74_Y18_N11
\inst2147483647|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[18]~62_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(18));

-- Location: LCCOMB_X74_Y18_N12
\inst2147483647|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[19]~64_combout\ = (\inst2147483647|s_divCounter\(19) & (!\inst2147483647|s_divCounter[18]~63\)) # (!\inst2147483647|s_divCounter\(19) & ((\inst2147483647|s_divCounter[18]~63\) # (GND)))
-- \inst2147483647|s_divCounter[19]~65\ = CARRY((!\inst2147483647|s_divCounter[18]~63\) # (!\inst2147483647|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|s_divCounter\(19),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[18]~63\,
	combout => \inst2147483647|s_divCounter[19]~64_combout\,
	cout => \inst2147483647|s_divCounter[19]~65\);

-- Location: FF_X74_Y18_N13
\inst2147483647|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[19]~64_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(19));

-- Location: LCCOMB_X74_Y18_N14
\inst2147483647|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[20]~66_combout\ = (\inst2147483647|s_divCounter\(20) & (\inst2147483647|s_divCounter[19]~65\ $ (GND))) # (!\inst2147483647|s_divCounter\(20) & (!\inst2147483647|s_divCounter[19]~65\ & VCC))
-- \inst2147483647|s_divCounter[20]~67\ = CARRY((\inst2147483647|s_divCounter\(20) & !\inst2147483647|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2147483647|s_divCounter\(20),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[19]~65\,
	combout => \inst2147483647|s_divCounter[20]~66_combout\,
	cout => \inst2147483647|s_divCounter[20]~67\);

-- Location: FF_X74_Y18_N15
\inst2147483647|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[20]~66_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(20));

-- Location: LCCOMB_X74_Y18_N16
\inst2147483647|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[21]~68_combout\ = (\inst2147483647|s_divCounter\(21) & (!\inst2147483647|s_divCounter[20]~67\)) # (!\inst2147483647|s_divCounter\(21) & ((\inst2147483647|s_divCounter[20]~67\) # (GND)))
-- \inst2147483647|s_divCounter[21]~69\ = CARRY((!\inst2147483647|s_divCounter[20]~67\) # (!\inst2147483647|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2147483647|s_divCounter\(21),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[20]~67\,
	combout => \inst2147483647|s_divCounter[21]~68_combout\,
	cout => \inst2147483647|s_divCounter[21]~69\);

-- Location: FF_X74_Y18_N17
\inst2147483647|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[21]~68_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(21));

-- Location: LCCOMB_X74_Y18_N18
\inst2147483647|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[22]~70_combout\ = (\inst2147483647|s_divCounter\(22) & (\inst2147483647|s_divCounter[21]~69\ $ (GND))) # (!\inst2147483647|s_divCounter\(22) & (!\inst2147483647|s_divCounter[21]~69\ & VCC))
-- \inst2147483647|s_divCounter[22]~71\ = CARRY((\inst2147483647|s_divCounter\(22) & !\inst2147483647|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2147483647|s_divCounter\(22),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[21]~69\,
	combout => \inst2147483647|s_divCounter[22]~70_combout\,
	cout => \inst2147483647|s_divCounter[22]~71\);

-- Location: FF_X74_Y18_N19
\inst2147483647|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[22]~70_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(22));

-- Location: LCCOMB_X74_Y18_N20
\inst2147483647|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[23]~72_combout\ = (\inst2147483647|s_divCounter\(23) & (!\inst2147483647|s_divCounter[22]~71\)) # (!\inst2147483647|s_divCounter\(23) & ((\inst2147483647|s_divCounter[22]~71\) # (GND)))
-- \inst2147483647|s_divCounter[23]~73\ = CARRY((!\inst2147483647|s_divCounter[22]~71\) # (!\inst2147483647|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2147483647|s_divCounter\(23),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[22]~71\,
	combout => \inst2147483647|s_divCounter[23]~72_combout\,
	cout => \inst2147483647|s_divCounter[23]~73\);

-- Location: FF_X74_Y18_N21
\inst2147483647|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[23]~72_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(23));

-- Location: LCCOMB_X74_Y18_N22
\inst2147483647|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[24]~74_combout\ = (\inst2147483647|s_divCounter\(24) & (\inst2147483647|s_divCounter[23]~73\ $ (GND))) # (!\inst2147483647|s_divCounter\(24) & (!\inst2147483647|s_divCounter[23]~73\ & VCC))
-- \inst2147483647|s_divCounter[24]~75\ = CARRY((\inst2147483647|s_divCounter\(24) & !\inst2147483647|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|s_divCounter\(24),
	datad => VCC,
	cin => \inst2147483647|s_divCounter[23]~73\,
	combout => \inst2147483647|s_divCounter[24]~74_combout\,
	cout => \inst2147483647|s_divCounter[24]~75\);

-- Location: FF_X74_Y18_N23
\inst2147483647|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[24]~74_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(24));

-- Location: LCCOMB_X75_Y18_N24
\inst2147483647|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|LessThan0~4_combout\ = (!\inst2147483647|s_divCounter\(18) & (!\inst2147483647|s_divCounter\(16) & !\inst2147483647|s_divCounter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|s_divCounter\(18),
	datac => \inst2147483647|s_divCounter\(16),
	datad => \inst2147483647|s_divCounter\(24),
	combout => \inst2147483647|LessThan0~4_combout\);

-- Location: LCCOMB_X75_Y18_N6
\inst2147483647|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|LessThan0~2_combout\ = ((!\inst2147483647|s_divCounter\(17) & !\inst2147483647|s_divCounter\(18))) # (!\inst2147483647|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|s_divCounter\(17),
	datab => \inst2147483647|s_divCounter\(23),
	datad => \inst2147483647|s_divCounter\(18),
	combout => \inst2147483647|LessThan0~2_combout\);

-- Location: LCCOMB_X75_Y18_N26
\inst2147483647|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|clkOut~3_combout\ = (\inst2147483647|s_divCounter\(20) & (\inst2147483647|s_divCounter\(22) & (\inst2147483647|s_divCounter\(21) & \inst2147483647|s_divCounter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|s_divCounter\(20),
	datab => \inst2147483647|s_divCounter\(22),
	datac => \inst2147483647|s_divCounter\(21),
	datad => \inst2147483647|s_divCounter\(19),
	combout => \inst2147483647|clkOut~3_combout\);

-- Location: LCCOMB_X74_Y18_N24
\inst2147483647|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|s_divCounter[25]~76_combout\ = \inst2147483647|s_divCounter[24]~75\ $ (\inst2147483647|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2147483647|s_divCounter\(25),
	cin => \inst2147483647|s_divCounter[24]~75\,
	combout => \inst2147483647|s_divCounter[25]~76_combout\);

-- Location: FF_X74_Y18_N25
\inst2147483647|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2147483647|s_divCounter[25]~76_combout\,
	sclr => \inst2147483647|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|s_divCounter\(25));

-- Location: LCCOMB_X75_Y18_N12
\inst2147483647|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|LessThan0~3_combout\ = ((!\inst2147483647|s_divCounter\(24) & ((\inst2147483647|LessThan0~2_combout\) # (!\inst2147483647|clkOut~3_combout\)))) # (!\inst2147483647|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|LessThan0~2_combout\,
	datab => \inst2147483647|s_divCounter\(24),
	datac => \inst2147483647|clkOut~3_combout\,
	datad => \inst2147483647|s_divCounter\(25),
	combout => \inst2147483647|LessThan0~3_combout\);

-- Location: LCCOMB_X74_Y18_N30
\inst2147483647|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|LessThan0~0_combout\ = (!\inst2147483647|s_divCounter\(24) & (!\inst2147483647|s_divCounter\(18) & (!\inst2147483647|s_divCounter\(11) & !\inst2147483647|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|s_divCounter\(24),
	datab => \inst2147483647|s_divCounter\(18),
	datac => \inst2147483647|s_divCounter\(11),
	datad => \inst2147483647|s_divCounter\(16),
	combout => \inst2147483647|LessThan0~0_combout\);

-- Location: LCCOMB_X74_Y19_N4
\inst2147483647|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|clkOut~0_combout\ = (!\inst2147483647|s_divCounter\(8) & (!\inst2147483647|s_divCounter\(7) & (!\inst2147483647|s_divCounter\(10) & !\inst2147483647|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|s_divCounter\(8),
	datab => \inst2147483647|s_divCounter\(7),
	datac => \inst2147483647|s_divCounter\(10),
	datad => \inst2147483647|s_divCounter\(9),
	combout => \inst2147483647|clkOut~0_combout\);

-- Location: LCCOMB_X74_Y19_N2
\inst2147483647|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|clkOut~1_combout\ = (\inst2147483647|s_divCounter\(3) & (\inst2147483647|s_divCounter\(1) & (\inst2147483647|s_divCounter\(0) & \inst2147483647|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|s_divCounter\(3),
	datab => \inst2147483647|s_divCounter\(1),
	datac => \inst2147483647|s_divCounter\(0),
	datad => \inst2147483647|s_divCounter\(2),
	combout => \inst2147483647|clkOut~1_combout\);

-- Location: LCCOMB_X74_Y19_N0
\inst2147483647|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|clkOut~2_combout\ = (\inst2147483647|s_divCounter\(5) & (\inst2147483647|s_divCounter\(4) & \inst2147483647|clkOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2147483647|s_divCounter\(5),
	datac => \inst2147483647|s_divCounter\(4),
	datad => \inst2147483647|clkOut~1_combout\,
	combout => \inst2147483647|clkOut~2_combout\);

-- Location: LCCOMB_X74_Y18_N28
\inst2147483647|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|LessThan0~1_combout\ = (\inst2147483647|LessThan0~0_combout\ & (\inst2147483647|clkOut~0_combout\ & ((!\inst2147483647|clkOut~2_combout\) # (!\inst2147483647|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|LessThan0~0_combout\,
	datab => \inst2147483647|s_divCounter\(6),
	datac => \inst2147483647|clkOut~0_combout\,
	datad => \inst2147483647|clkOut~2_combout\,
	combout => \inst2147483647|LessThan0~1_combout\);

-- Location: LCCOMB_X74_Y18_N26
\inst2147483647|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|LessThan0~6_combout\ = (!\inst2147483647|LessThan0~3_combout\ & (!\inst2147483647|LessThan0~1_combout\ & ((!\inst2147483647|LessThan0~4_combout\) # (!\inst2147483647|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|LessThan0~5_combout\,
	datab => \inst2147483647|LessThan0~4_combout\,
	datac => \inst2147483647|LessThan0~3_combout\,
	datad => \inst2147483647|LessThan0~1_combout\,
	combout => \inst2147483647|LessThan0~6_combout\);

-- Location: LCCOMB_X75_Y18_N10
\inst2147483647|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|clkOut~5_combout\ = (\inst2147483647|s_divCounter\(11) & (!\inst2147483647|s_divCounter\(15) & (\inst2147483647|s_divCounter\(16) & !\inst2147483647|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|s_divCounter\(11),
	datab => \inst2147483647|s_divCounter\(15),
	datac => \inst2147483647|s_divCounter\(16),
	datad => \inst2147483647|s_divCounter\(17),
	combout => \inst2147483647|clkOut~5_combout\);

-- Location: LCCOMB_X75_Y18_N14
\inst2147483647|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|clkOut~6_combout\ = (\inst2147483647|s_divCounter\(18) & (!\inst2147483647|s_divCounter\(25) & (!\inst2147483647|s_divCounter\(23) & \inst2147483647|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|s_divCounter\(18),
	datab => \inst2147483647|s_divCounter\(25),
	datac => \inst2147483647|s_divCounter\(23),
	datad => \inst2147483647|s_divCounter\(24),
	combout => \inst2147483647|clkOut~6_combout\);

-- Location: LCCOMB_X75_Y18_N18
\inst2147483647|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|clkOut~4_combout\ = (\inst2147483647|s_divCounter\(13) & (\inst2147483647|s_divCounter\(12) & (!\inst2147483647|s_divCounter\(6) & \inst2147483647|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|s_divCounter\(13),
	datab => \inst2147483647|s_divCounter\(12),
	datac => \inst2147483647|s_divCounter\(6),
	datad => \inst2147483647|s_divCounter\(14),
	combout => \inst2147483647|clkOut~4_combout\);

-- Location: LCCOMB_X75_Y18_N8
\inst2147483647|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|clkOut~7_combout\ = (\inst2147483647|clkOut~5_combout\ & (\inst2147483647|clkOut~6_combout\ & \inst2147483647|clkOut~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|clkOut~5_combout\,
	datac => \inst2147483647|clkOut~6_combout\,
	datad => \inst2147483647|clkOut~4_combout\,
	combout => \inst2147483647|clkOut~7_combout\);

-- Location: LCCOMB_X75_Y18_N16
\inst2147483647|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|clkOut~8_combout\ = (\inst2147483647|clkOut~3_combout\ & (\inst2147483647|clkOut~7_combout\ & (\inst2147483647|clkOut~2_combout\ & \inst2147483647|clkOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|clkOut~3_combout\,
	datab => \inst2147483647|clkOut~7_combout\,
	datac => \inst2147483647|clkOut~2_combout\,
	datad => \inst2147483647|clkOut~0_combout\,
	combout => \inst2147483647|clkOut~8_combout\);

-- Location: LCCOMB_X75_Y18_N22
\inst2147483647|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2147483647|clkOut~9_combout\ = (!\inst2147483647|LessThan0~6_combout\ & ((\inst2147483647|clkOut~q\) # (\inst2147483647|clkOut~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2147483647|LessThan0~6_combout\,
	datac => \inst2147483647|clkOut~q\,
	datad => \inst2147483647|clkOut~8_combout\,
	combout => \inst2147483647|clkOut~9_combout\);

-- Location: FF_X75_Y18_N23
\inst2147483647|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst2147483647|clkOut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2147483647|clkOut~q\);

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

-- Location: LCCOMB_X75_Y18_N28
\inst|output\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|output~combout\ = LCELL((\SW[1]~input_o\ & (\inst3242342342|clkOut~q\)) # (!\SW[1]~input_o\ & ((\inst2147483647|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3242342342|clkOut~q\,
	datac => \inst2147483647|clkOut~q\,
	datad => \SW[1]~input_o\,
	combout => \inst|output~combout\);

-- Location: CLKCTRL_G19
\inst|output~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|output~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|output~clkctrl_outclk\);

-- Location: LCCOMB_X114_Y69_N2
\inst345345|s_count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst345345|s_count[0]~2_combout\ = !\inst345345|s_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst345345|s_count\(0),
	combout => \inst345345|s_count[0]~2_combout\);

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

-- Location: FF_X114_Y69_N3
\inst345345|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|output~clkctrl_outclk\,
	d => \inst345345|s_count[0]~2_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst345345|s_count\(0));

-- Location: LCCOMB_X114_Y69_N12
\inst345345|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst345345|Add0~0_combout\ = \inst345345|s_count\(1) $ (\inst345345|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst345345|s_count\(1),
	datad => \inst345345|s_count\(0),
	combout => \inst345345|Add0~0_combout\);

-- Location: FF_X114_Y69_N13
\inst345345|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|output~clkctrl_outclk\,
	d => \inst345345|Add0~0_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst345345|s_count\(1));

-- Location: LCCOMB_X114_Y69_N16
\inst345345|s_count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst345345|s_count[2]~0_combout\ = \inst345345|s_count\(2) $ (((\inst345345|s_count\(1) & \inst345345|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst345345|s_count\(1),
	datac => \inst345345|s_count\(2),
	datad => \inst345345|s_count\(0),
	combout => \inst345345|s_count[2]~0_combout\);

-- Location: FF_X114_Y69_N17
\inst345345|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|output~clkctrl_outclk\,
	d => \inst345345|s_count[2]~0_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst345345|s_count\(2));

-- Location: LCCOMB_X114_Y69_N14
\inst345345|s_count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst345345|s_count[3]~1_combout\ = \inst345345|s_count\(3) $ (((\inst345345|s_count\(1) & (\inst345345|s_count\(0) & \inst345345|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst345345|s_count\(1),
	datab => \inst345345|s_count\(0),
	datac => \inst345345|s_count\(3),
	datad => \inst345345|s_count\(2),
	combout => \inst345345|s_count[3]~1_combout\);

-- Location: FF_X114_Y69_N15
\inst345345|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|output~clkctrl_outclk\,
	d => \inst345345|s_count[3]~1_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst345345|s_count\(3));

-- Location: LCCOMB_X114_Y69_N20
\inst1t3534|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1t3534|decOut_n[6]~0_combout\ = (\inst345345|s_count\(0) & (!\inst345345|s_count\(3) & (\inst345345|s_count\(1) $ (!\inst345345|s_count\(2))))) # (!\inst345345|s_count\(0) & (!\inst345345|s_count\(1) & (\inst345345|s_count\(2) $ 
-- (!\inst345345|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst345345|s_count\(1),
	datab => \inst345345|s_count\(2),
	datac => \inst345345|s_count\(3),
	datad => \inst345345|s_count\(0),
	combout => \inst1t3534|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X114_Y69_N18
\inst1t3534|decOut_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1t3534|decOut_n[5]~1_combout\ = (\inst345345|s_count\(1) & (!\inst345345|s_count\(3) & ((\inst345345|s_count\(0)) # (!\inst345345|s_count\(2))))) # (!\inst345345|s_count\(1) & (\inst345345|s_count\(0) & (\inst345345|s_count\(2) $ 
-- (!\inst345345|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst345345|s_count\(1),
	datab => \inst345345|s_count\(2),
	datac => \inst345345|s_count\(3),
	datad => \inst345345|s_count\(0),
	combout => \inst1t3534|decOut_n[5]~1_combout\);

-- Location: LCCOMB_X114_Y69_N8
\inst1t3534|decOut_n[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1t3534|decOut_n[4]~2_combout\ = (\inst345345|s_count\(1) & (((!\inst345345|s_count\(3) & \inst345345|s_count\(0))))) # (!\inst345345|s_count\(1) & ((\inst345345|s_count\(2) & (!\inst345345|s_count\(3))) # (!\inst345345|s_count\(2) & 
-- ((\inst345345|s_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst345345|s_count\(1),
	datab => \inst345345|s_count\(2),
	datac => \inst345345|s_count\(3),
	datad => \inst345345|s_count\(0),
	combout => \inst1t3534|decOut_n[4]~2_combout\);

-- Location: LCCOMB_X114_Y69_N6
\inst1t3534|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1t3534|decOut_n[3]~3_combout\ = (\inst345345|s_count\(1) & ((\inst345345|s_count\(2) & ((\inst345345|s_count\(0)))) # (!\inst345345|s_count\(2) & (\inst345345|s_count\(3) & !\inst345345|s_count\(0))))) # (!\inst345345|s_count\(1) & 
-- (!\inst345345|s_count\(3) & (\inst345345|s_count\(2) $ (\inst345345|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst345345|s_count\(1),
	datab => \inst345345|s_count\(2),
	datac => \inst345345|s_count\(3),
	datad => \inst345345|s_count\(0),
	combout => \inst1t3534|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X114_Y69_N24
\inst1t3534|decOut_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1t3534|decOut_n[2]~4_combout\ = (\inst345345|s_count\(2) & (\inst345345|s_count\(3) & ((\inst345345|s_count\(1)) # (!\inst345345|s_count\(0))))) # (!\inst345345|s_count\(2) & (\inst345345|s_count\(1) & (!\inst345345|s_count\(3) & 
-- !\inst345345|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst345345|s_count\(1),
	datab => \inst345345|s_count\(2),
	datac => \inst345345|s_count\(3),
	datad => \inst345345|s_count\(0),
	combout => \inst1t3534|decOut_n[2]~4_combout\);

-- Location: LCCOMB_X114_Y69_N10
\inst1t3534|decOut_n[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1t3534|decOut_n[1]~5_combout\ = (\inst345345|s_count\(1) & ((\inst345345|s_count\(0) & ((\inst345345|s_count\(3)))) # (!\inst345345|s_count\(0) & (\inst345345|s_count\(2))))) # (!\inst345345|s_count\(1) & (\inst345345|s_count\(2) & 
-- (\inst345345|s_count\(3) $ (\inst345345|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst345345|s_count\(1),
	datab => \inst345345|s_count\(2),
	datac => \inst345345|s_count\(3),
	datad => \inst345345|s_count\(0),
	combout => \inst1t3534|decOut_n[1]~5_combout\);

-- Location: LCCOMB_X114_Y69_N28
\inst1t3534|decOut_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1t3534|decOut_n[0]~6_combout\ = (\inst345345|s_count\(2) & (!\inst345345|s_count\(1) & (\inst345345|s_count\(3) $ (!\inst345345|s_count\(0))))) # (!\inst345345|s_count\(2) & (\inst345345|s_count\(0) & (\inst345345|s_count\(1) $ 
-- (!\inst345345|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst345345|s_count\(1),
	datab => \inst345345|s_count\(2),
	datac => \inst345345|s_count\(3),
	datad => \inst345345|s_count\(0),
	combout => \inst1t3534|decOut_n[0]~6_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;
END structure;


