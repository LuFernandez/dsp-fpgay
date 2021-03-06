-- -------------------------------------------------------------
-- 
-- File Name: hdlsrc\flanger\flanger.vhd
-- Created: 2021-01-14 21:50:53
-- 
-- Generated by MATLAB 9.4 and HDL Coder 3.12
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Model base rate: 2.26757e-05
-- Target subsystem base rate: 44100
-- 
-- 
-- Clock Enable  Sample Time
-- -------------------------------------------------------------
-- ce_out        44100
-- -------------------------------------------------------------
-- 
-- 
-- Output Signal                 Clock Enable  Sample Time
-- -------------------------------------------------------------
-- Out1                          ce_out        44100
-- -------------------------------------------------------------
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: flanger
-- Source Path: flanger/flanger
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.flanger_pkg.ALL;

ENTITY flanger IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        clk_enable                        :   IN    std_logic;
        In1                               :   IN    vector_of_std_logic_vector16(0 TO 1);  -- int16 [2]
        ce_out                            :   OUT   std_logic;
        Out1                              :   OUT   vector_of_std_logic_vector16(0 TO 1)  -- int16 [2]
        );
END flanger;


ARCHITECTURE rtl OF flanger IS

  -- Signals
  SIGNAL enb_1_1944810000_0               : std_logic;
  SIGNAL In1_0                            : signed(15 DOWNTO 0);  -- int16
  SIGNAL In1_1                            : signed(15 DOWNTO 0);  -- int16
  SIGNAL Variable_Integer_Delay_out_1     : signed(15 DOWNTO 0);  -- int16
  SIGNAL Variable_Integer_Delay_1_reg     : vector_of_signed16(0 TO 79);  -- sfix16 [80]
  SIGNAL Variable_Integer_Delay_out_2     : signed(15 DOWNTO 0);  -- int16
  SIGNAL Variable_Integer_Delay_1_reg_1   : vector_of_signed16(0 TO 79);  -- sfix16 [80]
  SIGNAL In1_signed                       : vector_of_signed16(0 TO 1);  -- int16 [2]
  SIGNAL Blend_out1                       : vector_of_signed16(0 TO 1);  -- int16 [2]
  SIGNAL Variable_Integer_Delay_out1      : vector_of_signed16(0 TO 1);  -- int16 [2]
  SIGNAL FeedForward_mul_temp             : signed(31 DOWNTO 0);  -- sfix32_En15
  SIGNAL FeedForward_mul_temp_1           : signed(31 DOWNTO 0);  -- sfix32_En15
  SIGNAL FeedForward_out1                 : vector_of_signed16(0 TO 1);  -- int16 [2]
  SIGNAL Sum_out1                         : vector_of_signed16(0 TO 1);  -- int16 [2]

BEGIN
  In1_0 <= signed(In1(0));

  enb_1_1944810000_0 <= clk_enable;

  Variable_Integer_Delay_1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Variable_Integer_Delay_1_reg <= (OTHERS => to_signed(16#0000#, 16));
      Variable_Integer_Delay_1_reg_1 <= (OTHERS => to_signed(16#0000#, 16));
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_1944810000_0 = '1' THEN
        Variable_Integer_Delay_1_reg(0) <= In1_0;
        Variable_Integer_Delay_1_reg(1 TO 79) <= Variable_Integer_Delay_1_reg(0 TO 78);
        Variable_Integer_Delay_1_reg_1(0) <= In1_1;
        Variable_Integer_Delay_1_reg_1(1 TO 79) <= Variable_Integer_Delay_1_reg_1(0 TO 78);
      END IF;
    END IF;
  END PROCESS Variable_Integer_Delay_1_process;

  Variable_Integer_Delay_out_1 <= Variable_Integer_Delay_1_reg(79);
  Variable_Integer_Delay_out_2 <= Variable_Integer_Delay_1_reg_1(79);

  In1_1 <= signed(In1(1));

  outputgen1: FOR k IN 0 TO 1 GENERATE
    In1_signed(k) <= signed(In1(k));
  END GENERATE;

  Blend_out1(0) <= In1_signed(0);
  Blend_out1(1) <= In1_signed(1);

  Variable_Integer_Delay_out1(0) <= Variable_Integer_Delay_out_1;
  Variable_Integer_Delay_out1(1) <= Variable_Integer_Delay_out_2;

  FeedForward_mul_temp <= to_signed(16#4CCD#, 16) * Variable_Integer_Delay_out1(0);
  FeedForward_out1(0) <= FeedForward_mul_temp(30 DOWNTO 15);
  FeedForward_mul_temp_1 <= to_signed(16#4CCD#, 16) * Variable_Integer_Delay_out1(1);
  FeedForward_out1(1) <= FeedForward_mul_temp_1(30 DOWNTO 15);


  Sum_out1_gen: FOR t_0 IN 0 TO 1 GENERATE
    Sum_out1(t_0) <= Blend_out1(t_0) + FeedForward_out1(t_0);
  END GENERATE Sum_out1_gen;


  outputgen: FOR k IN 0 TO 1 GENERATE
    Out1(k) <= std_logic_vector(Sum_out1(k));
  END GENERATE;

  ce_out <= clk_enable;

END rtl;

