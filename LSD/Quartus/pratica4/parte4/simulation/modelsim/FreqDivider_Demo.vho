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

-- DATE "03/13/2023 11:38:55"

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

ENTITY 	FreqDivider_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	LEDR : OUT std_logic_vector(0 DOWNTO 0)
	);
END FreqDivider_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FreqDivider_Demo IS
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
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \fd|Add0~0_combout\ : std_logic;
SIGNAL \fd|Add0~1\ : std_logic;
SIGNAL \fd|Add0~2_combout\ : std_logic;
SIGNAL \fd|Add0~3\ : std_logic;
SIGNAL \fd|Add0~4_combout\ : std_logic;
SIGNAL \fd|Add0~5\ : std_logic;
SIGNAL \fd|Add0~6_combout\ : std_logic;
SIGNAL \fd|Add0~7\ : std_logic;
SIGNAL \fd|Add0~8_combout\ : std_logic;
SIGNAL \fd|Add0~9\ : std_logic;
SIGNAL \fd|Add0~10_combout\ : std_logic;
SIGNAL \fd|Add0~11\ : std_logic;
SIGNAL \fd|Add0~12_combout\ : std_logic;
SIGNAL \fd|s_counter~7_combout\ : std_logic;
SIGNAL \fd|Add0~13\ : std_logic;
SIGNAL \fd|Add0~14_combout\ : std_logic;
SIGNAL \fd|Add0~15\ : std_logic;
SIGNAL \fd|Add0~16_combout\ : std_logic;
SIGNAL \fd|Add0~17\ : std_logic;
SIGNAL \fd|Add0~18_combout\ : std_logic;
SIGNAL \fd|Add0~19\ : std_logic;
SIGNAL \fd|Add0~20_combout\ : std_logic;
SIGNAL \fd|Add0~21\ : std_logic;
SIGNAL \fd|Add0~22_combout\ : std_logic;
SIGNAL \fd|s_counter~6_combout\ : std_logic;
SIGNAL \fd|Add0~23\ : std_logic;
SIGNAL \fd|Add0~24_combout\ : std_logic;
SIGNAL \fd|s_counter~5_combout\ : std_logic;
SIGNAL \fd|Add0~25\ : std_logic;
SIGNAL \fd|Add0~26_combout\ : std_logic;
SIGNAL \fd|s_counter~4_combout\ : std_logic;
SIGNAL \fd|Add0~27\ : std_logic;
SIGNAL \fd|Add0~28_combout\ : std_logic;
SIGNAL \fd|s_counter~11_combout\ : std_logic;
SIGNAL \fd|Add0~29\ : std_logic;
SIGNAL \fd|Add0~30_combout\ : std_logic;
SIGNAL \fd|Add0~31\ : std_logic;
SIGNAL \fd|Add0~32_combout\ : std_logic;
SIGNAL \fd|s_counter~10_combout\ : std_logic;
SIGNAL \fd|Add0~33\ : std_logic;
SIGNAL \fd|Add0~34_combout\ : std_logic;
SIGNAL \fd|Add0~35\ : std_logic;
SIGNAL \fd|Add0~36_combout\ : std_logic;
SIGNAL \fd|s_counter~3_combout\ : std_logic;
SIGNAL \fd|Add0~37\ : std_logic;
SIGNAL \fd|Add0~38_combout\ : std_logic;
SIGNAL \fd|s_counter~2_combout\ : std_logic;
SIGNAL \fd|Add0~39\ : std_logic;
SIGNAL \fd|Add0~40_combout\ : std_logic;
SIGNAL \fd|s_counter~1_combout\ : std_logic;
SIGNAL \fd|Add0~41\ : std_logic;
SIGNAL \fd|Add0~42_combout\ : std_logic;
SIGNAL \fd|s_counter~0_combout\ : std_logic;
SIGNAL \fd|Add0~43\ : std_logic;
SIGNAL \fd|Add0~44_combout\ : std_logic;
SIGNAL \fd|s_counter~9_combout\ : std_logic;
SIGNAL \fd|Add0~45\ : std_logic;
SIGNAL \fd|Add0~46_combout\ : std_logic;
SIGNAL \fd|Add0~47\ : std_logic;
SIGNAL \fd|Add0~48_combout\ : std_logic;
SIGNAL \fd|s_counter~8_combout\ : std_logic;
SIGNAL \fd|Equal1~0_combout\ : std_logic;
SIGNAL \fd|Equal1~1_combout\ : std_logic;
SIGNAL \fd|Add0~49\ : std_logic;
SIGNAL \fd|Add0~50_combout\ : std_logic;
SIGNAL \fd|Add0~51\ : std_logic;
SIGNAL \fd|Add0~52_combout\ : std_logic;
SIGNAL \fd|Add0~53\ : std_logic;
SIGNAL \fd|Add0~54_combout\ : std_logic;
SIGNAL \fd|Equal0~1_combout\ : std_logic;
SIGNAL \fd|Equal0~2_combout\ : std_logic;
SIGNAL \fd|Add0~55\ : std_logic;
SIGNAL \fd|Add0~56_combout\ : std_logic;
SIGNAL \fd|Add0~57\ : std_logic;
SIGNAL \fd|Add0~58_combout\ : std_logic;
SIGNAL \fd|Add0~59\ : std_logic;
SIGNAL \fd|Add0~60_combout\ : std_logic;
SIGNAL \fd|Add0~61\ : std_logic;
SIGNAL \fd|Add0~62_combout\ : std_logic;
SIGNAL \fd|Equal0~0_combout\ : std_logic;
SIGNAL \fd|Equal0~3_combout\ : std_logic;
SIGNAL \fd|Equal0~4_combout\ : std_logic;
SIGNAL \fd|Equal0~5_combout\ : std_logic;
SIGNAL \fd|Equal1~2_combout\ : std_logic;
SIGNAL \fd|Equal1~3_combout\ : std_logic;
SIGNAL \fd|Equal1~4_combout\ : std_logic;
SIGNAL \fd|Equal0~7_combout\ : std_logic;
SIGNAL \fd|Equal0~8_combout\ : std_logic;
SIGNAL \fd|Equal0~6_combout\ : std_logic;
SIGNAL \fd|Equal0~9_combout\ : std_logic;
SIGNAL \fd|clkOut~0_combout\ : std_logic;
SIGNAL \fd|clkOut~q\ : std_logic;
SIGNAL \fd|s_counter\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
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
	i => \fd|clkOut~q\,
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

-- Location: LCCOMB_X13_Y40_N0
\fd|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~0_combout\ = \fd|s_counter\(0) $ (VCC)
-- \fd|Add0~1\ = CARRY(\fd|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(0),
	datad => VCC,
	combout => \fd|Add0~0_combout\,
	cout => \fd|Add0~1\);

-- Location: FF_X13_Y40_N1
\fd|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(0));

-- Location: LCCOMB_X13_Y40_N2
\fd|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~2_combout\ = (\fd|s_counter\(1) & (!\fd|Add0~1\)) # (!\fd|s_counter\(1) & ((\fd|Add0~1\) # (GND)))
-- \fd|Add0~3\ = CARRY((!\fd|Add0~1\) # (!\fd|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(1),
	datad => VCC,
	cin => \fd|Add0~1\,
	combout => \fd|Add0~2_combout\,
	cout => \fd|Add0~3\);

-- Location: FF_X13_Y40_N3
\fd|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(1));

-- Location: LCCOMB_X13_Y40_N4
\fd|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~4_combout\ = (\fd|s_counter\(2) & (\fd|Add0~3\ $ (GND))) # (!\fd|s_counter\(2) & (!\fd|Add0~3\ & VCC))
-- \fd|Add0~5\ = CARRY((\fd|s_counter\(2) & !\fd|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(2),
	datad => VCC,
	cin => \fd|Add0~3\,
	combout => \fd|Add0~4_combout\,
	cout => \fd|Add0~5\);

-- Location: FF_X13_Y40_N5
\fd|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(2));

-- Location: LCCOMB_X13_Y40_N6
\fd|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~6_combout\ = (\fd|s_counter\(3) & (!\fd|Add0~5\)) # (!\fd|s_counter\(3) & ((\fd|Add0~5\) # (GND)))
-- \fd|Add0~7\ = CARRY((!\fd|Add0~5\) # (!\fd|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(3),
	datad => VCC,
	cin => \fd|Add0~5\,
	combout => \fd|Add0~6_combout\,
	cout => \fd|Add0~7\);

-- Location: FF_X13_Y40_N7
\fd|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(3));

-- Location: LCCOMB_X13_Y40_N8
\fd|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~8_combout\ = (\fd|s_counter\(4) & (\fd|Add0~7\ $ (GND))) # (!\fd|s_counter\(4) & (!\fd|Add0~7\ & VCC))
-- \fd|Add0~9\ = CARRY((\fd|s_counter\(4) & !\fd|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(4),
	datad => VCC,
	cin => \fd|Add0~7\,
	combout => \fd|Add0~8_combout\,
	cout => \fd|Add0~9\);

-- Location: FF_X13_Y40_N9
\fd|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(4));

-- Location: LCCOMB_X13_Y40_N10
\fd|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~10_combout\ = (\fd|s_counter\(5) & (!\fd|Add0~9\)) # (!\fd|s_counter\(5) & ((\fd|Add0~9\) # (GND)))
-- \fd|Add0~11\ = CARRY((!\fd|Add0~9\) # (!\fd|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(5),
	datad => VCC,
	cin => \fd|Add0~9\,
	combout => \fd|Add0~10_combout\,
	cout => \fd|Add0~11\);

-- Location: FF_X13_Y40_N11
\fd|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(5));

-- Location: LCCOMB_X13_Y40_N12
\fd|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~12_combout\ = (\fd|s_counter\(6) & (\fd|Add0~11\ $ (GND))) # (!\fd|s_counter\(6) & (!\fd|Add0~11\ & VCC))
-- \fd|Add0~13\ = CARRY((\fd|s_counter\(6) & !\fd|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(6),
	datad => VCC,
	cin => \fd|Add0~11\,
	combout => \fd|Add0~12_combout\,
	cout => \fd|Add0~13\);

-- Location: LCCOMB_X14_Y40_N20
\fd|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter~7_combout\ = (\fd|Add0~12_combout\ & !\fd|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Add0~12_combout\,
	datad => \fd|Equal1~4_combout\,
	combout => \fd|s_counter~7_combout\);

-- Location: FF_X14_Y40_N21
\fd|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(6));

-- Location: LCCOMB_X13_Y40_N14
\fd|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~14_combout\ = (\fd|s_counter\(7) & (!\fd|Add0~13\)) # (!\fd|s_counter\(7) & ((\fd|Add0~13\) # (GND)))
-- \fd|Add0~15\ = CARRY((!\fd|Add0~13\) # (!\fd|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(7),
	datad => VCC,
	cin => \fd|Add0~13\,
	combout => \fd|Add0~14_combout\,
	cout => \fd|Add0~15\);

-- Location: FF_X13_Y40_N15
\fd|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(7));

-- Location: LCCOMB_X13_Y40_N16
\fd|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~16_combout\ = (\fd|s_counter\(8) & (\fd|Add0~15\ $ (GND))) # (!\fd|s_counter\(8) & (!\fd|Add0~15\ & VCC))
-- \fd|Add0~17\ = CARRY((\fd|s_counter\(8) & !\fd|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(8),
	datad => VCC,
	cin => \fd|Add0~15\,
	combout => \fd|Add0~16_combout\,
	cout => \fd|Add0~17\);

-- Location: FF_X13_Y40_N17
\fd|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(8));

-- Location: LCCOMB_X13_Y40_N18
\fd|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~18_combout\ = (\fd|s_counter\(9) & (!\fd|Add0~17\)) # (!\fd|s_counter\(9) & ((\fd|Add0~17\) # (GND)))
-- \fd|Add0~19\ = CARRY((!\fd|Add0~17\) # (!\fd|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(9),
	datad => VCC,
	cin => \fd|Add0~17\,
	combout => \fd|Add0~18_combout\,
	cout => \fd|Add0~19\);

-- Location: FF_X13_Y40_N19
\fd|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(9));

-- Location: LCCOMB_X13_Y40_N20
\fd|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~20_combout\ = (\fd|s_counter\(10) & (\fd|Add0~19\ $ (GND))) # (!\fd|s_counter\(10) & (!\fd|Add0~19\ & VCC))
-- \fd|Add0~21\ = CARRY((\fd|s_counter\(10) & !\fd|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(10),
	datad => VCC,
	cin => \fd|Add0~19\,
	combout => \fd|Add0~20_combout\,
	cout => \fd|Add0~21\);

-- Location: FF_X13_Y40_N21
\fd|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(10));

-- Location: LCCOMB_X13_Y40_N22
\fd|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~22_combout\ = (\fd|s_counter\(11) & (!\fd|Add0~21\)) # (!\fd|s_counter\(11) & ((\fd|Add0~21\) # (GND)))
-- \fd|Add0~23\ = CARRY((!\fd|Add0~21\) # (!\fd|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(11),
	datad => VCC,
	cin => \fd|Add0~21\,
	combout => \fd|Add0~22_combout\,
	cout => \fd|Add0~23\);

-- Location: LCCOMB_X14_Y39_N0
\fd|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter~6_combout\ = (!\fd|Equal1~4_combout\ & \fd|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|Equal1~4_combout\,
	datad => \fd|Add0~22_combout\,
	combout => \fd|s_counter~6_combout\);

-- Location: FF_X14_Y39_N1
\fd|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(11));

-- Location: LCCOMB_X13_Y40_N24
\fd|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~24_combout\ = (\fd|s_counter\(12) & (\fd|Add0~23\ $ (GND))) # (!\fd|s_counter\(12) & (!\fd|Add0~23\ & VCC))
-- \fd|Add0~25\ = CARRY((\fd|s_counter\(12) & !\fd|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(12),
	datad => VCC,
	cin => \fd|Add0~23\,
	combout => \fd|Add0~24_combout\,
	cout => \fd|Add0~25\);

-- Location: LCCOMB_X14_Y39_N26
\fd|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter~5_combout\ = (!\fd|Equal1~4_combout\ & \fd|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|Equal1~4_combout\,
	datad => \fd|Add0~24_combout\,
	combout => \fd|s_counter~5_combout\);

-- Location: FF_X14_Y39_N27
\fd|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(12));

-- Location: LCCOMB_X13_Y40_N26
\fd|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~26_combout\ = (\fd|s_counter\(13) & (!\fd|Add0~25\)) # (!\fd|s_counter\(13) & ((\fd|Add0~25\) # (GND)))
-- \fd|Add0~27\ = CARRY((!\fd|Add0~25\) # (!\fd|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(13),
	datad => VCC,
	cin => \fd|Add0~25\,
	combout => \fd|Add0~26_combout\,
	cout => \fd|Add0~27\);

-- Location: LCCOMB_X14_Y39_N6
\fd|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter~4_combout\ = (!\fd|Equal1~4_combout\ & \fd|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|Equal1~4_combout\,
	datad => \fd|Add0~26_combout\,
	combout => \fd|s_counter~4_combout\);

-- Location: FF_X14_Y39_N7
\fd|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(13));

-- Location: LCCOMB_X13_Y40_N28
\fd|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~28_combout\ = (\fd|s_counter\(14) & (\fd|Add0~27\ $ (GND))) # (!\fd|s_counter\(14) & (!\fd|Add0~27\ & VCC))
-- \fd|Add0~29\ = CARRY((\fd|s_counter\(14) & !\fd|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(14),
	datad => VCC,
	cin => \fd|Add0~27\,
	combout => \fd|Add0~28_combout\,
	cout => \fd|Add0~29\);

-- Location: LCCOMB_X12_Y39_N22
\fd|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter~11_combout\ = (!\fd|Equal1~4_combout\ & \fd|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|Equal1~4_combout\,
	datad => \fd|Add0~28_combout\,
	combout => \fd|s_counter~11_combout\);

-- Location: FF_X12_Y39_N23
\fd|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(14));

-- Location: LCCOMB_X13_Y40_N30
\fd|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~30_combout\ = (\fd|s_counter\(15) & (!\fd|Add0~29\)) # (!\fd|s_counter\(15) & ((\fd|Add0~29\) # (GND)))
-- \fd|Add0~31\ = CARRY((!\fd|Add0~29\) # (!\fd|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(15),
	datad => VCC,
	cin => \fd|Add0~29\,
	combout => \fd|Add0~30_combout\,
	cout => \fd|Add0~31\);

-- Location: FF_X13_Y40_N31
\fd|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(15));

-- Location: LCCOMB_X13_Y39_N0
\fd|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~32_combout\ = (\fd|s_counter\(16) & (\fd|Add0~31\ $ (GND))) # (!\fd|s_counter\(16) & (!\fd|Add0~31\ & VCC))
-- \fd|Add0~33\ = CARRY((\fd|s_counter\(16) & !\fd|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(16),
	datad => VCC,
	cin => \fd|Add0~31\,
	combout => \fd|Add0~32_combout\,
	cout => \fd|Add0~33\);

-- Location: LCCOMB_X12_Y39_N16
\fd|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter~10_combout\ = (\fd|Add0~32_combout\ & !\fd|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|Add0~32_combout\,
	datad => \fd|Equal1~4_combout\,
	combout => \fd|s_counter~10_combout\);

-- Location: FF_X12_Y39_N17
\fd|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(16));

-- Location: LCCOMB_X13_Y39_N2
\fd|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~34_combout\ = (\fd|s_counter\(17) & (!\fd|Add0~33\)) # (!\fd|s_counter\(17) & ((\fd|Add0~33\) # (GND)))
-- \fd|Add0~35\ = CARRY((!\fd|Add0~33\) # (!\fd|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(17),
	datad => VCC,
	cin => \fd|Add0~33\,
	combout => \fd|Add0~34_combout\,
	cout => \fd|Add0~35\);

-- Location: FF_X13_Y39_N3
\fd|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(17));

-- Location: LCCOMB_X13_Y39_N4
\fd|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~36_combout\ = (\fd|s_counter\(18) & (\fd|Add0~35\ $ (GND))) # (!\fd|s_counter\(18) & (!\fd|Add0~35\ & VCC))
-- \fd|Add0~37\ = CARRY((\fd|s_counter\(18) & !\fd|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(18),
	datad => VCC,
	cin => \fd|Add0~35\,
	combout => \fd|Add0~36_combout\,
	cout => \fd|Add0~37\);

-- Location: LCCOMB_X14_Y39_N20
\fd|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter~3_combout\ = (!\fd|Equal1~4_combout\ & \fd|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Equal1~4_combout\,
	datac => \fd|Add0~36_combout\,
	combout => \fd|s_counter~3_combout\);

-- Location: FF_X14_Y39_N21
\fd|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(18));

-- Location: LCCOMB_X13_Y39_N6
\fd|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~38_combout\ = (\fd|s_counter\(19) & (!\fd|Add0~37\)) # (!\fd|s_counter\(19) & ((\fd|Add0~37\) # (GND)))
-- \fd|Add0~39\ = CARRY((!\fd|Add0~37\) # (!\fd|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(19),
	datad => VCC,
	cin => \fd|Add0~37\,
	combout => \fd|Add0~38_combout\,
	cout => \fd|Add0~39\);

-- Location: LCCOMB_X14_Y39_N2
\fd|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter~2_combout\ = (!\fd|Equal1~4_combout\ & \fd|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Equal1~4_combout\,
	datac => \fd|Add0~38_combout\,
	combout => \fd|s_counter~2_combout\);

-- Location: FF_X14_Y39_N3
\fd|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(19));

-- Location: LCCOMB_X13_Y39_N8
\fd|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~40_combout\ = (\fd|s_counter\(20) & (\fd|Add0~39\ $ (GND))) # (!\fd|s_counter\(20) & (!\fd|Add0~39\ & VCC))
-- \fd|Add0~41\ = CARRY((\fd|s_counter\(20) & !\fd|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(20),
	datad => VCC,
	cin => \fd|Add0~39\,
	combout => \fd|Add0~40_combout\,
	cout => \fd|Add0~41\);

-- Location: LCCOMB_X14_Y39_N4
\fd|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter~1_combout\ = (!\fd|Equal1~4_combout\ & \fd|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|Equal1~4_combout\,
	datad => \fd|Add0~40_combout\,
	combout => \fd|s_counter~1_combout\);

-- Location: FF_X14_Y39_N5
\fd|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(20));

-- Location: LCCOMB_X13_Y39_N10
\fd|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~42_combout\ = (\fd|s_counter\(21) & (!\fd|Add0~41\)) # (!\fd|s_counter\(21) & ((\fd|Add0~41\) # (GND)))
-- \fd|Add0~43\ = CARRY((!\fd|Add0~41\) # (!\fd|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(21),
	datad => VCC,
	cin => \fd|Add0~41\,
	combout => \fd|Add0~42_combout\,
	cout => \fd|Add0~43\);

-- Location: LCCOMB_X14_Y39_N12
\fd|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter~0_combout\ = (!\fd|Equal1~4_combout\ & \fd|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|Equal1~4_combout\,
	datad => \fd|Add0~42_combout\,
	combout => \fd|s_counter~0_combout\);

-- Location: FF_X14_Y39_N13
\fd|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(21));

-- Location: LCCOMB_X13_Y39_N12
\fd|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~44_combout\ = (\fd|s_counter\(22) & (\fd|Add0~43\ $ (GND))) # (!\fd|s_counter\(22) & (!\fd|Add0~43\ & VCC))
-- \fd|Add0~45\ = CARRY((\fd|s_counter\(22) & !\fd|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(22),
	datad => VCC,
	cin => \fd|Add0~43\,
	combout => \fd|Add0~44_combout\,
	cout => \fd|Add0~45\);

-- Location: LCCOMB_X12_Y39_N12
\fd|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter~9_combout\ = (\fd|Add0~44_combout\ & !\fd|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|Add0~44_combout\,
	datad => \fd|Equal1~4_combout\,
	combout => \fd|s_counter~9_combout\);

-- Location: FF_X12_Y39_N13
\fd|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(22));

-- Location: LCCOMB_X13_Y39_N14
\fd|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~46_combout\ = (\fd|s_counter\(23) & (!\fd|Add0~45\)) # (!\fd|s_counter\(23) & ((\fd|Add0~45\) # (GND)))
-- \fd|Add0~47\ = CARRY((!\fd|Add0~45\) # (!\fd|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(23),
	datad => VCC,
	cin => \fd|Add0~45\,
	combout => \fd|Add0~46_combout\,
	cout => \fd|Add0~47\);

-- Location: FF_X13_Y39_N15
\fd|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(23));

-- Location: LCCOMB_X13_Y39_N16
\fd|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~48_combout\ = (\fd|s_counter\(24) & (\fd|Add0~47\ $ (GND))) # (!\fd|s_counter\(24) & (!\fd|Add0~47\ & VCC))
-- \fd|Add0~49\ = CARRY((\fd|s_counter\(24) & !\fd|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(24),
	datad => VCC,
	cin => \fd|Add0~47\,
	combout => \fd|Add0~48_combout\,
	cout => \fd|Add0~49\);

-- Location: LCCOMB_X14_Y39_N28
\fd|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter~8_combout\ = (!\fd|Equal1~4_combout\ & \fd|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Equal1~4_combout\,
	datac => \fd|Add0~48_combout\,
	combout => \fd|s_counter~8_combout\);

-- Location: FF_X14_Y39_N29
\fd|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(24));

-- Location: LCCOMB_X12_Y39_N28
\fd|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal1~0_combout\ = (!\fd|s_counter\(17) & (\fd|s_counter\(22) & (!\fd|s_counter\(23) & \fd|s_counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(17),
	datab => \fd|s_counter\(22),
	datac => \fd|s_counter\(23),
	datad => \fd|s_counter\(24),
	combout => \fd|Equal1~0_combout\);

-- Location: LCCOMB_X12_Y39_N6
\fd|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal1~1_combout\ = (\fd|s_counter\(14) & (\fd|s_counter\(16) & (!\fd|s_counter\(15) & !\fd|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(14),
	datab => \fd|s_counter\(16),
	datac => \fd|s_counter\(15),
	datad => \fd|s_counter\(10),
	combout => \fd|Equal1~1_combout\);

-- Location: LCCOMB_X13_Y39_N18
\fd|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~50_combout\ = (\fd|s_counter\(25) & (!\fd|Add0~49\)) # (!\fd|s_counter\(25) & ((\fd|Add0~49\) # (GND)))
-- \fd|Add0~51\ = CARRY((!\fd|Add0~49\) # (!\fd|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(25),
	datad => VCC,
	cin => \fd|Add0~49\,
	combout => \fd|Add0~50_combout\,
	cout => \fd|Add0~51\);

-- Location: FF_X13_Y39_N19
\fd|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(25));

-- Location: LCCOMB_X13_Y39_N20
\fd|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~52_combout\ = (\fd|s_counter\(26) & (\fd|Add0~51\ $ (GND))) # (!\fd|s_counter\(26) & (!\fd|Add0~51\ & VCC))
-- \fd|Add0~53\ = CARRY((\fd|s_counter\(26) & !\fd|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(26),
	datad => VCC,
	cin => \fd|Add0~51\,
	combout => \fd|Add0~52_combout\,
	cout => \fd|Add0~53\);

-- Location: FF_X13_Y39_N21
\fd|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(26));

-- Location: LCCOMB_X13_Y39_N22
\fd|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~54_combout\ = (\fd|s_counter\(27) & (!\fd|Add0~53\)) # (!\fd|s_counter\(27) & ((\fd|Add0~53\) # (GND)))
-- \fd|Add0~55\ = CARRY((!\fd|Add0~53\) # (!\fd|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(27),
	datad => VCC,
	cin => \fd|Add0~53\,
	combout => \fd|Add0~54_combout\,
	cout => \fd|Add0~55\);

-- Location: FF_X13_Y39_N23
\fd|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(27));

-- Location: LCCOMB_X14_Y39_N10
\fd|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~1_combout\ = (\fd|s_counter\(21) & (!\fd|s_counter\(25) & (!\fd|s_counter\(26) & !\fd|s_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(21),
	datab => \fd|s_counter\(25),
	datac => \fd|s_counter\(26),
	datad => \fd|s_counter\(27),
	combout => \fd|Equal0~1_combout\);

-- Location: LCCOMB_X14_Y39_N8
\fd|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~2_combout\ = (\fd|s_counter\(13) & (\fd|s_counter\(19) & (\fd|s_counter\(20) & \fd|s_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(13),
	datab => \fd|s_counter\(19),
	datac => \fd|s_counter\(20),
	datad => \fd|s_counter\(18),
	combout => \fd|Equal0~2_combout\);

-- Location: LCCOMB_X13_Y39_N24
\fd|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~56_combout\ = (\fd|s_counter\(28) & (\fd|Add0~55\ $ (GND))) # (!\fd|s_counter\(28) & (!\fd|Add0~55\ & VCC))
-- \fd|Add0~57\ = CARRY((\fd|s_counter\(28) & !\fd|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(28),
	datad => VCC,
	cin => \fd|Add0~55\,
	combout => \fd|Add0~56_combout\,
	cout => \fd|Add0~57\);

-- Location: FF_X13_Y39_N25
\fd|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(28));

-- Location: LCCOMB_X13_Y39_N26
\fd|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~58_combout\ = (\fd|s_counter\(29) & (!\fd|Add0~57\)) # (!\fd|s_counter\(29) & ((\fd|Add0~57\) # (GND)))
-- \fd|Add0~59\ = CARRY((!\fd|Add0~57\) # (!\fd|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(29),
	datad => VCC,
	cin => \fd|Add0~57\,
	combout => \fd|Add0~58_combout\,
	cout => \fd|Add0~59\);

-- Location: FF_X13_Y39_N27
\fd|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(29));

-- Location: LCCOMB_X13_Y39_N28
\fd|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~60_combout\ = (\fd|s_counter\(30) & (\fd|Add0~59\ $ (GND))) # (!\fd|s_counter\(30) & (!\fd|Add0~59\ & VCC))
-- \fd|Add0~61\ = CARRY((\fd|s_counter\(30) & !\fd|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(30),
	datad => VCC,
	cin => \fd|Add0~59\,
	combout => \fd|Add0~60_combout\,
	cout => \fd|Add0~61\);

-- Location: FF_X13_Y39_N29
\fd|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(30));

-- Location: LCCOMB_X13_Y39_N30
\fd|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add0~62_combout\ = \fd|s_counter\(31) $ (\fd|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(31),
	cin => \fd|Add0~61\,
	combout => \fd|Add0~62_combout\);

-- Location: FF_X13_Y39_N31
\fd|s_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(31));

-- Location: LCCOMB_X14_Y39_N30
\fd|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~0_combout\ = (!\fd|s_counter\(29) & (!\fd|s_counter\(28) & (!\fd|s_counter\(31) & !\fd|s_counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(29),
	datab => \fd|s_counter\(28),
	datac => \fd|s_counter\(31),
	datad => \fd|s_counter\(30),
	combout => \fd|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y39_N18
\fd|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~3_combout\ = (\fd|s_counter\(12) & (\fd|s_counter\(11) & (!\fd|s_counter\(8) & !\fd|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(12),
	datab => \fd|s_counter\(11),
	datac => \fd|s_counter\(8),
	datad => \fd|s_counter\(9),
	combout => \fd|Equal0~3_combout\);

-- Location: LCCOMB_X14_Y39_N24
\fd|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~4_combout\ = (\fd|Equal0~1_combout\ & (\fd|Equal0~2_combout\ & (\fd|Equal0~0_combout\ & \fd|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Equal0~1_combout\,
	datab => \fd|Equal0~2_combout\,
	datac => \fd|Equal0~0_combout\,
	datad => \fd|Equal0~3_combout\,
	combout => \fd|Equal0~4_combout\);

-- Location: LCCOMB_X14_Y39_N14
\fd|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~5_combout\ = (\fd|s_counter\(5) & (!\fd|s_counter\(6) & (!\fd|s_counter\(7) & \fd|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(5),
	datab => \fd|s_counter\(6),
	datac => \fd|s_counter\(7),
	datad => \fd|Equal0~4_combout\,
	combout => \fd|Equal0~5_combout\);

-- Location: LCCOMB_X14_Y40_N28
\fd|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal1~2_combout\ = (\fd|s_counter\(3) & \fd|s_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|s_counter\(3),
	datad => \fd|s_counter\(4),
	combout => \fd|Equal1~2_combout\);

-- Location: LCCOMB_X14_Y40_N26
\fd|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal1~3_combout\ = (\fd|s_counter\(1) & (\fd|s_counter\(2) & (\fd|s_counter\(0) & \fd|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(1),
	datab => \fd|s_counter\(2),
	datac => \fd|s_counter\(0),
	datad => \fd|Equal1~2_combout\,
	combout => \fd|Equal1~3_combout\);

-- Location: LCCOMB_X14_Y39_N22
\fd|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal1~4_combout\ = (\fd|Equal1~0_combout\ & (\fd|Equal1~1_combout\ & (\fd|Equal0~5_combout\ & \fd|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Equal1~0_combout\,
	datab => \fd|Equal1~1_combout\,
	datac => \fd|Equal0~5_combout\,
	datad => \fd|Equal1~3_combout\,
	combout => \fd|Equal1~4_combout\);

-- Location: LCCOMB_X12_Y39_N8
\fd|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~7_combout\ = (!\fd|s_counter\(14) & (!\fd|s_counter\(16) & (\fd|s_counter\(15) & \fd|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(14),
	datab => \fd|s_counter\(16),
	datac => \fd|s_counter\(15),
	datad => \fd|s_counter\(10),
	combout => \fd|Equal0~7_combout\);

-- Location: LCCOMB_X14_Y40_N30
\fd|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~8_combout\ = (!\fd|s_counter\(1) & (!\fd|s_counter\(3) & (!\fd|s_counter\(2) & !\fd|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(1),
	datab => \fd|s_counter\(3),
	datac => \fd|s_counter\(2),
	datad => \fd|s_counter\(4),
	combout => \fd|Equal0~8_combout\);

-- Location: LCCOMB_X12_Y39_N18
\fd|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~6_combout\ = (\fd|s_counter\(17) & (!\fd|s_counter\(22) & (\fd|s_counter\(23) & !\fd|s_counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(17),
	datab => \fd|s_counter\(22),
	datac => \fd|s_counter\(23),
	datad => \fd|s_counter\(24),
	combout => \fd|Equal0~6_combout\);

-- Location: LCCOMB_X12_Y39_N14
\fd|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~9_combout\ = (!\fd|s_counter\(0) & (\fd|Equal0~7_combout\ & (\fd|Equal0~8_combout\ & \fd|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(0),
	datab => \fd|Equal0~7_combout\,
	datac => \fd|Equal0~8_combout\,
	datad => \fd|Equal0~6_combout\,
	combout => \fd|Equal0~9_combout\);

-- Location: LCCOMB_X14_Y39_N16
\fd|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|clkOut~0_combout\ = (\fd|Equal1~4_combout\ & (\fd|Equal0~5_combout\ & ((\fd|Equal0~9_combout\)))) # (!\fd|Equal1~4_combout\ & ((\fd|clkOut~q\) # ((\fd|Equal0~5_combout\ & \fd|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Equal1~4_combout\,
	datab => \fd|Equal0~5_combout\,
	datac => \fd|clkOut~q\,
	datad => \fd|Equal0~9_combout\,
	combout => \fd|clkOut~0_combout\);

-- Location: FF_X14_Y39_N17
\fd|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|clkOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|clkOut~q\);

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


