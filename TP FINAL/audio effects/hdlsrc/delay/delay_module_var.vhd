-- -------------------------------------------------------------
-- 
-- File Name: hdlsrc\delay\delay_module.vhd
-- Created: 2021-01-15 19:12:17
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
-- 
-- Clock Enable  Sample Time
-- -------------------------------------------------------------
-- ce_out        2.26757e-05
-- -------------------------------------------------------------
-- 
-- 
-- Output Signal                 Clock Enable  Sample Time
-- -------------------------------------------------------------
-- Out1                          ce_out        2.26757e-05
-- -------------------------------------------------------------
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: delay_module
-- Source Path: delay/delay_module
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.delay_module_pkg.ALL;

ENTITY delay_module IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        clk_enable                        :   IN    std_logic;
        In1                               :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
		  delay_sel                         :   IN    unsigned(9 DOWNTO 0);  -- int10
        ce_out                            :   OUT   std_logic;
        Out1                              :   OUT   std_logic_vector(15 DOWNTO 0)  -- int16
        );
END delay_module;


ARCHITECTURE rtl OF delay_module IS

  -- Signals
  SIGNAL enb                              : std_logic;
  SIGNAL In1_signed                       : signed(15 DOWNTO 0);  -- int16
  SIGNAL Delay_reg                        : vector_of_signed16(0 TO 1023);  -- sfix16 [1024]
  SIGNAL Delay_out1                       : signed(15 DOWNTO 0);  -- int16
  SIGNAL attenuation_mul_temp             : signed(31 DOWNTO 0);  -- sfix32_En16
  SIGNAL attenuation_out1                 : signed(15 DOWNTO 0);  -- int16
  SIGNAL Sum_out1                         : signed(15 DOWNTO 0);  -- int16

BEGIN
  In1_signed <= signed(In1);

  enb <= clk_enable;

  Delay_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay_reg <= (OTHERS => to_signed(16#0000#, 16));
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Delay_reg(0) <= In1_signed;
        Delay_reg(1 TO 1023) <= Delay_reg(0 TO 1022); -- delay de 100ms (100(ms)*44.1(kHz)=4410 muestras de delay)
      END IF;
    END IF;
  END PROCESS Delay_process;
  
  Out1 <= std_logic_vector(Delay_reg(to_integer(delay_sel)));

  --Delay_out1 <= Delay_reg(to_integer(delay_sel));

  --attenuation_mul_temp <= to_signed(16#4CCD#, 16) * Delay_out1;
  --attenuation_out1 <= attenuation_mul_temp(31 DOWNTO 16);

  --Sum_out1 <= In1_signed + attenuation_out1;

  --Out1 <= std_logic_vector(Sum_out1);

  ce_out <= clk_enable;

END rtl;

