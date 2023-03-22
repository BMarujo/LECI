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

-- DATE "04/22/2022 10:53:15"

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

ENTITY 	CombShiftUnit_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(10 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END CombShiftUnit_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CombShiftUnit_Demo IS
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
SIGNAL ww_SW : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clocky|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clocky|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[5]~37\ : std_logic;
SIGNAL \clocky|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[6]~39\ : std_logic;
SIGNAL \clocky|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[7]~41\ : std_logic;
SIGNAL \clocky|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[8]~43\ : std_logic;
SIGNAL \clocky|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[9]~45\ : std_logic;
SIGNAL \clocky|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[10]~47\ : std_logic;
SIGNAL \clocky|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[11]~49\ : std_logic;
SIGNAL \clocky|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[12]~51\ : std_logic;
SIGNAL \clocky|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[13]~53\ : std_logic;
SIGNAL \clocky|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[14]~55\ : std_logic;
SIGNAL \clocky|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[15]~57\ : std_logic;
SIGNAL \clocky|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[16]~59\ : std_logic;
SIGNAL \clocky|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[17]~61\ : std_logic;
SIGNAL \clocky|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[18]~63\ : std_logic;
SIGNAL \clocky|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[19]~65\ : std_logic;
SIGNAL \clocky|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[20]~67\ : std_logic;
SIGNAL \clocky|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[21]~69\ : std_logic;
SIGNAL \clocky|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[22]~71\ : std_logic;
SIGNAL \clocky|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[23]~73\ : std_logic;
SIGNAL \clocky|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[24]~75\ : std_logic;
SIGNAL \clocky|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \clocky|clkOut~3_combout\ : std_logic;
SIGNAL \clocky|LessThan0~1_combout\ : std_logic;
SIGNAL \clocky|clkOut~2_combout\ : std_logic;
SIGNAL \clocky|LessThan0~0_combout\ : std_logic;
SIGNAL \clocky|LessThan0~2_combout\ : std_logic;
SIGNAL \clocky|LessThan0~4_combout\ : std_logic;
SIGNAL \clocky|LessThan0~5_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[0]~27\ : std_logic;
SIGNAL \clocky|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[1]~29\ : std_logic;
SIGNAL \clocky|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[2]~31\ : std_logic;
SIGNAL \clocky|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[3]~33\ : std_logic;
SIGNAL \clocky|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \clocky|s_divCounter[4]~35\ : std_logic;
SIGNAL \clocky|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \clocky|clkOut~0_combout\ : std_logic;
SIGNAL \clocky|clkOut~1_combout\ : std_logic;
SIGNAL \clocky|clkOut~6_combout\ : std_logic;
SIGNAL \clocky|clkOut~7_combout\ : std_logic;
SIGNAL \clocky|clkOut~5_combout\ : std_logic;
SIGNAL \clocky|clkOut~8_combout\ : std_logic;
SIGNAL \clocky|LessThan0~3_combout\ : std_logic;
SIGNAL \clocky|clkOut~4_combout\ : std_logic;
SIGNAL \clocky|clkOut~9_combout\ : std_logic;
SIGNAL \clocky|clkOut~feeder_combout\ : std_logic;
SIGNAL \clocky|clkOut~q\ : std_logic;
SIGNAL \clocky|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \Combo|RotateRight0~3_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \Combo|ShiftRight1~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \Combo|dataOut~2_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \Combo|RotateRight0~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \Combo|RotateRight0~1_combout\ : std_logic;
SIGNAL \Combo|RotateRight0~2_combout\ : std_logic;
SIGNAL \Combo|RotateLeft0~0_combout\ : std_logic;
SIGNAL \Combo|RotateLeft0~1_combout\ : std_logic;
SIGNAL \Combo|RotateLeft0~2_combout\ : std_logic;
SIGNAL \Combo|ShiftRight0~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \Combo|dataOut~0_combout\ : std_logic;
SIGNAL \Combo|dataOut~1_combout\ : std_logic;
SIGNAL \Combo|RotateLeft0~4_combout\ : std_logic;
SIGNAL \Combo|RotateLeft0~3_combout\ : std_logic;
SIGNAL \Combo|dataOut[1]~3_combout\ : std_logic;
SIGNAL \Combo|dataOut~4_combout\ : std_logic;
SIGNAL \Combo|dataOut~5_combout\ : std_logic;
SIGNAL \Combo|dataOut[1]~7_combout\ : std_logic;
SIGNAL \Combo|ShiftRight1~2_combout\ : std_logic;
SIGNAL \Combo|ShiftRight0~1_combout\ : std_logic;
SIGNAL \Combo|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \Combo|dataOut[1]~9_combout\ : std_logic;
SIGNAL \Combo|RotateRight0~5_combout\ : std_logic;
SIGNAL \Combo|RotateRight0~6_combout\ : std_logic;
SIGNAL \Combo|dataOut[1]~8_combout\ : std_logic;
SIGNAL \Combo|dataOut~10_combout\ : std_logic;
SIGNAL \Combo|ShiftRight1~3_combout\ : std_logic;
SIGNAL \Combo|dataOut~11_combout\ : std_logic;
SIGNAL \Combo|RotateLeft0~5_combout\ : std_logic;
SIGNAL \Combo|RotateLeft0~6_combout\ : std_logic;
SIGNAL \Combo|dataOut[1]~6_combout\ : std_logic;
SIGNAL \Combo|dataOut~12_combout\ : std_logic;
SIGNAL \Combo|ShiftRight1~1_combout\ : std_logic;
SIGNAL \Combo|RotateRight0~4_combout\ : std_logic;
SIGNAL \Combo|RotateLeft0~7_combout\ : std_logic;
SIGNAL \Combo|RotateLeft0~8_combout\ : std_logic;
SIGNAL \Combo|dataOut~13_combout\ : std_logic;
SIGNAL \Combo|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \Combo|RotateLeft0~9_combout\ : std_logic;
SIGNAL \Combo|RotateLeft0~10_combout\ : std_logic;
SIGNAL \Combo|ShiftRight1~4_combout\ : std_logic;
SIGNAL \Combo|ShiftRight1~5_combout\ : std_logic;
SIGNAL \Combo|RotateRight0~7_combout\ : std_logic;
SIGNAL \Combo|ShiftRight1~6_combout\ : std_logic;
SIGNAL \Combo|RotateRight0~8_combout\ : std_logic;
SIGNAL \Combo|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \Combo|dataOut~14_combout\ : std_logic;
SIGNAL \Combo|ShiftRight0~2_combout\ : std_logic;
SIGNAL \Combo|dataOut~15_combout\ : std_logic;
SIGNAL \Combo|dataOut~16_combout\ : std_logic;
SIGNAL \Combo|RotateLeft0~11_combout\ : std_logic;
SIGNAL \Combo|RotateLeft0~12_combout\ : std_logic;
SIGNAL \Combo|dataOut~17_combout\ : std_logic;
SIGNAL \Combo|dataOut~18_combout\ : std_logic;
SIGNAL \Combo|dataOut~19_combout\ : std_logic;
SIGNAL \Combo|RotateRight0~9_combout\ : std_logic;
SIGNAL \Combo|RotateRight0~10_combout\ : std_logic;
SIGNAL \Combo|dataOut~20_combout\ : std_logic;
SIGNAL \Combo|RotateLeft0~13_combout\ : std_logic;
SIGNAL \Combo|RotateLeft0~14_combout\ : std_logic;
SIGNAL \Combo|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \Combo|dataOut~21_combout\ : std_logic;
SIGNAL \Combo|dataOut~22_combout\ : std_logic;
SIGNAL \Combo|RotateLeft0~15_combout\ : std_logic;
SIGNAL \Combo|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \Combo|RotateRight0~11_combout\ : std_logic;
SIGNAL \Combo|dataOut~23_combout\ : std_logic;
SIGNAL \Combo|dataOut~24_combout\ : std_logic;
SIGNAL \Combo|dataOut~25_combout\ : std_logic;
SIGNAL \Combo|dataOut~26_combout\ : std_logic;
SIGNAL \Combo|dataOut~27_combout\ : std_logic;
SIGNAL \Combo|dataOut~28_combout\ : std_logic;
SIGNAL \Combo|dataOut[5]~32_combout\ : std_logic;
SIGNAL \Combo|dataOut[5]~33_combout\ : std_logic;
SIGNAL \Combo|dataOut[5]~34_combout\ : std_logic;
SIGNAL \Combo|dataOut~35_combout\ : std_logic;
SIGNAL \Combo|dataOut~36_combout\ : std_logic;
SIGNAL \Combo|dataOut[5]~30_combout\ : std_logic;
SIGNAL \Combo|dataOut[5]~29_combout\ : std_logic;
SIGNAL \Combo|dataOut~31_combout\ : std_logic;
SIGNAL \Combo|dataOut~37_combout\ : std_logic;
SIGNAL \Combo|dataOut~38_combout\ : std_logic;
SIGNAL \Combo|dataOut~39_combout\ : std_logic;
SIGNAL \Combo|dataOut~40_combout\ : std_logic;
SIGNAL \Combo|dataOut~41_combout\ : std_logic;
SIGNAL \Combo|dataOut~42_combout\ : std_logic;
SIGNAL \Combo|dataOut~43_combout\ : std_logic;
SIGNAL \Combo|dataOut~48_combout\ : std_logic;
SIGNAL \Combo|dataOut~44_combout\ : std_logic;
SIGNAL \Combo|dataOut~45_combout\ : std_logic;
SIGNAL \Combo|dataOut~46_combout\ : std_logic;
SIGNAL \Combo|dataOut~47_combout\ : std_logic;
SIGNAL \Combo|dataOut~49_combout\ : std_logic;
SIGNAL \Combo|dataOut~50_combout\ : std_logic;
SIGNAL \clocky|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \Combo|dataOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clocky|ALT_INV_clkOut~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clocky|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clocky|clkOut~q\);
\clocky|ALT_INV_clkOut~clkctrl_outclk\ <= NOT \clocky|clkOut~clkctrl_outclk\;
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
	i => \Combo|dataOut\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Combo|dataOut\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Combo|dataOut\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Combo|dataOut\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Combo|dataOut\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Combo|dataOut\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Combo|dataOut\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Combo|dataOut\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

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

-- Location: LCCOMB_X73_Y5_N6
\clocky|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[0]~26_combout\ = \clocky|s_divCounter\(0) $ (VCC)
-- \clocky|s_divCounter[0]~27\ = CARRY(\clocky|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|s_divCounter\(0),
	datad => VCC,
	combout => \clocky|s_divCounter[0]~26_combout\,
	cout => \clocky|s_divCounter[0]~27\);

-- Location: LCCOMB_X73_Y5_N16
\clocky|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[5]~36_combout\ = (\clocky|s_divCounter\(5) & (!\clocky|s_divCounter[4]~35\)) # (!\clocky|s_divCounter\(5) & ((\clocky|s_divCounter[4]~35\) # (GND)))
-- \clocky|s_divCounter[5]~37\ = CARRY((!\clocky|s_divCounter[4]~35\) # (!\clocky|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocky|s_divCounter\(5),
	datad => VCC,
	cin => \clocky|s_divCounter[4]~35\,
	combout => \clocky|s_divCounter[5]~36_combout\,
	cout => \clocky|s_divCounter[5]~37\);

-- Location: LCCOMB_X73_Y5_N18
\clocky|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[6]~38_combout\ = (\clocky|s_divCounter\(6) & (\clocky|s_divCounter[5]~37\ $ (GND))) # (!\clocky|s_divCounter\(6) & (!\clocky|s_divCounter[5]~37\ & VCC))
-- \clocky|s_divCounter[6]~39\ = CARRY((\clocky|s_divCounter\(6) & !\clocky|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocky|s_divCounter\(6),
	datad => VCC,
	cin => \clocky|s_divCounter[5]~37\,
	combout => \clocky|s_divCounter[6]~38_combout\,
	cout => \clocky|s_divCounter[6]~39\);

-- Location: FF_X73_Y5_N19
\clocky|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clocky|s_divCounter[6]~38_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(6));

-- Location: LCCOMB_X73_Y5_N20
\clocky|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[7]~40_combout\ = (\clocky|s_divCounter\(7) & (!\clocky|s_divCounter[6]~39\)) # (!\clocky|s_divCounter\(7) & ((\clocky|s_divCounter[6]~39\) # (GND)))
-- \clocky|s_divCounter[7]~41\ = CARRY((!\clocky|s_divCounter[6]~39\) # (!\clocky|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocky|s_divCounter\(7),
	datad => VCC,
	cin => \clocky|s_divCounter[6]~39\,
	combout => \clocky|s_divCounter[7]~40_combout\,
	cout => \clocky|s_divCounter[7]~41\);

-- Location: FF_X73_Y5_N21
\clocky|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clocky|s_divCounter[7]~40_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(7));

-- Location: LCCOMB_X73_Y5_N22
\clocky|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[8]~42_combout\ = (\clocky|s_divCounter\(8) & (\clocky|s_divCounter[7]~41\ $ (GND))) # (!\clocky|s_divCounter\(8) & (!\clocky|s_divCounter[7]~41\ & VCC))
-- \clocky|s_divCounter[8]~43\ = CARRY((\clocky|s_divCounter\(8) & !\clocky|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|s_divCounter\(8),
	datad => VCC,
	cin => \clocky|s_divCounter[7]~41\,
	combout => \clocky|s_divCounter[8]~42_combout\,
	cout => \clocky|s_divCounter[8]~43\);

-- Location: FF_X73_Y5_N23
\clocky|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clocky|s_divCounter[8]~42_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(8));

-- Location: LCCOMB_X73_Y5_N24
\clocky|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[9]~44_combout\ = (\clocky|s_divCounter\(9) & (!\clocky|s_divCounter[8]~43\)) # (!\clocky|s_divCounter\(9) & ((\clocky|s_divCounter[8]~43\) # (GND)))
-- \clocky|s_divCounter[9]~45\ = CARRY((!\clocky|s_divCounter[8]~43\) # (!\clocky|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocky|s_divCounter\(9),
	datad => VCC,
	cin => \clocky|s_divCounter[8]~43\,
	combout => \clocky|s_divCounter[9]~44_combout\,
	cout => \clocky|s_divCounter[9]~45\);

-- Location: FF_X73_Y5_N25
\clocky|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clocky|s_divCounter[9]~44_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(9));

-- Location: LCCOMB_X73_Y5_N26
\clocky|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[10]~46_combout\ = (\clocky|s_divCounter\(10) & (\clocky|s_divCounter[9]~45\ $ (GND))) # (!\clocky|s_divCounter\(10) & (!\clocky|s_divCounter[9]~45\ & VCC))
-- \clocky|s_divCounter[10]~47\ = CARRY((\clocky|s_divCounter\(10) & !\clocky|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|s_divCounter\(10),
	datad => VCC,
	cin => \clocky|s_divCounter[9]~45\,
	combout => \clocky|s_divCounter[10]~46_combout\,
	cout => \clocky|s_divCounter[10]~47\);

-- Location: FF_X73_Y5_N27
\clocky|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clocky|s_divCounter[10]~46_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(10));

-- Location: LCCOMB_X73_Y5_N28
\clocky|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[11]~48_combout\ = (\clocky|s_divCounter\(11) & (!\clocky|s_divCounter[10]~47\)) # (!\clocky|s_divCounter\(11) & ((\clocky|s_divCounter[10]~47\) # (GND)))
-- \clocky|s_divCounter[11]~49\ = CARRY((!\clocky|s_divCounter[10]~47\) # (!\clocky|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocky|s_divCounter\(11),
	datad => VCC,
	cin => \clocky|s_divCounter[10]~47\,
	combout => \clocky|s_divCounter[11]~48_combout\,
	cout => \clocky|s_divCounter[11]~49\);

-- Location: FF_X73_Y5_N29
\clocky|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clocky|s_divCounter[11]~48_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(11));

-- Location: LCCOMB_X73_Y5_N30
\clocky|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[12]~50_combout\ = (\clocky|s_divCounter\(12) & (\clocky|s_divCounter[11]~49\ $ (GND))) # (!\clocky|s_divCounter\(12) & (!\clocky|s_divCounter[11]~49\ & VCC))
-- \clocky|s_divCounter[12]~51\ = CARRY((\clocky|s_divCounter\(12) & !\clocky|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|s_divCounter\(12),
	datad => VCC,
	cin => \clocky|s_divCounter[11]~49\,
	combout => \clocky|s_divCounter[12]~50_combout\,
	cout => \clocky|s_divCounter[12]~51\);

-- Location: FF_X73_Y5_N31
\clocky|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clocky|s_divCounter[12]~50_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(12));

-- Location: LCCOMB_X73_Y4_N0
\clocky|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[13]~52_combout\ = (\clocky|s_divCounter\(13) & (!\clocky|s_divCounter[12]~51\)) # (!\clocky|s_divCounter\(13) & ((\clocky|s_divCounter[12]~51\) # (GND)))
-- \clocky|s_divCounter[13]~53\ = CARRY((!\clocky|s_divCounter[12]~51\) # (!\clocky|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocky|s_divCounter\(13),
	datad => VCC,
	cin => \clocky|s_divCounter[12]~51\,
	combout => \clocky|s_divCounter[13]~52_combout\,
	cout => \clocky|s_divCounter[13]~53\);

-- Location: FF_X72_Y5_N7
\clocky|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clocky|s_divCounter[13]~52_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(13));

-- Location: LCCOMB_X73_Y4_N2
\clocky|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[14]~54_combout\ = (\clocky|s_divCounter\(14) & (\clocky|s_divCounter[13]~53\ $ (GND))) # (!\clocky|s_divCounter\(14) & (!\clocky|s_divCounter[13]~53\ & VCC))
-- \clocky|s_divCounter[14]~55\ = CARRY((\clocky|s_divCounter\(14) & !\clocky|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|s_divCounter\(14),
	datad => VCC,
	cin => \clocky|s_divCounter[13]~53\,
	combout => \clocky|s_divCounter[14]~54_combout\,
	cout => \clocky|s_divCounter[14]~55\);

-- Location: FF_X72_Y5_N5
\clocky|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clocky|s_divCounter[14]~54_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(14));

-- Location: LCCOMB_X73_Y4_N4
\clocky|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[15]~56_combout\ = (\clocky|s_divCounter\(15) & (!\clocky|s_divCounter[14]~55\)) # (!\clocky|s_divCounter\(15) & ((\clocky|s_divCounter[14]~55\) # (GND)))
-- \clocky|s_divCounter[15]~57\ = CARRY((!\clocky|s_divCounter[14]~55\) # (!\clocky|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocky|s_divCounter\(15),
	datad => VCC,
	cin => \clocky|s_divCounter[14]~55\,
	combout => \clocky|s_divCounter[15]~56_combout\,
	cout => \clocky|s_divCounter[15]~57\);

-- Location: FF_X72_Y5_N27
\clocky|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clocky|s_divCounter[15]~56_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(15));

-- Location: LCCOMB_X73_Y4_N6
\clocky|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[16]~58_combout\ = (\clocky|s_divCounter\(16) & (\clocky|s_divCounter[15]~57\ $ (GND))) # (!\clocky|s_divCounter\(16) & (!\clocky|s_divCounter[15]~57\ & VCC))
-- \clocky|s_divCounter[16]~59\ = CARRY((\clocky|s_divCounter\(16) & !\clocky|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|s_divCounter\(16),
	datad => VCC,
	cin => \clocky|s_divCounter[15]~57\,
	combout => \clocky|s_divCounter[16]~58_combout\,
	cout => \clocky|s_divCounter[16]~59\);

-- Location: FF_X72_Y5_N9
\clocky|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clocky|s_divCounter[16]~58_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(16));

-- Location: LCCOMB_X73_Y4_N8
\clocky|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[17]~60_combout\ = (\clocky|s_divCounter\(17) & (!\clocky|s_divCounter[16]~59\)) # (!\clocky|s_divCounter\(17) & ((\clocky|s_divCounter[16]~59\) # (GND)))
-- \clocky|s_divCounter[17]~61\ = CARRY((!\clocky|s_divCounter[16]~59\) # (!\clocky|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|s_divCounter\(17),
	datad => VCC,
	cin => \clocky|s_divCounter[16]~59\,
	combout => \clocky|s_divCounter[17]~60_combout\,
	cout => \clocky|s_divCounter[17]~61\);

-- Location: FF_X72_Y5_N25
\clocky|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clocky|s_divCounter[17]~60_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(17));

-- Location: LCCOMB_X73_Y4_N10
\clocky|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[18]~62_combout\ = (\clocky|s_divCounter\(18) & (\clocky|s_divCounter[17]~61\ $ (GND))) # (!\clocky|s_divCounter\(18) & (!\clocky|s_divCounter[17]~61\ & VCC))
-- \clocky|s_divCounter[18]~63\ = CARRY((\clocky|s_divCounter\(18) & !\clocky|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|s_divCounter\(18),
	datad => VCC,
	cin => \clocky|s_divCounter[17]~61\,
	combout => \clocky|s_divCounter[18]~62_combout\,
	cout => \clocky|s_divCounter[18]~63\);

-- Location: FF_X72_Y5_N13
\clocky|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clocky|s_divCounter[18]~62_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(18));

-- Location: LCCOMB_X73_Y4_N12
\clocky|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[19]~64_combout\ = (\clocky|s_divCounter\(19) & (!\clocky|s_divCounter[18]~63\)) # (!\clocky|s_divCounter\(19) & ((\clocky|s_divCounter[18]~63\) # (GND)))
-- \clocky|s_divCounter[19]~65\ = CARRY((!\clocky|s_divCounter[18]~63\) # (!\clocky|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|s_divCounter\(19),
	datad => VCC,
	cin => \clocky|s_divCounter[18]~63\,
	combout => \clocky|s_divCounter[19]~64_combout\,
	cout => \clocky|s_divCounter[19]~65\);

-- Location: FF_X73_Y4_N13
\clocky|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clocky|s_divCounter[19]~64_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(19));

-- Location: LCCOMB_X73_Y4_N14
\clocky|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[20]~66_combout\ = (\clocky|s_divCounter\(20) & (\clocky|s_divCounter[19]~65\ $ (GND))) # (!\clocky|s_divCounter\(20) & (!\clocky|s_divCounter[19]~65\ & VCC))
-- \clocky|s_divCounter[20]~67\ = CARRY((\clocky|s_divCounter\(20) & !\clocky|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocky|s_divCounter\(20),
	datad => VCC,
	cin => \clocky|s_divCounter[19]~65\,
	combout => \clocky|s_divCounter[20]~66_combout\,
	cout => \clocky|s_divCounter[20]~67\);

-- Location: FF_X73_Y4_N15
\clocky|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clocky|s_divCounter[20]~66_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(20));

-- Location: LCCOMB_X73_Y4_N16
\clocky|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[21]~68_combout\ = (\clocky|s_divCounter\(21) & (!\clocky|s_divCounter[20]~67\)) # (!\clocky|s_divCounter\(21) & ((\clocky|s_divCounter[20]~67\) # (GND)))
-- \clocky|s_divCounter[21]~69\ = CARRY((!\clocky|s_divCounter[20]~67\) # (!\clocky|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocky|s_divCounter\(21),
	datad => VCC,
	cin => \clocky|s_divCounter[20]~67\,
	combout => \clocky|s_divCounter[21]~68_combout\,
	cout => \clocky|s_divCounter[21]~69\);

-- Location: FF_X73_Y4_N17
\clocky|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clocky|s_divCounter[21]~68_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(21));

-- Location: LCCOMB_X73_Y4_N18
\clocky|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[22]~70_combout\ = (\clocky|s_divCounter\(22) & (\clocky|s_divCounter[21]~69\ $ (GND))) # (!\clocky|s_divCounter\(22) & (!\clocky|s_divCounter[21]~69\ & VCC))
-- \clocky|s_divCounter[22]~71\ = CARRY((\clocky|s_divCounter\(22) & !\clocky|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocky|s_divCounter\(22),
	datad => VCC,
	cin => \clocky|s_divCounter[21]~69\,
	combout => \clocky|s_divCounter[22]~70_combout\,
	cout => \clocky|s_divCounter[22]~71\);

-- Location: FF_X73_Y4_N19
\clocky|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clocky|s_divCounter[22]~70_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(22));

-- Location: LCCOMB_X73_Y4_N20
\clocky|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[23]~72_combout\ = (\clocky|s_divCounter\(23) & (!\clocky|s_divCounter[22]~71\)) # (!\clocky|s_divCounter\(23) & ((\clocky|s_divCounter[22]~71\) # (GND)))
-- \clocky|s_divCounter[23]~73\ = CARRY((!\clocky|s_divCounter[22]~71\) # (!\clocky|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocky|s_divCounter\(23),
	datad => VCC,
	cin => \clocky|s_divCounter[22]~71\,
	combout => \clocky|s_divCounter[23]~72_combout\,
	cout => \clocky|s_divCounter[23]~73\);

-- Location: FF_X73_Y4_N21
\clocky|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clocky|s_divCounter[23]~72_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(23));

-- Location: LCCOMB_X73_Y4_N22
\clocky|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[24]~74_combout\ = (\clocky|s_divCounter\(24) & (\clocky|s_divCounter[23]~73\ $ (GND))) # (!\clocky|s_divCounter\(24) & (!\clocky|s_divCounter[23]~73\ & VCC))
-- \clocky|s_divCounter[24]~75\ = CARRY((\clocky|s_divCounter\(24) & !\clocky|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|s_divCounter\(24),
	datad => VCC,
	cin => \clocky|s_divCounter[23]~73\,
	combout => \clocky|s_divCounter[24]~74_combout\,
	cout => \clocky|s_divCounter[24]~75\);

-- Location: FF_X73_Y4_N23
\clocky|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clocky|s_divCounter[24]~74_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(24));

-- Location: LCCOMB_X73_Y4_N24
\clocky|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[25]~76_combout\ = \clocky|s_divCounter[24]~75\ $ (\clocky|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clocky|s_divCounter\(25),
	cin => \clocky|s_divCounter[24]~75\,
	combout => \clocky|s_divCounter[25]~76_combout\);

-- Location: FF_X73_Y4_N25
\clocky|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clocky|s_divCounter[25]~76_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(25));

-- Location: LCCOMB_X73_Y4_N30
\clocky|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|clkOut~3_combout\ = (\clocky|s_divCounter\(19) & (\clocky|s_divCounter\(21) & (\clocky|s_divCounter\(20) & \clocky|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|s_divCounter\(19),
	datab => \clocky|s_divCounter\(21),
	datac => \clocky|s_divCounter\(20),
	datad => \clocky|s_divCounter\(22),
	combout => \clocky|clkOut~3_combout\);

-- Location: LCCOMB_X72_Y5_N22
\clocky|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|LessThan0~1_combout\ = (((!\clocky|s_divCounter\(13)) # (!\clocky|s_divCounter\(12))) # (!\clocky|s_divCounter\(14))) # (!\clocky|s_divCounter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|s_divCounter\(15),
	datab => \clocky|s_divCounter\(14),
	datac => \clocky|s_divCounter\(12),
	datad => \clocky|s_divCounter\(13),
	combout => \clocky|LessThan0~1_combout\);

-- Location: LCCOMB_X73_Y5_N4
\clocky|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|clkOut~2_combout\ = (!\clocky|s_divCounter\(8) & (!\clocky|s_divCounter\(7) & (!\clocky|s_divCounter\(10) & !\clocky|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|s_divCounter\(8),
	datab => \clocky|s_divCounter\(7),
	datac => \clocky|s_divCounter\(10),
	datad => \clocky|s_divCounter\(9),
	combout => \clocky|clkOut~2_combout\);

-- Location: LCCOMB_X72_Y5_N20
\clocky|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|LessThan0~0_combout\ = (\clocky|clkOut~2_combout\ & (!\clocky|s_divCounter\(11) & ((!\clocky|clkOut~1_combout\) # (!\clocky|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|clkOut~2_combout\,
	datab => \clocky|s_divCounter\(11),
	datac => \clocky|s_divCounter\(6),
	datad => \clocky|clkOut~1_combout\,
	combout => \clocky|LessThan0~0_combout\);

-- Location: LCCOMB_X72_Y5_N16
\clocky|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|LessThan0~2_combout\ = ((!\clocky|s_divCounter\(16) & ((\clocky|LessThan0~1_combout\) # (\clocky|LessThan0~0_combout\)))) # (!\clocky|s_divCounter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|s_divCounter\(17),
	datab => \clocky|s_divCounter\(16),
	datac => \clocky|LessThan0~1_combout\,
	datad => \clocky|LessThan0~0_combout\,
	combout => \clocky|LessThan0~2_combout\);

-- Location: LCCOMB_X72_Y5_N10
\clocky|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|LessThan0~4_combout\ = (\clocky|clkOut~3_combout\ & ((\clocky|s_divCounter\(18)) # (!\clocky|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clocky|clkOut~3_combout\,
	datac => \clocky|s_divCounter\(18),
	datad => \clocky|LessThan0~2_combout\,
	combout => \clocky|LessThan0~4_combout\);

-- Location: LCCOMB_X72_Y5_N30
\clocky|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|LessThan0~5_combout\ = (\clocky|s_divCounter\(25) & ((\clocky|s_divCounter\(24)) # ((\clocky|s_divCounter\(23) & \clocky|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|s_divCounter\(23),
	datab => \clocky|s_divCounter\(25),
	datac => \clocky|s_divCounter\(24),
	datad => \clocky|LessThan0~4_combout\,
	combout => \clocky|LessThan0~5_combout\);

-- Location: FF_X73_Y5_N7
\clocky|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clocky|s_divCounter[0]~26_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(0));

-- Location: LCCOMB_X73_Y5_N8
\clocky|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[1]~28_combout\ = (\clocky|s_divCounter\(1) & (!\clocky|s_divCounter[0]~27\)) # (!\clocky|s_divCounter\(1) & ((\clocky|s_divCounter[0]~27\) # (GND)))
-- \clocky|s_divCounter[1]~29\ = CARRY((!\clocky|s_divCounter[0]~27\) # (!\clocky|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocky|s_divCounter\(1),
	datad => VCC,
	cin => \clocky|s_divCounter[0]~27\,
	combout => \clocky|s_divCounter[1]~28_combout\,
	cout => \clocky|s_divCounter[1]~29\);

-- Location: FF_X73_Y5_N9
\clocky|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clocky|s_divCounter[1]~28_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(1));

-- Location: LCCOMB_X73_Y5_N10
\clocky|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[2]~30_combout\ = (\clocky|s_divCounter\(2) & (\clocky|s_divCounter[1]~29\ $ (GND))) # (!\clocky|s_divCounter\(2) & (!\clocky|s_divCounter[1]~29\ & VCC))
-- \clocky|s_divCounter[2]~31\ = CARRY((\clocky|s_divCounter\(2) & !\clocky|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|s_divCounter\(2),
	datad => VCC,
	cin => \clocky|s_divCounter[1]~29\,
	combout => \clocky|s_divCounter[2]~30_combout\,
	cout => \clocky|s_divCounter[2]~31\);

-- Location: FF_X73_Y5_N11
\clocky|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clocky|s_divCounter[2]~30_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(2));

-- Location: LCCOMB_X73_Y5_N12
\clocky|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[3]~32_combout\ = (\clocky|s_divCounter\(3) & (!\clocky|s_divCounter[2]~31\)) # (!\clocky|s_divCounter\(3) & ((\clocky|s_divCounter[2]~31\) # (GND)))
-- \clocky|s_divCounter[3]~33\ = CARRY((!\clocky|s_divCounter[2]~31\) # (!\clocky|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|s_divCounter\(3),
	datad => VCC,
	cin => \clocky|s_divCounter[2]~31\,
	combout => \clocky|s_divCounter[3]~32_combout\,
	cout => \clocky|s_divCounter[3]~33\);

-- Location: FF_X73_Y5_N13
\clocky|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clocky|s_divCounter[3]~32_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(3));

-- Location: LCCOMB_X73_Y5_N14
\clocky|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|s_divCounter[4]~34_combout\ = (\clocky|s_divCounter\(4) & (\clocky|s_divCounter[3]~33\ $ (GND))) # (!\clocky|s_divCounter\(4) & (!\clocky|s_divCounter[3]~33\ & VCC))
-- \clocky|s_divCounter[4]~35\ = CARRY((\clocky|s_divCounter\(4) & !\clocky|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocky|s_divCounter\(4),
	datad => VCC,
	cin => \clocky|s_divCounter[3]~33\,
	combout => \clocky|s_divCounter[4]~34_combout\,
	cout => \clocky|s_divCounter[4]~35\);

-- Location: FF_X73_Y5_N15
\clocky|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clocky|s_divCounter[4]~34_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(4));

-- Location: FF_X73_Y5_N17
\clocky|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clocky|s_divCounter[5]~36_combout\,
	sclr => \clocky|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|s_divCounter\(5));

-- Location: LCCOMB_X73_Y5_N0
\clocky|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|clkOut~0_combout\ = (\clocky|s_divCounter\(3) & (\clocky|s_divCounter\(1) & (\clocky|s_divCounter\(0) & \clocky|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|s_divCounter\(3),
	datab => \clocky|s_divCounter\(1),
	datac => \clocky|s_divCounter\(0),
	datad => \clocky|s_divCounter\(2),
	combout => \clocky|clkOut~0_combout\);

-- Location: LCCOMB_X73_Y5_N2
\clocky|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|clkOut~1_combout\ = (\clocky|s_divCounter\(5) & (\clocky|s_divCounter\(4) & \clocky|clkOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clocky|s_divCounter\(5),
	datac => \clocky|s_divCounter\(4),
	datad => \clocky|clkOut~0_combout\,
	combout => \clocky|clkOut~1_combout\);

-- Location: LCCOMB_X72_Y5_N4
\clocky|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|clkOut~6_combout\ = (\clocky|s_divCounter\(13) & (!\clocky|s_divCounter\(6) & (\clocky|s_divCounter\(14) & \clocky|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|s_divCounter\(13),
	datab => \clocky|s_divCounter\(6),
	datac => \clocky|s_divCounter\(14),
	datad => \clocky|s_divCounter\(24),
	combout => \clocky|clkOut~6_combout\);

-- Location: LCCOMB_X72_Y5_N14
\clocky|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|clkOut~7_combout\ = (\clocky|s_divCounter\(12) & (\clocky|s_divCounter\(18) & (\clocky|clkOut~6_combout\ & !\clocky|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|s_divCounter\(12),
	datab => \clocky|s_divCounter\(18),
	datac => \clocky|clkOut~6_combout\,
	datad => \clocky|s_divCounter\(23),
	combout => \clocky|clkOut~7_combout\);

-- Location: LCCOMB_X72_Y5_N8
\clocky|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|clkOut~5_combout\ = (!\clocky|s_divCounter\(15) & (\clocky|s_divCounter\(11) & (\clocky|s_divCounter\(16) & !\clocky|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|s_divCounter\(15),
	datab => \clocky|s_divCounter\(11),
	datac => \clocky|s_divCounter\(16),
	datad => \clocky|s_divCounter\(17),
	combout => \clocky|clkOut~5_combout\);

-- Location: LCCOMB_X72_Y5_N28
\clocky|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|clkOut~8_combout\ = (\clocky|clkOut~2_combout\ & (\clocky|clkOut~3_combout\ & (\clocky|clkOut~7_combout\ & \clocky|clkOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|clkOut~2_combout\,
	datab => \clocky|clkOut~3_combout\,
	datac => \clocky|clkOut~7_combout\,
	datad => \clocky|clkOut~5_combout\,
	combout => \clocky|clkOut~8_combout\);

-- Location: LCCOMB_X72_Y5_N18
\clocky|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|LessThan0~3_combout\ = (((!\clocky|s_divCounter\(18) & \clocky|LessThan0~2_combout\)) # (!\clocky|clkOut~3_combout\)) # (!\clocky|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|s_divCounter\(23),
	datab => \clocky|clkOut~3_combout\,
	datac => \clocky|s_divCounter\(18),
	datad => \clocky|LessThan0~2_combout\,
	combout => \clocky|LessThan0~3_combout\);

-- Location: LCCOMB_X72_Y5_N12
\clocky|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|clkOut~4_combout\ = ((!\clocky|s_divCounter\(24) & \clocky|LessThan0~3_combout\)) # (!\clocky|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|s_divCounter\(24),
	datab => \clocky|s_divCounter\(25),
	datad => \clocky|LessThan0~3_combout\,
	combout => \clocky|clkOut~4_combout\);

-- Location: LCCOMB_X72_Y5_N2
\clocky|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|clkOut~9_combout\ = (\clocky|clkOut~4_combout\ & ((\clocky|clkOut~q\) # ((\clocky|clkOut~1_combout\ & \clocky|clkOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clocky|clkOut~1_combout\,
	datab => \clocky|clkOut~8_combout\,
	datac => \clocky|clkOut~q\,
	datad => \clocky|clkOut~4_combout\,
	combout => \clocky|clkOut~9_combout\);

-- Location: LCCOMB_X72_Y5_N0
\clocky|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocky|clkOut~feeder_combout\ = \clocky|clkOut~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clocky|clkOut~9_combout\,
	combout => \clocky|clkOut~feeder_combout\);

-- Location: FF_X72_Y5_N1
\clocky|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clocky|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocky|clkOut~q\);

-- Location: CLKCTRL_G15
\clocky|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clocky|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clocky|clkOut~clkctrl_outclk\);

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

-- Location: LCCOMB_X114_Y18_N26
\Combo|RotateRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateRight0~3_combout\ = (\SW[8]~input_o\ & ((\SW[9]~input_o\ & (\SW[7]~input_o\)) # (!\SW[9]~input_o\ & ((\SW[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Combo|RotateRight0~3_combout\);

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

-- Location: LCCOMB_X114_Y18_N16
\Combo|ShiftRight1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|ShiftRight1~0_combout\ = (\SW[9]~input_o\ & (\SW[6]~input_o\)) # (!\SW[9]~input_o\ & ((\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Combo|ShiftRight1~0_combout\);

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

-- Location: LCCOMB_X111_Y18_N24
\Combo|dataOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~2_combout\ = (!\KEY[1]~input_o\ & ((\Combo|RotateRight0~3_combout\) # ((!\SW[8]~input_o\ & \Combo|ShiftRight1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \Combo|RotateRight0~3_combout\,
	datac => \Combo|ShiftRight1~0_combout\,
	datad => \KEY[1]~input_o\,
	combout => \Combo|dataOut~2_combout\);

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

-- Location: LCCOMB_X112_Y17_N24
\Combo|RotateRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateRight0~0_combout\ = (\SW[9]~input_o\ & ((\SW[3]~input_o\))) # (!\SW[9]~input_o\ & (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Combo|RotateRight0~0_combout\);

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

-- Location: LCCOMB_X112_Y17_N14
\Combo|RotateRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateRight0~1_combout\ = (\SW[9]~input_o\ & (\SW[2]~input_o\)) # (!\SW[9]~input_o\ & ((\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Combo|RotateRight0~1_combout\);

-- Location: LCCOMB_X112_Y17_N28
\Combo|RotateRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateRight0~2_combout\ = (\SW[8]~input_o\ & (\Combo|RotateRight0~0_combout\)) # (!\SW[8]~input_o\ & ((\Combo|RotateRight0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \Combo|RotateRight0~0_combout\,
	datac => \Combo|RotateRight0~1_combout\,
	combout => \Combo|RotateRight0~2_combout\);

-- Location: LCCOMB_X114_Y18_N12
\Combo|RotateLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateLeft0~0_combout\ = (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & ((\SW[6]~input_o\))) # (!\SW[9]~input_o\ & (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \Combo|RotateLeft0~0_combout\);

-- Location: LCCOMB_X114_Y18_N30
\Combo|RotateLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateLeft0~1_combout\ = (\SW[9]~input_o\ & ((\SW[5]~input_o\))) # (!\SW[9]~input_o\ & (\SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Combo|RotateLeft0~1_combout\);

-- Location: LCCOMB_X114_Y18_N0
\Combo|RotateLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateLeft0~2_combout\ = (\Combo|RotateLeft0~0_combout\) # ((\SW[8]~input_o\ & \Combo|RotateLeft0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|RotateLeft0~0_combout\,
	datab => \SW[8]~input_o\,
	datac => \Combo|RotateLeft0~1_combout\,
	combout => \Combo|RotateLeft0~2_combout\);

-- Location: LCCOMB_X111_Y18_N18
\Combo|ShiftRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|ShiftRight0~0_combout\ = (!\SW[8]~input_o\ & !\SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	combout => \Combo|ShiftRight0~0_combout\);

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

-- Location: LCCOMB_X111_Y18_N4
\Combo|dataOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~0_combout\ = (\KEY[0]~input_o\ & (((\Combo|ShiftRight0~0_combout\ & \SW[0]~input_o\)))) # (!\KEY[0]~input_o\ & (\Combo|RotateLeft0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|RotateLeft0~2_combout\,
	datab => \Combo|ShiftRight0~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \Combo|dataOut~0_combout\);

-- Location: LCCOMB_X111_Y18_N14
\Combo|dataOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~1_combout\ = (!\SW[10]~input_o\ & ((\KEY[1]~input_o\ & ((\Combo|dataOut~0_combout\))) # (!\KEY[1]~input_o\ & (\Combo|RotateRight0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \Combo|RotateRight0~2_combout\,
	datac => \Combo|dataOut~0_combout\,
	datad => \KEY[1]~input_o\,
	combout => \Combo|dataOut~1_combout\);

-- Location: LCCOMB_X112_Y17_N20
\Combo|RotateLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateLeft0~4_combout\ = (\SW[9]~input_o\ & (\SW[2]~input_o\)) # (!\SW[9]~input_o\ & ((\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Combo|RotateLeft0~4_combout\);

-- Location: LCCOMB_X112_Y17_N22
\Combo|RotateLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateLeft0~3_combout\ = (\SW[9]~input_o\ & (\SW[1]~input_o\)) # (!\SW[9]~input_o\ & ((\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Combo|RotateLeft0~3_combout\);

-- Location: LCCOMB_X112_Y18_N22
\Combo|dataOut[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut[1]~3_combout\ = (!\KEY[0]~input_o\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \Combo|dataOut[1]~3_combout\);

-- Location: LCCOMB_X111_Y18_N6
\Combo|dataOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~4_combout\ = (\Combo|dataOut[1]~3_combout\ & ((\SW[8]~input_o\ & ((\Combo|RotateLeft0~3_combout\))) # (!\SW[8]~input_o\ & (\Combo|RotateLeft0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \Combo|RotateLeft0~4_combout\,
	datac => \Combo|RotateLeft0~3_combout\,
	datad => \Combo|dataOut[1]~3_combout\,
	combout => \Combo|dataOut~4_combout\);

-- Location: LCCOMB_X111_Y18_N20
\Combo|dataOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~5_combout\ = (\Combo|dataOut~1_combout\) # ((\SW[10]~input_o\ & ((\Combo|dataOut~2_combout\) # (\Combo|dataOut~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \Combo|dataOut~2_combout\,
	datac => \Combo|dataOut~1_combout\,
	datad => \Combo|dataOut~4_combout\,
	combout => \Combo|dataOut~5_combout\);

-- Location: FF_X111_Y18_N21
\Combo|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocky|ALT_INV_clkOut~clkctrl_outclk\,
	d => \Combo|dataOut~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Combo|dataOut\(0));

-- Location: LCCOMB_X113_Y18_N28
\Combo|dataOut[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut[1]~7_combout\ = (\KEY[1]~input_o\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \Combo|dataOut[1]~7_combout\);

-- Location: LCCOMB_X114_Y18_N6
\Combo|ShiftRight1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|ShiftRight1~2_combout\ = (!\SW[9]~input_o\ & ((\SW[8]~input_o\ & (\SW[6]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Combo|ShiftRight1~2_combout\);

-- Location: LCCOMB_X114_Y18_N18
\Combo|ShiftRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|ShiftRight0~1_combout\ = (\Combo|ShiftRight1~2_combout\) # ((\SW[7]~input_o\ & \SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[9]~input_o\,
	datad => \Combo|ShiftRight1~2_combout\,
	combout => \Combo|ShiftRight0~1_combout\);

-- Location: LCCOMB_X112_Y17_N10
\Combo|ShiftLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|ShiftLeft0~0_combout\ = (!\SW[9]~input_o\ & ((\SW[8]~input_o\ & (\SW[0]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Combo|ShiftLeft0~0_combout\);

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

-- Location: LCCOMB_X113_Y18_N16
\Combo|dataOut[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut[1]~9_combout\ = (\KEY[0]~input_o\ & ((\KEY[2]~input_o\) # (\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \Combo|dataOut[1]~9_combout\);

-- Location: LCCOMB_X114_Y18_N8
\Combo|RotateRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateRight0~5_combout\ = (\SW[9]~input_o\ & ((\SW[8]~input_o\ & ((\SW[0]~input_o\))) # (!\SW[8]~input_o\ & (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Combo|RotateRight0~5_combout\);

-- Location: LCCOMB_X114_Y18_N10
\Combo|RotateRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateRight0~6_combout\ = (\Combo|RotateRight0~5_combout\) # (\Combo|ShiftRight1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Combo|RotateRight0~5_combout\,
	datad => \Combo|ShiftRight1~2_combout\,
	combout => \Combo|RotateRight0~6_combout\);

-- Location: LCCOMB_X113_Y18_N10
\Combo|dataOut[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut[1]~8_combout\ = ((\KEY[1]~input_o\ & !\SW[10]~input_o\)) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \KEY[0]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \Combo|dataOut[1]~8_combout\);

-- Location: LCCOMB_X113_Y18_N26
\Combo|dataOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~10_combout\ = (\Combo|dataOut[1]~9_combout\ & (\Combo|ShiftLeft0~0_combout\ & ((\Combo|dataOut[1]~8_combout\)))) # (!\Combo|dataOut[1]~9_combout\ & (((\Combo|RotateRight0~6_combout\) # (!\Combo|dataOut[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|ShiftLeft0~0_combout\,
	datab => \Combo|dataOut[1]~9_combout\,
	datac => \Combo|RotateRight0~6_combout\,
	datad => \Combo|dataOut[1]~8_combout\,
	combout => \Combo|dataOut~10_combout\);

-- Location: LCCOMB_X114_Y18_N24
\Combo|ShiftRight1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|ShiftRight1~3_combout\ = (\Combo|ShiftRight1~2_combout\) # ((\SW[7]~input_o\ & (\SW[9]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \Combo|ShiftRight1~2_combout\,
	combout => \Combo|ShiftRight1~3_combout\);

-- Location: LCCOMB_X113_Y18_N4
\Combo|dataOut~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~11_combout\ = (\Combo|dataOut[1]~7_combout\ & (((\Combo|dataOut~10_combout\)))) # (!\Combo|dataOut[1]~7_combout\ & ((\Combo|dataOut~10_combout\ & (\Combo|ShiftRight0~1_combout\)) # (!\Combo|dataOut~10_combout\ & 
-- ((\Combo|ShiftRight1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|dataOut[1]~7_combout\,
	datab => \Combo|ShiftRight0~1_combout\,
	datac => \Combo|dataOut~10_combout\,
	datad => \Combo|ShiftRight1~3_combout\,
	combout => \Combo|dataOut~11_combout\);

-- Location: LCCOMB_X112_Y17_N12
\Combo|RotateLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateLeft0~5_combout\ = (\SW[9]~input_o\ & ((\SW[8]~input_o\ & (\SW[6]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Combo|RotateLeft0~5_combout\);

-- Location: LCCOMB_X112_Y17_N18
\Combo|RotateLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateLeft0~6_combout\ = (\Combo|RotateLeft0~5_combout\) # (\Combo|ShiftLeft0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|RotateLeft0~5_combout\,
	datad => \Combo|ShiftLeft0~0_combout\,
	combout => \Combo|RotateLeft0~6_combout\);

-- Location: LCCOMB_X112_Y18_N28
\Combo|dataOut[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut[1]~6_combout\ = (\SW[10]~input_o\ & (!\KEY[0]~input_o\ & \KEY[1]~input_o\)) # (!\SW[10]~input_o\ & ((!\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \Combo|dataOut[1]~6_combout\);

-- Location: LCCOMB_X112_Y18_N10
\Combo|dataOut~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~12_combout\ = (\Combo|dataOut[1]~3_combout\ & (((\Combo|RotateLeft0~6_combout\) # (\Combo|dataOut[1]~6_combout\)))) # (!\Combo|dataOut[1]~3_combout\ & (\Combo|dataOut~11_combout\ & ((!\Combo|dataOut[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|dataOut~11_combout\,
	datab => \Combo|RotateLeft0~6_combout\,
	datac => \Combo|dataOut[1]~3_combout\,
	datad => \Combo|dataOut[1]~6_combout\,
	combout => \Combo|dataOut~12_combout\);

-- Location: LCCOMB_X112_Y17_N6
\Combo|ShiftRight1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|ShiftRight1~1_combout\ = (\SW[9]~input_o\ & ((\SW[4]~input_o\))) # (!\SW[9]~input_o\ & (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Combo|ShiftRight1~1_combout\);

-- Location: LCCOMB_X112_Y17_N8
\Combo|RotateRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateRight0~4_combout\ = (\SW[8]~input_o\ & (\Combo|ShiftRight1~1_combout\)) # (!\SW[8]~input_o\ & ((\Combo|RotateRight0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|ShiftRight1~1_combout\,
	datab => \Combo|RotateRight0~0_combout\,
	datac => \SW[8]~input_o\,
	combout => \Combo|RotateRight0~4_combout\);

-- Location: LCCOMB_X114_Y18_N20
\Combo|RotateLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateLeft0~7_combout\ = (\SW[9]~input_o\ & (\SW[3]~input_o\)) # (!\SW[9]~input_o\ & ((\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Combo|RotateLeft0~7_combout\);

-- Location: LCCOMB_X111_Y18_N16
\Combo|RotateLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateLeft0~8_combout\ = (\SW[8]~input_o\ & (\Combo|RotateLeft0~4_combout\)) # (!\SW[8]~input_o\ & ((\Combo|RotateLeft0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Combo|RotateLeft0~4_combout\,
	datac => \Combo|RotateLeft0~7_combout\,
	datad => \SW[8]~input_o\,
	combout => \Combo|RotateLeft0~8_combout\);

-- Location: LCCOMB_X112_Y18_N24
\Combo|dataOut~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~13_combout\ = (\Combo|dataOut~12_combout\ & (((\Combo|RotateLeft0~8_combout\) # (!\Combo|dataOut[1]~6_combout\)))) # (!\Combo|dataOut~12_combout\ & (\Combo|RotateRight0~4_combout\ & ((\Combo|dataOut[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|dataOut~12_combout\,
	datab => \Combo|RotateRight0~4_combout\,
	datac => \Combo|RotateLeft0~8_combout\,
	datad => \Combo|dataOut[1]~6_combout\,
	combout => \Combo|dataOut~13_combout\);

-- Location: FF_X112_Y18_N25
\Combo|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocky|ALT_INV_clkOut~clkctrl_outclk\,
	d => \Combo|dataOut~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Combo|dataOut\(1));

-- Location: LCCOMB_X112_Y17_N2
\Combo|ShiftLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|ShiftLeft0~1_combout\ = (\SW[9]~input_o\ & ((\SW[0]~input_o\))) # (!\SW[9]~input_o\ & (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Combo|ShiftLeft0~1_combout\);

-- Location: LCCOMB_X112_Y17_N0
\Combo|RotateLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateLeft0~9_combout\ = (\SW[8]~input_o\ & ((\SW[9]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[9]~input_o\ & (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Combo|RotateLeft0~9_combout\);

-- Location: LCCOMB_X112_Y17_N16
\Combo|RotateLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateLeft0~10_combout\ = (\Combo|RotateLeft0~9_combout\) # ((!\SW[8]~input_o\ & \Combo|ShiftLeft0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \Combo|ShiftLeft0~1_combout\,
	datad => \Combo|RotateLeft0~9_combout\,
	combout => \Combo|RotateLeft0~10_combout\);

-- Location: LCCOMB_X114_Y18_N22
\Combo|ShiftRight1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|ShiftRight1~4_combout\ = (\SW[9]~input_o\ & ((\SW[5]~input_o\))) # (!\SW[9]~input_o\ & (\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Combo|ShiftRight1~4_combout\);

-- Location: LCCOMB_X112_Y18_N8
\Combo|ShiftRight1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|ShiftRight1~5_combout\ = (\SW[8]~input_o\ & ((\Combo|ShiftRight1~4_combout\))) # (!\SW[8]~input_o\ & (\Combo|ShiftRight1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Combo|ShiftRight1~1_combout\,
	datac => \SW[8]~input_o\,
	datad => \Combo|ShiftRight1~4_combout\,
	combout => \Combo|ShiftRight1~5_combout\);

-- Location: LCCOMB_X112_Y18_N16
\Combo|RotateRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateRight0~7_combout\ = (\SW[9]~input_o\ & ((\SW[8]~input_o\ & ((\SW[1]~input_o\))) # (!\SW[8]~input_o\ & (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Combo|RotateRight0~7_combout\);

-- Location: LCCOMB_X114_Y18_N28
\Combo|ShiftRight1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|ShiftRight1~6_combout\ = (!\SW[9]~input_o\ & ((\SW[8]~input_o\ & (\SW[7]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Combo|ShiftRight1~6_combout\);

-- Location: LCCOMB_X113_Y18_N18
\Combo|RotateRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateRight0~8_combout\ = (\Combo|RotateRight0~7_combout\) # (\Combo|ShiftRight1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Combo|RotateRight0~7_combout\,
	datad => \Combo|ShiftRight1~6_combout\,
	combout => \Combo|RotateRight0~8_combout\);

-- Location: LCCOMB_X112_Y18_N14
\Combo|ShiftLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|ShiftLeft0~2_combout\ = (\SW[8]~input_o\ & (((\SW[1]~input_o\ & !\SW[9]~input_o\)))) # (!\SW[8]~input_o\ & (\Combo|ShiftLeft0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|ShiftLeft0~1_combout\,
	datab => \SW[1]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Combo|ShiftLeft0~2_combout\);

-- Location: LCCOMB_X113_Y18_N12
\Combo|dataOut~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~14_combout\ = (\Combo|dataOut[1]~8_combout\ & ((\Combo|dataOut[1]~9_combout\ & ((\Combo|ShiftLeft0~2_combout\))) # (!\Combo|dataOut[1]~9_combout\ & (\Combo|RotateRight0~8_combout\)))) # (!\Combo|dataOut[1]~8_combout\ & 
-- (((!\Combo|dataOut[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|dataOut[1]~8_combout\,
	datab => \Combo|RotateRight0~8_combout\,
	datac => \Combo|ShiftLeft0~2_combout\,
	datad => \Combo|dataOut[1]~9_combout\,
	combout => \Combo|dataOut~14_combout\);

-- Location: LCCOMB_X114_Y18_N14
\Combo|ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|ShiftRight0~2_combout\ = (\SW[8]~input_o\ & (\SW[7]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & (\SW[7]~input_o\)) # (!\SW[9]~input_o\ & ((\SW[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Combo|ShiftRight0~2_combout\);

-- Location: LCCOMB_X113_Y18_N22
\Combo|dataOut~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~15_combout\ = (\Combo|dataOut~14_combout\ & ((\Combo|dataOut[1]~7_combout\) # ((\Combo|ShiftRight0~2_combout\)))) # (!\Combo|dataOut~14_combout\ & (!\Combo|dataOut[1]~7_combout\ & ((\Combo|ShiftRight1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|dataOut~14_combout\,
	datab => \Combo|dataOut[1]~7_combout\,
	datac => \Combo|ShiftRight0~2_combout\,
	datad => \Combo|ShiftRight1~6_combout\,
	combout => \Combo|dataOut~15_combout\);

-- Location: LCCOMB_X112_Y18_N2
\Combo|dataOut~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~16_combout\ = (\Combo|dataOut[1]~3_combout\ & (\Combo|dataOut[1]~6_combout\)) # (!\Combo|dataOut[1]~3_combout\ & ((\Combo|dataOut[1]~6_combout\ & (\Combo|ShiftRight1~5_combout\)) # (!\Combo|dataOut[1]~6_combout\ & 
-- ((\Combo|dataOut~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|dataOut[1]~3_combout\,
	datab => \Combo|dataOut[1]~6_combout\,
	datac => \Combo|ShiftRight1~5_combout\,
	datad => \Combo|dataOut~15_combout\,
	combout => \Combo|dataOut~16_combout\);

-- Location: LCCOMB_X114_Y18_N4
\Combo|RotateLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateLeft0~11_combout\ = (\SW[9]~input_o\ & ((\SW[4]~input_o\))) # (!\SW[9]~input_o\ & (\SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Combo|RotateLeft0~11_combout\);

-- Location: LCCOMB_X111_Y18_N30
\Combo|RotateLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateLeft0~12_combout\ = (\SW[8]~input_o\ & ((\Combo|RotateLeft0~7_combout\))) # (!\SW[8]~input_o\ & (\Combo|RotateLeft0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|RotateLeft0~11_combout\,
	datac => \Combo|RotateLeft0~7_combout\,
	datad => \SW[8]~input_o\,
	combout => \Combo|RotateLeft0~12_combout\);

-- Location: LCCOMB_X112_Y18_N30
\Combo|dataOut~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~17_combout\ = (\Combo|dataOut~16_combout\ & (((\Combo|RotateLeft0~12_combout\) # (!\Combo|dataOut[1]~3_combout\)))) # (!\Combo|dataOut~16_combout\ & (\Combo|RotateLeft0~10_combout\ & (\Combo|dataOut[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|RotateLeft0~10_combout\,
	datab => \Combo|dataOut~16_combout\,
	datac => \Combo|dataOut[1]~3_combout\,
	datad => \Combo|RotateLeft0~12_combout\,
	combout => \Combo|dataOut~17_combout\);

-- Location: FF_X112_Y18_N31
\Combo|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocky|ALT_INV_clkOut~clkctrl_outclk\,
	d => \Combo|dataOut~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Combo|dataOut\(2));

-- Location: LCCOMB_X110_Y18_N24
\Combo|dataOut~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~18_combout\ = (!\SW[10]~input_o\ & ((\SW[8]~input_o\ & (\Combo|ShiftRight1~0_combout\)) # (!\SW[8]~input_o\ & ((\Combo|ShiftRight1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|ShiftRight1~0_combout\,
	datab => \Combo|ShiftRight1~4_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \Combo|dataOut~18_combout\);

-- Location: LCCOMB_X110_Y18_N12
\Combo|dataOut~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~19_combout\ = (\SW[7]~input_o\ & (((!\SW[8]~input_o\ & !\SW[9]~input_o\)) # (!\KEY[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Combo|dataOut~19_combout\);

-- Location: LCCOMB_X112_Y17_N30
\Combo|RotateRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateRight0~9_combout\ = (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & (\SW[1]~input_o\)) # (!\SW[9]~input_o\ & ((\SW[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Combo|RotateRight0~9_combout\);

-- Location: LCCOMB_X112_Y17_N4
\Combo|RotateRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateRight0~10_combout\ = (\Combo|RotateRight0~9_combout\) # ((\Combo|RotateRight0~1_combout\ & \SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|RotateRight0~9_combout\,
	datab => \Combo|RotateRight0~1_combout\,
	datac => \SW[8]~input_o\,
	combout => \Combo|RotateRight0~10_combout\);

-- Location: LCCOMB_X110_Y18_N30
\Combo|dataOut~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~20_combout\ = (\KEY[1]~input_o\ & (((\KEY[0]~input_o\)))) # (!\KEY[1]~input_o\ & ((\KEY[0]~input_o\ & (\Combo|dataOut~19_combout\)) # (!\KEY[0]~input_o\ & ((\Combo|RotateRight0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|dataOut~19_combout\,
	datab => \Combo|RotateRight0~10_combout\,
	datac => \KEY[1]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \Combo|dataOut~20_combout\);

-- Location: LCCOMB_X110_Y18_N2
\Combo|RotateLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateLeft0~13_combout\ = (\SW[8]~input_o\ & (((\Combo|RotateLeft0~11_combout\) # (!\SW[10]~input_o\)))) # (!\SW[8]~input_o\ & (\Combo|RotateLeft0~1_combout\ & ((\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|RotateLeft0~1_combout\,
	datab => \Combo|RotateLeft0~11_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \Combo|RotateLeft0~13_combout\);

-- Location: LCCOMB_X110_Y18_N16
\Combo|RotateLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateLeft0~14_combout\ = (\Combo|RotateLeft0~13_combout\ & (((\Combo|ShiftLeft0~1_combout\) # (\SW[10]~input_o\)))) # (!\Combo|RotateLeft0~13_combout\ & (\Combo|RotateLeft0~3_combout\ & ((!\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|RotateLeft0~3_combout\,
	datab => \Combo|RotateLeft0~13_combout\,
	datac => \Combo|ShiftLeft0~1_combout\,
	datad => \SW[10]~input_o\,
	combout => \Combo|RotateLeft0~14_combout\);

-- Location: LCCOMB_X110_Y18_N18
\Combo|ShiftLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|ShiftLeft0~3_combout\ = (!\SW[10]~input_o\ & ((\SW[8]~input_o\ & ((\Combo|ShiftLeft0~1_combout\))) # (!\SW[8]~input_o\ & (\Combo|RotateLeft0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|RotateLeft0~3_combout\,
	datab => \SW[8]~input_o\,
	datac => \Combo|ShiftLeft0~1_combout\,
	datad => \SW[10]~input_o\,
	combout => \Combo|ShiftLeft0~3_combout\);

-- Location: LCCOMB_X110_Y18_N28
\Combo|dataOut~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~21_combout\ = (\Combo|dataOut~20_combout\ & (((\Combo|ShiftLeft0~3_combout\) # (!\KEY[1]~input_o\)))) # (!\Combo|dataOut~20_combout\ & (\Combo|RotateLeft0~14_combout\ & (\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|dataOut~20_combout\,
	datab => \Combo|RotateLeft0~14_combout\,
	datac => \KEY[1]~input_o\,
	datad => \Combo|ShiftLeft0~3_combout\,
	combout => \Combo|dataOut~21_combout\);

-- Location: LCCOMB_X110_Y18_N8
\Combo|dataOut~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~22_combout\ = (\KEY[1]~input_o\ & (((\Combo|dataOut~21_combout\)))) # (!\KEY[1]~input_o\ & ((\Combo|dataOut~18_combout\) # ((\SW[10]~input_o\ & \Combo|dataOut~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \Combo|dataOut~18_combout\,
	datac => \KEY[1]~input_o\,
	datad => \Combo|dataOut~21_combout\,
	combout => \Combo|dataOut~22_combout\);

-- Location: FF_X110_Y18_N9
\Combo|dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocky|ALT_INV_clkOut~clkctrl_outclk\,
	d => \Combo|dataOut~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Combo|dataOut\(3));

-- Location: LCCOMB_X111_Y18_N28
\Combo|RotateLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateLeft0~15_combout\ = (!\SW[10]~input_o\ & ((\SW[8]~input_o\ & ((\Combo|RotateLeft0~3_combout\))) # (!\SW[8]~input_o\ & (\Combo|RotateLeft0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \Combo|RotateLeft0~4_combout\,
	datac => \Combo|RotateLeft0~3_combout\,
	datad => \SW[8]~input_o\,
	combout => \Combo|RotateLeft0~15_combout\);

-- Location: LCCOMB_X111_Y18_N26
\Combo|ShiftLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|ShiftLeft0~4_combout\ = (\Combo|RotateLeft0~15_combout\) # ((\SW[10]~input_o\ & (\Combo|ShiftRight0~0_combout\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \Combo|ShiftRight0~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \Combo|RotateLeft0~15_combout\,
	combout => \Combo|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X114_Y18_N2
\Combo|RotateRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|RotateRight0~11_combout\ = (\Combo|RotateRight0~3_combout\) # ((\Combo|ShiftRight1~0_combout\ & !\SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|RotateRight0~3_combout\,
	datab => \Combo|ShiftRight1~0_combout\,
	datac => \SW[8]~input_o\,
	combout => \Combo|RotateRight0~11_combout\);

-- Location: LCCOMB_X113_Y18_N0
\Combo|dataOut~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~23_combout\ = (\SW[10]~input_o\ & (!\KEY[2]~input_o\ & (\SW[7]~input_o\))) # (!\SW[10]~input_o\ & (((\Combo|RotateRight0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \Combo|RotateRight0~11_combout\,
	datad => \SW[10]~input_o\,
	combout => \Combo|dataOut~23_combout\);

-- Location: LCCOMB_X111_Y18_N0
\Combo|dataOut~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~24_combout\ = (\KEY[1]~input_o\ & (\SW[8]~input_o\)) # (!\KEY[1]~input_o\ & ((\Combo|RotateRight0~3_combout\) # ((!\SW[8]~input_o\ & \Combo|ShiftRight1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \Combo|RotateRight0~3_combout\,
	datac => \Combo|ShiftRight1~0_combout\,
	datad => \KEY[1]~input_o\,
	combout => \Combo|dataOut~24_combout\);

-- Location: LCCOMB_X111_Y18_N10
\Combo|dataOut~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~25_combout\ = (\KEY[1]~input_o\ & ((\Combo|dataOut~24_combout\ & (\Combo|RotateLeft0~3_combout\)) # (!\Combo|dataOut~24_combout\ & ((\Combo|RotateLeft0~4_combout\))))) # (!\KEY[1]~input_o\ & (\Combo|dataOut~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \Combo|dataOut~24_combout\,
	datac => \Combo|RotateLeft0~3_combout\,
	datad => \Combo|RotateLeft0~4_combout\,
	combout => \Combo|dataOut~25_combout\);

-- Location: LCCOMB_X111_Y18_N8
\Combo|dataOut~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~26_combout\ = (\KEY[0]~input_o\ & (((\KEY[1]~input_o\)))) # (!\KEY[0]~input_o\ & ((\KEY[1]~input_o\ & (\Combo|RotateLeft0~2_combout\)) # (!\KEY[1]~input_o\ & ((\Combo|RotateRight0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|RotateLeft0~2_combout\,
	datab => \KEY[0]~input_o\,
	datac => \Combo|RotateRight0~2_combout\,
	datad => \KEY[1]~input_o\,
	combout => \Combo|dataOut~26_combout\);

-- Location: LCCOMB_X111_Y18_N22
\Combo|dataOut~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~27_combout\ = (\KEY[0]~input_o\ & (((\Combo|dataOut~26_combout\)))) # (!\KEY[0]~input_o\ & ((\SW[10]~input_o\ & ((\Combo|dataOut~26_combout\))) # (!\SW[10]~input_o\ & (\Combo|dataOut~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|dataOut~25_combout\,
	datab => \KEY[0]~input_o\,
	datac => \Combo|dataOut~26_combout\,
	datad => \SW[10]~input_o\,
	combout => \Combo|dataOut~27_combout\);

-- Location: LCCOMB_X111_Y18_N2
\Combo|dataOut~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~28_combout\ = (\Combo|dataOut~27_combout\ & ((\Combo|ShiftLeft0~4_combout\) # ((!\KEY[0]~input_o\)))) # (!\Combo|dataOut~27_combout\ & (((\Combo|dataOut~23_combout\ & \KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|ShiftLeft0~4_combout\,
	datab => \Combo|dataOut~23_combout\,
	datac => \Combo|dataOut~27_combout\,
	datad => \KEY[0]~input_o\,
	combout => \Combo|dataOut~28_combout\);

-- Location: FF_X111_Y18_N3
\Combo|dataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocky|ALT_INV_clkOut~clkctrl_outclk\,
	d => \Combo|dataOut~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Combo|dataOut\(4));

-- Location: LCCOMB_X113_Y18_N6
\Combo|dataOut[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut[5]~32_combout\ = (\KEY[2]~input_o\) # (\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \Combo|dataOut[5]~32_combout\);

-- Location: LCCOMB_X113_Y18_N20
\Combo|dataOut[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut[5]~33_combout\ = (\KEY[1]~input_o\) # ((\KEY[2]~input_o\ & !\SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \SW[10]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \Combo|dataOut[5]~33_combout\);

-- Location: LCCOMB_X113_Y18_N14
\Combo|dataOut[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut[5]~34_combout\ = (\KEY[1]~input_o\) # ((!\KEY[2]~input_o\ & \SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \SW[10]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \Combo|dataOut[5]~34_combout\);

-- Location: LCCOMB_X113_Y18_N8
\Combo|dataOut~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~35_combout\ = (\Combo|dataOut[5]~33_combout\ & ((\Combo|dataOut[5]~34_combout\ & (\Combo|ShiftLeft0~0_combout\)) # (!\Combo|dataOut[5]~34_combout\ & ((\Combo|ShiftRight1~3_combout\))))) # (!\Combo|dataOut[5]~33_combout\ & 
-- (((\Combo|dataOut[5]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|ShiftLeft0~0_combout\,
	datab => \Combo|dataOut[5]~33_combout\,
	datac => \Combo|dataOut[5]~34_combout\,
	datad => \Combo|ShiftRight1~3_combout\,
	combout => \Combo|dataOut~35_combout\);

-- Location: LCCOMB_X113_Y18_N30
\Combo|dataOut~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~36_combout\ = (\Combo|dataOut[5]~32_combout\ & (((\Combo|dataOut~35_combout\)))) # (!\Combo|dataOut[5]~32_combout\ & ((\Combo|dataOut~35_combout\ & ((\SW[7]~input_o\))) # (!\Combo|dataOut~35_combout\ & (\Combo|ShiftRight0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|dataOut[5]~32_combout\,
	datab => \Combo|ShiftRight0~1_combout\,
	datac => \Combo|dataOut~35_combout\,
	datad => \SW[7]~input_o\,
	combout => \Combo|dataOut~36_combout\);

-- Location: LCCOMB_X112_Y18_N6
\Combo|dataOut[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut[5]~30_combout\ = (\KEY[0]~input_o\) # ((\SW[10]~input_o\ & !\KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \Combo|dataOut[5]~30_combout\);

-- Location: LCCOMB_X112_Y18_N20
\Combo|dataOut[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut[5]~29_combout\ = (\KEY[0]~input_o\) # (\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \Combo|dataOut[5]~29_combout\);

-- Location: LCCOMB_X112_Y18_N0
\Combo|dataOut~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~31_combout\ = (\Combo|dataOut[5]~30_combout\ & ((\Combo|dataOut[5]~29_combout\) # ((\Combo|RotateRight0~4_combout\)))) # (!\Combo|dataOut[5]~30_combout\ & (!\Combo|dataOut[5]~29_combout\ & ((\Combo|RotateRight0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|dataOut[5]~30_combout\,
	datab => \Combo|dataOut[5]~29_combout\,
	datac => \Combo|RotateRight0~4_combout\,
	datad => \Combo|RotateRight0~6_combout\,
	combout => \Combo|dataOut~31_combout\);

-- Location: LCCOMB_X112_Y18_N18
\Combo|dataOut~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~37_combout\ = (\Combo|dataOut~31_combout\ & ((\Combo|dataOut~36_combout\) # ((!\Combo|dataOut[5]~29_combout\)))) # (!\Combo|dataOut~31_combout\ & (((\Combo|RotateLeft0~6_combout\ & \Combo|dataOut[5]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|dataOut~36_combout\,
	datab => \Combo|dataOut~31_combout\,
	datac => \Combo|RotateLeft0~6_combout\,
	datad => \Combo|dataOut[5]~29_combout\,
	combout => \Combo|dataOut~37_combout\);

-- Location: LCCOMB_X112_Y18_N12
\Combo|dataOut~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~38_combout\ = (\SW[10]~input_o\ & (\Combo|dataOut~37_combout\)) # (!\SW[10]~input_o\ & ((\KEY[1]~input_o\ & ((\Combo|RotateLeft0~8_combout\))) # (!\KEY[1]~input_o\ & (\Combo|dataOut~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \Combo|dataOut~37_combout\,
	datac => \Combo|RotateLeft0~8_combout\,
	datad => \KEY[1]~input_o\,
	combout => \Combo|dataOut~38_combout\);

-- Location: FF_X112_Y18_N13
\Combo|dataOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocky|ALT_INV_clkOut~clkctrl_outclk\,
	d => \Combo|dataOut~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Combo|dataOut\(5));

-- Location: LCCOMB_X112_Y18_N4
\Combo|dataOut~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~39_combout\ = (\Combo|dataOut[5]~30_combout\ & (\Combo|dataOut[5]~29_combout\)) # (!\Combo|dataOut[5]~30_combout\ & ((\Combo|dataOut[5]~29_combout\ & (\Combo|RotateLeft0~10_combout\)) # (!\Combo|dataOut[5]~29_combout\ & 
-- ((\Combo|RotateRight0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|dataOut[5]~30_combout\,
	datab => \Combo|dataOut[5]~29_combout\,
	datac => \Combo|RotateLeft0~10_combout\,
	datad => \Combo|RotateRight0~8_combout\,
	combout => \Combo|dataOut~39_combout\);

-- Location: LCCOMB_X113_Y18_N24
\Combo|dataOut~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~40_combout\ = (\Combo|dataOut[5]~33_combout\ & ((\Combo|dataOut[5]~34_combout\ & (\Combo|ShiftLeft0~2_combout\)) # (!\Combo|dataOut[5]~34_combout\ & ((\Combo|ShiftRight1~6_combout\))))) # (!\Combo|dataOut[5]~33_combout\ & 
-- (((\Combo|dataOut[5]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|ShiftLeft0~2_combout\,
	datab => \Combo|dataOut[5]~33_combout\,
	datac => \Combo|dataOut[5]~34_combout\,
	datad => \Combo|ShiftRight1~6_combout\,
	combout => \Combo|dataOut~40_combout\);

-- Location: LCCOMB_X113_Y18_N2
\Combo|dataOut~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~41_combout\ = (\Combo|dataOut[5]~32_combout\ & (((\Combo|dataOut~40_combout\)))) # (!\Combo|dataOut[5]~32_combout\ & ((\Combo|dataOut~40_combout\ & (\SW[7]~input_o\)) # (!\Combo|dataOut~40_combout\ & ((\Combo|ShiftRight0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|dataOut[5]~32_combout\,
	datab => \SW[7]~input_o\,
	datac => \Combo|ShiftRight0~2_combout\,
	datad => \Combo|dataOut~40_combout\,
	combout => \Combo|dataOut~41_combout\);

-- Location: LCCOMB_X112_Y18_N26
\Combo|dataOut~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~42_combout\ = (\Combo|dataOut[5]~30_combout\ & ((\Combo|dataOut~39_combout\ & ((\Combo|dataOut~41_combout\))) # (!\Combo|dataOut~39_combout\ & (\Combo|ShiftRight1~5_combout\)))) # (!\Combo|dataOut[5]~30_combout\ & 
-- (((\Combo|dataOut~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|dataOut[5]~30_combout\,
	datab => \Combo|ShiftRight1~5_combout\,
	datac => \Combo|dataOut~39_combout\,
	datad => \Combo|dataOut~41_combout\,
	combout => \Combo|dataOut~42_combout\);

-- Location: LCCOMB_X111_Y18_N12
\Combo|dataOut~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~43_combout\ = (\SW[10]~input_o\ & (\Combo|dataOut~42_combout\)) # (!\SW[10]~input_o\ & ((\KEY[1]~input_o\ & ((\Combo|RotateLeft0~12_combout\))) # (!\KEY[1]~input_o\ & (\Combo|dataOut~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \Combo|dataOut~42_combout\,
	datac => \Combo|RotateLeft0~12_combout\,
	datad => \KEY[1]~input_o\,
	combout => \Combo|dataOut~43_combout\);

-- Location: FF_X111_Y18_N13
\Combo|dataOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocky|ALT_INV_clkOut~clkctrl_outclk\,
	d => \Combo|dataOut~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Combo|dataOut\(6));

-- Location: LCCOMB_X110_Y18_N22
\Combo|dataOut~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~48_combout\ = (\SW[10]~input_o\ & ((\SW[8]~input_o\ & ((\Combo|ShiftLeft0~1_combout\))) # (!\SW[8]~input_o\ & (\Combo|RotateLeft0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|RotateLeft0~3_combout\,
	datab => \SW[8]~input_o\,
	datac => \Combo|ShiftLeft0~1_combout\,
	datad => \SW[10]~input_o\,
	combout => \Combo|dataOut~48_combout\);

-- Location: LCCOMB_X110_Y18_N26
\Combo|dataOut~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~44_combout\ = (\SW[10]~input_o\ & ((\SW[8]~input_o\ & (\Combo|ShiftRight1~0_combout\)) # (!\SW[8]~input_o\ & ((\Combo|ShiftRight1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|ShiftRight1~0_combout\,
	datab => \Combo|ShiftRight1~4_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \Combo|dataOut~44_combout\);

-- Location: LCCOMB_X110_Y18_N4
\Combo|dataOut~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~45_combout\ = (!\KEY[0]~input_o\ & ((\Combo|dataOut~44_combout\) # ((!\SW[10]~input_o\ & \Combo|RotateRight0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \Combo|RotateRight0~10_combout\,
	datac => \Combo|dataOut~44_combout\,
	datad => \KEY[0]~input_o\,
	combout => \Combo|dataOut~45_combout\);

-- Location: LCCOMB_X110_Y18_N14
\Combo|dataOut~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~46_combout\ = ((!\SW[9]~input_o\ & (!\SW[8]~input_o\ & !\SW[10]~input_o\))) # (!\KEY[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \Combo|dataOut~46_combout\);

-- Location: LCCOMB_X110_Y18_N20
\Combo|dataOut~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~47_combout\ = (\Combo|dataOut~45_combout\) # ((\SW[7]~input_o\ & (\Combo|dataOut~46_combout\ & \KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|dataOut~45_combout\,
	datab => \SW[7]~input_o\,
	datac => \Combo|dataOut~46_combout\,
	datad => \KEY[0]~input_o\,
	combout => \Combo|dataOut~47_combout\);

-- Location: LCCOMB_X110_Y18_N0
\Combo|dataOut~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~49_combout\ = (!\SW[10]~input_o\ & ((\SW[8]~input_o\ & ((\Combo|RotateLeft0~11_combout\))) # (!\SW[8]~input_o\ & (\Combo|RotateLeft0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|RotateLeft0~1_combout\,
	datab => \Combo|RotateLeft0~11_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \Combo|dataOut~49_combout\);

-- Location: LCCOMB_X110_Y18_N6
\Combo|dataOut~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combo|dataOut~50_combout\ = (\KEY[1]~input_o\ & ((\Combo|dataOut~48_combout\) # ((\Combo|dataOut~49_combout\)))) # (!\KEY[1]~input_o\ & (((\Combo|dataOut~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Combo|dataOut~48_combout\,
	datab => \Combo|dataOut~47_combout\,
	datac => \KEY[1]~input_o\,
	datad => \Combo|dataOut~49_combout\,
	combout => \Combo|dataOut~50_combout\);

-- Location: FF_X110_Y18_N7
\Combo|dataOut[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocky|ALT_INV_clkOut~clkctrl_outclk\,
	d => \Combo|dataOut~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Combo|dataOut\(7));

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


