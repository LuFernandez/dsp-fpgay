
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
use IEEE.math_real.uniform;
use IEEE.math_real.floor;
USE work.echo_pkg.ALL;

ENTITY chorus IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        clk_enable                        :   IN    std_logic;
        In1                               :   IN    std_logic_vector(7 DOWNTO 0);  -- int8
        ce_out                            :   OUT   std_logic;
        Out1                              :   OUT   std_logic_vector(7 DOWNTO 0)  -- int8
        );
END chorus;


ARCHITECTURE rtl OF chorus IS

  -- Signals
  SIGNAL enb                              : std_logic;
  SIGNAL In1_signed                       : signed(7 DOWNTO 0);  -- int8
  SIGNAL Delay_reg                        : vector_of_signed8(0 TO 511);  -- sfix8 [6000]
  SIGNAL Delay_out1                       : signed(7 DOWNTO 0);  -- int8
  SIGNAL Delay_out2                       : signed(7 DOWNTO 0);  -- int8
  SIGNAL attenuation_cast                 : signed(15 DOWNTO 0);  -- sfix16_En7
  SIGNAL attenuation_out1                 : signed(7 DOWNTO 0);  -- int8
  SIGNAL attenuation_cast2                : signed(15 DOWNTO 0);  -- sfix16_En7
  SIGNAL attenuation_out2                 : signed(7 DOWNTO 0);  -- int8
  SIGNAL Sum_out1                         : signed(7 DOWNTO 0);  -- int8
  SIGNAL sin_pos									: INTEGER RANGE 0 TO 511;
  SIGNAL sin_pos2									: INTEGER RANGE 0 TO 511;
  
  SIGNAL r_lfsr            					: std_logic_vector (9 downto 1);
  SIGNAL w_mask           						: std_logic_vector (9 downto 1);
  SIGNAL w_poly           						: std_logic_vector (9 downto 1);
  
  SIGNAL r_lfsr2            					: std_logic_vector (9 downto 1);
  SIGNAL w_mask2           					: std_logic_vector (9 downto 1);
  SIGNAL w_poly2           					: std_logic_vector (9 downto 1);

BEGIN
  
  sin_pos  <= to_integer(unsigned(r_lfsr(9 downto 1)));
  w_poly  <= "110000000";
  g_mask : for k in 9 downto 1 generate
		w_mask(k)  <= w_poly(k) and r_lfsr(1);
  end generate g_mask;
  
  sin_pos2  <= to_integer(unsigned(r_lfsr2(9 downto 1)));
  w_poly2  <= "100010000";
  g_mask2 : for k in 9 downto 1 generate
		w_mask2(k)  <= w_poly2(k) and r_lfsr2(1);
  end generate g_mask2;
  
  In1_signed <= signed(In1);

  enb <= clk_enable;

  Delay_process : PROCESS (clk, reset)
  VARIABLE count1  :  INTEGER RANGE 0 TO 5 := 0;  --timing for clock generation
  VARIABLE count2  :  INTEGER RANGE 0 TO 5 := 0;  --timing for clock generation
  VARIABLE bool	 :	 STD_LOGIC := '0';

  variable x 		 :  real;
  variable seed1 : positive := 1;
  variable seed2 : positive := 1;
  
  BEGIN
    IF reset = '1' THEN
      Delay_reg <= (OTHERS => to_signed(16#00#, 8));
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
			IF(count2 < 2) THEN
				count2 := count2 +1;
			ELSIF (bool = '1') THEN
				bool := '1';
				r_lfsr   <= "010001001";
				r_lfsr2   <= "000100100";
			END IF;
			IF(count1 < 3) THEN
				count1 := count1 + 1;
			ELSE
				count1 := 0;
				r_lfsr   <= '0'&r_lfsr(9 downto 2) xor w_mask;
				r_lfsr2   <= '0'&r_lfsr2(9 downto 2) xor w_mask2;
			END IF;
			Delay_reg(0) <= In1_signed;
			Delay_reg(1 TO 511) <= Delay_reg(0 TO 510);
      END IF;
    END IF;
  END PROCESS Delay_process;

  Delay_out1 <= Delay_reg(sin_pos);
  Delay_out2 <= Delay_reg(sin_pos2);

  attenuation_cast <= resize(Delay_out1 & '0' & '0' & '0' & '0' & '0' & '0', 16);
  attenuation_out1 <= attenuation_cast(14 DOWNTO 7) + ('0' & (attenuation_cast(6) AND (( NOT attenuation_cast(15)) OR (attenuation_cast(5) OR attenuation_cast(4) OR attenuation_cast(3) OR attenuation_cast(2) OR attenuation_cast(1) OR attenuation_cast(0)))));
  attenuation_cast2 <= resize(Delay_out2 & '0' & '0' & '0' & '0' & '0' & '0', 16);
  attenuation_out2 <= attenuation_cast2(14 DOWNTO 7) + ('0' & (attenuation_cast2(6) AND (( NOT attenuation_cast2(15)) OR (attenuation_cast2(5) OR attenuation_cast2(4) OR attenuation_cast2(3) OR attenuation_cast2(2) OR attenuation_cast2(1) OR attenuation_cast2(0)))));
  Sum_out1 <= attenuation_out1 + attenuation_out2;

  Out1 <= std_logic_vector(Sum_out1);

  ce_out <= clk_enable;

END rtl;
