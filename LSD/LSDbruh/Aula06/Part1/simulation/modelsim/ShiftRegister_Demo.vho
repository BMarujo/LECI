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

-- DATE "04/21/2022 10:21:19"

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

ENTITY 	ShiftRegister_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END ShiftRegister_Demo;

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
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftRegister_Demo IS
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
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkDivider|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \clkDivider|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[12]~51\ : std_logic;
SIGNAL \clkDivider|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[13]~53\ : std_logic;
SIGNAL \clkDivider|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[14]~55\ : std_logic;
SIGNAL \clkDivider|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[15]~57\ : std_logic;
SIGNAL \clkDivider|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[16]~59\ : std_logic;
SIGNAL \clkDivider|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[17]~61\ : std_logic;
SIGNAL \clkDivider|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[18]~63\ : std_logic;
SIGNAL \clkDivider|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[19]~65\ : std_logic;
SIGNAL \clkDivider|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[20]~67\ : std_logic;
SIGNAL \clkDivider|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[21]~69\ : std_logic;
SIGNAL \clkDivider|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[22]~71\ : std_logic;
SIGNAL \clkDivider|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[23]~73\ : std_logic;
SIGNAL \clkDivider|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[24]~75\ : std_logic;
SIGNAL \clkDivider|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~4_combout\ : std_logic;
SIGNAL \clkDivider|clkOut~4_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~5_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~2_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~3_combout\ : std_logic;
SIGNAL \clkDivider|clkOut~3_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~0_combout\ : std_logic;
SIGNAL \clkDivider|clkOut~0_combout\ : std_logic;
SIGNAL \clkDivider|clkOut~1_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~1_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~6_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[0]~27\ : std_logic;
SIGNAL \clkDivider|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[1]~29\ : std_logic;
SIGNAL \clkDivider|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[2]~31\ : std_logic;
SIGNAL \clkDivider|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[3]~33\ : std_logic;
SIGNAL \clkDivider|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[4]~35\ : std_logic;
SIGNAL \clkDivider|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[5]~37\ : std_logic;
SIGNAL \clkDivider|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[6]~39\ : std_logic;
SIGNAL \clkDivider|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[7]~41\ : std_logic;
SIGNAL \clkDivider|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[8]~43\ : std_logic;
SIGNAL \clkDivider|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[9]~45\ : std_logic;
SIGNAL \clkDivider|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[10]~47\ : std_logic;
SIGNAL \clkDivider|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[11]~49\ : std_logic;
SIGNAL \clkDivider|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \clkDivider|clkOut~2_combout\ : std_logic;
SIGNAL \clkDivider|clkOut~5_combout\ : std_logic;
SIGNAL \clkDivider|clkOut~6_combout\ : std_logic;
SIGNAL \clkDivider|clkOut~7_combout\ : std_logic;
SIGNAL \clkDivider|clkOut~8_combout\ : std_logic;
SIGNAL \clkDivider|clkOut~9_combout\ : std_logic;
SIGNAL \clkDivider|clkOut~q\ : std_logic;
SIGNAL \clkDivider|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \ShiftReg|s_shift[1]~feeder_combout\ : std_logic;
SIGNAL \ShiftReg|s_shift[2]~feeder_combout\ : std_logic;
SIGNAL \ShiftReg|s_shift[3]~feeder_combout\ : std_logic;
SIGNAL \ShiftReg|s_shift[4]~feeder_combout\ : std_logic;
SIGNAL \ShiftReg|s_shift[5]~feeder_combout\ : std_logic;
SIGNAL \ShiftReg|s_shift[6]~feeder_combout\ : std_logic;
SIGNAL \ShiftReg|s_shift[7]~feeder_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ShiftReg|s_shift\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clkDivider|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkDivider|clkOut~q\);
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
	i => \ShiftReg|s_shift\(0),
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
	i => \ShiftReg|s_shift\(1),
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
	i => \ShiftReg|s_shift\(2),
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
	i => \ShiftReg|s_shift\(3),
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
	i => \ShiftReg|s_shift\(4),
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
	i => \ShiftReg|s_shift\(5),
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
	i => \ShiftReg|s_shift\(6),
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
	i => \ShiftReg|s_shift\(7),
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

-- Location: LCCOMB_X60_Y6_N6
\clkDivider|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[0]~26_combout\ = \clkDivider|s_divCounter\(0) $ (VCC)
-- \clkDivider|s_divCounter[0]~27\ = CARRY(\clkDivider|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(0),
	datad => VCC,
	combout => \clkDivider|s_divCounter[0]~26_combout\,
	cout => \clkDivider|s_divCounter[0]~27\);

-- Location: LCCOMB_X60_Y6_N30
\clkDivider|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[12]~50_combout\ = (\clkDivider|s_divCounter\(12) & (\clkDivider|s_divCounter[11]~49\ $ (GND))) # (!\clkDivider|s_divCounter\(12) & (!\clkDivider|s_divCounter[11]~49\ & VCC))
-- \clkDivider|s_divCounter[12]~51\ = CARRY((\clkDivider|s_divCounter\(12) & !\clkDivider|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(12),
	datad => VCC,
	cin => \clkDivider|s_divCounter[11]~49\,
	combout => \clkDivider|s_divCounter[12]~50_combout\,
	cout => \clkDivider|s_divCounter[12]~51\);

-- Location: LCCOMB_X60_Y5_N0
\clkDivider|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[13]~52_combout\ = (\clkDivider|s_divCounter\(13) & (!\clkDivider|s_divCounter[12]~51\)) # (!\clkDivider|s_divCounter\(13) & ((\clkDivider|s_divCounter[12]~51\) # (GND)))
-- \clkDivider|s_divCounter[13]~53\ = CARRY((!\clkDivider|s_divCounter[12]~51\) # (!\clkDivider|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(13),
	datad => VCC,
	cin => \clkDivider|s_divCounter[12]~51\,
	combout => \clkDivider|s_divCounter[13]~52_combout\,
	cout => \clkDivider|s_divCounter[13]~53\);

-- Location: FF_X59_Y6_N21
\clkDivider|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkDivider|s_divCounter[13]~52_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(13));

-- Location: LCCOMB_X60_Y5_N2
\clkDivider|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[14]~54_combout\ = (\clkDivider|s_divCounter\(14) & (\clkDivider|s_divCounter[13]~53\ $ (GND))) # (!\clkDivider|s_divCounter\(14) & (!\clkDivider|s_divCounter[13]~53\ & VCC))
-- \clkDivider|s_divCounter[14]~55\ = CARRY((\clkDivider|s_divCounter\(14) & !\clkDivider|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(14),
	datad => VCC,
	cin => \clkDivider|s_divCounter[13]~53\,
	combout => \clkDivider|s_divCounter[14]~54_combout\,
	cout => \clkDivider|s_divCounter[14]~55\);

-- Location: FF_X60_Y5_N3
\clkDivider|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[14]~54_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(14));

-- Location: LCCOMB_X60_Y5_N4
\clkDivider|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[15]~56_combout\ = (\clkDivider|s_divCounter\(15) & (!\clkDivider|s_divCounter[14]~55\)) # (!\clkDivider|s_divCounter\(15) & ((\clkDivider|s_divCounter[14]~55\) # (GND)))
-- \clkDivider|s_divCounter[15]~57\ = CARRY((!\clkDivider|s_divCounter[14]~55\) # (!\clkDivider|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(15),
	datad => VCC,
	cin => \clkDivider|s_divCounter[14]~55\,
	combout => \clkDivider|s_divCounter[15]~56_combout\,
	cout => \clkDivider|s_divCounter[15]~57\);

-- Location: FF_X60_Y5_N5
\clkDivider|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[15]~56_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(15));

-- Location: LCCOMB_X60_Y5_N6
\clkDivider|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[16]~58_combout\ = (\clkDivider|s_divCounter\(16) & (\clkDivider|s_divCounter[15]~57\ $ (GND))) # (!\clkDivider|s_divCounter\(16) & (!\clkDivider|s_divCounter[15]~57\ & VCC))
-- \clkDivider|s_divCounter[16]~59\ = CARRY((\clkDivider|s_divCounter\(16) & !\clkDivider|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(16),
	datad => VCC,
	cin => \clkDivider|s_divCounter[15]~57\,
	combout => \clkDivider|s_divCounter[16]~58_combout\,
	cout => \clkDivider|s_divCounter[16]~59\);

-- Location: FF_X60_Y5_N7
\clkDivider|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[16]~58_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(16));

-- Location: LCCOMB_X60_Y5_N8
\clkDivider|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[17]~60_combout\ = (\clkDivider|s_divCounter\(17) & (!\clkDivider|s_divCounter[16]~59\)) # (!\clkDivider|s_divCounter\(17) & ((\clkDivider|s_divCounter[16]~59\) # (GND)))
-- \clkDivider|s_divCounter[17]~61\ = CARRY((!\clkDivider|s_divCounter[16]~59\) # (!\clkDivider|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(17),
	datad => VCC,
	cin => \clkDivider|s_divCounter[16]~59\,
	combout => \clkDivider|s_divCounter[17]~60_combout\,
	cout => \clkDivider|s_divCounter[17]~61\);

-- Location: FF_X60_Y5_N9
\clkDivider|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[17]~60_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(17));

-- Location: LCCOMB_X60_Y5_N10
\clkDivider|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[18]~62_combout\ = (\clkDivider|s_divCounter\(18) & (\clkDivider|s_divCounter[17]~61\ $ (GND))) # (!\clkDivider|s_divCounter\(18) & (!\clkDivider|s_divCounter[17]~61\ & VCC))
-- \clkDivider|s_divCounter[18]~63\ = CARRY((\clkDivider|s_divCounter\(18) & !\clkDivider|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(18),
	datad => VCC,
	cin => \clkDivider|s_divCounter[17]~61\,
	combout => \clkDivider|s_divCounter[18]~62_combout\,
	cout => \clkDivider|s_divCounter[18]~63\);

-- Location: FF_X60_Y5_N11
\clkDivider|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[18]~62_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(18));

-- Location: LCCOMB_X60_Y5_N12
\clkDivider|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[19]~64_combout\ = (\clkDivider|s_divCounter\(19) & (!\clkDivider|s_divCounter[18]~63\)) # (!\clkDivider|s_divCounter\(19) & ((\clkDivider|s_divCounter[18]~63\) # (GND)))
-- \clkDivider|s_divCounter[19]~65\ = CARRY((!\clkDivider|s_divCounter[18]~63\) # (!\clkDivider|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(19),
	datad => VCC,
	cin => \clkDivider|s_divCounter[18]~63\,
	combout => \clkDivider|s_divCounter[19]~64_combout\,
	cout => \clkDivider|s_divCounter[19]~65\);

-- Location: FF_X60_Y5_N13
\clkDivider|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[19]~64_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(19));

-- Location: LCCOMB_X60_Y5_N14
\clkDivider|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[20]~66_combout\ = (\clkDivider|s_divCounter\(20) & (\clkDivider|s_divCounter[19]~65\ $ (GND))) # (!\clkDivider|s_divCounter\(20) & (!\clkDivider|s_divCounter[19]~65\ & VCC))
-- \clkDivider|s_divCounter[20]~67\ = CARRY((\clkDivider|s_divCounter\(20) & !\clkDivider|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(20),
	datad => VCC,
	cin => \clkDivider|s_divCounter[19]~65\,
	combout => \clkDivider|s_divCounter[20]~66_combout\,
	cout => \clkDivider|s_divCounter[20]~67\);

-- Location: FF_X60_Y5_N15
\clkDivider|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[20]~66_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(20));

-- Location: LCCOMB_X60_Y5_N16
\clkDivider|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[21]~68_combout\ = (\clkDivider|s_divCounter\(21) & (!\clkDivider|s_divCounter[20]~67\)) # (!\clkDivider|s_divCounter\(21) & ((\clkDivider|s_divCounter[20]~67\) # (GND)))
-- \clkDivider|s_divCounter[21]~69\ = CARRY((!\clkDivider|s_divCounter[20]~67\) # (!\clkDivider|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(21),
	datad => VCC,
	cin => \clkDivider|s_divCounter[20]~67\,
	combout => \clkDivider|s_divCounter[21]~68_combout\,
	cout => \clkDivider|s_divCounter[21]~69\);

-- Location: FF_X60_Y5_N17
\clkDivider|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[21]~68_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(21));

-- Location: LCCOMB_X60_Y5_N18
\clkDivider|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[22]~70_combout\ = (\clkDivider|s_divCounter\(22) & (\clkDivider|s_divCounter[21]~69\ $ (GND))) # (!\clkDivider|s_divCounter\(22) & (!\clkDivider|s_divCounter[21]~69\ & VCC))
-- \clkDivider|s_divCounter[22]~71\ = CARRY((\clkDivider|s_divCounter\(22) & !\clkDivider|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(22),
	datad => VCC,
	cin => \clkDivider|s_divCounter[21]~69\,
	combout => \clkDivider|s_divCounter[22]~70_combout\,
	cout => \clkDivider|s_divCounter[22]~71\);

-- Location: FF_X60_Y5_N19
\clkDivider|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[22]~70_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(22));

-- Location: LCCOMB_X60_Y5_N20
\clkDivider|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[23]~72_combout\ = (\clkDivider|s_divCounter\(23) & (!\clkDivider|s_divCounter[22]~71\)) # (!\clkDivider|s_divCounter\(23) & ((\clkDivider|s_divCounter[22]~71\) # (GND)))
-- \clkDivider|s_divCounter[23]~73\ = CARRY((!\clkDivider|s_divCounter[22]~71\) # (!\clkDivider|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(23),
	datad => VCC,
	cin => \clkDivider|s_divCounter[22]~71\,
	combout => \clkDivider|s_divCounter[23]~72_combout\,
	cout => \clkDivider|s_divCounter[23]~73\);

-- Location: FF_X60_Y5_N21
\clkDivider|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[23]~72_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(23));

-- Location: LCCOMB_X60_Y5_N22
\clkDivider|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[24]~74_combout\ = (\clkDivider|s_divCounter\(24) & (\clkDivider|s_divCounter[23]~73\ $ (GND))) # (!\clkDivider|s_divCounter\(24) & (!\clkDivider|s_divCounter[23]~73\ & VCC))
-- \clkDivider|s_divCounter[24]~75\ = CARRY((\clkDivider|s_divCounter\(24) & !\clkDivider|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(24),
	datad => VCC,
	cin => \clkDivider|s_divCounter[23]~73\,
	combout => \clkDivider|s_divCounter[24]~74_combout\,
	cout => \clkDivider|s_divCounter[24]~75\);

-- Location: FF_X60_Y5_N23
\clkDivider|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[24]~74_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(24));

-- Location: LCCOMB_X60_Y5_N24
\clkDivider|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[25]~76_combout\ = \clkDivider|s_divCounter[24]~75\ $ (\clkDivider|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clkDivider|s_divCounter\(25),
	cin => \clkDivider|s_divCounter[24]~75\,
	combout => \clkDivider|s_divCounter[25]~76_combout\);

-- Location: FF_X60_Y5_N25
\clkDivider|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[25]~76_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(25));

-- Location: LCCOMB_X60_Y5_N26
\clkDivider|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~4_combout\ = ((!\clkDivider|s_divCounter\(18) & !\clkDivider|s_divCounter\(17))) # (!\clkDivider|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(18),
	datac => \clkDivider|s_divCounter\(17),
	datad => \clkDivider|s_divCounter\(23),
	combout => \clkDivider|LessThan0~4_combout\);

-- Location: LCCOMB_X60_Y5_N30
\clkDivider|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|clkOut~4_combout\ = (\clkDivider|s_divCounter\(19) & (\clkDivider|s_divCounter\(21) & (\clkDivider|s_divCounter\(20) & \clkDivider|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(19),
	datab => \clkDivider|s_divCounter\(21),
	datac => \clkDivider|s_divCounter\(20),
	datad => \clkDivider|s_divCounter\(22),
	combout => \clkDivider|clkOut~4_combout\);

-- Location: LCCOMB_X59_Y6_N2
\clkDivider|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~5_combout\ = ((!\clkDivider|s_divCounter\(24) & ((\clkDivider|LessThan0~4_combout\) # (!\clkDivider|clkOut~4_combout\)))) # (!\clkDivider|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(25),
	datab => \clkDivider|s_divCounter\(24),
	datac => \clkDivider|LessThan0~4_combout\,
	datad => \clkDivider|clkOut~4_combout\,
	combout => \clkDivider|LessThan0~5_combout\);

-- Location: LCCOMB_X59_Y6_N10
\clkDivider|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~2_combout\ = (((!\clkDivider|s_divCounter\(14)) # (!\clkDivider|s_divCounter\(15))) # (!\clkDivider|s_divCounter\(13))) # (!\clkDivider|s_divCounter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(12),
	datab => \clkDivider|s_divCounter\(13),
	datac => \clkDivider|s_divCounter\(15),
	datad => \clkDivider|s_divCounter\(14),
	combout => \clkDivider|LessThan0~2_combout\);

-- Location: LCCOMB_X59_Y6_N14
\clkDivider|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~3_combout\ = (!\clkDivider|s_divCounter\(24) & (!\clkDivider|s_divCounter\(18) & (!\clkDivider|s_divCounter\(16) & \clkDivider|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(24),
	datab => \clkDivider|s_divCounter\(18),
	datac => \clkDivider|s_divCounter\(16),
	datad => \clkDivider|LessThan0~2_combout\,
	combout => \clkDivider|LessThan0~3_combout\);

-- Location: LCCOMB_X60_Y6_N4
\clkDivider|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|clkOut~3_combout\ = (!\clkDivider|s_divCounter\(8) & (!\clkDivider|s_divCounter\(7) & (!\clkDivider|s_divCounter\(10) & !\clkDivider|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(8),
	datab => \clkDivider|s_divCounter\(7),
	datac => \clkDivider|s_divCounter\(10),
	datad => \clkDivider|s_divCounter\(9),
	combout => \clkDivider|clkOut~3_combout\);

-- Location: LCCOMB_X59_Y6_N26
\clkDivider|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~0_combout\ = (!\clkDivider|s_divCounter\(11) & (!\clkDivider|s_divCounter\(18) & (!\clkDivider|s_divCounter\(16) & !\clkDivider|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(11),
	datab => \clkDivider|s_divCounter\(18),
	datac => \clkDivider|s_divCounter\(16),
	datad => \clkDivider|s_divCounter\(24),
	combout => \clkDivider|LessThan0~0_combout\);

-- Location: LCCOMB_X60_Y6_N0
\clkDivider|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|clkOut~0_combout\ = (\clkDivider|s_divCounter\(3) & (\clkDivider|s_divCounter\(1) & (\clkDivider|s_divCounter\(0) & \clkDivider|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(3),
	datab => \clkDivider|s_divCounter\(1),
	datac => \clkDivider|s_divCounter\(0),
	datad => \clkDivider|s_divCounter\(2),
	combout => \clkDivider|clkOut~0_combout\);

-- Location: LCCOMB_X60_Y6_N2
\clkDivider|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|clkOut~1_combout\ = (\clkDivider|s_divCounter\(5) & (\clkDivider|s_divCounter\(4) & \clkDivider|clkOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(5),
	datac => \clkDivider|s_divCounter\(4),
	datad => \clkDivider|clkOut~0_combout\,
	combout => \clkDivider|clkOut~1_combout\);

-- Location: LCCOMB_X59_Y6_N28
\clkDivider|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~1_combout\ = (\clkDivider|clkOut~3_combout\ & (\clkDivider|LessThan0~0_combout\ & ((!\clkDivider|clkOut~1_combout\) # (!\clkDivider|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|clkOut~3_combout\,
	datab => \clkDivider|s_divCounter\(6),
	datac => \clkDivider|LessThan0~0_combout\,
	datad => \clkDivider|clkOut~1_combout\,
	combout => \clkDivider|LessThan0~1_combout\);

-- Location: LCCOMB_X59_Y6_N30
\clkDivider|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~6_combout\ = (!\clkDivider|LessThan0~5_combout\ & (!\clkDivider|LessThan0~3_combout\ & !\clkDivider|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|LessThan0~5_combout\,
	datac => \clkDivider|LessThan0~3_combout\,
	datad => \clkDivider|LessThan0~1_combout\,
	combout => \clkDivider|LessThan0~6_combout\);

-- Location: FF_X60_Y6_N7
\clkDivider|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[0]~26_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(0));

-- Location: LCCOMB_X60_Y6_N8
\clkDivider|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[1]~28_combout\ = (\clkDivider|s_divCounter\(1) & (!\clkDivider|s_divCounter[0]~27\)) # (!\clkDivider|s_divCounter\(1) & ((\clkDivider|s_divCounter[0]~27\) # (GND)))
-- \clkDivider|s_divCounter[1]~29\ = CARRY((!\clkDivider|s_divCounter[0]~27\) # (!\clkDivider|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(1),
	datad => VCC,
	cin => \clkDivider|s_divCounter[0]~27\,
	combout => \clkDivider|s_divCounter[1]~28_combout\,
	cout => \clkDivider|s_divCounter[1]~29\);

-- Location: FF_X60_Y6_N9
\clkDivider|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[1]~28_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(1));

-- Location: LCCOMB_X60_Y6_N10
\clkDivider|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[2]~30_combout\ = (\clkDivider|s_divCounter\(2) & (\clkDivider|s_divCounter[1]~29\ $ (GND))) # (!\clkDivider|s_divCounter\(2) & (!\clkDivider|s_divCounter[1]~29\ & VCC))
-- \clkDivider|s_divCounter[2]~31\ = CARRY((\clkDivider|s_divCounter\(2) & !\clkDivider|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(2),
	datad => VCC,
	cin => \clkDivider|s_divCounter[1]~29\,
	combout => \clkDivider|s_divCounter[2]~30_combout\,
	cout => \clkDivider|s_divCounter[2]~31\);

-- Location: FF_X60_Y6_N11
\clkDivider|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[2]~30_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(2));

-- Location: LCCOMB_X60_Y6_N12
\clkDivider|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[3]~32_combout\ = (\clkDivider|s_divCounter\(3) & (!\clkDivider|s_divCounter[2]~31\)) # (!\clkDivider|s_divCounter\(3) & ((\clkDivider|s_divCounter[2]~31\) # (GND)))
-- \clkDivider|s_divCounter[3]~33\ = CARRY((!\clkDivider|s_divCounter[2]~31\) # (!\clkDivider|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(3),
	datad => VCC,
	cin => \clkDivider|s_divCounter[2]~31\,
	combout => \clkDivider|s_divCounter[3]~32_combout\,
	cout => \clkDivider|s_divCounter[3]~33\);

-- Location: FF_X60_Y6_N13
\clkDivider|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[3]~32_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(3));

-- Location: LCCOMB_X60_Y6_N14
\clkDivider|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[4]~34_combout\ = (\clkDivider|s_divCounter\(4) & (\clkDivider|s_divCounter[3]~33\ $ (GND))) # (!\clkDivider|s_divCounter\(4) & (!\clkDivider|s_divCounter[3]~33\ & VCC))
-- \clkDivider|s_divCounter[4]~35\ = CARRY((\clkDivider|s_divCounter\(4) & !\clkDivider|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(4),
	datad => VCC,
	cin => \clkDivider|s_divCounter[3]~33\,
	combout => \clkDivider|s_divCounter[4]~34_combout\,
	cout => \clkDivider|s_divCounter[4]~35\);

-- Location: FF_X60_Y6_N15
\clkDivider|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[4]~34_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(4));

-- Location: LCCOMB_X60_Y6_N16
\clkDivider|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[5]~36_combout\ = (\clkDivider|s_divCounter\(5) & (!\clkDivider|s_divCounter[4]~35\)) # (!\clkDivider|s_divCounter\(5) & ((\clkDivider|s_divCounter[4]~35\) # (GND)))
-- \clkDivider|s_divCounter[5]~37\ = CARRY((!\clkDivider|s_divCounter[4]~35\) # (!\clkDivider|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(5),
	datad => VCC,
	cin => \clkDivider|s_divCounter[4]~35\,
	combout => \clkDivider|s_divCounter[5]~36_combout\,
	cout => \clkDivider|s_divCounter[5]~37\);

-- Location: FF_X60_Y6_N17
\clkDivider|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[5]~36_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(5));

-- Location: LCCOMB_X60_Y6_N18
\clkDivider|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[6]~38_combout\ = (\clkDivider|s_divCounter\(6) & (\clkDivider|s_divCounter[5]~37\ $ (GND))) # (!\clkDivider|s_divCounter\(6) & (!\clkDivider|s_divCounter[5]~37\ & VCC))
-- \clkDivider|s_divCounter[6]~39\ = CARRY((\clkDivider|s_divCounter\(6) & !\clkDivider|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(6),
	datad => VCC,
	cin => \clkDivider|s_divCounter[5]~37\,
	combout => \clkDivider|s_divCounter[6]~38_combout\,
	cout => \clkDivider|s_divCounter[6]~39\);

-- Location: FF_X60_Y6_N19
\clkDivider|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[6]~38_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(6));

-- Location: LCCOMB_X60_Y6_N20
\clkDivider|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[7]~40_combout\ = (\clkDivider|s_divCounter\(7) & (!\clkDivider|s_divCounter[6]~39\)) # (!\clkDivider|s_divCounter\(7) & ((\clkDivider|s_divCounter[6]~39\) # (GND)))
-- \clkDivider|s_divCounter[7]~41\ = CARRY((!\clkDivider|s_divCounter[6]~39\) # (!\clkDivider|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(7),
	datad => VCC,
	cin => \clkDivider|s_divCounter[6]~39\,
	combout => \clkDivider|s_divCounter[7]~40_combout\,
	cout => \clkDivider|s_divCounter[7]~41\);

-- Location: FF_X60_Y6_N21
\clkDivider|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[7]~40_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(7));

-- Location: LCCOMB_X60_Y6_N22
\clkDivider|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[8]~42_combout\ = (\clkDivider|s_divCounter\(8) & (\clkDivider|s_divCounter[7]~41\ $ (GND))) # (!\clkDivider|s_divCounter\(8) & (!\clkDivider|s_divCounter[7]~41\ & VCC))
-- \clkDivider|s_divCounter[8]~43\ = CARRY((\clkDivider|s_divCounter\(8) & !\clkDivider|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(8),
	datad => VCC,
	cin => \clkDivider|s_divCounter[7]~41\,
	combout => \clkDivider|s_divCounter[8]~42_combout\,
	cout => \clkDivider|s_divCounter[8]~43\);

-- Location: FF_X60_Y6_N23
\clkDivider|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[8]~42_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(8));

-- Location: LCCOMB_X60_Y6_N24
\clkDivider|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[9]~44_combout\ = (\clkDivider|s_divCounter\(9) & (!\clkDivider|s_divCounter[8]~43\)) # (!\clkDivider|s_divCounter\(9) & ((\clkDivider|s_divCounter[8]~43\) # (GND)))
-- \clkDivider|s_divCounter[9]~45\ = CARRY((!\clkDivider|s_divCounter[8]~43\) # (!\clkDivider|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(9),
	datad => VCC,
	cin => \clkDivider|s_divCounter[8]~43\,
	combout => \clkDivider|s_divCounter[9]~44_combout\,
	cout => \clkDivider|s_divCounter[9]~45\);

-- Location: FF_X60_Y6_N25
\clkDivider|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[9]~44_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(9));

-- Location: LCCOMB_X60_Y6_N26
\clkDivider|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[10]~46_combout\ = (\clkDivider|s_divCounter\(10) & (\clkDivider|s_divCounter[9]~45\ $ (GND))) # (!\clkDivider|s_divCounter\(10) & (!\clkDivider|s_divCounter[9]~45\ & VCC))
-- \clkDivider|s_divCounter[10]~47\ = CARRY((\clkDivider|s_divCounter\(10) & !\clkDivider|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(10),
	datad => VCC,
	cin => \clkDivider|s_divCounter[9]~45\,
	combout => \clkDivider|s_divCounter[10]~46_combout\,
	cout => \clkDivider|s_divCounter[10]~47\);

-- Location: FF_X60_Y6_N27
\clkDivider|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[10]~46_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(10));

-- Location: LCCOMB_X60_Y6_N28
\clkDivider|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[11]~48_combout\ = (\clkDivider|s_divCounter\(11) & (!\clkDivider|s_divCounter[10]~47\)) # (!\clkDivider|s_divCounter\(11) & ((\clkDivider|s_divCounter[10]~47\) # (GND)))
-- \clkDivider|s_divCounter[11]~49\ = CARRY((!\clkDivider|s_divCounter[10]~47\) # (!\clkDivider|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(11),
	datad => VCC,
	cin => \clkDivider|s_divCounter[10]~47\,
	combout => \clkDivider|s_divCounter[11]~48_combout\,
	cout => \clkDivider|s_divCounter[11]~49\);

-- Location: FF_X60_Y6_N29
\clkDivider|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[11]~48_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(11));

-- Location: FF_X60_Y6_N31
\clkDivider|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[12]~50_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(12));

-- Location: LCCOMB_X59_Y6_N22
\clkDivider|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|clkOut~2_combout\ = (\clkDivider|s_divCounter\(12) & (\clkDivider|s_divCounter\(14) & (\clkDivider|s_divCounter\(13) & !\clkDivider|s_divCounter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(12),
	datab => \clkDivider|s_divCounter\(14),
	datac => \clkDivider|s_divCounter\(13),
	datad => \clkDivider|s_divCounter\(6),
	combout => \clkDivider|clkOut~2_combout\);

-- Location: LCCOMB_X60_Y5_N28
\clkDivider|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|clkOut~5_combout\ = (\clkDivider|s_divCounter\(18) & (!\clkDivider|s_divCounter\(23) & (\clkDivider|s_divCounter\(24) & !\clkDivider|s_divCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(18),
	datab => \clkDivider|s_divCounter\(23),
	datac => \clkDivider|s_divCounter\(24),
	datad => \clkDivider|s_divCounter\(25),
	combout => \clkDivider|clkOut~5_combout\);

-- Location: LCCOMB_X59_Y6_N16
\clkDivider|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|clkOut~6_combout\ = (\clkDivider|s_divCounter\(16) & (!\clkDivider|s_divCounter\(15) & (\clkDivider|clkOut~5_combout\ & !\clkDivider|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(16),
	datab => \clkDivider|s_divCounter\(15),
	datac => \clkDivider|clkOut~5_combout\,
	datad => \clkDivider|s_divCounter\(17),
	combout => \clkDivider|clkOut~6_combout\);

-- Location: LCCOMB_X59_Y6_N6
\clkDivider|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|clkOut~7_combout\ = (\clkDivider|clkOut~4_combout\ & (\clkDivider|s_divCounter\(11) & (\clkDivider|clkOut~3_combout\ & \clkDivider|clkOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|clkOut~4_combout\,
	datab => \clkDivider|s_divCounter\(11),
	datac => \clkDivider|clkOut~3_combout\,
	datad => \clkDivider|clkOut~6_combout\,
	combout => \clkDivider|clkOut~7_combout\);

-- Location: LCCOMB_X59_Y6_N24
\clkDivider|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|clkOut~8_combout\ = (\clkDivider|clkOut~q\) # ((\clkDivider|clkOut~2_combout\ & (\clkDivider|clkOut~1_combout\ & \clkDivider|clkOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|clkOut~2_combout\,
	datab => \clkDivider|clkOut~q\,
	datac => \clkDivider|clkOut~1_combout\,
	datad => \clkDivider|clkOut~7_combout\,
	combout => \clkDivider|clkOut~8_combout\);

-- Location: LCCOMB_X59_Y6_N18
\clkDivider|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|clkOut~9_combout\ = (\clkDivider|clkOut~8_combout\ & ((\clkDivider|LessThan0~1_combout\) # ((\clkDivider|LessThan0~5_combout\) # (\clkDivider|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|clkOut~8_combout\,
	datab => \clkDivider|LessThan0~1_combout\,
	datac => \clkDivider|LessThan0~5_combout\,
	datad => \clkDivider|LessThan0~3_combout\,
	combout => \clkDivider|clkOut~9_combout\);

-- Location: FF_X59_Y6_N19
\clkDivider|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|clkOut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|clkOut~q\);

-- Location: CLKCTRL_G15
\clkDivider|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkDivider|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkDivider|clkOut~clkctrl_outclk\);

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

-- Location: FF_X88_Y72_N29
\ShiftReg|s_shift[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDivider|clkOut~clkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftReg|s_shift\(0));

-- Location: LCCOMB_X88_Y72_N18
\ShiftReg|s_shift[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftReg|s_shift[1]~feeder_combout\ = \ShiftReg|s_shift\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftReg|s_shift\(0),
	combout => \ShiftReg|s_shift[1]~feeder_combout\);

-- Location: FF_X88_Y72_N19
\ShiftReg|s_shift[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDivider|clkOut~clkctrl_outclk\,
	d => \ShiftReg|s_shift[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftReg|s_shift\(1));

-- Location: LCCOMB_X88_Y72_N16
\ShiftReg|s_shift[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftReg|s_shift[2]~feeder_combout\ = \ShiftReg|s_shift\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftReg|s_shift\(1),
	combout => \ShiftReg|s_shift[2]~feeder_combout\);

-- Location: FF_X88_Y72_N17
\ShiftReg|s_shift[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDivider|clkOut~clkctrl_outclk\,
	d => \ShiftReg|s_shift[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftReg|s_shift\(2));

-- Location: LCCOMB_X88_Y72_N6
\ShiftReg|s_shift[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftReg|s_shift[3]~feeder_combout\ = \ShiftReg|s_shift\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftReg|s_shift\(2),
	combout => \ShiftReg|s_shift[3]~feeder_combout\);

-- Location: FF_X88_Y72_N7
\ShiftReg|s_shift[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDivider|clkOut~clkctrl_outclk\,
	d => \ShiftReg|s_shift[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftReg|s_shift\(3));

-- Location: LCCOMB_X88_Y72_N0
\ShiftReg|s_shift[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftReg|s_shift[4]~feeder_combout\ = \ShiftReg|s_shift\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftReg|s_shift\(3),
	combout => \ShiftReg|s_shift[4]~feeder_combout\);

-- Location: FF_X88_Y72_N1
\ShiftReg|s_shift[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDivider|clkOut~clkctrl_outclk\,
	d => \ShiftReg|s_shift[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftReg|s_shift\(4));

-- Location: LCCOMB_X88_Y72_N2
\ShiftReg|s_shift[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftReg|s_shift[5]~feeder_combout\ = \ShiftReg|s_shift\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftReg|s_shift\(4),
	combout => \ShiftReg|s_shift[5]~feeder_combout\);

-- Location: FF_X88_Y72_N3
\ShiftReg|s_shift[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDivider|clkOut~clkctrl_outclk\,
	d => \ShiftReg|s_shift[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftReg|s_shift\(5));

-- Location: LCCOMB_X88_Y72_N20
\ShiftReg|s_shift[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftReg|s_shift[6]~feeder_combout\ = \ShiftReg|s_shift\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftReg|s_shift\(5),
	combout => \ShiftReg|s_shift[6]~feeder_combout\);

-- Location: FF_X88_Y72_N21
\ShiftReg|s_shift[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDivider|clkOut~clkctrl_outclk\,
	d => \ShiftReg|s_shift[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftReg|s_shift\(6));

-- Location: LCCOMB_X88_Y72_N22
\ShiftReg|s_shift[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftReg|s_shift[7]~feeder_combout\ = \ShiftReg|s_shift\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftReg|s_shift\(6),
	combout => \ShiftReg|s_shift[7]~feeder_combout\);

-- Location: FF_X88_Y72_N23
\ShiftReg|s_shift[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDivider|clkOut~clkctrl_outclk\,
	d => \ShiftReg|s_shift[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftReg|s_shift\(7));

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


