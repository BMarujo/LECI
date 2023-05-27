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

-- DATE "05/25/2023 09:27:05"

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

ENTITY 	projetolsd IS
    PORT (
	LEDG : OUT std_logic_vector(1 DOWNTO 0);
	SW6 : IN std_logic;
	SW5 : IN std_logic;
	SW4 : IN std_logic;
	SW3 : IN std_logic;
	SW2 : IN std_logic;
	SW1 : IN std_logic;
	SW0 : IN std_logic;
	SW17 : IN std_logic;
	SW16 : IN std_logic;
	SW15 : IN std_logic;
	SW14 : IN std_logic;
	SW13 : IN std_logic;
	SW12 : IN std_logic;
	SW11 : IN std_logic
	);
END projetolsd;

-- Design Ports Information
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW3	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW0	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW5	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW4	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW6	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW16	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW12	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW13	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW14	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW11	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW17	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW15	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF projetolsd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW6 : std_logic;
SIGNAL ww_SW5 : std_logic;
SIGNAL ww_SW4 : std_logic;
SIGNAL ww_SW3 : std_logic;
SIGNAL ww_SW2 : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_SW0 : std_logic;
SIGNAL ww_SW17 : std_logic;
SIGNAL ww_SW16 : std_logic;
SIGNAL ww_SW15 : std_logic;
SIGNAL ww_SW14 : std_logic;
SIGNAL ww_SW13 : std_logic;
SIGNAL ww_SW12 : std_logic;
SIGNAL ww_SW11 : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \SW15~input_o\ : std_logic;
SIGNAL \SW17~input_o\ : std_logic;
SIGNAL \SW16~input_o\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \SW14~input_o\ : std_logic;
SIGNAL \SW13~input_o\ : std_logic;
SIGNAL \SW12~input_o\ : std_logic;
SIGNAL \SW11~input_o\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Mux0~1_combout\ : std_logic;
SIGNAL \inst4|Mux0~2_combout\ : std_logic;
SIGNAL \inst4|Mux0~3_combout\ : std_logic;
SIGNAL \inst4|Mux0~4_combout\ : std_logic;
SIGNAL \inst4|Mux0~5_combout\ : std_logic;
SIGNAL \SW4~input_o\ : std_logic;
SIGNAL \SW6~input_o\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \SW3~input_o\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \inst3|Mux1~4_combout\ : std_logic;
SIGNAL \SW5~input_o\ : std_logic;
SIGNAL \inst3|Mux1~5_combout\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|Mux1~1_combout\ : std_logic;
SIGNAL \inst3|Mux1~2_combout\ : std_logic;
SIGNAL \inst3|Mux1~3_combout\ : std_logic;
SIGNAL \inst3|Mux3~1_combout\ : std_logic;
SIGNAL \inst3|Mux3~2_combout\ : std_logic;
SIGNAL \inst3|Mux3~3_combout\ : std_logic;
SIGNAL \inst3|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|Mux3~4_combout\ : std_logic;
SIGNAL \inst3|Mux3~5_combout\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|Add0~11_combout\ : std_logic;
SIGNAL \inst4|Mux1~2_combout\ : std_logic;
SIGNAL \inst4|Mux1~1_combout\ : std_logic;
SIGNAL \inst4|Mux1~3_combout\ : std_logic;
SIGNAL \inst4|Mux1~6_combout\ : std_logic;
SIGNAL \inst4|Mux1~4_combout\ : std_logic;
SIGNAL \inst4|Mux1~5_combout\ : std_logic;
SIGNAL \inst4|Mux1~7_combout\ : std_logic;
SIGNAL \inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|Mux2~1_combout\ : std_logic;
SIGNAL \inst3|Mux2~2_combout\ : std_logic;
SIGNAL \inst3|Mux2~3_combout\ : std_logic;
SIGNAL \inst3|Mux2~4_combout\ : std_logic;
SIGNAL \inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|Mux2~1_combout\ : std_logic;
SIGNAL \inst4|Mux2~3_combout\ : std_logic;
SIGNAL \inst4|Mux2~2_combout\ : std_logic;
SIGNAL \inst4|Mux2~4_combout\ : std_logic;
SIGNAL \inst4|Mux2~5_combout\ : std_logic;
SIGNAL \inst1|Add1~1\ : std_logic;
SIGNAL \inst1|Add1~3\ : std_logic;
SIGNAL \inst1|Add1~4_combout\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~7_combout\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~5_combout\ : std_logic;
SIGNAL \inst1|Add0~13_combout\ : std_logic;
SIGNAL \inst1|Add1~5\ : std_logic;
SIGNAL \inst1|Add1~6_combout\ : std_logic;
SIGNAL \inst1|Add1~0_combout\ : std_logic;
SIGNAL \inst1|Add1~2_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Mux3~2_combout\ : std_logic;
SIGNAL \inst4|Mux3~3_combout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|Mux3~1_combout\ : std_logic;
SIGNAL \inst4|Mux3~4_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDG <= ww_LEDG;
ww_SW6 <= SW6;
ww_SW5 <= SW5;
ww_SW4 <= SW4;
ww_SW3 <= SW3;
ww_SW2 <= SW2;
ww_SW1 <= SW1;
ww_SW0 <= SW0;
ww_SW17 <= SW17;
ww_SW16 <= SW16;
ww_SW15 <= SW15;
ww_SW14 <= SW14;
ww_SW13 <= SW13;
ww_SW12 <= SW12;
ww_SW11 <= SW11;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst2|ALT_INV_Mux0~0_combout\ <= NOT \inst2|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOIBUF_X60_Y73_N1
\SW15~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW15,
	o => \SW15~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\SW17~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW17,
	o => \SW17~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\SW16~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW16,
	o => \SW16~input_o\);

-- Location: LCCOMB_X61_Y72_N12
\inst4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (!\SW15~input_o\ & (!\SW17~input_o\ & !\SW16~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW15~input_o\,
	datac => \SW17~input_o\,
	datad => \SW16~input_o\,
	combout => \inst4|Mux1~0_combout\);

-- Location: IOIBUF_X60_Y73_N22
\SW14~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW14,
	o => \SW14~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\SW13~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW13,
	o => \SW13~input_o\);

-- Location: IOIBUF_X60_Y73_N8
\SW12~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW12,
	o => \SW12~input_o\);

-- Location: IOIBUF_X58_Y73_N1
\SW11~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW11,
	o => \SW11~input_o\);

-- Location: LCCOMB_X62_Y72_N0
\inst4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (\SW13~input_o\ & (\SW12~input_o\ & (\SW17~input_o\ & !\SW11~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW13~input_o\,
	datab => \SW12~input_o\,
	datac => \SW17~input_o\,
	datad => \SW11~input_o\,
	combout => \inst4|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y72_N2
\inst4|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux0~1_combout\ = (!\SW14~input_o\ & (\inst4|Mux0~0_combout\ & (!\SW15~input_o\ & !\SW16~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW14~input_o\,
	datab => \inst4|Mux0~0_combout\,
	datac => \SW15~input_o\,
	datad => \SW16~input_o\,
	combout => \inst4|Mux0~1_combout\);

-- Location: LCCOMB_X62_Y72_N26
\inst4|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux0~2_combout\ = (!\SW13~input_o\ & (!\SW12~input_o\ & (!\SW17~input_o\ & !\SW14~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW13~input_o\,
	datab => \SW12~input_o\,
	datac => \SW17~input_o\,
	datad => \SW14~input_o\,
	combout => \inst4|Mux0~2_combout\);

-- Location: LCCOMB_X62_Y72_N4
\inst4|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux0~3_combout\ = (\inst4|Mux0~2_combout\ & ((\SW11~input_o\ & (!\SW15~input_o\ & \SW16~input_o\)) # (!\SW11~input_o\ & (\SW15~input_o\ & !\SW16~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux0~2_combout\,
	datab => \SW11~input_o\,
	datac => \SW15~input_o\,
	datad => \SW16~input_o\,
	combout => \inst4|Mux0~3_combout\);

-- Location: LCCOMB_X62_Y72_N6
\inst4|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux0~4_combout\ = (\SW11~input_o\ & ((\SW13~input_o\) # ((\SW14~input_o\) # (!\SW12~input_o\)))) # (!\SW11~input_o\ & (\SW13~input_o\ $ ((\SW12~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW13~input_o\,
	datab => \SW11~input_o\,
	datac => \SW12~input_o\,
	datad => \SW14~input_o\,
	combout => \inst4|Mux0~4_combout\);

-- Location: LCCOMB_X62_Y72_N8
\inst4|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux0~5_combout\ = (\inst4|Mux0~1_combout\) # ((\inst4|Mux0~3_combout\) # ((\inst4|Mux1~0_combout\ & !\inst4|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux1~0_combout\,
	datab => \inst4|Mux0~1_combout\,
	datac => \inst4|Mux0~3_combout\,
	datad => \inst4|Mux0~4_combout\,
	combout => \inst4|Mux0~5_combout\);

-- Location: IOIBUF_X65_Y73_N15
\SW4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW4,
	o => \SW4~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\SW6~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW6,
	o => \SW6~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\SW1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\SW0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\SW3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW3,
	o => \SW3~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\SW2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2,
	o => \SW2~input_o\);

-- Location: LCCOMB_X65_Y72_N10
\inst3|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux1~4_combout\ = (!\SW2~input_o\ & ((\SW1~input_o\ & (!\SW0~input_o\ & !\SW3~input_o\)) # (!\SW1~input_o\ & (\SW0~input_o\ & \SW3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW0~input_o\,
	datac => \SW3~input_o\,
	datad => \SW2~input_o\,
	combout => \inst3|Mux1~4_combout\);

-- Location: IOIBUF_X67_Y73_N22
\SW5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW5,
	o => \SW5~input_o\);

-- Location: LCCOMB_X65_Y72_N12
\inst3|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux1~5_combout\ = (\SW4~input_o\ & (!\SW6~input_o\ & (\inst3|Mux1~4_combout\ & !\SW5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW4~input_o\,
	datab => \SW6~input_o\,
	datac => \inst3|Mux1~4_combout\,
	datad => \SW5~input_o\,
	combout => \inst3|Mux1~5_combout\);

-- Location: LCCOMB_X66_Y72_N10
\inst3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = (!\SW4~input_o\ & (!\SW6~input_o\ & !\SW5~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW4~input_o\,
	datac => \SW6~input_o\,
	datad => \SW5~input_o\,
	combout => \inst3|Mux1~0_combout\);

-- Location: LCCOMB_X66_Y72_N28
\inst3|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux1~1_combout\ = (\SW5~input_o\ & ((\SW4~input_o\ & (!\SW0~input_o\ & \SW6~input_o\)) # (!\SW4~input_o\ & (\SW0~input_o\ & !\SW6~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW4~input_o\,
	datab => \SW0~input_o\,
	datac => \SW6~input_o\,
	datad => \SW5~input_o\,
	combout => \inst3|Mux1~1_combout\);

-- Location: LCCOMB_X66_Y72_N22
\inst3|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux1~2_combout\ = (\SW0~input_o\ & ((\SW1~input_o\) # ((!\SW2~input_o\ & !\SW3~input_o\)))) # (!\SW0~input_o\ & (!\SW2~input_o\ & (\SW3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \SW2~input_o\,
	datac => \SW3~input_o\,
	datad => \SW1~input_o\,
	combout => \inst3|Mux1~2_combout\);

-- Location: LCCOMB_X66_Y72_N16
\inst3|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux1~3_combout\ = (\inst3|Mux1~2_combout\ & (((\inst3|Mux1~1_combout\ & !\SW1~input_o\)))) # (!\inst3|Mux1~2_combout\ & (\inst3|Mux1~0_combout\ & ((\SW1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux1~0_combout\,
	datab => \inst3|Mux1~1_combout\,
	datac => \inst3|Mux1~2_combout\,
	datad => \SW1~input_o\,
	combout => \inst3|Mux1~3_combout\);

-- Location: LCCOMB_X66_Y72_N4
\inst3|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux3~1_combout\ = (!\SW1~input_o\ & (\SW4~input_o\ & \SW5~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~input_o\,
	datac => \SW4~input_o\,
	datad => \SW5~input_o\,
	combout => \inst3|Mux3~1_combout\);

-- Location: LCCOMB_X66_Y72_N14
\inst3|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux3~2_combout\ = (\SW3~input_o\ & ((\SW2~input_o\ & (\inst3|Mux1~0_combout\)) # (!\SW2~input_o\ & ((\inst3|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux1~0_combout\,
	datab => \inst3|Mux3~1_combout\,
	datac => \SW3~input_o\,
	datad => \SW2~input_o\,
	combout => \inst3|Mux3~2_combout\);

-- Location: LCCOMB_X66_Y72_N8
\inst3|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux3~3_combout\ = (!\SW0~input_o\ & \SW1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW0~input_o\,
	datad => \SW1~input_o\,
	combout => \inst3|Mux3~3_combout\);

-- Location: LCCOMB_X66_Y72_N0
\inst3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux3~0_combout\ = (\SW0~input_o\ & (!\SW4~input_o\ & (\SW1~input_o\ $ (\SW5~input_o\)))) # (!\SW0~input_o\ & (\SW4~input_o\ & ((!\SW5~input_o\) # (!\SW1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW0~input_o\,
	datac => \SW4~input_o\,
	datad => \SW5~input_o\,
	combout => \inst3|Mux3~0_combout\);

-- Location: LCCOMB_X66_Y72_N12
\inst3|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux3~4_combout\ = (\SW6~input_o\ & (\inst3|Mux3~2_combout\)) # (!\SW6~input_o\ & (((!\SW3~input_o\ & \inst3|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW6~input_o\,
	datab => \inst3|Mux3~2_combout\,
	datac => \SW3~input_o\,
	datad => \inst3|Mux3~0_combout\,
	combout => \inst3|Mux3~4_combout\);

-- Location: LCCOMB_X66_Y72_N6
\inst3|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux3~5_combout\ = (\SW2~input_o\ & (\inst3|Mux3~2_combout\ & (\inst3|Mux3~3_combout\))) # (!\SW2~input_o\ & (((\inst3|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~input_o\,
	datab => \inst3|Mux3~2_combout\,
	datac => \inst3|Mux3~3_combout\,
	datad => \inst3|Mux3~4_combout\,
	combout => \inst3|Mux3~5_combout\);

-- Location: LCCOMB_X65_Y72_N24
\inst3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (\SW1~input_o\ & (!\SW0~input_o\ & (\SW2~input_o\ & \SW6~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW0~input_o\,
	datac => \SW2~input_o\,
	datad => \SW6~input_o\,
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X65_Y72_N14
\inst3|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~1_combout\ = (!\SW4~input_o\ & (\inst3|Mux0~0_combout\ & (!\SW3~input_o\ & !\SW5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW4~input_o\,
	datab => \inst3|Mux0~0_combout\,
	datac => \SW3~input_o\,
	datad => \SW5~input_o\,
	combout => \inst3|Mux0~1_combout\);

-- Location: LCCOMB_X66_Y72_N26
\inst1|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~11_combout\ = \inst3|Mux3~5_combout\ $ (((\inst3|Mux1~5_combout\) # ((\inst3|Mux1~3_combout\) # (\inst3|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux1~5_combout\,
	datab => \inst3|Mux1~3_combout\,
	datac => \inst3|Mux3~5_combout\,
	datad => \inst3|Mux0~1_combout\,
	combout => \inst1|Add0~11_combout\);

-- Location: LCCOMB_X62_Y72_N30
\inst4|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux1~2_combout\ = (!\SW13~input_o\ & (!\SW12~input_o\ & \SW16~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW13~input_o\,
	datac => \SW12~input_o\,
	datad => \SW16~input_o\,
	combout => \inst4|Mux1~2_combout\);

-- Location: LCCOMB_X62_Y72_N20
\inst4|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux1~1_combout\ = (\SW17~input_o\ & (!\SW11~input_o\ & (\SW15~input_o\ & \SW14~input_o\))) # (!\SW17~input_o\ & (\SW11~input_o\ & (!\SW15~input_o\ & !\SW14~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \SW11~input_o\,
	datac => \SW15~input_o\,
	datad => \SW14~input_o\,
	combout => \inst4|Mux1~1_combout\);

-- Location: LCCOMB_X62_Y72_N24
\inst4|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux1~3_combout\ = (\inst4|Mux0~1_combout\) # ((\inst4|Mux1~2_combout\ & \inst4|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Mux0~1_combout\,
	datac => \inst4|Mux1~2_combout\,
	datad => \inst4|Mux1~1_combout\,
	combout => \inst4|Mux1~3_combout\);

-- Location: LCCOMB_X62_Y72_N22
\inst4|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux1~6_combout\ = (!\SW11~input_o\ & (\SW12~input_o\ & ((\SW13~input_o\) # (!\SW14~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW13~input_o\,
	datab => \SW11~input_o\,
	datac => \SW12~input_o\,
	datad => \SW14~input_o\,
	combout => \inst4|Mux1~6_combout\);

-- Location: LCCOMB_X62_Y72_N18
\inst4|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux1~4_combout\ = (!\SW13~input_o\ & ((\SW11~input_o\ & (!\SW12~input_o\ & \SW14~input_o\)) # (!\SW11~input_o\ & (\SW12~input_o\ & !\SW14~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW13~input_o\,
	datab => \SW11~input_o\,
	datac => \SW12~input_o\,
	datad => \SW14~input_o\,
	combout => \inst4|Mux1~4_combout\);

-- Location: LCCOMB_X62_Y72_N12
\inst4|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux1~5_combout\ = (!\SW17~input_o\ & (\inst4|Mux1~4_combout\ & (\SW15~input_o\ & !\SW16~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \inst4|Mux1~4_combout\,
	datac => \SW15~input_o\,
	datad => \SW16~input_o\,
	combout => \inst4|Mux1~5_combout\);

-- Location: LCCOMB_X62_Y72_N16
\inst4|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux1~7_combout\ = (\inst4|Mux1~3_combout\) # ((\inst4|Mux1~5_combout\) # ((\inst4|Mux1~0_combout\ & \inst4|Mux1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux1~0_combout\,
	datab => \inst4|Mux1~3_combout\,
	datac => \inst4|Mux1~6_combout\,
	datad => \inst4|Mux1~5_combout\,
	combout => \inst4|Mux1~7_combout\);

-- Location: LCCOMB_X66_Y72_N18
\inst3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux2~0_combout\ = (\SW5~input_o\ & (\SW2~input_o\ & (!\SW1~input_o\ & !\SW3~input_o\))) # (!\SW5~input_o\ & (\SW1~input_o\ $ (((!\SW2~input_o\ & \SW3~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~input_o\,
	datab => \SW1~input_o\,
	datac => \SW3~input_o\,
	datad => \SW5~input_o\,
	combout => \inst3|Mux2~0_combout\);

-- Location: LCCOMB_X66_Y72_N20
\inst3|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux2~1_combout\ = (!\SW4~input_o\ & (!\SW0~input_o\ & (!\SW6~input_o\ & \inst3|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW4~input_o\,
	datab => \SW0~input_o\,
	datac => \SW6~input_o\,
	datad => \inst3|Mux2~0_combout\,
	combout => \inst3|Mux2~1_combout\);

-- Location: LCCOMB_X66_Y72_N30
\inst3|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux2~2_combout\ = (\inst3|Mux1~0_combout\ & (\SW0~input_o\ & (!\SW3~input_o\ & \SW1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux1~0_combout\,
	datab => \SW0~input_o\,
	datac => \SW3~input_o\,
	datad => \SW1~input_o\,
	combout => \inst3|Mux2~2_combout\);

-- Location: LCCOMB_X66_Y72_N24
\inst3|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux2~3_combout\ = (\inst3|Mux3~1_combout\ & (!\SW0~input_o\ & (\SW6~input_o\ $ (!\SW3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW6~input_o\,
	datab => \SW3~input_o\,
	datac => \inst3|Mux3~1_combout\,
	datad => \SW0~input_o\,
	combout => \inst3|Mux2~3_combout\);

-- Location: LCCOMB_X66_Y72_N2
\inst3|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux2~4_combout\ = (\inst3|Mux2~1_combout\) # ((!\SW2~input_o\ & ((\inst3|Mux2~2_combout\) # (\inst3|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~input_o\,
	datab => \inst3|Mux2~1_combout\,
	datac => \inst3|Mux2~2_combout\,
	datad => \inst3|Mux2~3_combout\,
	combout => \inst3|Mux2~4_combout\);

-- Location: LCCOMB_X61_Y72_N24
\inst4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = (\SW16~input_o\ & (!\SW12~input_o\ & (\SW13~input_o\ & !\SW14~input_o\))) # (!\SW16~input_o\ & (\SW12~input_o\ $ (((!\SW13~input_o\ & \SW14~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW12~input_o\,
	datab => \SW13~input_o\,
	datac => \SW14~input_o\,
	datad => \SW16~input_o\,
	combout => \inst4|Mux2~0_combout\);

-- Location: LCCOMB_X61_Y72_N26
\inst4|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux2~1_combout\ = (!\SW11~input_o\ & (!\SW15~input_o\ & (!\SW17~input_o\ & \inst4|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW11~input_o\,
	datab => \SW15~input_o\,
	datac => \SW17~input_o\,
	datad => \inst4|Mux2~0_combout\,
	combout => \inst4|Mux2~1_combout\);

-- Location: LCCOMB_X61_Y72_N0
\inst4|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux2~3_combout\ = (\SW15~input_o\ & (!\SW11~input_o\ & (\SW14~input_o\ $ (!\SW17~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW14~input_o\,
	datab => \SW15~input_o\,
	datac => \SW17~input_o\,
	datad => \SW11~input_o\,
	combout => \inst4|Mux2~3_combout\);

-- Location: LCCOMB_X61_Y72_N22
\inst4|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux2~2_combout\ = (\SW12~input_o\ & (\SW11~input_o\ & (!\SW14~input_o\ & \inst4|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW12~input_o\,
	datab => \SW11~input_o\,
	datac => \SW14~input_o\,
	datad => \inst4|Mux1~0_combout\,
	combout => \inst4|Mux2~2_combout\);

-- Location: LCCOMB_X61_Y72_N10
\inst4|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux2~4_combout\ = (\inst4|Mux2~2_combout\) # ((!\SW12~input_o\ & (\inst4|Mux2~3_combout\ & \SW16~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW12~input_o\,
	datab => \inst4|Mux2~3_combout\,
	datac => \inst4|Mux2~2_combout\,
	datad => \SW16~input_o\,
	combout => \inst4|Mux2~4_combout\);

-- Location: LCCOMB_X61_Y72_N20
\inst4|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux2~5_combout\ = (\inst4|Mux2~1_combout\) # ((!\SW13~input_o\ & \inst4|Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW13~input_o\,
	datac => \inst4|Mux2~1_combout\,
	datad => \inst4|Mux2~4_combout\,
	combout => \inst4|Mux2~5_combout\);

-- Location: LCCOMB_X63_Y72_N22
\inst1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~0_combout\ = (\inst3|Mux3~5_combout\ & (\inst4|Mux2~5_combout\ $ (VCC))) # (!\inst3|Mux3~5_combout\ & (\inst4|Mux2~5_combout\ & VCC))
-- \inst1|Add1~1\ = CARRY((\inst3|Mux3~5_combout\ & \inst4|Mux2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux3~5_combout\,
	datab => \inst4|Mux2~5_combout\,
	datad => VCC,
	combout => \inst1|Add1~0_combout\,
	cout => \inst1|Add1~1\);

-- Location: LCCOMB_X63_Y72_N24
\inst1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~2_combout\ = (\inst4|Mux1~7_combout\ & ((\inst3|Mux2~4_combout\ & (\inst1|Add1~1\ & VCC)) # (!\inst3|Mux2~4_combout\ & (!\inst1|Add1~1\)))) # (!\inst4|Mux1~7_combout\ & ((\inst3|Mux2~4_combout\ & (!\inst1|Add1~1\)) # (!\inst3|Mux2~4_combout\ & 
-- ((\inst1|Add1~1\) # (GND)))))
-- \inst1|Add1~3\ = CARRY((\inst4|Mux1~7_combout\ & (!\inst3|Mux2~4_combout\ & !\inst1|Add1~1\)) # (!\inst4|Mux1~7_combout\ & ((!\inst1|Add1~1\) # (!\inst3|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux1~7_combout\,
	datab => \inst3|Mux2~4_combout\,
	datad => VCC,
	cin => \inst1|Add1~1\,
	combout => \inst1|Add1~2_combout\,
	cout => \inst1|Add1~3\);

-- Location: LCCOMB_X63_Y72_N26
\inst1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~4_combout\ = ((\inst4|Mux0~5_combout\ $ (\inst1|Add0~11_combout\ $ (!\inst1|Add1~3\)))) # (GND)
-- \inst1|Add1~5\ = CARRY((\inst4|Mux0~5_combout\ & ((\inst1|Add0~11_combout\) # (!\inst1|Add1~3\))) # (!\inst4|Mux0~5_combout\ & (\inst1|Add0~11_combout\ & !\inst1|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux0~5_combout\,
	datab => \inst1|Add0~11_combout\,
	datad => VCC,
	cin => \inst1|Add1~3\,
	combout => \inst1|Add1~4_combout\,
	cout => \inst1|Add1~5\);

-- Location: LCCOMB_X65_Y72_N0
\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\SW1~input_o\ & (!\SW5~input_o\ & (\SW3~input_o\ $ (!\SW2~input_o\)))) # (!\SW1~input_o\ & (!\SW3~input_o\ & (\SW2~input_o\ $ (!\SW5~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW3~input_o\,
	datac => \SW2~input_o\,
	datad => \SW5~input_o\,
	combout => \inst1|Add0~4_combout\);

-- Location: LCCOMB_X65_Y72_N4
\inst1|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~7_combout\ = (\SW1~input_o\ & (!\SW3~input_o\ & (\SW2~input_o\ & !\SW5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW3~input_o\,
	datac => \SW2~input_o\,
	datad => \SW5~input_o\,
	combout => \inst1|Add0~7_combout\);

-- Location: LCCOMB_X65_Y72_N6
\inst1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\SW4~input_o\ & (((!\SW6~input_o\)))) # (!\SW4~input_o\ & ((\SW6~input_o\ & ((\inst1|Add0~7_combout\))) # (!\SW6~input_o\ & (\inst1|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW4~input_o\,
	datab => \inst1|Add0~4_combout\,
	datac => \inst1|Add0~7_combout\,
	datad => \SW6~input_o\,
	combout => \inst1|Add0~12_combout\);

-- Location: LCCOMB_X65_Y72_N26
\inst1|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~5_combout\ = (!\SW3~input_o\ & (!\SW2~input_o\ & ((!\SW5~input_o\) # (!\SW1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW3~input_o\,
	datac => \SW2~input_o\,
	datad => \SW5~input_o\,
	combout => \inst1|Add0~5_combout\);

-- Location: LCCOMB_X65_Y72_N8
\inst1|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~13_combout\ = (\inst1|Add0~12_combout\ & (!\SW0~input_o\ & ((\inst1|Add0~5_combout\) # (!\SW4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~12_combout\,
	datab => \SW0~input_o\,
	datac => \inst1|Add0~5_combout\,
	datad => \SW4~input_o\,
	combout => \inst1|Add0~13_combout\);

-- Location: LCCOMB_X63_Y72_N28
\inst1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~6_combout\ = \inst1|Add1~5\ $ (\inst1|Add0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Add0~13_combout\,
	cin => \inst1|Add1~5\,
	combout => \inst1|Add1~6_combout\);

-- Location: LCCOMB_X63_Y72_N0
\inst2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst1|Add1~4_combout\) # ((\inst1|Add1~6_combout\) # ((\inst1|Add1~0_combout\ & \inst1|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~4_combout\,
	datab => \inst1|Add1~6_combout\,
	datac => \inst1|Add1~0_combout\,
	datad => \inst1|Add1~2_combout\,
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X61_Y72_N6
\inst4|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux3~2_combout\ = (\SW15~input_o\ & (!\SW11~input_o\ & ((!\SW16~input_o\) # (!\SW12~input_o\)))) # (!\SW15~input_o\ & (\SW11~input_o\ & (\SW12~input_o\ $ (\SW16~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW12~input_o\,
	datab => \SW15~input_o\,
	datac => \SW11~input_o\,
	datad => \SW16~input_o\,
	combout => \inst4|Mux3~2_combout\);

-- Location: LCCOMB_X61_Y72_N8
\inst4|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux3~3_combout\ = (\inst4|Mux3~2_combout\ & (!\SW17~input_o\ & !\SW14~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux3~2_combout\,
	datab => \SW17~input_o\,
	datac => \SW14~input_o\,
	combout => \inst4|Mux3~3_combout\);

-- Location: LCCOMB_X62_Y72_N10
\inst4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (\SW13~input_o\ & (!\SW11~input_o\ & (\SW12~input_o\ & \inst4|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW13~input_o\,
	datab => \SW11~input_o\,
	datac => \SW12~input_o\,
	datad => \inst4|Mux1~0_combout\,
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X62_Y72_N28
\inst4|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux3~1_combout\ = (\inst4|Mux3~0_combout\) # ((\inst4|Mux1~2_combout\ & (\SW15~input_o\ & \SW17~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux1~2_combout\,
	datab => \SW15~input_o\,
	datac => \SW17~input_o\,
	datad => \inst4|Mux3~0_combout\,
	combout => \inst4|Mux3~1_combout\);

-- Location: LCCOMB_X62_Y72_N14
\inst4|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux3~4_combout\ = (\inst4|Mux3~3_combout\ & (((\SW14~input_o\ & \inst4|Mux3~1_combout\)) # (!\SW13~input_o\))) # (!\inst4|Mux3~3_combout\ & (\SW14~input_o\ & ((\inst4|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux3~3_combout\,
	datab => \SW14~input_o\,
	datac => \SW13~input_o\,
	datad => \inst4|Mux3~1_combout\,
	combout => \inst4|Mux3~4_combout\);

-- Location: LCCOMB_X63_Y72_N10
\inst2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\inst4|Mux3~4_combout\ & (\inst1|Add1~0_combout\ & (\inst1|Add1~6_combout\ $ (\inst1|Add1~2_combout\)))) # (!\inst4|Mux3~4_combout\ & (\inst1|Add1~2_combout\ & (\inst1|Add1~6_combout\ $ (\inst1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux3~4_combout\,
	datab => \inst1|Add1~6_combout\,
	datac => \inst1|Add1~0_combout\,
	datad => \inst1|Add1~2_combout\,
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X63_Y72_N4
\inst2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~1_combout\ = (!\inst1|Add1~4_combout\ & \inst2|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add1~4_combout\,
	datad => \inst2|Mux1~0_combout\,
	combout => \inst2|Mux1~1_combout\);

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


