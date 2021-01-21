-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "01/16/2021 17:22:06"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	TP_FINAL IS
    PORT (
	busy : OUT std_logic;
	CK_50M : IN std_logic;
	scl : OUT std_logic;
	sda : OUT std_logic;
	ack_error : OUT std_logic;
	reset_test : OUT std_logic;
	CK_40M : OUT std_logic
	);
END TP_FINAL;

-- Design Ports Information
-- busy	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scl	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sda	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ack_error	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_test	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CK_40M	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CK_50M	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TP_FINAL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_busy : std_logic;
SIGNAL ww_CK_50M : std_logic;
SIGNAL ww_scl : std_logic;
SIGNAL ww_sda : std_logic;
SIGNAL ww_ack_error : std_logic;
SIGNAL ww_reset_test : std_logic;
SIGNAL ww_CK_40M : std_logic;
SIGNAL \CK_50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \scl~output_o\ : std_logic;
SIGNAL \sda~output_o\ : std_logic;
SIGNAL \busy~output_o\ : std_logic;
SIGNAL \ack_error~output_o\ : std_logic;
SIGNAL \reset_test~output_o\ : std_logic;
SIGNAL \CK_40M~output_o\ : std_logic;
SIGNAL \CK_50M~input_o\ : std_logic;
SIGNAL \CK_50M~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|state.ready~feeder_combout\ : std_logic;
SIGNAL \inst1|count[2]~1_combout\ : std_logic;
SIGNAL \inst1|count[0]~2_combout\ : std_logic;
SIGNAL \inst1|count[1]~0_combout\ : std_logic;
SIGNAL \inst1|reset_tmp~0_combout\ : std_logic;
SIGNAL \inst1|reset_tmp~q\ : std_logic;
SIGNAL \inst1|reset_n~q\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|count~4_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|count~0_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|process_0~4_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|process_0~5_combout\ : std_logic;
SIGNAL \inst|process_0~6_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|process_0~1_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|process_0~2_combout\ : std_logic;
SIGNAL \inst|process_0~3_combout\ : std_logic;
SIGNAL \inst|data_clk~0_combout\ : std_logic;
SIGNAL \inst|data_clk~q\ : std_logic;
SIGNAL \inst|data_clk_prev~q\ : std_logic;
SIGNAL \inst|process_1~0_combout\ : std_logic;
SIGNAL \inst|state.ready~q\ : std_logic;
SIGNAL \inst|state.start~0_combout\ : std_logic;
SIGNAL \inst|state.start~q\ : std_logic;
SIGNAL \inst|bit_cnt[0]~5_combout\ : std_logic;
SIGNAL \inst|state~14_combout\ : std_logic;
SIGNAL \inst|state.mstr_ack~q\ : std_logic;
SIGNAL \inst|Selector21~0_combout\ : std_logic;
SIGNAL \inst|state.rd~q\ : std_logic;
SIGNAL \inst|state~13_combout\ : std_logic;
SIGNAL \inst|state.slv_ack1~q\ : std_logic;
SIGNAL \inst|Selector20~2_combout\ : std_logic;
SIGNAL \inst|state.slv_ack2~q\ : std_logic;
SIGNAL \inst|Selector20~3_combout\ : std_logic;
SIGNAL \inst|state.wr~q\ : std_logic;
SIGNAL \inst|bit_cnt[2]~0_combout\ : std_logic;
SIGNAL \inst|bit_cnt[2]~2_combout\ : std_logic;
SIGNAL \inst|bit_cnt~3_combout\ : std_logic;
SIGNAL \inst|bit_cnt~1_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Selector19~0_combout\ : std_logic;
SIGNAL \inst|state.command~q\ : std_logic;
SIGNAL \inst|Selector27~0_combout\ : std_logic;
SIGNAL \inst|Selector28~1_combout\ : std_logic;
SIGNAL \inst|Selector27~1_combout\ : std_logic;
SIGNAL \inst|process_1~1_combout\ : std_logic;
SIGNAL \inst|scl_ena~q\ : std_logic;
SIGNAL \inst|stretch~0_combout\ : std_logic;
SIGNAL \inst|stretch~q\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|count~3_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|count~1_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|count~5_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|count~2_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|count~6_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|scl_clk~2_combout\ : std_logic;
SIGNAL \inst|scl_clk~q\ : std_logic;
SIGNAL \inst|scl~1_combout\ : std_logic;
SIGNAL \inst|Selector23~3_combout\ : std_logic;
SIGNAL \inst|Selector23~1_combout\ : std_logic;
SIGNAL \inst|Selector23~0_combout\ : std_logic;
SIGNAL \inst|Selector23~2_combout\ : std_logic;
SIGNAL \inst|Selector23~4_combout\ : std_logic;
SIGNAL \inst|sda_int~q\ : std_logic;
SIGNAL \inst|Selector29~0_combout\ : std_logic;
SIGNAL \inst|Selector0~2_combout\ : std_logic;
SIGNAL \inst|Selector0~3_combout\ : std_logic;
SIGNAL \inst|busy~q\ : std_logic;
SIGNAL \inst|Selector28~0_combout\ : std_logic;
SIGNAL \inst|Selector28~2_combout\ : std_logic;
SIGNAL \inst|ack_error~q\ : std_logic;
SIGNAL \inst|bit_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|count\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst1|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ALT_INV_busy~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

busy <= ww_busy;
ww_CK_50M <= CK_50M;
scl <= ww_scl;
sda <= ww_sda;
ack_error <= ww_ack_error;
reset_test <= ww_reset_test;
CK_40M <= ww_CK_40M;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CK_50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CK_50M~input_o\);
\inst|ALT_INV_busy~q\ <= NOT \inst|busy~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y12_N2
\scl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst|scl~1_combout\,
	devoe => ww_devoe,
	o => \scl~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\sda~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst|Selector29~0_combout\,
	devoe => ww_devoe,
	o => \sda~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\busy~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_busy~q\,
	devoe => ww_devoe,
	o => \busy~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\ack_error~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ack_error~q\,
	devoe => ww_devoe,
	o => \ack_error~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\reset_test~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|reset_n~q\,
	devoe => ww_devoe,
	o => \reset_test~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\CK_40M~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CK_50M~input_o\,
	devoe => ww_devoe,
	o => \CK_40M~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\CK_50M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CK_50M,
	o => \CK_50M~input_o\);

-- Location: CLKCTRL_G18
\CK_50M~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CK_50M~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CK_50M~inputclkctrl_outclk\);

-- Location: LCCOMB_X52_Y11_N26
\inst|state.ready~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state.ready~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|state.ready~feeder_combout\);

-- Location: LCCOMB_X47_Y11_N28
\inst1|count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[2]~1_combout\ = (\inst1|count\(2)) # ((\inst1|count\(0) & \inst1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(0),
	datac => \inst1|count\(2),
	datad => \inst1|count\(1),
	combout => \inst1|count[2]~1_combout\);

-- Location: FF_X47_Y11_N29
\inst1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst1|count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(2));

-- Location: LCCOMB_X47_Y11_N10
\inst1|count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[0]~2_combout\ = \inst1|count\(0) $ (((!\inst1|count\(2)) # (!\inst1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(1),
	datac => \inst1|count\(0),
	datad => \inst1|count\(2),
	combout => \inst1|count[0]~2_combout\);

-- Location: FF_X47_Y11_N11
\inst1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst1|count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(0));

-- Location: LCCOMB_X47_Y11_N18
\inst1|count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[1]~0_combout\ = (\inst1|count\(0) & ((\inst1|count\(2)) # (!\inst1|count\(1)))) # (!\inst1|count\(0) & (\inst1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(0),
	datac => \inst1|count\(1),
	datad => \inst1|count\(2),
	combout => \inst1|count[1]~0_combout\);

-- Location: FF_X47_Y11_N19
\inst1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst1|count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(1));

-- Location: LCCOMB_X47_Y11_N0
\inst1|reset_tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reset_tmp~0_combout\ = (\inst1|reset_tmp~q\) # ((\inst1|count\(1) & \inst1|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(1),
	datac => \inst1|reset_tmp~q\,
	datad => \inst1|count\(2),
	combout => \inst1|reset_tmp~0_combout\);

-- Location: FF_X47_Y11_N1
\inst1|reset_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst1|reset_tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reset_tmp~q\);

-- Location: FF_X50_Y11_N15
\inst1|reset_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	asdata => \inst1|reset_tmp~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reset_n~q\);

-- Location: FF_X50_Y11_N17
\inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	asdata => \inst|count~0_combout\,
	clrn => \inst1|reset_n~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(6));

-- Location: LCCOMB_X50_Y11_N8
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|count\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|count\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|count\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X50_Y11_N10
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|count\(5) & (!\inst|Add0~9\)) # (!\inst|count\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X49_Y11_N2
\inst|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count~4_combout\ = (\inst|Add0~10_combout\ & ((!\inst|Equal0~0_combout\) # (!\inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~10_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|count~4_combout\);

-- Location: FF_X49_Y11_N3
\inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|count~4_combout\,
	clrn => \inst1|reset_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(5));

-- Location: LCCOMB_X50_Y11_N12
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = \inst|Add0~11\ $ (!\inst|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|count\(6),
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\);

-- Location: LCCOMB_X50_Y11_N30
\inst|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count~0_combout\ = (\inst|Add0~12_combout\ & ((!\inst|Equal0~2_combout\) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Equal0~2_combout\,
	datad => \inst|Add0~12_combout\,
	combout => \inst|count~0_combout\);

-- Location: LCCOMB_X50_Y11_N4
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|count\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|count\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|count\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X50_Y11_N20
\inst|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~4_combout\ = (\inst|Add0~8_combout\ & (\inst|Add0~4_combout\ & \inst|count~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~8_combout\,
	datab => \inst|Add0~4_combout\,
	datad => \inst|count~1_combout\,
	combout => \inst|process_0~4_combout\);

-- Location: LCCOMB_X50_Y11_N2
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|count\(1) & (!\inst|Add0~1\)) # (!\inst|count\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X49_Y11_N20
\inst|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~5_combout\ = (\inst|Add0~2_combout\) # ((\inst|Add0~0_combout\ & !\inst|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~0_combout\,
	datac => \inst|Add0~10_combout\,
	datad => \inst|Add0~2_combout\,
	combout => \inst|process_0~5_combout\);

-- Location: LCCOMB_X49_Y11_N14
\inst|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~6_combout\ = (\inst|count~0_combout\ & ((\inst|Add0~10_combout\) # ((\inst|process_0~4_combout\ & \inst|process_0~5_combout\)))) # (!\inst|count~0_combout\ & (((!\inst|process_0~5_combout\) # (!\inst|process_0~4_combout\)) # 
-- (!\inst|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count~0_combout\,
	datab => \inst|Add0~10_combout\,
	datac => \inst|process_0~4_combout\,
	datad => \inst|process_0~5_combout\,
	combout => \inst|process_0~6_combout\);

-- Location: LCCOMB_X50_Y11_N22
\inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (!\inst|Equal0~1_combout\ & (\inst|Add0~2_combout\ & (\inst|Add0~8_combout\ & \inst|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|Add0~2_combout\,
	datac => \inst|Add0~8_combout\,
	datad => \inst|Add0~6_combout\,
	combout => \inst|process_0~0_combout\);

-- Location: LCCOMB_X49_Y11_N10
\inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~1_combout\ = (\inst|Add0~4_combout\ & (!\inst|Equal0~1_combout\ & (\inst|Add0~0_combout\ & \inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~4_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Add0~0_combout\,
	datad => \inst|process_0~0_combout\,
	combout => \inst|process_0~1_combout\);

-- Location: LCCOMB_X49_Y11_N4
\inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (\inst|count~0_combout\) # ((\inst|process_0~1_combout\) # ((!\inst|Equal0~1_combout\ & \inst|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|Add0~10_combout\,
	datac => \inst|count~0_combout\,
	datad => \inst|process_0~1_combout\,
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X49_Y11_N0
\inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~2_combout\ = (\inst|Add0~10_combout\ & (((!\inst|process_0~0_combout\)) # (!\inst|Add0~4_combout\))) # (!\inst|Add0~10_combout\ & (((\inst|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~4_combout\,
	datab => \inst|process_0~0_combout\,
	datac => \inst|Add0~10_combout\,
	datad => \inst|process_0~1_combout\,
	combout => \inst|process_0~2_combout\);

-- Location: LCCOMB_X49_Y11_N18
\inst|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~3_combout\ = (\inst|Equal0~1_combout\) # ((\inst|Add0~12_combout\) # (!\inst|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Add0~12_combout\,
	datad => \inst|process_0~2_combout\,
	combout => \inst|process_0~3_combout\);

-- Location: LCCOMB_X49_Y11_N24
\inst|data_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_clk~0_combout\ = (\inst|LessThan1~0_combout\ & ((!\inst|process_0~3_combout\) # (!\inst|process_0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_0~6_combout\,
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|process_0~3_combout\,
	combout => \inst|data_clk~0_combout\);

-- Location: FF_X49_Y11_N25
\inst|data_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|data_clk~0_combout\,
	ena => \inst1|reset_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_clk~q\);

-- Location: FF_X51_Y11_N3
\inst|data_clk_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	asdata => \inst|data_clk~q\,
	sload => VCC,
	ena => \inst1|reset_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_clk_prev~q\);

-- Location: LCCOMB_X51_Y11_N16
\inst|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_1~0_combout\ = (\inst|data_clk~q\ & !\inst|data_clk_prev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|data_clk~q\,
	datad => \inst|data_clk_prev~q\,
	combout => \inst|process_1~0_combout\);

-- Location: FF_X52_Y11_N27
\inst|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|state.ready~feeder_combout\,
	clrn => \inst1|reset_n~q\,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ready~q\);

-- Location: LCCOMB_X51_Y11_N10
\inst|state.start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state.start~0_combout\ = !\inst|state.ready~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|state.ready~q\,
	combout => \inst|state.start~0_combout\);

-- Location: FF_X50_Y11_N9
\inst|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	asdata => \inst|state.start~0_combout\,
	clrn => \inst1|reset_n~q\,
	sload => VCC,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.start~q\);

-- Location: LCCOMB_X51_Y11_N22
\inst|bit_cnt[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bit_cnt[0]~5_combout\ = !\inst|bit_cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|bit_cnt\(0),
	combout => \inst|bit_cnt[0]~5_combout\);

-- Location: LCCOMB_X51_Y11_N28
\inst|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~14_combout\ = (\inst|bit_cnt\(0) & (\inst|state.rd~q\ & (\inst|bit_cnt\(1) & \inst|bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bit_cnt\(0),
	datab => \inst|state.rd~q\,
	datac => \inst|bit_cnt\(1),
	datad => \inst|bit_cnt\(2),
	combout => \inst|state~14_combout\);

-- Location: FF_X50_Y11_N5
\inst|state.mstr_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	asdata => \inst|state~14_combout\,
	clrn => \inst1|reset_n~q\,
	sload => VCC,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.mstr_ack~q\);

-- Location: LCCOMB_X51_Y11_N12
\inst|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector21~0_combout\ = (\inst|state.mstr_ack~q\) # ((\inst|state.rd~q\ & !\inst|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.rd~q\,
	datac => \inst|state.mstr_ack~q\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|Selector21~0_combout\);

-- Location: FF_X50_Y11_N21
\inst|state.rd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	asdata => \inst|Selector21~0_combout\,
	clrn => \inst1|reset_n~q\,
	sload => VCC,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.rd~q\);

-- Location: LCCOMB_X51_Y11_N30
\inst|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~13_combout\ = (\inst|bit_cnt\(2) & (\inst|bit_cnt\(1) & (\inst|bit_cnt\(0) & \inst|state.command~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bit_cnt\(2),
	datab => \inst|bit_cnt\(1),
	datac => \inst|bit_cnt\(0),
	datad => \inst|state.command~q\,
	combout => \inst|state~13_combout\);

-- Location: FF_X50_Y11_N7
\inst|state.slv_ack1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	asdata => \inst|state~13_combout\,
	clrn => \inst1|reset_n~q\,
	sload => VCC,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.slv_ack1~q\);

-- Location: LCCOMB_X51_Y11_N4
\inst|Selector20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector20~2_combout\ = (\inst|bit_cnt\(2) & (\inst|bit_cnt\(1) & (\inst|bit_cnt\(0) & \inst|state.wr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bit_cnt\(2),
	datab => \inst|bit_cnt\(1),
	datac => \inst|bit_cnt\(0),
	datad => \inst|state.wr~q\,
	combout => \inst|Selector20~2_combout\);

-- Location: FF_X50_Y11_N1
\inst|state.slv_ack2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	asdata => \inst|Selector20~2_combout\,
	clrn => \inst1|reset_n~q\,
	sload => VCC,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.slv_ack2~q\);

-- Location: LCCOMB_X51_Y11_N14
\inst|Selector20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector20~3_combout\ = (\inst|state.wr~q\ & (((!\inst|Equal1~0_combout\)))) # (!\inst|state.wr~q\ & ((\inst|state.slv_ack1~q\) # ((\inst|state.slv_ack2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.wr~q\,
	datab => \inst|state.slv_ack1~q\,
	datac => \inst|state.slv_ack2~q\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|Selector20~3_combout\);

-- Location: FF_X50_Y11_N3
\inst|state.wr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	asdata => \inst|Selector20~3_combout\,
	clrn => \inst1|reset_n~q\,
	sload => VCC,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.wr~q\);

-- Location: LCCOMB_X51_Y11_N2
\inst|bit_cnt[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bit_cnt[2]~0_combout\ = (!\inst|state.rd~q\ & !\inst|state.wr~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.rd~q\,
	datad => \inst|state.wr~q\,
	combout => \inst|bit_cnt[2]~0_combout\);

-- Location: LCCOMB_X51_Y11_N6
\inst|bit_cnt[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bit_cnt[2]~2_combout\ = (\inst|data_clk~q\ & (!\inst|data_clk_prev~q\ & ((\inst|state.command~q\) # (!\inst|bit_cnt[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_clk~q\,
	datab => \inst|data_clk_prev~q\,
	datac => \inst|bit_cnt[2]~0_combout\,
	datad => \inst|state.command~q\,
	combout => \inst|bit_cnt[2]~2_combout\);

-- Location: FF_X51_Y11_N23
\inst|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|bit_cnt[0]~5_combout\,
	clrn => \inst1|reset_n~q\,
	ena => \inst|bit_cnt[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bit_cnt\(0));

-- Location: LCCOMB_X52_Y11_N0
\inst|bit_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bit_cnt~3_combout\ = \inst|bit_cnt\(0) $ (\inst|bit_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bit_cnt\(0),
	datad => \inst|bit_cnt\(1),
	combout => \inst|bit_cnt~3_combout\);

-- Location: FF_X51_Y11_N29
\inst|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	asdata => \inst|bit_cnt~3_combout\,
	clrn => \inst1|reset_n~q\,
	sload => VCC,
	ena => \inst|bit_cnt[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bit_cnt\(1));

-- Location: LCCOMB_X52_Y11_N30
\inst|bit_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bit_cnt~1_combout\ = \inst|bit_cnt\(2) $ (((\inst|bit_cnt\(1) & \inst|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bit_cnt\(2),
	datab => \inst|bit_cnt\(1),
	datad => \inst|bit_cnt\(0),
	combout => \inst|bit_cnt~1_combout\);

-- Location: FF_X51_Y11_N11
\inst|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	asdata => \inst|bit_cnt~1_combout\,
	clrn => \inst1|reset_n~q\,
	sload => VCC,
	ena => \inst|bit_cnt[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bit_cnt\(2));

-- Location: LCCOMB_X52_Y11_N18
\inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst|bit_cnt\(2) & (\inst|bit_cnt\(0) & \inst|bit_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bit_cnt\(2),
	datab => \inst|bit_cnt\(0),
	datad => \inst|bit_cnt\(1),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X51_Y11_N8
\inst|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector19~0_combout\ = (\inst|state.start~q\) # ((\inst|state.command~q\ & !\inst|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.command~q\,
	datac => \inst|state.start~q\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|Selector19~0_combout\);

-- Location: FF_X50_Y11_N11
\inst|state.command\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	asdata => \inst|Selector19~0_combout\,
	clrn => \inst1|reset_n~q\,
	sload => VCC,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.command~q\);

-- Location: LCCOMB_X51_Y11_N26
\inst|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector27~0_combout\ = (!\inst|state.command~q\ & (!\inst|state.mstr_ack~q\ & (\inst|bit_cnt[2]~0_combout\ & \inst|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.command~q\,
	datab => \inst|state.mstr_ack~q\,
	datac => \inst|bit_cnt[2]~0_combout\,
	datad => \inst|state.ready~q\,
	combout => \inst|Selector27~0_combout\);

-- Location: LCCOMB_X51_Y11_N0
\inst|Selector28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector28~1_combout\ = (!\inst|state.slv_ack1~q\ & !\inst|state.slv_ack2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.slv_ack1~q\,
	datac => \inst|state.slv_ack2~q\,
	combout => \inst|Selector28~1_combout\);

-- Location: LCCOMB_X52_Y11_N4
\inst|Selector27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector27~1_combout\ = (\inst|state.start~q\) # ((\inst|scl_ena~q\ & ((!\inst|Selector28~1_combout\) # (!\inst|Selector27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector27~0_combout\,
	datab => \inst|state.start~q\,
	datac => \inst|scl_ena~q\,
	datad => \inst|Selector28~1_combout\,
	combout => \inst|Selector27~1_combout\);

-- Location: LCCOMB_X52_Y11_N8
\inst|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_1~1_combout\ = (!\inst|data_clk~q\ & \inst|data_clk_prev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|data_clk~q\,
	datad => \inst|data_clk_prev~q\,
	combout => \inst|process_1~1_combout\);

-- Location: FF_X52_Y11_N5
\inst|scl_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|Selector27~1_combout\,
	clrn => \inst1|reset_n~q\,
	ena => \inst|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|scl_ena~q\);

-- Location: LCCOMB_X50_Y11_N28
\inst|stretch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stretch~0_combout\ = (\inst|process_0~6_combout\ & (((\inst|stretch~q\)))) # (!\inst|process_0~6_combout\ & (!\inst|scl_clk~q\ & (\inst|scl_ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scl_clk~q\,
	datab => \inst|scl_ena~q\,
	datac => \inst|stretch~q\,
	datad => \inst|process_0~6_combout\,
	combout => \inst|stretch~0_combout\);

-- Location: FF_X50_Y11_N29
\inst|stretch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|stretch~0_combout\,
	clrn => \inst1|reset_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|stretch~q\);

-- Location: LCCOMB_X50_Y11_N0
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = (\inst|count\(0) & (\inst|stretch~q\ $ (GND))) # (!\inst|count\(0) & (!\inst|stretch~q\ & VCC))
-- \inst|Add0~1\ = CARRY((\inst|count\(0) & !\inst|stretch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datab => \inst|stretch~q\,
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X50_Y11_N24
\inst|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count~3_combout\ = (\inst|Add0~0_combout\ & ((!\inst|Equal0~2_combout\) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~0_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Equal0~2_combout\,
	combout => \inst|count~3_combout\);

-- Location: FF_X50_Y11_N25
\inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|count~3_combout\,
	clrn => \inst1|reset_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(0));

-- Location: LCCOMB_X50_Y11_N6
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|count\(3) & (!\inst|Add0~5\)) # (!\inst|count\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X50_Y11_N16
\inst|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count~1_combout\ = (\inst|Add0~6_combout\ & ((!\inst|Equal0~2_combout\) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Equal0~2_combout\,
	datad => \inst|Add0~6_combout\,
	combout => \inst|count~1_combout\);

-- Location: FF_X50_Y11_N31
\inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	asdata => \inst|count~1_combout\,
	clrn => \inst1|reset_n~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(3));

-- Location: LCCOMB_X49_Y11_N12
\inst|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count~5_combout\ = (\inst|Add0~8_combout\ & ((!\inst|Equal0~0_combout\) # (!\inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~2_combout\,
	datac => \inst|Add0~8_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|count~5_combout\);

-- Location: FF_X49_Y11_N13
\inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|count~5_combout\,
	clrn => \inst1|reset_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(4));

-- Location: LCCOMB_X49_Y11_N6
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|count\(4) & (\inst|count\(5) & (\inst|count\(3) & \inst|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(4),
	datab => \inst|count\(5),
	datac => \inst|count\(3),
	datad => \inst|count\(6),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y11_N26
\inst|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count~2_combout\ = (\inst|Add0~2_combout\ & ((!\inst|Equal0~2_combout\) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Add0~2_combout\,
	combout => \inst|count~2_combout\);

-- Location: FF_X50_Y11_N27
\inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|count~2_combout\,
	clrn => \inst1|reset_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(1));

-- Location: LCCOMB_X50_Y11_N14
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|count\(1) & (!\inst|count\(2) & \inst|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datab => \inst|count\(2),
	datad => \inst|count\(0),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X50_Y11_N18
\inst|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count~6_combout\ = (\inst|Add0~4_combout\ & ((!\inst|Equal0~0_combout\) # (!\inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~2_combout\,
	datac => \inst|Add0~4_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|count~6_combout\);

-- Location: FF_X50_Y11_N19
\inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|count~6_combout\,
	clrn => \inst1|reset_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(2));

-- Location: LCCOMB_X49_Y11_N16
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|count\(2) & (\inst|count\(0) & (\inst|count\(1) & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(2),
	datab => \inst|count\(0),
	datac => \inst|count\(1),
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X49_Y11_N30
\inst|scl_clk~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|scl_clk~2_combout\ = (\inst|LessThan1~0_combout\ & ((\inst|Equal0~1_combout\) # ((\inst|Add0~12_combout\) # (!\inst|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|Add0~12_combout\,
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|process_0~2_combout\,
	combout => \inst|scl_clk~2_combout\);

-- Location: FF_X49_Y11_N31
\inst|scl_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|scl_clk~2_combout\,
	ena => \inst1|reset_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|scl_clk~q\);

-- Location: LCCOMB_X49_Y11_N28
\inst|scl~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|scl~1_combout\ = (\inst|scl_clk~q\) # (!\inst|scl_ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|scl_clk~q\,
	datad => \inst|scl_ena~q\,
	combout => \inst|scl~1_combout\);

-- Location: LCCOMB_X52_Y11_N22
\inst|Selector23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector23~3_combout\ = (\inst|sda_int~q\ & (\inst|state.ready~q\ & ((!\inst|state.start~q\) # (!\inst|bit_cnt\(0))))) # (!\inst|sda_int~q\ & (((!\inst|state.start~q\)) # (!\inst|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sda_int~q\,
	datab => \inst|bit_cnt\(0),
	datac => \inst|state.ready~q\,
	datad => \inst|state.start~q\,
	combout => \inst|Selector23~3_combout\);

-- Location: LCCOMB_X51_Y11_N18
\inst|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector23~1_combout\ = (\inst|bit_cnt\(2) & (!\inst|state.slv_ack1~q\ & ((\inst|bit_cnt\(0)) # (!\inst|state.command~q\)))) # (!\inst|bit_cnt\(2) & (((\inst|bit_cnt\(0)) # (!\inst|state.command~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bit_cnt\(2),
	datab => \inst|state.slv_ack1~q\,
	datac => \inst|bit_cnt\(0),
	datad => \inst|state.command~q\,
	combout => \inst|Selector23~1_combout\);

-- Location: LCCOMB_X52_Y11_N24
\inst|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector23~0_combout\ = ((!\inst|sda_int~q\ & !\inst|Equal1~0_combout\)) # (!\inst|state.rd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sda_int~q\,
	datac => \inst|state.rd~q\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|Selector23~0_combout\);

-- Location: LCCOMB_X52_Y11_N16
\inst|Selector23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector23~2_combout\ = (\inst|Selector23~1_combout\ & (\inst|Selector23~0_combout\ & ((!\inst|bit_cnt~1_combout\) # (!\inst|state.wr~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.wr~q\,
	datab => \inst|Selector23~1_combout\,
	datac => \inst|bit_cnt~1_combout\,
	datad => \inst|Selector23~0_combout\,
	combout => \inst|Selector23~2_combout\);

-- Location: LCCOMB_X52_Y11_N10
\inst|Selector23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector23~4_combout\ = (((\inst|bit_cnt\(2) & \inst|state.slv_ack2~q\)) # (!\inst|Selector23~2_combout\)) # (!\inst|Selector23~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bit_cnt\(2),
	datab => \inst|state.slv_ack2~q\,
	datac => \inst|Selector23~3_combout\,
	datad => \inst|Selector23~2_combout\,
	combout => \inst|Selector23~4_combout\);

-- Location: FF_X52_Y11_N11
\inst|sda_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|Selector23~4_combout\,
	clrn => \inst1|reset_n~q\,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sda_int~q\);

-- Location: LCCOMB_X52_Y11_N20
\inst|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector29~0_combout\ = (\inst|state.start~q\ & ((\inst|data_clk_prev~q\))) # (!\inst|state.start~q\ & (!\inst|sda_int~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sda_int~q\,
	datac => \inst|state.start~q\,
	datad => \inst|data_clk_prev~q\,
	combout => \inst|Selector29~0_combout\);

-- Location: LCCOMB_X51_Y11_N24
\inst|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~2_combout\ = ((!\inst|busy~q\ & ((\inst|state.slv_ack1~q\) # (\inst|state.command~q\)))) # (!\inst|state.ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|busy~q\,
	datab => \inst|state.ready~q\,
	datac => \inst|state.slv_ack1~q\,
	datad => \inst|state.command~q\,
	combout => \inst|Selector0~2_combout\);

-- Location: LCCOMB_X51_Y11_N20
\inst|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~3_combout\ = (!\inst|state.wr~q\ & (!\inst|state.rd~q\ & (!\inst|state.start~q\ & !\inst|Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.wr~q\,
	datab => \inst|state.rd~q\,
	datac => \inst|state.start~q\,
	datad => \inst|Selector0~2_combout\,
	combout => \inst|Selector0~3_combout\);

-- Location: FF_X50_Y11_N13
\inst|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	asdata => \inst|Selector0~3_combout\,
	clrn => \inst1|reset_n~q\,
	sload => VCC,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|busy~q\);

-- Location: LCCOMB_X52_Y11_N2
\inst|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector28~0_combout\ = (\inst|ack_error~q\ & (((\inst|scl_ena~q\ & \inst|state.start~q\)) # (!\inst|Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector27~0_combout\,
	datab => \inst|ack_error~q\,
	datac => \inst|scl_ena~q\,
	datad => \inst|state.start~q\,
	combout => \inst|Selector28~0_combout\);

-- Location: LCCOMB_X52_Y11_N28
\inst|Selector28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector28~2_combout\ = (\inst|Selector28~0_combout\) # ((!\inst|Selector28~1_combout\ & ((\inst|Selector29~0_combout\) # (\inst|ack_error~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector28~1_combout\,
	datab => \inst|Selector29~0_combout\,
	datac => \inst|ack_error~q\,
	datad => \inst|Selector28~0_combout\,
	combout => \inst|Selector28~2_combout\);

-- Location: FF_X52_Y11_N29
\inst|ack_error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|Selector28~2_combout\,
	clrn => \inst1|reset_n~q\,
	ena => \inst|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ack_error~q\);

ww_busy <= \busy~output_o\;

ww_scl <= \scl~output_o\;

ww_sda <= \sda~output_o\;

ww_ack_error <= \ack_error~output_o\;

ww_reset_test <= \reset_test~output_o\;

ww_CK_40M <= \CK_40M~output_o\;
END structure;


