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

-- DATE "01/16/2021 19:33:01"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

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
	CK_40M : OUT std_logic;
	I2S_CLOCK : OUT std_logic
	);
END TP_FINAL;

-- Design Ports Information
-- busy	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scl	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sda	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ack_error	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_test	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CK_40M	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2S_CLOCK	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_I2S_CLOCK : std_logic;
SIGNAL \inst4|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CK_50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \CK_50M~input_o\ : std_logic;
SIGNAL \CK_50M~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|bit_cnt[0]~1_combout\ : std_logic;
SIGNAL \inst4|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|count[0]~18_combout\ : std_logic;
SIGNAL \inst1|count[1]~6_combout\ : std_logic;
SIGNAL \inst1|count[1]~7\ : std_logic;
SIGNAL \inst1|count[2]~8_combout\ : std_logic;
SIGNAL \inst1|count[2]~9\ : std_logic;
SIGNAL \inst1|count[3]~10_combout\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|count[3]~11\ : std_logic;
SIGNAL \inst1|count[4]~12_combout\ : std_logic;
SIGNAL \inst1|count[4]~13\ : std_logic;
SIGNAL \inst1|count[5]~14_combout\ : std_logic;
SIGNAL \inst1|count[5]~15\ : std_logic;
SIGNAL \inst1|count[6]~16_combout\ : std_logic;
SIGNAL \inst1|LessThan1~1_combout\ : std_logic;
SIGNAL \inst1|reset_tmp~0_combout\ : std_logic;
SIGNAL \inst1|reset_tmp~q\ : std_logic;
SIGNAL \inst1|reset_n~feeder_combout\ : std_logic;
SIGNAL \inst1|reset_n~q\ : std_logic;
SIGNAL \inst|Selector19~0_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Selector20~3_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|count~1_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|count~3_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|count~0_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|count~2_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|process_0~4_combout\ : std_logic;
SIGNAL \inst|process_0~5_combout\ : std_logic;
SIGNAL \inst|process_0~6_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|process_0~2_combout\ : std_logic;
SIGNAL \inst|process_0~3_combout\ : std_logic;
SIGNAL \inst|data_clk~0_combout\ : std_logic;
SIGNAL \inst|data_clk~q\ : std_logic;
SIGNAL \inst|data_clk_prev~feeder_combout\ : std_logic;
SIGNAL \inst|data_clk_prev~q\ : std_logic;
SIGNAL \inst|process_1~0_combout\ : std_logic;
SIGNAL \inst|state.wr~q\ : std_logic;
SIGNAL \inst|state~15_combout\ : std_logic;
SIGNAL \inst|state.slv_ack2~q\ : std_logic;
SIGNAL \inst|Selector21~0_combout\ : std_logic;
SIGNAL \inst|state.rd~q\ : std_logic;
SIGNAL \inst|state~14_combout\ : std_logic;
SIGNAL \inst|state.mstr_ack~q\ : std_logic;
SIGNAL \inst|WideOr6~0_combout\ : std_logic;
SIGNAL \inst|state.stop~q\ : std_logic;
SIGNAL \inst|state.ready~0_combout\ : std_logic;
SIGNAL \inst|state.ready~q\ : std_logic;
SIGNAL \inst|state.start~0_combout\ : std_logic;
SIGNAL \inst|state.start~q\ : std_logic;
SIGNAL \inst|Selector19~1_combout\ : std_logic;
SIGNAL \inst|state.command~q\ : std_logic;
SIGNAL \inst|Selector0~3_combout\ : std_logic;
SIGNAL \inst|bit_cnt[2]~0_combout\ : std_logic;
SIGNAL \inst|Selector25~0_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|state~13_combout\ : std_logic;
SIGNAL \inst|state.slv_ack1~q\ : std_logic;
SIGNAL \inst|Selector20~2_combout\ : std_logic;
SIGNAL \inst|Selector27~0_combout\ : std_logic;
SIGNAL \inst|Selector27~1_combout\ : std_logic;
SIGNAL \inst|process_1~1_combout\ : std_logic;
SIGNAL \inst|scl_ena~q\ : std_logic;
SIGNAL \inst|stretch~0_combout\ : std_logic;
SIGNAL \inst|stretch~q\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|count~6_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|count~5_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|count~4_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|process_0~1_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|scl_clk~0_combout\ : std_logic;
SIGNAL \inst|scl_clk~q\ : std_logic;
SIGNAL \inst|scl~1_combout\ : std_logic;
SIGNAL \inst|sda_int~0_combout\ : std_logic;
SIGNAL \inst|Selector23~0_combout\ : std_logic;
SIGNAL \inst|Selector23~1_combout\ : std_logic;
SIGNAL \inst|Selector23~2_combout\ : std_logic;
SIGNAL \inst|Selector23~3_combout\ : std_logic;
SIGNAL \inst|Selector23~4_combout\ : std_logic;
SIGNAL \inst|sda_int~q\ : std_logic;
SIGNAL \inst|Selector29~0_combout\ : std_logic;
SIGNAL \inst|Selector0~2_combout\ : std_logic;
SIGNAL \inst|Selector0~4_combout\ : std_logic;
SIGNAL \inst|busy~q\ : std_logic;
SIGNAL \inst|Selector28~0_combout\ : std_logic;
SIGNAL \inst|Selector28~1_combout\ : std_logic;
SIGNAL \inst|ack_error~q\ : std_logic;
SIGNAL \inst|bit_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|count\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|count\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|ALT_INV_busy~q\ : std_logic;

BEGIN

busy <= ww_busy;
ww_CK_50M <= CK_50M;
scl <= ww_scl;
sda <= ww_sda;
ack_error <= ww_ack_error;
reset_test <= ww_reset_test;
CK_40M <= ww_CK_40M;
I2S_CLOCK <= ww_I2S_CLOCK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst4|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CK_50M~input_o\);

\inst4|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst4|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst4|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst4|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst4|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst4|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst4|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst4|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst4|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst4|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|altpll_component|auto_generated|wire_pll1_clk\(0));

\CK_50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CK_50M~input_o\);
\inst|ALT_INV_busy~q\ <= NOT \inst|busy~q\;

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
	o => ww_scl);

-- Location: IOOBUF_X53_Y15_N9
\sda~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst|Selector29~0_combout\,
	devoe => ww_devoe,
	o => ww_sda);

-- Location: IOOBUF_X34_Y0_N23
\busy~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_busy~q\,
	devoe => ww_devoe,
	o => ww_busy);

-- Location: IOOBUF_X38_Y0_N9
\ack_error~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ack_error~q\,
	devoe => ww_devoe,
	o => ww_ack_error);

-- Location: IOOBUF_X34_Y0_N2
\reset_test~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|reset_n~q\,
	devoe => ww_devoe,
	o => ww_reset_test);

-- Location: IOOBUF_X43_Y0_N16
\CK_40M~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CK_50M~input_o\,
	devoe => ww_devoe,
	o => ww_CK_40M);

-- Location: IOOBUF_X53_Y7_N9
\I2S_CLOCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_I2S_CLOCK);

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

-- Location: CLKCTRL_G15
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

-- Location: LCCOMB_X41_Y7_N18
\inst|bit_cnt[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bit_cnt[0]~1_combout\ = !\inst|bit_cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|bit_cnt\(0),
	combout => \inst|bit_cnt[0]~1_combout\);

-- Location: PLL_4
\inst4|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 50,
	c0_initial => 1,
	c0_low => 50,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 25,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 3,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \inst4|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst4|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst4|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst4|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X36_Y2_N12
\inst1|count[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[0]~18_combout\ = \inst1|count\(0) $ (\inst1|LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|count\(0),
	datad => \inst1|LessThan1~1_combout\,
	combout => \inst1|count[0]~18_combout\);

-- Location: FF_X36_Y2_N13
\inst1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|count[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(0));

-- Location: LCCOMB_X36_Y2_N14
\inst1|count[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[1]~6_combout\ = (\inst1|count\(0) & (\inst1|count\(1) $ (VCC))) # (!\inst1|count\(0) & (\inst1|count\(1) & VCC))
-- \inst1|count[1]~7\ = CARRY((\inst1|count\(0) & \inst1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(0),
	datab => \inst1|count\(1),
	datad => VCC,
	combout => \inst1|count[1]~6_combout\,
	cout => \inst1|count[1]~7\);

-- Location: FF_X36_Y2_N15
\inst1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|count[1]~6_combout\,
	ena => \inst1|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(1));

-- Location: LCCOMB_X36_Y2_N16
\inst1|count[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[2]~8_combout\ = (\inst1|count\(2) & (!\inst1|count[1]~7\)) # (!\inst1|count\(2) & ((\inst1|count[1]~7\) # (GND)))
-- \inst1|count[2]~9\ = CARRY((!\inst1|count[1]~7\) # (!\inst1|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(2),
	datad => VCC,
	cin => \inst1|count[1]~7\,
	combout => \inst1|count[2]~8_combout\,
	cout => \inst1|count[2]~9\);

-- Location: FF_X36_Y2_N17
\inst1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|count[2]~8_combout\,
	ena => \inst1|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(2));

-- Location: LCCOMB_X36_Y2_N18
\inst1|count[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[3]~10_combout\ = (\inst1|count\(3) & (\inst1|count[2]~9\ $ (GND))) # (!\inst1|count\(3) & (!\inst1|count[2]~9\ & VCC))
-- \inst1|count[3]~11\ = CARRY((\inst1|count\(3) & !\inst1|count[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(3),
	datad => VCC,
	cin => \inst1|count[2]~9\,
	combout => \inst1|count[3]~10_combout\,
	cout => \inst1|count[3]~11\);

-- Location: FF_X36_Y2_N19
\inst1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|count[3]~10_combout\,
	ena => \inst1|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(3));

-- Location: LCCOMB_X36_Y2_N6
\inst1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = (\inst1|count\(3)) # ((\inst1|count\(2) & ((\inst1|count\(0)) # (\inst1|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(0),
	datab => \inst1|count\(2),
	datac => \inst1|count\(1),
	datad => \inst1|count\(3),
	combout => \inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X36_Y2_N20
\inst1|count[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[4]~12_combout\ = (\inst1|count\(4) & (!\inst1|count[3]~11\)) # (!\inst1|count\(4) & ((\inst1|count[3]~11\) # (GND)))
-- \inst1|count[4]~13\ = CARRY((!\inst1|count[3]~11\) # (!\inst1|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(4),
	datad => VCC,
	cin => \inst1|count[3]~11\,
	combout => \inst1|count[4]~12_combout\,
	cout => \inst1|count[4]~13\);

-- Location: FF_X36_Y2_N21
\inst1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|count[4]~12_combout\,
	ena => \inst1|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(4));

-- Location: LCCOMB_X36_Y2_N22
\inst1|count[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[5]~14_combout\ = (\inst1|count\(5) & (\inst1|count[4]~13\ $ (GND))) # (!\inst1|count\(5) & (!\inst1|count[4]~13\ & VCC))
-- \inst1|count[5]~15\ = CARRY((\inst1|count\(5) & !\inst1|count[4]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(5),
	datad => VCC,
	cin => \inst1|count[4]~13\,
	combout => \inst1|count[5]~14_combout\,
	cout => \inst1|count[5]~15\);

-- Location: FF_X36_Y2_N23
\inst1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|count[5]~14_combout\,
	ena => \inst1|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(5));

-- Location: LCCOMB_X36_Y2_N24
\inst1|count[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[6]~16_combout\ = \inst1|count[5]~15\ $ (\inst1|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|count\(6),
	cin => \inst1|count[5]~15\,
	combout => \inst1|count[6]~16_combout\);

-- Location: FF_X36_Y2_N25
\inst1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|count[6]~16_combout\,
	ena => \inst1|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(6));

-- Location: LCCOMB_X36_Y2_N0
\inst1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~1_combout\ = (!\inst1|count\(6) & (!\inst1|count\(5) & ((!\inst1|count\(4)) # (!\inst1|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~0_combout\,
	datab => \inst1|count\(6),
	datac => \inst1|count\(5),
	datad => \inst1|count\(4),
	combout => \inst1|LessThan1~1_combout\);

-- Location: LCCOMB_X36_Y2_N10
\inst1|reset_tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reset_tmp~0_combout\ = (\inst1|reset_tmp~q\) # (!\inst1|LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|reset_tmp~q\,
	datad => \inst1|LessThan1~1_combout\,
	combout => \inst1|reset_tmp~0_combout\);

-- Location: FF_X36_Y2_N11
\inst1|reset_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|reset_tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reset_tmp~q\);

-- Location: LCCOMB_X36_Y2_N8
\inst1|reset_n~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reset_n~feeder_combout\ = \inst1|reset_tmp~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|reset_tmp~q\,
	combout => \inst1|reset_n~feeder_combout\);

-- Location: FF_X36_Y2_N9
\inst1|reset_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|reset_n~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reset_n~q\);

-- Location: LCCOMB_X41_Y7_N28
\inst|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector19~0_combout\ = (\inst|state.command~q\ & (((!\inst|bit_cnt\(1)) # (!\inst|bit_cnt\(0))) # (!\inst|bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bit_cnt\(2),
	datab => \inst|bit_cnt\(0),
	datac => \inst|bit_cnt\(1),
	datad => \inst|state.command~q\,
	combout => \inst|Selector19~0_combout\);

-- Location: LCCOMB_X41_Y7_N22
\inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst|bit_cnt\(2) & (\inst|bit_cnt\(0) & \inst|bit_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bit_cnt\(2),
	datab => \inst|bit_cnt\(0),
	datac => \inst|bit_cnt\(1),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X41_Y7_N12
\inst|Selector20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector20~3_combout\ = (\inst|state.slv_ack1~q\) # ((\inst|state.slv_ack2~q\) # ((!\inst|Equal1~0_combout\ & \inst|state.wr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|state.slv_ack1~q\,
	datac => \inst|state.wr~q\,
	datad => \inst|state.slv_ack2~q\,
	combout => \inst|Selector20~3_combout\);

-- Location: LCCOMB_X35_Y6_N20
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|count\(1) & (!\inst|Add0~1\)) # (!\inst|count\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X35_Y6_N22
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|count\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|count\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|count\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X35_Y6_N24
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

-- Location: LCCOMB_X35_Y6_N4
\inst|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count~1_combout\ = (\inst|Add0~6_combout\ & ((!\inst|Equal0~1_combout\) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Add0~6_combout\,
	combout => \inst|count~1_combout\);

-- Location: FF_X35_Y6_N5
\inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|count~1_combout\,
	clrn => \inst1|reset_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(3));

-- Location: LCCOMB_X35_Y6_N26
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|count\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|count\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|count\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X35_Y6_N2
\inst|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count~3_combout\ = (\inst|Add0~8_combout\ & ((!\inst|Equal0~0_combout\) # (!\inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Add0~8_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|count~3_combout\);

-- Location: FF_X35_Y6_N3
\inst|count[4]\ : dffeas
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
	q => \inst|count\(4));

-- Location: LCCOMB_X35_Y6_N28
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|count\(5) & (!\inst|Add0~9\)) # (!\inst|count\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X35_Y6_N30
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = \inst|count\(6) $ (!\inst|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(6),
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\);

-- Location: LCCOMB_X40_Y8_N10
\inst|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count~0_combout\ = (\inst|Add0~12_combout\ & ((!\inst|Equal0~0_combout\) # (!\inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|Add0~12_combout\,
	datac => \inst|Equal0~0_combout\,
	combout => \inst|count~0_combout\);

-- Location: FF_X35_Y6_N23
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

-- Location: LCCOMB_X35_Y6_N12
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|count\(6) & (\inst|count\(5) & (\inst|count\(3) & \inst|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(6),
	datab => \inst|count\(5),
	datac => \inst|count\(3),
	datad => \inst|count\(4),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y6_N8
\inst|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count~2_combout\ = (\inst|Add0~10_combout\ & ((!\inst|Equal0~1_combout\) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Add0~10_combout\,
	combout => \inst|count~2_combout\);

-- Location: FF_X35_Y6_N9
\inst|count[5]\ : dffeas
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
	q => \inst|count\(5));

-- Location: LCCOMB_X40_Y8_N28
\inst|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~4_combout\ = (\inst|Add0~4_combout\ & (\inst|count~1_combout\ & \inst|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~4_combout\,
	datab => \inst|count~1_combout\,
	datad => \inst|Add0~8_combout\,
	combout => \inst|process_0~4_combout\);

-- Location: LCCOMB_X40_Y8_N30
\inst|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~5_combout\ = (\inst|Add0~2_combout\) # ((\inst|Add0~0_combout\ & !\inst|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~2_combout\,
	datac => \inst|Add0~0_combout\,
	datad => \inst|Add0~10_combout\,
	combout => \inst|process_0~5_combout\);

-- Location: LCCOMB_X40_Y8_N16
\inst|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~6_combout\ = (\inst|Add0~10_combout\ & (((\inst|count~0_combout\) # (!\inst|process_0~5_combout\)) # (!\inst|process_0~4_combout\))) # (!\inst|Add0~10_combout\ & (((\inst|process_0~4_combout\ & \inst|process_0~5_combout\)) # 
-- (!\inst|count~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~10_combout\,
	datab => \inst|process_0~4_combout\,
	datac => \inst|process_0~5_combout\,
	datad => \inst|count~0_combout\,
	combout => \inst|process_0~6_combout\);

-- Location: LCCOMB_X35_Y6_N0
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|count\(0) & (\inst|count\(1) & (!\inst|count\(2) & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datab => \inst|count\(1),
	datac => \inst|count\(2),
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X40_Y8_N18
\inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (\inst|Add0~8_combout\ & (!\inst|Equal0~2_combout\ & (\inst|Add0~2_combout\ & \inst|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~8_combout\,
	datab => \inst|Equal0~2_combout\,
	datac => \inst|Add0~2_combout\,
	datad => \inst|Add0~6_combout\,
	combout => \inst|process_0~0_combout\);

-- Location: LCCOMB_X40_Y8_N22
\inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~2_combout\ = (\inst|Add0~10_combout\ & (((!\inst|Add0~4_combout\)) # (!\inst|process_0~0_combout\))) # (!\inst|Add0~10_combout\ & (((\inst|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~10_combout\,
	datab => \inst|process_0~0_combout\,
	datac => \inst|Add0~4_combout\,
	datad => \inst|process_0~1_combout\,
	combout => \inst|process_0~2_combout\);

-- Location: LCCOMB_X40_Y8_N24
\inst|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~3_combout\ = (\inst|Add0~12_combout\) # (((\inst|Equal0~1_combout\ & \inst|Equal0~0_combout\)) # (!\inst|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|Add0~12_combout\,
	datac => \inst|process_0~2_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|process_0~3_combout\);

-- Location: LCCOMB_X40_Y8_N0
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

-- Location: FF_X40_Y8_N1
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

-- Location: LCCOMB_X40_Y8_N2
\inst|data_clk_prev~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_clk_prev~feeder_combout\ = \inst|data_clk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|data_clk~q\,
	combout => \inst|data_clk_prev~feeder_combout\);

-- Location: FF_X40_Y8_N3
\inst|data_clk_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|data_clk_prev~feeder_combout\,
	ena => \inst1|reset_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_clk_prev~q\);

-- Location: LCCOMB_X43_Y9_N6
\inst|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_1~0_combout\ = (!\inst|data_clk_prev~q\ & \inst|data_clk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|data_clk_prev~q\,
	datad => \inst|data_clk~q\,
	combout => \inst|process_1~0_combout\);

-- Location: FF_X41_Y7_N13
\inst|state.wr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|Selector20~3_combout\,
	clrn => \inst1|reset_n~q\,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.wr~q\);

-- Location: LCCOMB_X41_Y7_N20
\inst|state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~15_combout\ = (\inst|bit_cnt\(2) & (\inst|bit_cnt\(0) & (\inst|bit_cnt\(1) & \inst|state.wr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bit_cnt\(2),
	datab => \inst|bit_cnt\(0),
	datac => \inst|bit_cnt\(1),
	datad => \inst|state.wr~q\,
	combout => \inst|state~15_combout\);

-- Location: FF_X41_Y7_N21
\inst|state.slv_ack2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|state~15_combout\,
	clrn => \inst1|reset_n~q\,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.slv_ack2~q\);

-- Location: LCCOMB_X41_Y7_N6
\inst|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector21~0_combout\ = (\inst|state.mstr_ack~q\) # ((!\inst|Equal1~0_combout\ & \inst|state.rd~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datac => \inst|state.rd~q\,
	datad => \inst|state.mstr_ack~q\,
	combout => \inst|Selector21~0_combout\);

-- Location: FF_X41_Y7_N7
\inst|state.rd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|Selector21~0_combout\,
	clrn => \inst1|reset_n~q\,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.rd~q\);

-- Location: LCCOMB_X41_Y7_N2
\inst|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~14_combout\ = (\inst|bit_cnt\(2) & (\inst|bit_cnt\(0) & (\inst|bit_cnt\(1) & \inst|state.rd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bit_cnt\(2),
	datab => \inst|bit_cnt\(0),
	datac => \inst|bit_cnt\(1),
	datad => \inst|state.rd~q\,
	combout => \inst|state~14_combout\);

-- Location: FF_X41_Y7_N3
\inst|state.mstr_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|state~14_combout\,
	clrn => \inst1|reset_n~q\,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.mstr_ack~q\);

-- Location: LCCOMB_X43_Y9_N16
\inst|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr6~0_combout\ = (\inst|state.slv_ack2~q\) # (\inst|state.mstr_ack~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.slv_ack2~q\,
	datad => \inst|state.mstr_ack~q\,
	combout => \inst|WideOr6~0_combout\);

-- Location: FF_X43_Y9_N17
\inst|state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|WideOr6~0_combout\,
	clrn => \inst1|reset_n~q\,
	sclr => \inst1|reset_n~q\,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.stop~q\);

-- Location: LCCOMB_X43_Y9_N26
\inst|state.ready~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state.ready~0_combout\ = !\inst|state.stop~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|state.stop~q\,
	combout => \inst|state.ready~0_combout\);

-- Location: FF_X43_Y9_N27
\inst|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|state.ready~0_combout\,
	clrn => \inst1|reset_n~q\,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ready~q\);

-- Location: LCCOMB_X43_Y9_N14
\inst|state.start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state.start~0_combout\ = !\inst|state.ready~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.ready~q\,
	combout => \inst|state.start~0_combout\);

-- Location: FF_X43_Y9_N15
\inst|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|state.start~0_combout\,
	clrn => \inst1|reset_n~q\,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.start~q\);

-- Location: LCCOMB_X41_Y7_N0
\inst|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector19~1_combout\ = (\inst|Selector19~0_combout\) # (\inst|state.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector19~0_combout\,
	datad => \inst|state.start~q\,
	combout => \inst|Selector19~1_combout\);

-- Location: FF_X41_Y7_N1
\inst|state.command\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|Selector19~1_combout\,
	clrn => \inst1|reset_n~q\,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.command~q\);

-- Location: LCCOMB_X43_Y9_N12
\inst|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~3_combout\ = (!\inst|state.wr~q\ & !\inst|state.rd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.wr~q\,
	datad => \inst|state.rd~q\,
	combout => \inst|Selector0~3_combout\);

-- Location: LCCOMB_X43_Y9_N22
\inst|bit_cnt[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bit_cnt[2]~0_combout\ = (\inst|data_clk~q\ & (!\inst|data_clk_prev~q\ & ((\inst|state.command~q\) # (!\inst|Selector0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.command~q\,
	datab => \inst|data_clk~q\,
	datac => \inst|data_clk_prev~q\,
	datad => \inst|Selector0~3_combout\,
	combout => \inst|bit_cnt[2]~0_combout\);

-- Location: FF_X41_Y7_N19
\inst|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|bit_cnt[0]~1_combout\,
	clrn => \inst1|reset_n~q\,
	ena => \inst|bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bit_cnt\(0));

-- Location: LCCOMB_X41_Y7_N8
\inst|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector25~0_combout\ = \inst|bit_cnt\(1) $ (\inst|bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|bit_cnt\(1),
	datad => \inst|bit_cnt\(0),
	combout => \inst|Selector25~0_combout\);

-- Location: FF_X41_Y7_N9
\inst|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|Selector25~0_combout\,
	clrn => \inst1|reset_n~q\,
	ena => \inst|bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bit_cnt\(1));

-- Location: LCCOMB_X41_Y7_N30
\inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = \inst|bit_cnt\(2) $ (((\inst|bit_cnt\(1) & \inst|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bit_cnt\(1),
	datac => \inst|bit_cnt\(2),
	datad => \inst|bit_cnt\(0),
	combout => \inst|Add1~0_combout\);

-- Location: FF_X41_Y7_N31
\inst|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|Add1~0_combout\,
	clrn => \inst1|reset_n~q\,
	ena => \inst|bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bit_cnt\(2));

-- Location: LCCOMB_X41_Y7_N26
\inst|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~13_combout\ = (\inst|bit_cnt\(2) & (\inst|bit_cnt\(0) & (\inst|bit_cnt\(1) & \inst|state.command~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bit_cnt\(2),
	datab => \inst|bit_cnt\(0),
	datac => \inst|bit_cnt\(1),
	datad => \inst|state.command~q\,
	combout => \inst|state~13_combout\);

-- Location: FF_X41_Y7_N27
\inst|state.slv_ack1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|state~13_combout\,
	clrn => \inst1|reset_n~q\,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.slv_ack1~q\);

-- Location: LCCOMB_X43_Y9_N8
\inst|Selector20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector20~2_combout\ = (!\inst|state.slv_ack1~q\ & !\inst|state.slv_ack2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.slv_ack1~q\,
	datad => \inst|state.slv_ack2~q\,
	combout => \inst|Selector20~2_combout\);

-- Location: LCCOMB_X43_Y9_N20
\inst|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector27~0_combout\ = (!\inst|state.command~q\ & (!\inst|state.mstr_ack~q\ & (\inst|state.ready~q\ & \inst|Selector0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.command~q\,
	datab => \inst|state.mstr_ack~q\,
	datac => \inst|state.ready~q\,
	datad => \inst|Selector0~3_combout\,
	combout => \inst|Selector27~0_combout\);

-- Location: LCCOMB_X43_Y9_N0
\inst|Selector27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector27~1_combout\ = (\inst|state.start~q\) # ((\inst|scl_ena~q\ & ((!\inst|Selector27~0_combout\) # (!\inst|Selector20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector20~2_combout\,
	datab => \inst|state.start~q\,
	datac => \inst|scl_ena~q\,
	datad => \inst|Selector27~0_combout\,
	combout => \inst|Selector27~1_combout\);

-- Location: LCCOMB_X43_Y9_N18
\inst|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_1~1_combout\ = (\inst|data_clk_prev~q\ & !\inst|data_clk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|data_clk_prev~q\,
	datad => \inst|data_clk~q\,
	combout => \inst|process_1~1_combout\);

-- Location: FF_X43_Y9_N1
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

-- Location: LCCOMB_X40_Y8_N8
\inst|stretch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stretch~0_combout\ = (\inst|process_0~6_combout\ & (((\inst|stretch~q\)))) # (!\inst|process_0~6_combout\ & (\inst|scl_ena~q\ & ((!\inst|scl_clk~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scl_ena~q\,
	datab => \inst|process_0~6_combout\,
	datac => \inst|stretch~q\,
	datad => \inst|scl_clk~q\,
	combout => \inst|stretch~0_combout\);

-- Location: FF_X40_Y8_N9
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

-- Location: LCCOMB_X35_Y6_N18
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

-- Location: LCCOMB_X35_Y6_N10
\inst|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count~6_combout\ = (\inst|Add0~0_combout\ & ((!\inst|Equal0~0_combout\) # (!\inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~0_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|count~6_combout\);

-- Location: FF_X35_Y6_N11
\inst|count[0]\ : dffeas
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
	q => \inst|count\(0));

-- Location: LCCOMB_X35_Y6_N16
\inst|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count~5_combout\ = (\inst|Add0~2_combout\ & ((!\inst|Equal0~0_combout\) # (!\inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~2_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|count~5_combout\);

-- Location: FF_X35_Y6_N17
\inst|count[1]\ : dffeas
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
	q => \inst|count\(1));

-- Location: LCCOMB_X35_Y6_N14
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|count\(2) & (\inst|count\(1) & \inst|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(2),
	datab => \inst|count\(1),
	datad => \inst|count\(0),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X35_Y6_N6
\inst|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count~4_combout\ = (\inst|Add0~4_combout\ & ((!\inst|Equal0~0_combout\) # (!\inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~4_combout\,
	datab => \inst|Equal0~1_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|count~4_combout\);

-- Location: FF_X35_Y6_N7
\inst|count[2]\ : dffeas
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
	q => \inst|count\(2));

-- Location: LCCOMB_X40_Y8_N12
\inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~1_combout\ = (\inst|Add0~4_combout\ & (!\inst|Equal0~2_combout\ & (\inst|Add0~0_combout\ & \inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~4_combout\,
	datab => \inst|Equal0~2_combout\,
	datac => \inst|Add0~0_combout\,
	datad => \inst|process_0~0_combout\,
	combout => \inst|process_0~1_combout\);

-- Location: LCCOMB_X40_Y8_N26
\inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (\inst|process_0~1_combout\) # ((\inst|count~0_combout\) # ((!\inst|Equal0~2_combout\ & \inst|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~1_combout\,
	datab => \inst|Equal0~2_combout\,
	datac => \inst|count~0_combout\,
	datad => \inst|Add0~10_combout\,
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X40_Y8_N20
\inst|scl_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|scl_clk~0_combout\ = (\inst|LessThan1~0_combout\ & \inst|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|process_0~3_combout\,
	combout => \inst|scl_clk~0_combout\);

-- Location: FF_X40_Y8_N21
\inst|scl_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|scl_clk~0_combout\,
	ena => \inst1|reset_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|scl_clk~q\);

-- Location: LCCOMB_X40_Y8_N6
\inst|scl~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|scl~1_combout\ = (\inst|scl_clk~q\) # (!\inst|scl_ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|scl_clk~q\,
	datac => \inst|scl_ena~q\,
	combout => \inst|scl~1_combout\);

-- Location: LCCOMB_X41_Y7_N14
\inst|sda_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sda_int~0_combout\ = (!\inst|sda_int~q\ & (((!\inst|bit_cnt\(1)) # (!\inst|bit_cnt\(0))) # (!\inst|bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bit_cnt\(2),
	datab => \inst|bit_cnt\(0),
	datac => \inst|bit_cnt\(1),
	datad => \inst|sda_int~q\,
	combout => \inst|sda_int~0_combout\);

-- Location: LCCOMB_X41_Y7_N16
\inst|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector23~0_combout\ = (\inst|Selector19~0_combout\ & (((!\inst|Add1~0_combout\ & \inst|Selector25~0_combout\)))) # (!\inst|Selector19~0_combout\ & (((!\inst|Add1~0_combout\)) # (!\inst|state.wr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.wr~q\,
	datab => \inst|Selector19~0_combout\,
	datac => \inst|Add1~0_combout\,
	datad => \inst|Selector25~0_combout\,
	combout => \inst|Selector23~0_combout\);

-- Location: LCCOMB_X41_Y7_N10
\inst|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector23~1_combout\ = (\inst|bit_cnt\(2) & (!\inst|state.slv_ack1~q\ & ((!\inst|state.start~q\)))) # (!\inst|bit_cnt\(2) & (((\inst|bit_cnt\(1)) # (!\inst|state.start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.slv_ack1~q\,
	datab => \inst|bit_cnt\(1),
	datac => \inst|bit_cnt\(2),
	datad => \inst|state.start~q\,
	combout => \inst|Selector23~1_combout\);

-- Location: LCCOMB_X43_Y9_N4
\inst|Selector23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector23~2_combout\ = ((\inst|state.ready~q\ & !\inst|state.stop~q\)) # (!\inst|sda_int~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ready~q\,
	datab => \inst|state.stop~q\,
	datac => \inst|sda_int~q\,
	combout => \inst|Selector23~2_combout\);

-- Location: LCCOMB_X41_Y7_N4
\inst|Selector23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector23~3_combout\ = (\inst|Selector23~1_combout\ & (\inst|Selector23~2_combout\ & ((!\inst|bit_cnt\(2)) # (!\inst|state.slv_ack2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector23~1_combout\,
	datab => \inst|state.slv_ack2~q\,
	datac => \inst|bit_cnt\(2),
	datad => \inst|Selector23~2_combout\,
	combout => \inst|Selector23~3_combout\);

-- Location: LCCOMB_X41_Y7_N24
\inst|Selector23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector23~4_combout\ = (((!\inst|sda_int~0_combout\ & \inst|state.rd~q\)) # (!\inst|Selector23~3_combout\)) # (!\inst|Selector23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sda_int~0_combout\,
	datab => \inst|Selector23~0_combout\,
	datac => \inst|Selector23~3_combout\,
	datad => \inst|state.rd~q\,
	combout => \inst|Selector23~4_combout\);

-- Location: FF_X41_Y7_N25
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

-- Location: LCCOMB_X43_Y9_N2
\inst|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector29~0_combout\ = (\inst|state.start~q\ & (\inst|data_clk_prev~q\)) # (!\inst|state.start~q\ & ((\inst|state.stop~q\ & (!\inst|data_clk_prev~q\)) # (!\inst|state.stop~q\ & ((!\inst|sda_int~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_clk_prev~q\,
	datab => \inst|sda_int~q\,
	datac => \inst|state.start~q\,
	datad => \inst|state.stop~q\,
	combout => \inst|Selector29~0_combout\);

-- Location: LCCOMB_X43_Y9_N24
\inst|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~2_combout\ = (\inst|state.start~q\) # ((!\inst|busy~q\ & ((\inst|state.command~q\) # (\inst|state.slv_ack1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.command~q\,
	datab => \inst|state.start~q\,
	datac => \inst|busy~q\,
	datad => \inst|state.slv_ack1~q\,
	combout => \inst|Selector0~2_combout\);

-- Location: LCCOMB_X43_Y9_N10
\inst|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~4_combout\ = (\inst|state.ready~q\ & (!\inst|state.rd~q\ & (!\inst|state.wr~q\ & !\inst|Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ready~q\,
	datab => \inst|state.rd~q\,
	datac => \inst|state.wr~q\,
	datad => \inst|Selector0~2_combout\,
	combout => \inst|Selector0~4_combout\);

-- Location: FF_X43_Y9_N11
\inst|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|Selector0~4_combout\,
	clrn => \inst1|reset_n~q\,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|busy~q\);

-- Location: LCCOMB_X43_Y9_N30
\inst|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector28~0_combout\ = (\inst|state.stop~q\) # (((\inst|scl_ena~q\ & \inst|state.start~q\)) # (!\inst|Selector27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scl_ena~q\,
	datab => \inst|state.stop~q\,
	datac => \inst|state.start~q\,
	datad => \inst|Selector27~0_combout\,
	combout => \inst|Selector28~0_combout\);

-- Location: LCCOMB_X43_Y9_N28
\inst|Selector28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector28~1_combout\ = (\inst|Selector20~2_combout\ & (\inst|Selector28~0_combout\ & (\inst|ack_error~q\))) # (!\inst|Selector20~2_combout\ & (((\inst|ack_error~q\) # (\inst|Selector29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector28~0_combout\,
	datab => \inst|Selector20~2_combout\,
	datac => \inst|ack_error~q\,
	datad => \inst|Selector29~0_combout\,
	combout => \inst|Selector28~1_combout\);

-- Location: FF_X43_Y9_N29
\inst|ack_error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK_50M~inputclkctrl_outclk\,
	d => \inst|Selector28~1_combout\,
	clrn => \inst1|reset_n~q\,
	ena => \inst|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ack_error~q\);
END structure;


