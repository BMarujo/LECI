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

-- DATE "04/01/2022 10:29:01"

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
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_INT	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SD_WP_N	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SMA_CLKIN	=>  Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL \CLOCK_50~padout\ : std_logic;
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
SIGNAL \KEY[0]~padout\ : std_logic;
SIGNAL \KEY[1]~padout\ : std_logic;
SIGNAL \KEY[2]~padout\ : std_logic;
SIGNAL \KEY[3]~padout\ : std_logic;
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
SIGNAL \CLOCK_50~ibuf_o\ : std_logic;
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
SIGNAL \KEY[0]~ibuf_o\ : std_logic;
SIGNAL \KEY[1]~ibuf_o\ : std_logic;
SIGNAL \KEY[2]~ibuf_o\ : std_logic;
SIGNAL \KEY[3]~ibuf_o\ : std_logic;
SIGNAL \OTG_INT~ibuf_o\ : std_logic;
SIGNAL \SD_WP_N~ibuf_o\ : std_logic;
SIGNAL \SMA_CLKIN~ibuf_o\ : std_logic;
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
SIGNAL SW : std_logic_vector(10 DOWNTO 0);

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PainDemo IS
    PORT (
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	SW : IN std_logic_vector(10 DOWNTO 0)
	);
END PainDemo;

-- Design Ports Information
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PainDemo IS
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
SIGNAL ww_SW : std_logic_vector(10 DOWNTO 0);
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add10_result[0]~1\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add10_result[1]~3\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add10_result[2]~5\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add10_result[3]~7\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add10_result[4]~8_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|cs3a[1]~0_combout\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add10_result[3]~6_combout\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add10_result[2]~4_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add10_result[1]~2_combout\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add10_result[0]~0_combout\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add6_result[0]~1\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add6_result[1]~3\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add6_result[2]~5\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add6_result[3]~7\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add6_result[4]~9\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add6_result[5]~11\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add6_result[6]~13\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add6_result[7]~14_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \UWU|m[3]~0_combout\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add6_result[6]~12_combout\ : std_logic;
SIGNAL \UWU|m[2]~1_combout\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add6_result[5]~10_combout\ : std_logic;
SIGNAL \UWU|m[1]~2_combout\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add6_result[4]~8_combout\ : std_logic;
SIGNAL \UWU|m[0]~3_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ : std_logic;
SIGNAL \UWU|Add2~0_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \UWU|Add3~0_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \UWU|Add0~5_combout\ : std_logic;
SIGNAL \UWU|Add0~6_combout\ : std_logic;
SIGNAL \UWU|Add0~4_combout\ : std_logic;
SIGNAL \UWU|Add0~7_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \UWU|Add0~8_combout\ : std_logic;
SIGNAL \UWU|Add0~9_combout\ : std_logic;
SIGNAL \UWU|Add0~10_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \UWU|s_r~0_combout\ : std_logic;
SIGNAL \UWU|Add0~11_combout\ : std_logic;
SIGNAL \UWU|Add0~12_combout\ : std_logic;
SIGNAL \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \UWU|s_r~1_combout\ : std_logic;
SIGNAL \UWU|Add0~13_combout\ : std_logic;
SIGNAL \UWU|Add0~15_cout\ : std_logic;
SIGNAL \UWU|Add0~17\ : std_logic;
SIGNAL \UWU|Add0~19\ : std_logic;
SIGNAL \UWU|Add0~21\ : std_logic;
SIGNAL \UWU|Add0~22_combout\ : std_logic;
SIGNAL \UWU|Mux0~2_combout\ : std_logic;
SIGNAL \UWU|Add0~24_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|diff_signs~combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|quotient[3]~0_combout\ : std_logic;
SIGNAL \UWU|RESULT~0_combout\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add6_result[3]~6_combout\ : std_logic;
SIGNAL \UWU|Mux0~0_combout\ : std_logic;
SIGNAL \UWU|Mux0~1_combout\ : std_logic;
SIGNAL \UWU|Add0~25_combout\ : std_logic;
SIGNAL \UWU|Add0~36_combout\ : std_logic;
SIGNAL \UWU|Add0~26_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|quotient[2]~1_combout\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add6_result[2]~4_combout\ : std_logic;
SIGNAL \UWU|Add0~27_combout\ : std_logic;
SIGNAL \UWU|Add0~20_combout\ : std_logic;
SIGNAL \UWU|Add0~28_combout\ : std_logic;
SIGNAL \UWU|Add0~29_combout\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add6_result[1]~2_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|quotient[1]~2_combout\ : std_logic;
SIGNAL \UWU|Add0~31_combout\ : std_logic;
SIGNAL \UWU|Add0~18_combout\ : std_logic;
SIGNAL \UWU|Add0~32_combout\ : std_logic;
SIGNAL \UWU|Add0~30_combout\ : std_logic;
SIGNAL \UWU|Add0~33_combout\ : std_logic;
SIGNAL \UWU|Add0~16_combout\ : std_logic;
SIGNAL \UWU|Add0~34_combout\ : std_logic;
SIGNAL \UWU|Mult0|auto_generated|add6_result[0]~0_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|quotient[0]~3_combout\ : std_logic;
SIGNAL \UWU|Mux3~0_combout\ : std_logic;
SIGNAL \UWU|Mux3~1_combout\ : std_logic;
SIGNAL \UWU|Add0~35_combout\ : std_logic;
SIGNAL \UWU|Div0|auto_generated|divider|divider|sel\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \UWU|Mult0|auto_generated|le4a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UWU|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \UWU|Mult0|auto_generated|le2a\ : std_logic_vector(4 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
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
	i => \UWU|m[3]~0_combout\,
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
	i => \UWU|m[2]~1_combout\,
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
	i => \UWU|m[1]~2_combout\,
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
	i => \UWU|m[0]~3_combout\,
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
	i => \UWU|Add0~25_combout\,
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
	i => \UWU|Add0~29_combout\,
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
	i => \UWU|Add0~33_combout\,
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
	i => \UWU|Add0~35_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

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

-- Location: LCCOMB_X111_Y15_N2
\UWU|Mult0|auto_generated|le5a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|le5a\(4) = (\SW[7]~input_o\ & (!\SW[1]~input_o\ & \SW[0]~input_o\)) # (!\SW[7]~input_o\ & (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \UWU|Mult0|auto_generated|le5a\(4));

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

-- Location: LCCOMB_X111_Y15_N12
\UWU|Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|le5a\(3) = (\SW[0]~input_o\ & (\SW[7]~input_o\ $ (((\SW[1]~input_o\))))) # (!\SW[0]~input_o\ & (((!\SW[6]~input_o\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \UWU|Mult0|auto_generated|le5a\(3));

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

-- Location: LCCOMB_X111_Y15_N14
\UWU|Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|le5a\(2) = (\SW[0]~input_o\ & ((\SW[1]~input_o\ $ (\SW[6]~input_o\)))) # (!\SW[0]~input_o\ & (!\SW[5]~input_o\ & (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \UWU|Mult0|auto_generated|le5a\(2));

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

-- Location: LCCOMB_X112_Y15_N22
\UWU|Mult0|auto_generated|add10_result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|add10_result[0]~0_combout\ = (\UWU|Mult0|auto_generated|le5a\(2) & (\SW[3]~input_o\ $ (VCC))) # (!\UWU|Mult0|auto_generated|le5a\(2) & (\SW[3]~input_o\ & VCC))
-- \UWU|Mult0|auto_generated|add10_result[0]~1\ = CARRY((\UWU|Mult0|auto_generated|le5a\(2) & \SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mult0|auto_generated|le5a\(2),
	datab => \SW[3]~input_o\,
	datad => VCC,
	combout => \UWU|Mult0|auto_generated|add10_result[0]~0_combout\,
	cout => \UWU|Mult0|auto_generated|add10_result[0]~1\);

-- Location: LCCOMB_X112_Y15_N24
\UWU|Mult0|auto_generated|add10_result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|add10_result[1]~2_combout\ = (\UWU|Mult0|auto_generated|le5a\(3) & (!\UWU|Mult0|auto_generated|add10_result[0]~1\)) # (!\UWU|Mult0|auto_generated|le5a\(3) & ((\UWU|Mult0|auto_generated|add10_result[0]~1\) # (GND)))
-- \UWU|Mult0|auto_generated|add10_result[1]~3\ = CARRY((!\UWU|Mult0|auto_generated|add10_result[0]~1\) # (!\UWU|Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mult0|auto_generated|le5a\(3),
	datad => VCC,
	cin => \UWU|Mult0|auto_generated|add10_result[0]~1\,
	combout => \UWU|Mult0|auto_generated|add10_result[1]~2_combout\,
	cout => \UWU|Mult0|auto_generated|add10_result[1]~3\);

-- Location: LCCOMB_X112_Y15_N26
\UWU|Mult0|auto_generated|add10_result[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|add10_result[2]~4_combout\ = (\UWU|Mult0|auto_generated|le5a\(4) & (\UWU|Mult0|auto_generated|add10_result[1]~3\ $ (GND))) # (!\UWU|Mult0|auto_generated|le5a\(4) & ((GND) # (!\UWU|Mult0|auto_generated|add10_result[1]~3\)))
-- \UWU|Mult0|auto_generated|add10_result[2]~5\ = CARRY((!\UWU|Mult0|auto_generated|add10_result[1]~3\) # (!\UWU|Mult0|auto_generated|le5a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mult0|auto_generated|le5a\(4),
	datad => VCC,
	cin => \UWU|Mult0|auto_generated|add10_result[1]~3\,
	combout => \UWU|Mult0|auto_generated|add10_result[2]~4_combout\,
	cout => \UWU|Mult0|auto_generated|add10_result[2]~5\);

-- Location: LCCOMB_X112_Y15_N28
\UWU|Mult0|auto_generated|add10_result[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|add10_result[3]~6_combout\ = !\UWU|Mult0|auto_generated|add10_result[2]~5\
-- \UWU|Mult0|auto_generated|add10_result[3]~7\ = CARRY(!\UWU|Mult0|auto_generated|add10_result[2]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \UWU|Mult0|auto_generated|add10_result[2]~5\,
	combout => \UWU|Mult0|auto_generated|add10_result[3]~6_combout\,
	cout => \UWU|Mult0|auto_generated|add10_result[3]~7\);

-- Location: LCCOMB_X112_Y15_N30
\UWU|Mult0|auto_generated|add10_result[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|add10_result[4]~8_combout\ = !\UWU|Mult0|auto_generated|add10_result[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \UWU|Mult0|auto_generated|add10_result[3]~7\,
	combout => \UWU|Mult0|auto_generated|add10_result[4]~8_combout\);

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

-- Location: LCCOMB_X114_Y15_N10
\UWU|Mult0|auto_generated|le2a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|le2a\(4) = (\SW[7]~input_o\ & (((\SW[2]~input_o\ & \SW[1]~input_o\)))) # (!\SW[7]~input_o\ & (\SW[3]~input_o\ & (\SW[2]~input_o\ $ (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \UWU|Mult0|auto_generated|le2a\(4));

-- Location: LCCOMB_X109_Y19_N0
\UWU|Mult0|auto_generated|cs3a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|cs3a[1]~0_combout\ = \SW[1]~input_o\ $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \UWU|Mult0|auto_generated|cs3a[1]~0_combout\);

-- Location: LCCOMB_X114_Y15_N26
\UWU|Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|le4a\(4) = (\UWU|Mult0|auto_generated|le2a\(4)) # ((\UWU|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[3]~input_o\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mult0|auto_generated|le2a\(4),
	datab => \UWU|Mult0|auto_generated|cs3a[1]~0_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \UWU|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X114_Y15_N12
\UWU|Mult0|auto_generated|le2a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|le2a\(3) = (\SW[6]~input_o\ & (\SW[2]~input_o\ & ((\SW[1]~input_o\)))) # (!\SW[6]~input_o\ & (\SW[3]~input_o\ & (\SW[2]~input_o\ $ (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \UWU|Mult0|auto_generated|le2a\(3));

-- Location: LCCOMB_X114_Y15_N28
\UWU|Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|le4a\(3) = (\UWU|Mult0|auto_generated|le2a\(3)) # ((\UWU|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[3]~input_o\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mult0|auto_generated|le2a\(3),
	datab => \UWU|Mult0|auto_generated|cs3a[1]~0_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \UWU|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X109_Y19_N20
\UWU|Mult0|auto_generated|le2a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|le2a\(2) = (\SW[5]~input_o\ & (\SW[1]~input_o\ & ((\SW[2]~input_o\)))) # (!\SW[5]~input_o\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \UWU|Mult0|auto_generated|le2a\(2));

-- Location: LCCOMB_X109_Y19_N26
\UWU|Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|le4a\(2) = (\UWU|Mult0|auto_generated|le2a\(2)) # ((\UWU|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[6]~input_o\ $ (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \UWU|Mult0|auto_generated|cs3a[1]~0_combout\,
	datac => \UWU|Mult0|auto_generated|le2a\(2),
	datad => \SW[3]~input_o\,
	combout => \UWU|Mult0|auto_generated|le4a\(2));

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

-- Location: LCCOMB_X114_Y15_N6
\UWU|Mult0|auto_generated|le2a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|le2a\(1) = (\SW[4]~input_o\ & (((\SW[2]~input_o\ & \SW[1]~input_o\)))) # (!\SW[4]~input_o\ & (\SW[3]~input_o\ & (\SW[2]~input_o\ $ (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \UWU|Mult0|auto_generated|le2a\(1));

-- Location: LCCOMB_X114_Y15_N22
\UWU|Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|le4a\(1) = (\UWU|Mult0|auto_generated|le2a\(1)) # ((\UWU|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[5]~input_o\ $ (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mult0|auto_generated|cs3a[1]~0_combout\,
	datab => \SW[5]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \UWU|Mult0|auto_generated|le2a\(1),
	combout => \UWU|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X114_Y15_N24
\UWU|Mult0|auto_generated|le2a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|le2a\(0) = (\SW[3]~input_o\ & (\SW[2]~input_o\ $ (!\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \UWU|Mult0|auto_generated|le2a\(0));

-- Location: LCCOMB_X114_Y15_N8
\UWU|Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|le4a\(0) = (\UWU|Mult0|auto_generated|le2a\(0)) # ((\UWU|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[3]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mult0|auto_generated|cs3a[1]~0_combout\,
	datab => \UWU|Mult0|auto_generated|le2a\(0),
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \UWU|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X111_Y15_N16
\UWU|Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|le5a\(1) = (\SW[0]~input_o\ & (\SW[5]~input_o\ $ ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\SW[1]~input_o\ & !\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \UWU|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X112_Y15_N18
\UWU|Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|le5a\(0) = \SW[1]~input_o\ $ (((\SW[0]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \UWU|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X112_Y15_N2
\UWU|Mult0|auto_generated|add6_result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|add6_result[0]~0_combout\ = (\SW[1]~input_o\ & (\UWU|Mult0|auto_generated|le5a\(0) $ (VCC))) # (!\SW[1]~input_o\ & (\UWU|Mult0|auto_generated|le5a\(0) & VCC))
-- \UWU|Mult0|auto_generated|add6_result[0]~1\ = CARRY((\SW[1]~input_o\ & \UWU|Mult0|auto_generated|le5a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \UWU|Mult0|auto_generated|le5a\(0),
	datad => VCC,
	combout => \UWU|Mult0|auto_generated|add6_result[0]~0_combout\,
	cout => \UWU|Mult0|auto_generated|add6_result[0]~1\);

-- Location: LCCOMB_X112_Y15_N4
\UWU|Mult0|auto_generated|add6_result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|add6_result[1]~2_combout\ = (\UWU|Mult0|auto_generated|le5a\(1) & (!\UWU|Mult0|auto_generated|add6_result[0]~1\)) # (!\UWU|Mult0|auto_generated|le5a\(1) & ((\UWU|Mult0|auto_generated|add6_result[0]~1\) # (GND)))
-- \UWU|Mult0|auto_generated|add6_result[1]~3\ = CARRY((!\UWU|Mult0|auto_generated|add6_result[0]~1\) # (!\UWU|Mult0|auto_generated|le5a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \UWU|Mult0|auto_generated|add6_result[0]~1\,
	combout => \UWU|Mult0|auto_generated|add6_result[1]~2_combout\,
	cout => \UWU|Mult0|auto_generated|add6_result[1]~3\);

-- Location: LCCOMB_X112_Y15_N6
\UWU|Mult0|auto_generated|add6_result[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|add6_result[2]~4_combout\ = ((\UWU|Mult0|auto_generated|add10_result[0]~0_combout\ $ (\UWU|Mult0|auto_generated|le4a\(0) $ (!\UWU|Mult0|auto_generated|add6_result[1]~3\)))) # (GND)
-- \UWU|Mult0|auto_generated|add6_result[2]~5\ = CARRY((\UWU|Mult0|auto_generated|add10_result[0]~0_combout\ & ((\UWU|Mult0|auto_generated|le4a\(0)) # (!\UWU|Mult0|auto_generated|add6_result[1]~3\))) # (!\UWU|Mult0|auto_generated|add10_result[0]~0_combout\ & 
-- (\UWU|Mult0|auto_generated|le4a\(0) & !\UWU|Mult0|auto_generated|add6_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mult0|auto_generated|add10_result[0]~0_combout\,
	datab => \UWU|Mult0|auto_generated|le4a\(0),
	datad => VCC,
	cin => \UWU|Mult0|auto_generated|add6_result[1]~3\,
	combout => \UWU|Mult0|auto_generated|add6_result[2]~4_combout\,
	cout => \UWU|Mult0|auto_generated|add6_result[2]~5\);

-- Location: LCCOMB_X112_Y15_N8
\UWU|Mult0|auto_generated|add6_result[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|add6_result[3]~6_combout\ = (\UWU|Mult0|auto_generated|le4a\(1) & ((\UWU|Mult0|auto_generated|add10_result[1]~2_combout\ & (\UWU|Mult0|auto_generated|add6_result[2]~5\ & VCC)) # 
-- (!\UWU|Mult0|auto_generated|add10_result[1]~2_combout\ & (!\UWU|Mult0|auto_generated|add6_result[2]~5\)))) # (!\UWU|Mult0|auto_generated|le4a\(1) & ((\UWU|Mult0|auto_generated|add10_result[1]~2_combout\ & (!\UWU|Mult0|auto_generated|add6_result[2]~5\)) # 
-- (!\UWU|Mult0|auto_generated|add10_result[1]~2_combout\ & ((\UWU|Mult0|auto_generated|add6_result[2]~5\) # (GND)))))
-- \UWU|Mult0|auto_generated|add6_result[3]~7\ = CARRY((\UWU|Mult0|auto_generated|le4a\(1) & (!\UWU|Mult0|auto_generated|add10_result[1]~2_combout\ & !\UWU|Mult0|auto_generated|add6_result[2]~5\)) # (!\UWU|Mult0|auto_generated|le4a\(1) & 
-- ((!\UWU|Mult0|auto_generated|add6_result[2]~5\) # (!\UWU|Mult0|auto_generated|add10_result[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mult0|auto_generated|le4a\(1),
	datab => \UWU|Mult0|auto_generated|add10_result[1]~2_combout\,
	datad => VCC,
	cin => \UWU|Mult0|auto_generated|add6_result[2]~5\,
	combout => \UWU|Mult0|auto_generated|add6_result[3]~6_combout\,
	cout => \UWU|Mult0|auto_generated|add6_result[3]~7\);

-- Location: LCCOMB_X112_Y15_N10
\UWU|Mult0|auto_generated|add6_result[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|add6_result[4]~8_combout\ = ((\UWU|Mult0|auto_generated|add10_result[2]~4_combout\ $ (\UWU|Mult0|auto_generated|le4a\(2) $ (!\UWU|Mult0|auto_generated|add6_result[3]~7\)))) # (GND)
-- \UWU|Mult0|auto_generated|add6_result[4]~9\ = CARRY((\UWU|Mult0|auto_generated|add10_result[2]~4_combout\ & ((\UWU|Mult0|auto_generated|le4a\(2)) # (!\UWU|Mult0|auto_generated|add6_result[3]~7\))) # (!\UWU|Mult0|auto_generated|add10_result[2]~4_combout\ & 
-- (\UWU|Mult0|auto_generated|le4a\(2) & !\UWU|Mult0|auto_generated|add6_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mult0|auto_generated|add10_result[2]~4_combout\,
	datab => \UWU|Mult0|auto_generated|le4a\(2),
	datad => VCC,
	cin => \UWU|Mult0|auto_generated|add6_result[3]~7\,
	combout => \UWU|Mult0|auto_generated|add6_result[4]~8_combout\,
	cout => \UWU|Mult0|auto_generated|add6_result[4]~9\);

-- Location: LCCOMB_X112_Y15_N12
\UWU|Mult0|auto_generated|add6_result[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|add6_result[5]~10_combout\ = (\UWU|Mult0|auto_generated|le4a\(3) & ((\UWU|Mult0|auto_generated|add10_result[3]~6_combout\ & (\UWU|Mult0|auto_generated|add6_result[4]~9\ & VCC)) # 
-- (!\UWU|Mult0|auto_generated|add10_result[3]~6_combout\ & (!\UWU|Mult0|auto_generated|add6_result[4]~9\)))) # (!\UWU|Mult0|auto_generated|le4a\(3) & ((\UWU|Mult0|auto_generated|add10_result[3]~6_combout\ & (!\UWU|Mult0|auto_generated|add6_result[4]~9\)) # 
-- (!\UWU|Mult0|auto_generated|add10_result[3]~6_combout\ & ((\UWU|Mult0|auto_generated|add6_result[4]~9\) # (GND)))))
-- \UWU|Mult0|auto_generated|add6_result[5]~11\ = CARRY((\UWU|Mult0|auto_generated|le4a\(3) & (!\UWU|Mult0|auto_generated|add10_result[3]~6_combout\ & !\UWU|Mult0|auto_generated|add6_result[4]~9\)) # (!\UWU|Mult0|auto_generated|le4a\(3) & 
-- ((!\UWU|Mult0|auto_generated|add6_result[4]~9\) # (!\UWU|Mult0|auto_generated|add10_result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mult0|auto_generated|le4a\(3),
	datab => \UWU|Mult0|auto_generated|add10_result[3]~6_combout\,
	datad => VCC,
	cin => \UWU|Mult0|auto_generated|add6_result[4]~9\,
	combout => \UWU|Mult0|auto_generated|add6_result[5]~10_combout\,
	cout => \UWU|Mult0|auto_generated|add6_result[5]~11\);

-- Location: LCCOMB_X112_Y15_N14
\UWU|Mult0|auto_generated|add6_result[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|add6_result[6]~12_combout\ = ((\UWU|Mult0|auto_generated|add10_result[4]~8_combout\ $ (\UWU|Mult0|auto_generated|le4a\(4) $ (\UWU|Mult0|auto_generated|add6_result[5]~11\)))) # (GND)
-- \UWU|Mult0|auto_generated|add6_result[6]~13\ = CARRY((\UWU|Mult0|auto_generated|add10_result[4]~8_combout\ & ((!\UWU|Mult0|auto_generated|add6_result[5]~11\) # (!\UWU|Mult0|auto_generated|le4a\(4)))) # 
-- (!\UWU|Mult0|auto_generated|add10_result[4]~8_combout\ & (!\UWU|Mult0|auto_generated|le4a\(4) & !\UWU|Mult0|auto_generated|add6_result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mult0|auto_generated|add10_result[4]~8_combout\,
	datab => \UWU|Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \UWU|Mult0|auto_generated|add6_result[5]~11\,
	combout => \UWU|Mult0|auto_generated|add6_result[6]~12_combout\,
	cout => \UWU|Mult0|auto_generated|add6_result[6]~13\);

-- Location: LCCOMB_X112_Y15_N16
\UWU|Mult0|auto_generated|add6_result[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mult0|auto_generated|add6_result[7]~14_combout\ = !\UWU|Mult0|auto_generated|add6_result[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \UWU|Mult0|auto_generated|add6_result[6]~13\,
	combout => \UWU|Mult0|auto_generated|add6_result[7]~14_combout\);

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

-- Location: LCCOMB_X109_Y19_N16
\UWU|m[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|m[3]~0_combout\ = (!\SW[10]~input_o\ & (\UWU|Mult0|auto_generated|add6_result[7]~14_combout\ & (\SW[9]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \UWU|Mult0|auto_generated|add6_result[7]~14_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \UWU|m[3]~0_combout\);

-- Location: LCCOMB_X109_Y19_N10
\UWU|m[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|m[2]~1_combout\ = (!\SW[10]~input_o\ & (\UWU|Mult0|auto_generated|add6_result[6]~12_combout\ & (\SW[9]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \UWU|Mult0|auto_generated|add6_result[6]~12_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \UWU|m[2]~1_combout\);

-- Location: LCCOMB_X109_Y19_N28
\UWU|m[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|m[1]~2_combout\ = (!\SW[10]~input_o\ & (\UWU|Mult0|auto_generated|add6_result[5]~10_combout\ & (\SW[9]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \UWU|Mult0|auto_generated|add6_result[5]~10_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \UWU|m[1]~2_combout\);

-- Location: LCCOMB_X109_Y19_N22
\UWU|m[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|m[0]~3_combout\ = (!\SW[10]~input_o\ & (\UWU|Mult0|auto_generated|add6_result[4]~8_combout\ & (\SW[9]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \UWU|Mult0|auto_generated|add6_result[4]~8_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \UWU|m[0]~3_combout\);

-- Location: LCCOMB_X110_Y15_N10
\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) = (\SW[3]~input_o\ & (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & !\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3));

-- Location: LCCOMB_X111_Y15_N0
\UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ = (\SW[7]~input_o\ & (!\SW[5]~input_o\ & (!\SW[4]~input_o\ & !\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\);

-- Location: LCCOMB_X114_Y15_N4
\UWU|Mod0|auto_generated|divider|divider|StageOut[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ = ((\SW[3]~input_o\ & ((!\SW[1]~input_o\) # (!\SW[2]~input_o\))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\) # (\SW[1]~input_o\)))) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \UWU|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\);

-- Location: LCCOMB_X111_Y15_N22
\UWU|Mod0|auto_generated|divider|divider|StageOut[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ = (\UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ & \UWU|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datad => \UWU|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	combout => \UWU|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\);

-- Location: LCCOMB_X112_Y15_N0
\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ = \SW[1]~input_o\ $ (((\SW[0]~input_o\ & \SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[3]~input_o\,
	combout => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\);

-- Location: LCCOMB_X111_Y15_N24
\UWU|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add2~0_combout\ = \SW[6]~input_o\ $ ((((!\SW[5]~input_o\ & !\SW[4]~input_o\)) # (!\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \UWU|Add2~0_combout\);

-- Location: LCCOMB_X110_Y15_N0
\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\UWU|Add2~0_combout\ & (\SW[0]~input_o\ $ (GND))) # (!\UWU|Add2~0_combout\ & ((GND) # (!\SW[0]~input_o\)))
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((!\SW[0]~input_o\) # (!\UWU|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Add2~0_combout\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X110_Y15_N2
\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((\UWU|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & 
-- (!\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\UWU|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & ((\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # 
-- (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((\UWU|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & (\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # 
-- (!\UWU|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & (!\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((!\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # 
-- (!\UWU|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\))) # (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & (!\UWU|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & 
-- !\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	datab => \UWU|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\,
	datad => VCC,
	cin => \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X114_Y15_N2
\UWU|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add3~0_combout\ = \SW[2]~input_o\ $ ((((!\SW[0]~input_o\ & !\SW[1]~input_o\)) # (!\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \UWU|Add3~0_combout\);

-- Location: LCCOMB_X110_Y15_N4
\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = (\UWU|Add3~0_combout\ & (\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ $ (GND))) # (!\UWU|Add3~0_combout\ & 
-- (!\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ & VCC))
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\UWU|Add3~0_combout\ & !\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UWU|Add3~0_combout\,
	datad => VCC,
	cin => \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X110_Y15_N6
\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X110_Y15_N12
\UWU|Mod0|auto_generated|divider|divider|StageOut[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\ = (\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & (\UWU|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\)) # 
-- (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & ((\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\UWU|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\)) # 
-- (!\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	datab => \UWU|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\,
	datac => \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datad => \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \UWU|Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\);

-- Location: LCCOMB_X110_Y15_N30
\UWU|Mod0|auto_generated|divider|divider|StageOut[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\ = (\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & (((!\UWU|Add2~0_combout\)))) # (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & 
-- ((\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((!\UWU|Add2~0_combout\))) # (!\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	datab => \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \UWU|Add2~0_combout\,
	datad => \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \UWU|Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\);

-- Location: LCCOMB_X111_Y15_N4
\UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\ = \SW[5]~input_o\ $ (((\SW[4]~input_o\ & \SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\);

-- Location: LCCOMB_X110_Y17_N10
\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\ & ((GND) # (!\SW[0]~input_o\))) # (!\UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\ & 
-- (\SW[0]~input_o\ $ (GND)))
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X110_Y17_N12
\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((\UWU|Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\ & 
-- (!\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # (!\UWU|Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\ & ((\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))))) # 
-- (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((\UWU|Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\ & (\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)) # 
-- (!\UWU|Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\ & (!\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((!\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # 
-- (!\UWU|Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\))) # (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & (!\UWU|Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\ & 
-- !\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	datab => \UWU|Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\,
	datad => VCC,
	cin => \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X110_Y17_N14
\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\UWU|Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\ $ (\UWU|Add3~0_combout\ $ (!\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\UWU|Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\ & ((\UWU|Add3~0_combout\) # (!\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))) # 
-- (!\UWU|Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\ & (\UWU|Add3~0_combout\ & !\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\,
	datab => \UWU|Add3~0_combout\,
	datad => VCC,
	cin => \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X110_Y15_N8
\UWU|Mod0|auto_generated|divider|divider|StageOut[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\ = (!\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ & 
-- !\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datad => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	combout => \UWU|Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\);

-- Location: LCCOMB_X110_Y17_N16
\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\UWU|Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\ & ((\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & 
-- (!\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & (\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)))) # 
-- (!\UWU|Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\ & ((\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & ((\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))) # 
-- (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & (!\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\UWU|Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\ & (\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & 
-- !\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # (!\UWU|Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\ & ((\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3)) # 
-- (!\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\,
	datab => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	datad => VCC,
	cin => \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X110_Y17_N18
\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X110_Y17_N2
\UWU|Mod0|auto_generated|divider|divider|StageOut[17]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\ = (\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\UWU|Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\)) # 
-- (!\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\,
	datac => \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datad => \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \UWU|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\);

-- Location: LCCOMB_X110_Y17_N6
\UWU|Mod0|auto_generated|divider|divider|StageOut[18]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\ = (\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ & (!\UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datab => \UWU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	datad => \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \UWU|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\);

-- Location: LCCOMB_X110_Y17_N8
\UWU|Mod0|auto_generated|divider|divider|StageOut[18]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\ = (\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ & !\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	datad => \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \UWU|Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\);

-- Location: LCCOMB_X110_Y17_N4
\UWU|Mod0|auto_generated|divider|divider|StageOut[16]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\ = (\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\UWU|Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\))) # 
-- (!\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datab => \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \UWU|Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\,
	combout => \UWU|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\);

-- Location: LCCOMB_X111_Y17_N0
\UWU|Mod0|auto_generated|divider|divider|StageOut[15]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\ = (\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\))) # 
-- (!\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datab => \UWU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\,
	combout => \UWU|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\);

-- Location: LCCOMB_X110_Y17_N20
\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\SW[4]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[4]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

-- Location: LCCOMB_X110_Y17_N22
\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((\UWU|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\ & 
-- (!\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # (!\UWU|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\ & ((\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))))) # 
-- (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((\UWU|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\ & (\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)) # 
-- (!\UWU|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\ & (!\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((!\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # 
-- (!\UWU|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\))) # (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & (!\UWU|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\ & 
-- !\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	datab => \UWU|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\,
	datad => VCC,
	cin => \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X110_Y17_N24
\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\UWU|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\ $ (\UWU|Add3~0_combout\ $ (!\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # (GND)
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\UWU|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\ & ((\UWU|Add3~0_combout\) # (!\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\))) # 
-- (!\UWU|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\ & (\UWU|Add3~0_combout\ & !\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\,
	datab => \UWU|Add3~0_combout\,
	datad => VCC,
	cin => \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X110_Y17_N26
\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\UWU|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\ & ((\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & 
-- (!\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & (\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)))) # 
-- (!\UWU|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\ & ((\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & ((\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))) # 
-- (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & (!\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\UWU|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\ & (\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & 
-- !\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # (!\UWU|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\ & ((\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3)) # 
-- (!\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\,
	datab => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	datad => VCC,
	cin => \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X110_Y17_N28
\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\ = CARRY((\UWU|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\) # ((\UWU|Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\) # 
-- (!\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\,
	datab => \UWU|Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\,
	datad => VCC,
	cin => \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	cout => \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\);

-- Location: LCCOMB_X110_Y17_N30
\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\,
	combout => \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: LCCOMB_X111_Y17_N10
\UWU|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~5_combout\ = \SW[7]~input_o\ $ (((\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\UWU|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\)) # 
-- (!\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\,
	datab => \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	datad => \SW[7]~input_o\,
	combout => \UWU|Add0~5_combout\);

-- Location: LCCOMB_X110_Y18_N4
\UWU|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~6_combout\ = (\SW[10]~input_o\ & (((\UWU|Add0~5_combout\)))) # (!\SW[10]~input_o\ & (\SW[3]~input_o\ $ (((\SW[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \UWU|Add0~5_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \UWU|Add0~6_combout\);

-- Location: LCCOMB_X110_Y18_N2
\UWU|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~4_combout\ = (!\SW[10]~input_o\ & \SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \UWU|Add0~4_combout\);

-- Location: LCCOMB_X110_Y18_N6
\UWU|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~7_combout\ = (!\SW[10]~input_o\ & \SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datac => \SW[6]~input_o\,
	combout => \UWU|Add0~7_combout\);

-- Location: LCCOMB_X110_Y18_N0
\UWU|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~8_combout\ = \SW[7]~input_o\ $ (((\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\UWU|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\))) # 
-- (!\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	datab => \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \UWU|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\,
	datad => \SW[7]~input_o\,
	combout => \UWU|Add0~8_combout\);

-- Location: LCCOMB_X110_Y18_N28
\UWU|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~9_combout\ = (\SW[10]~input_o\ & (((\UWU|Add0~8_combout\)))) # (!\SW[10]~input_o\ & (\SW[8]~input_o\ $ ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \UWU|Add0~8_combout\,
	combout => \UWU|Add0~9_combout\);

-- Location: LCCOMB_X110_Y18_N30
\UWU|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~10_combout\ = (!\SW[10]~input_o\ & \SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datac => \SW[5]~input_o\,
	combout => \UWU|Add0~10_combout\);

-- Location: LCCOMB_X111_Y17_N4
\UWU|s_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|s_r~0_combout\ = \SW[7]~input_o\ $ (((\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\UWU|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\))) # 
-- (!\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datac => \UWU|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\,
	datad => \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \UWU|s_r~0_combout\);

-- Location: LCCOMB_X110_Y18_N8
\UWU|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~11_combout\ = (\SW[10]~input_o\ & (\UWU|s_r~0_combout\)) # (!\SW[10]~input_o\ & ((\SW[8]~input_o\ $ (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \UWU|s_r~0_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \UWU|Add0~11_combout\);

-- Location: LCCOMB_X110_Y18_N26
\UWU|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~12_combout\ = (\SW[10]~input_o\ & (\SW[7]~input_o\)) # (!\SW[10]~input_o\ & ((\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \UWU|Add0~12_combout\);

-- Location: LCCOMB_X110_Y18_N20
\UWU|s_r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|s_r~1_combout\ = \SW[7]~input_o\ $ (((\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\SW[4]~input_o\))) # (!\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \UWU|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	datad => \SW[4]~input_o\,
	combout => \UWU|s_r~1_combout\);

-- Location: LCCOMB_X110_Y18_N22
\UWU|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~13_combout\ = (\SW[10]~input_o\ & (\UWU|s_r~1_combout\)) # (!\SW[10]~input_o\ & ((\SW[8]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \UWU|s_r~1_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \UWU|Add0~13_combout\);

-- Location: LCCOMB_X110_Y18_N10
\UWU|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~15_cout\ = CARRY(\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datad => VCC,
	cout => \UWU|Add0~15_cout\);

-- Location: LCCOMB_X110_Y18_N12
\UWU|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~16_combout\ = (\UWU|Add0~12_combout\ & ((\UWU|Add0~13_combout\ & (\UWU|Add0~15_cout\ & VCC)) # (!\UWU|Add0~13_combout\ & (!\UWU|Add0~15_cout\)))) # (!\UWU|Add0~12_combout\ & ((\UWU|Add0~13_combout\ & (!\UWU|Add0~15_cout\)) # 
-- (!\UWU|Add0~13_combout\ & ((\UWU|Add0~15_cout\) # (GND)))))
-- \UWU|Add0~17\ = CARRY((\UWU|Add0~12_combout\ & (!\UWU|Add0~13_combout\ & !\UWU|Add0~15_cout\)) # (!\UWU|Add0~12_combout\ & ((!\UWU|Add0~15_cout\) # (!\UWU|Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Add0~12_combout\,
	datab => \UWU|Add0~13_combout\,
	datad => VCC,
	cin => \UWU|Add0~15_cout\,
	combout => \UWU|Add0~16_combout\,
	cout => \UWU|Add0~17\);

-- Location: LCCOMB_X110_Y18_N14
\UWU|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~18_combout\ = ((\UWU|Add0~10_combout\ $ (\UWU|Add0~11_combout\ $ (!\UWU|Add0~17\)))) # (GND)
-- \UWU|Add0~19\ = CARRY((\UWU|Add0~10_combout\ & ((\UWU|Add0~11_combout\) # (!\UWU|Add0~17\))) # (!\UWU|Add0~10_combout\ & (\UWU|Add0~11_combout\ & !\UWU|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Add0~10_combout\,
	datab => \UWU|Add0~11_combout\,
	datad => VCC,
	cin => \UWU|Add0~17\,
	combout => \UWU|Add0~18_combout\,
	cout => \UWU|Add0~19\);

-- Location: LCCOMB_X110_Y18_N16
\UWU|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~20_combout\ = (\UWU|Add0~7_combout\ & ((\UWU|Add0~9_combout\ & (\UWU|Add0~19\ & VCC)) # (!\UWU|Add0~9_combout\ & (!\UWU|Add0~19\)))) # (!\UWU|Add0~7_combout\ & ((\UWU|Add0~9_combout\ & (!\UWU|Add0~19\)) # (!\UWU|Add0~9_combout\ & 
-- ((\UWU|Add0~19\) # (GND)))))
-- \UWU|Add0~21\ = CARRY((\UWU|Add0~7_combout\ & (!\UWU|Add0~9_combout\ & !\UWU|Add0~19\)) # (!\UWU|Add0~7_combout\ & ((!\UWU|Add0~19\) # (!\UWU|Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Add0~7_combout\,
	datab => \UWU|Add0~9_combout\,
	datad => VCC,
	cin => \UWU|Add0~19\,
	combout => \UWU|Add0~20_combout\,
	cout => \UWU|Add0~21\);

-- Location: LCCOMB_X110_Y18_N18
\UWU|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~22_combout\ = \UWU|Add0~6_combout\ $ (\UWU|Add0~21\ $ (!\UWU|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UWU|Add0~6_combout\,
	datad => \UWU|Add0~4_combout\,
	cin => \UWU|Add0~21\,
	combout => \UWU|Add0~22_combout\);

-- Location: LCCOMB_X113_Y18_N16
\UWU|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mux0~2_combout\ = (!\SW[10]~input_o\) # (!\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[8]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \UWU|Mux0~2_combout\);

-- Location: LCCOMB_X113_Y18_N10
\UWU|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~24_combout\ = (\UWU|Mux0~2_combout\ & (\UWU|Add0~22_combout\)) # (!\UWU|Mux0~2_combout\ & (((\SW[7]~input_o\ & \SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Add0~22_combout\,
	datab => \UWU|Mux0~2_combout\,
	datac => \SW[7]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \UWU|Add0~24_combout\);

-- Location: LCCOMB_X112_Y16_N8
\UWU|Div0|auto_generated|divider|divider|add_sub_0|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ = (\UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \UWU|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\);

-- Location: LCCOMB_X110_Y18_N24
\UWU|Div0|auto_generated|divider|divider|sel[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|divider|sel\(0) = (\SW[2]~input_o\ & (((!\SW[0]~input_o\) # (!\SW[3]~input_o\)) # (!\SW[1]~input_o\))) # (!\SW[2]~input_o\ & ((\SW[1]~input_o\) # ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \UWU|Div0|auto_generated|divider|divider|sel\(0));

-- Location: LCCOMB_X114_Y15_N0
\UWU|Div0|auto_generated|divider|divider|sel[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|divider|sel\(1) = (\SW[3]~input_o\ & (((!\SW[0]~input_o\ & !\SW[1]~input_o\)) # (!\SW[2]~input_o\))) # (!\SW[3]~input_o\ & (((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \UWU|Div0|auto_generated|divider|divider|sel\(1));

-- Location: LCCOMB_X112_Y16_N26
\UWU|Div0|auto_generated|divider|divider|StageOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ = (\UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ & ((\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\) # 
-- ((\UWU|Div0|auto_generated|divider|divider|sel\(1)) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datab => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	datac => \UWU|Div0|auto_generated|divider|divider|sel\(1),
	datad => \SW[0]~input_o\,
	combout => \UWU|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\);

-- Location: LCCOMB_X111_Y15_N18
\UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\ = \SW[6]~input_o\ $ (((\SW[7]~input_o\ & ((\SW[5]~input_o\) # (\SW[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\);

-- Location: LCCOMB_X110_Y16_N24
\UWU|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ = (\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & (\UWU|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ & 
-- ((\UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\) # (!\SW[0]~input_o\)))) # (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((\UWU|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\) # 
-- ((\UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	datab => \UWU|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\,
	datac => \UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\,
	datad => \SW[0]~input_o\,
	combout => \UWU|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\);

-- Location: LCCOMB_X110_Y15_N16
\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\ = \SW[2]~input_o\ $ (((\SW[3]~input_o\ & ((\SW[1]~input_o\) # (\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\);

-- Location: LCCOMB_X110_Y16_N2
\UWU|Div0|auto_generated|divider|divider|add_sub_1|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\ = (\UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\,
	datad => \SW[0]~input_o\,
	combout => \UWU|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\);

-- Location: LCCOMB_X110_Y16_N4
\UWU|Div0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\UWU|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ & ((\UWU|Div0|auto_generated|divider|divider|sel\(1)) # 
-- (\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ $ (\UWU|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	datab => \UWU|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\,
	datac => \UWU|Div0|auto_generated|divider|divider|sel\(1),
	datad => \UWU|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\,
	combout => \UWU|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\);

-- Location: LCCOMB_X110_Y16_N14
\UWU|Div0|auto_generated|divider|divider|StageOut[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ = \UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\ $ (((!\UWU|Div0|auto_generated|divider|divider|sel\(1) & 
-- (\UWU|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|divider|sel\(1),
	datab => \UWU|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datac => \UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\,
	datad => \SW[0]~input_o\,
	combout => \UWU|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\);

-- Location: LCCOMB_X110_Y16_N6
\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\ & ((GND) # (!\SW[0]~input_o\))) # (!\UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\ & 
-- (\SW[0]~input_o\ $ (GND)))
-- \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X110_Y16_N8
\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((\UWU|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & 
-- (!\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\UWU|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # 
-- (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((\UWU|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # 
-- (!\UWU|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (!\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((!\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # 
-- (!\UWU|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\))) # (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & (!\UWU|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & 
-- !\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	datab => \UWU|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datad => VCC,
	cin => \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X110_Y16_N10
\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\ $ (\UWU|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ 
-- (\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\ & (\UWU|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ & 
-- !\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\ & ((\UWU|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\) # 
-- (!\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\,
	datab => \UWU|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => VCC,
	cin => \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X110_Y16_N12
\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X110_Y15_N28
\UWU|Div0|auto_generated|divider|divider|StageOut[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ = (\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\UWU|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # 
-- (!\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & (\UWU|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # 
-- (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & ((\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datab => \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datac => \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	combout => \UWU|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\);

-- Location: LCCOMB_X110_Y16_N0
\UWU|Div0|auto_generated|divider|divider|StageOut[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ = (\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & (\UWU|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # 
-- (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & ((\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\UWU|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # 
-- (!\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datab => \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datac => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	datad => \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \UWU|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\);

-- Location: LCCOMB_X110_Y15_N14
\UWU|Div0|auto_generated|divider|divider|StageOut[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ = (\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & (((\UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\)))) # 
-- (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & ((\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\))) # 
-- (!\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	datab => \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \UWU|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\,
	combout => \UWU|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\);

-- Location: LCCOMB_X110_Y15_N18
\UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	cout => \UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X110_Y15_N20
\UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((!\UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\) # 
-- (!\UWU|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\))) # (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & (!\UWU|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ & 
-- !\UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	datab => \UWU|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	datad => VCC,
	cin => \UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X110_Y15_N22
\UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\UWU|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ & ((!\UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\) # 
-- (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\))) # (!\UWU|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ & (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\ & 
-- !\UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datab => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\,
	datad => VCC,
	cin => \UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X110_Y15_N24
\UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & ((!\UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\) # 
-- (!\UWU|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\))) # (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & (!\UWU|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ & 
-- !\UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	datab => \UWU|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\,
	datad => VCC,
	cin => \UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X110_Y15_N26
\UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\,
	combout => \UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X110_Y16_N16
\UWU|Div0|auto_generated|divider|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|op_1~0_combout\ = \UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ $ (VCC)
-- \UWU|Div0|auto_generated|divider|op_1~1\ = CARRY(\UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => VCC,
	combout => \UWU|Div0|auto_generated|divider|op_1~0_combout\,
	cout => \UWU|Div0|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X110_Y16_N18
\UWU|Div0|auto_generated|divider|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|op_1~2_combout\ = (\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((!\UWU|Div0|auto_generated|divider|op_1~1\)))) # 
-- (!\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & (!\UWU|Div0|auto_generated|divider|op_1~1\)) # (!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & 
-- ((\UWU|Div0|auto_generated|divider|op_1~1\) # (GND)))))
-- \UWU|Div0|auto_generated|divider|op_1~3\ = CARRY(((!\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & !\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3))) # (!\UWU|Div0|auto_generated|divider|op_1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	datad => VCC,
	cin => \UWU|Div0|auto_generated|divider|op_1~1\,
	combout => \UWU|Div0|auto_generated|divider|op_1~2_combout\,
	cout => \UWU|Div0|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X110_Y16_N20
\UWU|Div0|auto_generated|divider|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|op_1~4_combout\ = (\UWU|Div0|auto_generated|divider|op_1~3\ & (((\UWU|Div0|auto_generated|divider|divider|sel\(1)) # (!\UWU|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\)))) # 
-- (!\UWU|Div0|auto_generated|divider|op_1~3\ & ((((\UWU|Div0|auto_generated|divider|divider|sel\(1)) # (!\UWU|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\)))))
-- \UWU|Div0|auto_generated|divider|op_1~5\ = CARRY((!\UWU|Div0|auto_generated|divider|op_1~3\ & ((\UWU|Div0|auto_generated|divider|divider|sel\(1)) # (!\UWU|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|divider|sel\(1),
	datab => \UWU|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datad => VCC,
	cin => \UWU|Div0|auto_generated|divider|op_1~3\,
	combout => \UWU|Div0|auto_generated|divider|op_1~4_combout\,
	cout => \UWU|Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X110_Y16_N22
\UWU|Div0|auto_generated|divider|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|op_1~6_combout\ = \UWU|Div0|auto_generated|divider|op_1~5\ $ (((\UWU|Div0|auto_generated|divider|divider|sel\(0)) # (!\UWU|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UWU|Div0|auto_generated|divider|divider|sel\(0),
	datad => \UWU|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\,
	cin => \UWU|Div0|auto_generated|divider|op_1~5\,
	combout => \UWU|Div0|auto_generated|divider|op_1~6_combout\);

-- Location: LCCOMB_X113_Y18_N0
\UWU|Div0|auto_generated|divider|diff_signs\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|diff_signs~combout\ = \SW[3]~input_o\ $ (\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \SW[7]~input_o\,
	combout => \UWU|Div0|auto_generated|divider|diff_signs~combout\);

-- Location: LCCOMB_X110_Y16_N26
\UWU|Div0|auto_generated|divider|quotient[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|quotient[3]~0_combout\ = (\UWU|Div0|auto_generated|divider|diff_signs~combout\ & (((\UWU|Div0|auto_generated|divider|op_1~6_combout\)))) # (!\UWU|Div0|auto_generated|divider|diff_signs~combout\ & 
-- (\UWU|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ & (!\UWU|Div0|auto_generated|divider|divider|sel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\,
	datab => \UWU|Div0|auto_generated|divider|divider|sel\(0),
	datac => \UWU|Div0|auto_generated|divider|op_1~6_combout\,
	datad => \UWU|Div0|auto_generated|divider|diff_signs~combout\,
	combout => \UWU|Div0|auto_generated|divider|quotient[3]~0_combout\);

-- Location: LCCOMB_X113_Y18_N26
\UWU|RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|RESULT~0_combout\ = (\SW[3]~input_o\) # (\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \SW[7]~input_o\,
	combout => \UWU|RESULT~0_combout\);

-- Location: LCCOMB_X113_Y18_N28
\UWU|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mux0~0_combout\ = (\SW[10]~input_o\ & ((\UWU|RESULT~0_combout\) # ((\SW[8]~input_o\)))) # (!\SW[10]~input_o\ & (((!\SW[8]~input_o\ & \UWU|Mult0|auto_generated|add6_result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|RESULT~0_combout\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \UWU|Mult0|auto_generated|add6_result[3]~6_combout\,
	combout => \UWU|Mux0~0_combout\);

-- Location: LCCOMB_X113_Y18_N14
\UWU|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mux0~1_combout\ = (\UWU|Mux0~0_combout\ & (((\UWU|Div0|auto_generated|divider|diff_signs~combout\) # (!\SW[8]~input_o\)))) # (!\UWU|Mux0~0_combout\ & (\UWU|Div0|auto_generated|divider|quotient[3]~0_combout\ & (\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|quotient[3]~0_combout\,
	datab => \UWU|Mux0~0_combout\,
	datac => \SW[8]~input_o\,
	datad => \UWU|Div0|auto_generated|divider|diff_signs~combout\,
	combout => \UWU|Mux0~1_combout\);

-- Location: LCCOMB_X113_Y18_N4
\UWU|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~25_combout\ = (\SW[9]~input_o\ & ((\UWU|Mux0~1_combout\))) # (!\SW[9]~input_o\ & (\UWU|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Add0~24_combout\,
	datac => \UWU|Mux0~1_combout\,
	datad => \SW[9]~input_o\,
	combout => \UWU|Add0~25_combout\);

-- Location: LCCOMB_X109_Y19_N6
\UWU|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~36_combout\ = (\SW[10]~input_o\ & ((\SW[9]~input_o\) # (!\SW[8]~input_o\))) # (!\SW[10]~input_o\ & (!\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \UWU|Add0~36_combout\);

-- Location: LCCOMB_X109_Y19_N8
\UWU|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~26_combout\ = (\SW[2]~input_o\ & ((\SW[9]~input_o\ & ((!\SW[6]~input_o\) # (!\SW[8]~input_o\))) # (!\SW[9]~input_o\ & ((\SW[6]~input_o\))))) # (!\SW[2]~input_o\ & (((\SW[9]~input_o\ & \SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \UWU|Add0~26_combout\);

-- Location: LCCOMB_X110_Y16_N28
\UWU|Div0|auto_generated|divider|quotient[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|quotient[2]~1_combout\ = (\UWU|Div0|auto_generated|divider|diff_signs~combout\ & (\UWU|Div0|auto_generated|divider|op_1~4_combout\)) # (!\UWU|Div0|auto_generated|divider|diff_signs~combout\ & 
-- (((\UWU|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ & !\UWU|Div0|auto_generated|divider|divider|sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|op_1~4_combout\,
	datab => \UWU|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datac => \UWU|Div0|auto_generated|divider|divider|sel\(1),
	datad => \UWU|Div0|auto_generated|divider|diff_signs~combout\,
	combout => \UWU|Div0|auto_generated|divider|quotient[2]~1_combout\);

-- Location: LCCOMB_X109_Y19_N2
\UWU|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~27_combout\ = (\SW[8]~input_o\ & (\UWU|Div0|auto_generated|divider|quotient[2]~1_combout\)) # (!\SW[8]~input_o\ & ((\UWU|Mult0|auto_generated|add6_result[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|quotient[2]~1_combout\,
	datac => \UWU|Mult0|auto_generated|add6_result[2]~4_combout\,
	datad => \SW[8]~input_o\,
	combout => \UWU|Add0~27_combout\);

-- Location: LCCOMB_X109_Y19_N12
\UWU|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~28_combout\ = (\UWU|Add0~36_combout\ & ((\UWU|Add0~20_combout\))) # (!\UWU|Add0~36_combout\ & (\UWU|Add0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Add0~36_combout\,
	datab => \UWU|Add0~27_combout\,
	datad => \UWU|Add0~20_combout\,
	combout => \UWU|Add0~28_combout\);

-- Location: LCCOMB_X109_Y19_N14
\UWU|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~29_combout\ = (\UWU|Add0~36_combout\ & ((\SW[9]~input_o\ & (\UWU|Add0~26_combout\)) # (!\SW[9]~input_o\ & ((\UWU|Add0~28_combout\))))) # (!\UWU|Add0~36_combout\ & ((\SW[9]~input_o\ & ((\UWU|Add0~28_combout\))) # (!\SW[9]~input_o\ & 
-- (\UWU|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Add0~36_combout\,
	datab => \UWU|Add0~26_combout\,
	datac => \SW[9]~input_o\,
	datad => \UWU|Add0~28_combout\,
	combout => \UWU|Add0~29_combout\);

-- Location: LCCOMB_X110_Y16_N30
\UWU|Div0|auto_generated|divider|quotient[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|quotient[1]~2_combout\ = (\UWU|Div0|auto_generated|divider|diff_signs~combout\ & (((\UWU|Div0|auto_generated|divider|op_1~2_combout\)))) # (!\UWU|Div0|auto_generated|divider|diff_signs~combout\ & 
-- (!\UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((!\UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \UWU|Div0|auto_generated|divider|op_1~2_combout\,
	datac => \UWU|Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	datad => \UWU|Div0|auto_generated|divider|diff_signs~combout\,
	combout => \UWU|Div0|auto_generated|divider|quotient[1]~2_combout\);

-- Location: LCCOMB_X109_Y19_N18
\UWU|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~31_combout\ = (\SW[8]~input_o\ & ((\UWU|Div0|auto_generated|divider|quotient[1]~2_combout\))) # (!\SW[8]~input_o\ & (\UWU|Mult0|auto_generated|add6_result[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UWU|Mult0|auto_generated|add6_result[1]~2_combout\,
	datac => \UWU|Div0|auto_generated|divider|quotient[1]~2_combout\,
	datad => \SW[8]~input_o\,
	combout => \UWU|Add0~31_combout\);

-- Location: LCCOMB_X109_Y19_N4
\UWU|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~32_combout\ = (\UWU|Add0~36_combout\ & ((\UWU|Add0~18_combout\))) # (!\UWU|Add0~36_combout\ & (\UWU|Add0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Add0~36_combout\,
	datab => \UWU|Add0~31_combout\,
	datad => \UWU|Add0~18_combout\,
	combout => \UWU|Add0~32_combout\);

-- Location: LCCOMB_X109_Y19_N24
\UWU|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~30_combout\ = (\SW[5]~input_o\ & ((\SW[9]~input_o\ & ((!\SW[1]~input_o\) # (!\SW[8]~input_o\))) # (!\SW[9]~input_o\ & ((\SW[1]~input_o\))))) # (!\SW[5]~input_o\ & (((\SW[9]~input_o\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \UWU|Add0~30_combout\);

-- Location: LCCOMB_X109_Y19_N30
\UWU|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~33_combout\ = (\UWU|Add0~36_combout\ & ((\SW[9]~input_o\ & ((\UWU|Add0~30_combout\))) # (!\SW[9]~input_o\ & (\UWU|Add0~32_combout\)))) # (!\UWU|Add0~36_combout\ & ((\SW[9]~input_o\ & (\UWU|Add0~32_combout\)) # (!\SW[9]~input_o\ & 
-- ((\UWU|Add0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Add0~36_combout\,
	datab => \UWU|Add0~32_combout\,
	datac => \SW[9]~input_o\,
	datad => \UWU|Add0~30_combout\,
	combout => \UWU|Add0~33_combout\);

-- Location: LCCOMB_X113_Y18_N12
\UWU|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~34_combout\ = (\UWU|Mux0~2_combout\ & (\UWU|Add0~16_combout\)) # (!\UWU|Mux0~2_combout\ & (((\SW[0]~input_o\ & \SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Add0~16_combout\,
	datab => \UWU|Mux0~2_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \UWU|Add0~34_combout\);

-- Location: LCCOMB_X113_Y18_N6
\UWU|Div0|auto_generated|divider|quotient[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Div0|auto_generated|divider|quotient[0]~3_combout\ = (\UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\UWU|Div0|auto_generated|divider|op_1~0_combout\ & (\SW[7]~input_o\ $ (\SW[3]~input_o\)))) # 
-- (!\UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\UWU|Div0|auto_generated|divider|op_1~0_combout\) # (\SW[7]~input_o\ $ (!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datab => \UWU|Div0|auto_generated|divider|op_1~0_combout\,
	datac => \SW[7]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \UWU|Div0|auto_generated|divider|quotient[0]~3_combout\);

-- Location: LCCOMB_X113_Y18_N24
\UWU|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mux3~0_combout\ = (\SW[10]~input_o\ & (((\SW[8]~input_o\)))) # (!\SW[10]~input_o\ & ((\SW[8]~input_o\ & ((\UWU|Div0|auto_generated|divider|quotient[0]~3_combout\))) # (!\SW[8]~input_o\ & (\UWU|Mult0|auto_generated|add6_result[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Mult0|auto_generated|add6_result[0]~0_combout\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \UWU|Div0|auto_generated|divider|quotient[0]~3_combout\,
	combout => \UWU|Mux3~0_combout\);

-- Location: LCCOMB_X113_Y18_N18
\UWU|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Mux3~1_combout\ = (\SW[10]~input_o\ & ((\SW[4]~input_o\ & ((!\UWU|Mux3~0_combout\) # (!\SW[0]~input_o\))) # (!\SW[4]~input_o\ & (\SW[0]~input_o\)))) # (!\SW[10]~input_o\ & (((\UWU|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \UWU|Mux3~0_combout\,
	combout => \UWU|Mux3~1_combout\);

-- Location: LCCOMB_X113_Y18_N22
\UWU|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \UWU|Add0~35_combout\ = (\SW[9]~input_o\ & ((\UWU|Mux3~1_combout\))) # (!\SW[9]~input_o\ & (\UWU|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UWU|Add0~34_combout\,
	datab => \UWU|Mux3~1_combout\,
	datad => \SW[9]~input_o\,
	combout => \UWU|Add0~35_combout\);

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


