-- -------------------------------------------------------------
-- 
-- File Name: hdlsrc\flanger_short\suma.vhd
-- Created: 2021-02-20 22:35:24
-- 
-- Generated by MATLAB 9.4 and HDL Coder 3.12
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Model base rate: 2.26757e-05
-- Target subsystem base rate: 2.26757e-05
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: suma
-- Source Path: suma
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY suma IS
  PORT( In1                               :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
        In2                               :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
        Out1                              :   OUT   std_logic_vector(15 DOWNTO 0)  -- int16
        );
END suma;


ARCHITECTURE rtl OF suma IS

  -- Signals
  SIGNAL In1_signed                       : signed(15 DOWNTO 0);  -- int16
  SIGNAL In2_signed                       : signed(15 DOWNTO 0);  -- int16
  SIGNAL Sum_out1                         : signed(15 DOWNTO 0);  -- int16

BEGIN
  In1_signed <= signed(In1);

  In2_signed <= signed(In2);

  Sum_out1 <= In1_signed + In2_signed;

  Out1 <= std_logic_vector(Sum_out1);

END rtl;

