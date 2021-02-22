
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.echo_pkg.ALL;

ENTITY vibrato IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        clk_enable                        :   IN    std_logic;
        In1                               :   IN    std_logic_vector(7 DOWNTO 0);  -- int8
        ce_out                            :   OUT   std_logic;
        Out1                              :   OUT   std_logic_vector(7 DOWNTO 0)  -- int8
        );
END vibrato;


ARCHITECTURE rtl OF vibrato IS

  -- Signals
  SIGNAL enb                              : std_logic;
  SIGNAL In1_signed                       : signed(7 DOWNTO 0);  -- int8
  SIGNAL Delay_reg                        : vector_of_signed8(0 TO 32);  -- sfix8 [6000]
  SIGNAL Delay_out1                       : signed(7 DOWNTO 0);  -- int8
  SIGNAL attenuation_cast                 : signed(15 DOWNTO 0);  -- sfix16_En7
  SIGNAL attenuation_out1                 : signed(7 DOWNTO 0);  -- int8
  SIGNAL attenuation_cast2                 : signed(15 DOWNTO 0);  -- sfix16_En7
  SIGNAL attenuation_out2                 : signed(7 DOWNTO 0);  -- int8
  SIGNAL Sum_out1                         : signed(7 DOWNTO 0);  -- int8
  SIGNAL sin_pos											: INTEGER RANGE 0 TO 960;

BEGIN
  In1_signed <= signed(In1);

  enb <= clk_enable;

  Delay_process : PROCESS (clk, reset)
  VARIABLE count1  :  INTEGER RANGE 0 TO 60 := 0;  --timing for clock generation
  VARIABLE count2  :  INTEGER RANGE 0 TO 32 := 0;
  BEGIN
    IF reset = '1' THEN
      Delay_reg <= (OTHERS => to_signed(16#00#, 8));
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
			IF(count1 < 60) THEN
				count1 := count1 + 1;
			ELSE
				count1 := 0;
				IF(count2 < 32) THEN
					count2 := count2 + 1;
				ELSE
					count2 := 0;
				END IF;
			END IF;
			CASE count2 IS
								WHEN  0  =>
					 sin_pos <= 0 ;
				WHEN  1  =>
					 sin_pos <= 0 ;
				WHEN  2  =>
					 sin_pos <= 1 ;
				WHEN  3  =>
					 sin_pos <= 2 ;
				WHEN  4  =>
					 sin_pos <= 4 ;
				WHEN  5  =>
					 sin_pos <= 7 ;
				WHEN  6  =>
					 sin_pos <= 9 ;
				WHEN  7  =>
					 sin_pos <= 12 ;
				WHEN  8  =>
					 sin_pos <= 15 ;
				WHEN  9  =>
					 sin_pos <= 19 ;
				WHEN  10  =>
					 sin_pos <= 22 ;
				WHEN  11  =>
					 sin_pos <= 24 ;
				WHEN  12  =>
					 sin_pos <= 27 ;
				WHEN  13  =>
					 sin_pos <= 29 ;
				WHEN  14  =>
					 sin_pos <= 30 ;
				WHEN  15  =>
					 sin_pos <= 31 ;
				WHEN  16  =>
					 sin_pos <= 31 ;
				WHEN  17  =>
					 sin_pos <= 31 ;
				WHEN  18  =>
					 sin_pos <= 30 ;
				WHEN  19  =>
					 sin_pos <= 29 ;
				WHEN  20  =>
					 sin_pos <= 27 ;
				WHEN  21  =>
					 sin_pos <= 24 ;
				WHEN  22  =>
					 sin_pos <= 22 ;
				WHEN  23  =>
					 sin_pos <= 19 ;
				WHEN  24  =>
					 sin_pos <= 16 ;
				WHEN  25  =>
					 sin_pos <= 12 ;
				WHEN  26  =>
					 sin_pos <= 9 ;
				WHEN  27  =>
					 sin_pos <= 7 ;
				WHEN  28  =>
					 sin_pos <= 4 ;
				WHEN  29  =>
					 sin_pos <= 2 ;
				WHEN  30  =>
					 sin_pos <= 1 ;
				WHEN  31  =>
					 sin_pos <= 0 ;
				WHEN OTHERS =>	 
					sin_pos <= 0;
			END CASE;
			
			Delay_reg(0) <= In1_signed;
			Delay_reg(1 TO 31) <= Delay_reg(0 TO 30);
      END IF;
    END IF;
  END PROCESS Delay_process;

  Delay_out1 <= Delay_reg(sin_pos);

  Out1 <= std_logic_vector(Delay_out1);

  ce_out <= clk_enable;

END rtl;
