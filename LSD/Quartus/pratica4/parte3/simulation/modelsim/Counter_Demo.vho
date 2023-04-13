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

-- DATE "04/12/2023 21:07:52"

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

ENTITY 	Counter_Demo2 IS
    PORT (
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0)
	);
END Counter_Demo2;

-- Design Ports Information
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Counter_Demo2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst|s_count[0]~1_combout\ : std_logic;
SIGNAL \inst1|decOut_n[5]~7_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1_combout\ : std_logic;
SIGNAL \inst1|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \inst1|decOut_n[5]~1_combout\ : std_logic;
SIGNAL \inst1|decOut_n[4]~2_combout\ : std_logic;
SIGNAL \inst1|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \inst1|decOut_n[2]~4_combout\ : std_logic;
SIGNAL \inst1|decOut_n[1]~5_combout\ : std_logic;
SIGNAL \inst1|decOut_n[0]~6_combout\ : std_logic;
SIGNAL \inst|s_count\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX7 <= ww_HEX7;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

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

-- Location: LCCOMB_X98_Y26_N18
\inst|s_count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[0]~1_combout\ = !\inst|s_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_count\(0),
	combout => \inst|s_count[0]~1_combout\);

-- Location: FF_X98_Y26_N19
\inst|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(0));

-- Location: LCCOMB_X98_Y26_N12
\inst1|decOut_n[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[5]~7_combout\ = \inst|s_count\(1) $ (!\inst|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_count\(1),
	datad => \inst|s_count\(0),
	combout => \inst1|decOut_n[5]~7_combout\);

-- Location: FF_X98_Y26_N13
\inst|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst1|decOut_n[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(1));

-- Location: LCCOMB_X98_Y26_N28
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|s_count\(2) $ (((!\inst|s_count\(1) & !\inst|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(1),
	datac => \inst|s_count\(2),
	datad => \inst|s_count\(0),
	combout => \inst|Add0~0_combout\);

-- Location: FF_X98_Y26_N29
\inst|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(2));

-- Location: LCCOMB_X98_Y26_N26
\inst|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~1_combout\ = \inst|s_count\(3) $ (((!\inst|s_count\(1) & (!\inst|s_count\(2) & !\inst|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(1),
	datab => \inst|s_count\(2),
	datac => \inst|s_count\(3),
	datad => \inst|s_count\(0),
	combout => \inst|Add0~1_combout\);

-- Location: FF_X98_Y26_N27
\inst|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|Add0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(3));

-- Location: LCCOMB_X98_Y26_N24
\inst1|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[6]~0_combout\ = (\inst|s_count\(0) & (!\inst|s_count\(3) & (\inst|s_count\(1) $ (!\inst|s_count\(2))))) # (!\inst|s_count\(0) & (!\inst|s_count\(1) & (\inst|s_count\(3) $ (!\inst|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(1),
	datab => \inst|s_count\(0),
	datac => \inst|s_count\(3),
	datad => \inst|s_count\(2),
	combout => \inst1|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X98_Y26_N22
\inst1|decOut_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[5]~1_combout\ = (\inst|s_count\(1) & (!\inst|s_count\(3) & ((\inst|s_count\(0)) # (!\inst|s_count\(2))))) # (!\inst|s_count\(1) & (\inst|s_count\(0) & (\inst|s_count\(3) $ (!\inst|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(1),
	datab => \inst|s_count\(0),
	datac => \inst|s_count\(3),
	datad => \inst|s_count\(2),
	combout => \inst1|decOut_n[5]~1_combout\);

-- Location: LCCOMB_X98_Y26_N16
\inst1|decOut_n[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[4]~2_combout\ = (\inst|s_count\(1) & (\inst|s_count\(0) & (!\inst|s_count\(3)))) # (!\inst|s_count\(1) & ((\inst|s_count\(2) & ((!\inst|s_count\(3)))) # (!\inst|s_count\(2) & (\inst|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(1),
	datab => \inst|s_count\(0),
	datac => \inst|s_count\(3),
	datad => \inst|s_count\(2),
	combout => \inst1|decOut_n[4]~2_combout\);

-- Location: LCCOMB_X98_Y26_N6
\inst1|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[3]~3_combout\ = (\inst|s_count\(1) & ((\inst|s_count\(0) & ((\inst|s_count\(2)))) # (!\inst|s_count\(0) & (\inst|s_count\(3) & !\inst|s_count\(2))))) # (!\inst|s_count\(1) & (!\inst|s_count\(3) & (\inst|s_count\(0) $ (\inst|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(1),
	datab => \inst|s_count\(0),
	datac => \inst|s_count\(3),
	datad => \inst|s_count\(2),
	combout => \inst1|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X98_Y26_N20
\inst1|decOut_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[2]~4_combout\ = (\inst|s_count\(3) & (\inst|s_count\(2) & ((\inst|s_count\(1)) # (!\inst|s_count\(0))))) # (!\inst|s_count\(3) & (\inst|s_count\(1) & (!\inst|s_count\(0) & !\inst|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(1),
	datab => \inst|s_count\(0),
	datac => \inst|s_count\(3),
	datad => \inst|s_count\(2),
	combout => \inst1|decOut_n[2]~4_combout\);

-- Location: LCCOMB_X98_Y26_N30
\inst1|decOut_n[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[1]~5_combout\ = (\inst|s_count\(1) & ((\inst|s_count\(0) & (\inst|s_count\(3))) # (!\inst|s_count\(0) & ((\inst|s_count\(2)))))) # (!\inst|s_count\(1) & (\inst|s_count\(2) & (\inst|s_count\(0) $ (\inst|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(1),
	datab => \inst|s_count\(0),
	datac => \inst|s_count\(3),
	datad => \inst|s_count\(2),
	combout => \inst1|decOut_n[1]~5_combout\);

-- Location: LCCOMB_X98_Y26_N0
\inst1|decOut_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[0]~6_combout\ = (\inst|s_count\(3) & (\inst|s_count\(0) & (\inst|s_count\(1) $ (\inst|s_count\(2))))) # (!\inst|s_count\(3) & (!\inst|s_count\(1) & (\inst|s_count\(0) $ (\inst|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(1),
	datab => \inst|s_count\(0),
	datac => \inst|s_count\(3),
	datad => \inst|s_count\(2),
	combout => \inst1|decOut_n[0]~6_combout\);

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;
END structure;


