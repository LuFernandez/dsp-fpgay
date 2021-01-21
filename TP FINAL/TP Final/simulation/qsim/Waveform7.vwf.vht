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
-- Generated on "01/12/2021 16:46:58"
                                                             
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
SIGNAL busy : STD_LOGIC;
SIGNAL CK_40M : STD_LOGIC;
SIGNAL reset_test : STD_LOGIC;
SIGNAL scl : STD_LOGIC;
SIGNAL sda : STD_LOGIC;
COMPONENT TP_FINAL
	PORT (
	ack_error : OUT STD_LOGIC;
	busy : OUT STD_LOGIC;
	CK_40M : IN STD_LOGIC;
	reset_test : OUT STD_LOGIC;
	scl : OUT STD_LOGIC;
	sda : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : TP_FINAL
	PORT MAP (
-- list connections between master ports and signals
	ack_error => ack_error,
	busy => busy,
	CK_40M => CK_40M,
	reset_test => reset_test,
	scl => scl,
	sda => sda
	);

-- CK_40M
t_prcs_CK_40M: PROCESS
BEGIN
LOOP
	CK_40M <= '0';
	WAIT FOR 12500 ps;
	CK_40M <= '1';
	WAIT FOR 12500 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CK_40M;
END TP_FINAL_arch;
