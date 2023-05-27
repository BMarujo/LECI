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

-- DATE "05/26/2023 03:07:59"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	temperature_counter_join IS
    PORT (
	dezenas : IN std_logic_vector(3 DOWNTO 0);
	unidades : IN std_logic_vector(3 DOWNTO 0);
	decimas : IN std_logic_vector(3 DOWNTO 0);
	endereco : OUT std_logic_vector(8 DOWNTO 0)
	);
END temperature_counter_join;

-- Design Ports Information
-- endereco[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[1]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[2]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[3]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[4]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[5]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[6]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[7]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[8]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decimas[0]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decimas[1]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidades[0]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidades[1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezenas[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decimas[2]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidades[2]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezenas[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decimas[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidades[3]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezenas[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezenas[3]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF temperature_counter_join IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dezenas : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_unidades : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_decimas : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_endereco : std_logic_vector(8 DOWNTO 0);
SIGNAL \endereco[0]~output_o\ : std_logic;
SIGNAL \endereco[1]~output_o\ : std_logic;
SIGNAL \endereco[2]~output_o\ : std_logic;
SIGNAL \endereco[3]~output_o\ : std_logic;
SIGNAL \endereco[4]~output_o\ : std_logic;
SIGNAL \endereco[5]~output_o\ : std_logic;
SIGNAL \endereco[6]~output_o\ : std_logic;
SIGNAL \endereco[7]~output_o\ : std_logic;
SIGNAL \endereco[8]~output_o\ : std_logic;
SIGNAL \decimas[0]~input_o\ : std_logic;
SIGNAL \unidades[0]~input_o\ : std_logic;
SIGNAL \decimas[1]~input_o\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \decimas[2]~input_o\ : std_logic;
SIGNAL \unidades[1]~input_o\ : std_logic;
SIGNAL \dezenas[0]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \decimas[3]~input_o\ : std_logic;
SIGNAL \dezenas[1]~input_o\ : std_logic;
SIGNAL \unidades[2]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \unidades[3]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \dezenas[2]~input_o\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \dezenas[3]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][5]~0_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][6]~1_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][7]~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][8]~3_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_dezenas <= dezenas;
ww_unidades <= unidades;
ww_decimas <= decimas;
endereco <= ww_endereco;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N16
\endereco[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decimas[0]~input_o\,
	devoe => ww_devoe,
	o => \endereco[0]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\endereco[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~0_combout\,
	devoe => ww_devoe,
	o => \endereco[1]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\endereco[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~2_combout\,
	devoe => ww_devoe,
	o => \endereco[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\endereco[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~4_combout\,
	devoe => ww_devoe,
	o => \endereco[3]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\endereco[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~6_combout\,
	devoe => ww_devoe,
	o => \endereco[4]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\endereco[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~8_combout\,
	devoe => ww_devoe,
	o => \endereco[5]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\endereco[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~10_combout\,
	devoe => ww_devoe,
	o => \endereco[6]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\endereco[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~12_combout\,
	devoe => ww_devoe,
	o => \endereco[7]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\endereco[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~14_combout\,
	devoe => ww_devoe,
	o => \endereco[8]~output_o\);

-- Location: IOIBUF_X107_Y73_N1
\decimas[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decimas(0),
	o => \decimas[0]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\unidades[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_unidades(0),
	o => \unidades[0]~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\decimas[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decimas(1),
	o => \decimas[1]~input_o\);

-- Location: LCCOMB_X1_Y30_N16
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\unidades[0]~input_o\ & (\decimas[1]~input_o\ $ (VCC))) # (!\unidades[0]~input_o\ & (\decimas[1]~input_o\ & VCC))
-- \Add2~1\ = CARRY((\unidades[0]~input_o\ & \decimas[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidades[0]~input_o\,
	datab => \decimas[1]~input_o\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: IOIBUF_X0_Y34_N15
\decimas[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decimas(2),
	o => \decimas[2]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\unidades[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_unidades(1),
	o => \unidades[1]~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\dezenas[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dezenas(0),
	o => \dezenas[0]~input_o\);

-- Location: LCCOMB_X1_Y30_N2
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\unidades[1]~input_o\ & (\dezenas[0]~input_o\ $ (VCC))) # (!\unidades[1]~input_o\ & (\dezenas[0]~input_o\ & VCC))
-- \Add1~1\ = CARRY((\unidades[1]~input_o\ & \dezenas[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidades[1]~input_o\,
	datab => \dezenas[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X1_Y30_N18
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\decimas[2]~input_o\ & ((\Add1~0_combout\ & (\Add2~1\ & VCC)) # (!\Add1~0_combout\ & (!\Add2~1\)))) # (!\decimas[2]~input_o\ & ((\Add1~0_combout\ & (!\Add2~1\)) # (!\Add1~0_combout\ & ((\Add2~1\) # (GND)))))
-- \Add2~3\ = CARRY((\decimas[2]~input_o\ & (!\Add1~0_combout\ & !\Add2~1\)) # (!\decimas[2]~input_o\ & ((!\Add2~1\) # (!\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decimas[2]~input_o\,
	datab => \Add1~0_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: IOIBUF_X0_Y34_N1
\decimas[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decimas(3),
	o => \decimas[3]~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\dezenas[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dezenas(1),
	o => \dezenas[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\unidades[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_unidades(2),
	o => \unidades[2]~input_o\);

-- Location: LCCOMB_X1_Y29_N8
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \unidades[2]~input_o\ $ (\unidades[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \unidades[2]~input_o\,
	datad => \unidades[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X1_Y30_N4
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\dezenas[1]~input_o\ & ((\Add0~0_combout\ & (\Add1~1\ & VCC)) # (!\Add0~0_combout\ & (!\Add1~1\)))) # (!\dezenas[1]~input_o\ & ((\Add0~0_combout\ & (!\Add1~1\)) # (!\Add0~0_combout\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\dezenas[1]~input_o\ & (!\Add0~0_combout\ & !\Add1~1\)) # (!\dezenas[1]~input_o\ & ((!\Add1~1\) # (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dezenas[1]~input_o\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X1_Y30_N20
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\decimas[3]~input_o\ $ (\Add1~2_combout\ $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\decimas[3]~input_o\ & ((\Add1~2_combout\) # (!\Add2~3\))) # (!\decimas[3]~input_o\ & (\Add1~2_combout\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decimas[3]~input_o\,
	datab => \Add1~2_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: IOIBUF_X0_Y29_N15
\unidades[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_unidades(3),
	o => \unidades[3]~input_o\);

-- Location: LCCOMB_X1_Y29_N2
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \unidades[1]~input_o\ $ (\unidades[3]~input_o\ $ (((\unidades[2]~input_o\ & \unidades[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidades[1]~input_o\,
	datab => \unidades[3]~input_o\,
	datac => \unidades[2]~input_o\,
	datad => \unidades[0]~input_o\,
	combout => \Add0~1_combout\);

-- Location: IOIBUF_X0_Y31_N15
\dezenas[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dezenas(2),
	o => \dezenas[2]~input_o\);

-- Location: LCCOMB_X1_Y30_N6
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\Add0~1_combout\ $ (\dezenas[2]~input_o\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\Add0~1_combout\ & ((\dezenas[2]~input_o\) # (!\Add1~3\))) # (!\Add0~1_combout\ & (\dezenas[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \dezenas[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X1_Y30_N22
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add1~4_combout\ & (!\Add2~5\)) # (!\Add1~4_combout\ & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!\Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X1_Y29_N12
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\unidades[1]~input_o\ & ((\unidades[3]~input_o\ & (!\unidades[2]~input_o\)) # (!\unidades[3]~input_o\ & (\unidades[2]~input_o\ & !\unidades[0]~input_o\)))) # (!\unidades[1]~input_o\ & (\unidades[2]~input_o\ & ((!\unidades[0]~input_o\) 
-- # (!\unidades[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidades[1]~input_o\,
	datab => \unidades[3]~input_o\,
	datac => \unidades[2]~input_o\,
	datad => \unidades[0]~input_o\,
	combout => \Add0~2_combout\);

-- Location: IOIBUF_X0_Y28_N15
\dezenas[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dezenas(3),
	o => \dezenas[3]~input_o\);

-- Location: LCCOMB_X2_Y30_N0
\Mult0|mult_core|romout[0][5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][5]~0_combout\ = \dezenas[3]~input_o\ $ (\dezenas[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dezenas[3]~input_o\,
	datad => \dezenas[0]~input_o\,
	combout => \Mult0|mult_core|romout[0][5]~0_combout\);

-- Location: LCCOMB_X1_Y30_N8
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add0~2_combout\ & ((\Mult0|mult_core|romout[0][5]~0_combout\ & (\Add1~5\ & VCC)) # (!\Mult0|mult_core|romout[0][5]~0_combout\ & (!\Add1~5\)))) # (!\Add0~2_combout\ & ((\Mult0|mult_core|romout[0][5]~0_combout\ & (!\Add1~5\)) # 
-- (!\Mult0|mult_core|romout[0][5]~0_combout\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\Add0~2_combout\ & (!\Mult0|mult_core|romout[0][5]~0_combout\ & !\Add1~5\)) # (!\Add0~2_combout\ & ((!\Add1~5\) # (!\Mult0|mult_core|romout[0][5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Mult0|mult_core|romout[0][5]~0_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X1_Y30_N24
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\Add1~6_combout\ & (\Add2~7\ $ (GND))) # (!\Add1~6_combout\ & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((\Add1~6_combout\ & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~6_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X2_Y30_N2
\Mult0|mult_core|romout[0][6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][6]~1_combout\ = \dezenas[1]~input_o\ $ (((\dezenas[0]~input_o\ & !\dezenas[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezenas[0]~input_o\,
	datab => \dezenas[3]~input_o\,
	datad => \dezenas[1]~input_o\,
	combout => \Mult0|mult_core|romout[0][6]~1_combout\);

-- Location: LCCOMB_X1_Y29_N22
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\unidades[3]~input_o\ & (((!\unidades[1]~input_o\ & !\unidades[0]~input_o\)) # (!\unidades[2]~input_o\))) # (!\unidades[3]~input_o\ & (\unidades[1]~input_o\ & (\unidades[2]~input_o\ & \unidades[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidades[1]~input_o\,
	datab => \unidades[3]~input_o\,
	datac => \unidades[2]~input_o\,
	datad => \unidades[0]~input_o\,
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X1_Y30_N10
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\Mult0|mult_core|romout[0][6]~1_combout\ $ (\Add0~3_combout\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\Mult0|mult_core|romout[0][6]~1_combout\ & ((\Add0~3_combout\) # (!\Add1~7\))) # (!\Mult0|mult_core|romout[0][6]~1_combout\ & (\Add0~3_combout\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][6]~1_combout\,
	datab => \Add0~3_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X1_Y30_N26
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Add1~8_combout\ & (!\Add2~9\)) # (!\Add1~8_combout\ & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!\Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X2_Y30_N20
\Mult0|mult_core|romout[0][7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][7]~2_combout\ = \dezenas[2]~input_o\ $ (((\dezenas[0]~input_o\ & (\dezenas[3]~input_o\ & !\dezenas[1]~input_o\)) # (!\dezenas[0]~input_o\ & ((\dezenas[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezenas[0]~input_o\,
	datab => \dezenas[3]~input_o\,
	datac => \dezenas[2]~input_o\,
	datad => \dezenas[1]~input_o\,
	combout => \Mult0|mult_core|romout[0][7]~2_combout\);

-- Location: LCCOMB_X1_Y29_N0
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\unidades[3]~input_o\ & (\unidades[2]~input_o\ & ((\unidades[1]~input_o\) # (\unidades[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidades[1]~input_o\,
	datab => \unidades[3]~input_o\,
	datac => \unidades[2]~input_o\,
	datad => \unidades[0]~input_o\,
	combout => \Add0~4_combout\);

-- Location: LCCOMB_X1_Y30_N12
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Mult0|mult_core|romout[0][7]~2_combout\ & ((\Add0~4_combout\ & (\Add1~9\ & VCC)) # (!\Add0~4_combout\ & (!\Add1~9\)))) # (!\Mult0|mult_core|romout[0][7]~2_combout\ & ((\Add0~4_combout\ & (!\Add1~9\)) # (!\Add0~4_combout\ & 
-- ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\Mult0|mult_core|romout[0][7]~2_combout\ & (!\Add0~4_combout\ & !\Add1~9\)) # (!\Mult0|mult_core|romout[0][7]~2_combout\ & ((!\Add1~9\) # (!\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][7]~2_combout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X1_Y30_N28
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\Add1~10_combout\ & (\Add2~11\ $ (GND))) # (!\Add1~10_combout\ & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((\Add1~10_combout\ & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X2_Y30_N22
\Mult0|mult_core|romout[0][8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][8]~3_combout\ = (\dezenas[2]~input_o\ & ((\dezenas[3]~input_o\ & ((\dezenas[0]~input_o\) # (\dezenas[1]~input_o\))) # (!\dezenas[3]~input_o\ & ((!\dezenas[1]~input_o\))))) # (!\dezenas[2]~input_o\ & (\dezenas[3]~input_o\ $ 
-- (((\dezenas[0]~input_o\ & \dezenas[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezenas[0]~input_o\,
	datab => \dezenas[3]~input_o\,
	datac => \dezenas[2]~input_o\,
	datad => \dezenas[1]~input_o\,
	combout => \Mult0|mult_core|romout[0][8]~3_combout\);

-- Location: LCCOMB_X1_Y30_N14
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = \Add1~11\ $ (!\Mult0|mult_core|romout[0][8]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|mult_core|romout[0][8]~3_combout\,
	cin => \Add1~11\,
	combout => \Add1~12_combout\);

-- Location: LCCOMB_X1_Y30_N30
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = \Add1~12_combout\ $ (\Add2~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~12_combout\,
	cin => \Add2~13\,
	combout => \Add2~14_combout\);

ww_endereco(0) <= \endereco[0]~output_o\;

ww_endereco(1) <= \endereco[1]~output_o\;

ww_endereco(2) <= \endereco[2]~output_o\;

ww_endereco(3) <= \endereco[3]~output_o\;

ww_endereco(4) <= \endereco[4]~output_o\;

ww_endereco(5) <= \endereco[5]~output_o\;

ww_endereco(6) <= \endereco[6]~output_o\;

ww_endereco(7) <= \endereco[7]~output_o\;

ww_endereco(8) <= \endereco[8]~output_o\;
END structure;


