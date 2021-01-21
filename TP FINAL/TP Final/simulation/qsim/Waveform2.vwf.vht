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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/12/2021 14:48:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TP_FINAL
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TP_FINAL_vhd_vec_tst IS
END TP_FINAL_vhd_vec_tst;
ARCHITECTURE TP_FINAL_arch OF TP_FINAL_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ack_error : STD_LOGIC;
SIGNAL adrs : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL busy : STD_LOGIC;
SIGNAL CK_50M : STD_LOGIC;
SIGNAL clocksito : STD_LOGIC;
SIGNAL data : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
SIGNAL reset_n : STD_LOGIC;
SIGNAL scl : STD_LOGIC;
SIGNAL sda : STD_LOGIC;
COMPONENT TP_FINAL
	PORT (
	ack_error : OUT STD_LOGIC;
	adrs : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	busy : OUT STD_LOGIC;
	CK_50M : IN STD_LOGIC;
	clocksito : OUT STD_LOGIC;
	data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	enable : IN STD_LOGIC;
	reset_n : IN STD_LOGIC;
	scl : OUT STD_LOGIC;
	sda : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : TP_FINAL
	PORT MAP (
-- list connections between master ports and signals
	ack_error => ack_error,
	adrs => adrs,
	busy => busy,
	CK_50M => CK_50M,
	clocksito => clocksito,
	data => data,
	enable => enable,
	reset_n => reset_n,
	scl => scl,
	sda => sda
	);
-- adrs[6]
t_prcs_adrs_6: PROCESS
BEGIN
	adrs(6) <= '1';
WAIT;
END PROCESS t_prcs_adrs_6;
-- adrs[5]
t_prcs_adrs_5: PROCESS
BEGIN
	adrs(5) <= '1';
WAIT;
END PROCESS t_prcs_adrs_5;
-- adrs[4]
t_prcs_adrs_4: PROCESS
BEGIN
	adrs(4) <= '1';
WAIT;
END PROCESS t_prcs_adrs_4;
-- adrs[3]
t_prcs_adrs_3: PROCESS
BEGIN
	adrs(3) <= '1';
WAIT;
END PROCESS t_prcs_adrs_3;
-- adrs[2]
t_prcs_adrs_2: PROCESS
BEGIN
	adrs(2) <= '0';
WAIT;
END PROCESS t_prcs_adrs_2;
-- adrs[1]
t_prcs_adrs_1: PROCESS
BEGIN
	adrs(1) <= '0';
WAIT;
END PROCESS t_prcs_adrs_1;
-- adrs[0]
t_prcs_adrs_0: PROCESS
BEGIN
	adrs(0) <= '0';
WAIT;
END PROCESS t_prcs_adrs_0;

-- CK_50M
t_prcs_CK_50M: PROCESS
BEGIN
LOOP
	CK_50M <= '0';
	WAIT FOR 50000 ps;
	CK_50M <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CK_50M;
-- data[7]
t_prcs_data_7: PROCESS
BEGIN
	data(7) <= '1';
WAIT;
END PROCESS t_prcs_data_7;
-- data[6]
t_prcs_data_6: PROCESS
BEGIN
	data(6) <= '0';
WAIT;
END PROCESS t_prcs_data_6;
-- data[5]
t_prcs_data_5: PROCESS
BEGIN
	data(5) <= '1';
WAIT;
END PROCESS t_prcs_data_5;
-- data[4]
t_prcs_data_4: PROCESS
BEGIN
	data(4) <= '0';
WAIT;
END PROCESS t_prcs_data_4;
-- data[3]
t_prcs_data_3: PROCESS
BEGIN
	data(3) <= '1';
WAIT;
END PROCESS t_prcs_data_3;
-- data[2]
t_prcs_data_2: PROCESS
BEGIN
	data(2) <= '0';
WAIT;
END PROCESS t_prcs_data_2;
-- data[1]
t_prcs_data_1: PROCESS
BEGIN
	data(1) <= '1';
WAIT;
END PROCESS t_prcs_data_1;
-- data[0]
t_prcs_data_0: PROCESS
BEGIN
	data(0) <= '0';
WAIT;
END PROCESS t_prcs_data_0;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;

-- reset_n
t_prcs_reset_n: PROCESS
BEGIN
	reset_n <= '0';
	WAIT FOR 400000 ps;
	reset_n <= '1';
WAIT;
END PROCESS t_prcs_reset_n;
END TP_FINAL_arch;
