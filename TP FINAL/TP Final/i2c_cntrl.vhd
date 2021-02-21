
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY i2c_cntrl IS
  PORT(
    clk       	: IN     STD_LOGIC;                    --system clock
    busy	  		: IN	  	STD_LOGIC;
	 d_wr			: IN		STD_LOGIC_VECTOR(7 DOWNTO 0);
	 d_wr2		: IN		STD_LOGIC_VECTOR(7 DOWNTO 0);
	 d_wr3		: IN		STD_LOGIC_VECTOR(7 DOWNTO 0);
	 rw			: IN		STD_LOGIC;
	 address   	: OUT		STD_LOGIC_VECTOR(6 DOWNTO 0);
	 data_wr   	: OUT    STD_LOGIC_VECTOR(7 DOWNTO 0);
	 rw_out		: OUT		STD_LOGIC;
	 reset_n   	: OUT    STD_LOGIC := '0';                    --active low reset
	 pack_end	: OUT		STD_LOGIC := '0';
	 i2s_en		: OUT		STD_LOGIC := '0';
	 en			: OUT		STD_LOGIC := '0');
END i2c_cntrl;

ARCHITECTURE logic OF i2c_cntrl IS

SIGNAL adrs 		: STD_LOGIC_VECTOR(6 DOWNTO 0) := "0011000";
SIGNAL d_word2 	: STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
SIGNAL d_word3 	: STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
SIGNAL reset_tmp 	: STD_LOGIC := '0';
SIGNAL enable		: STD_LOGIC := '0';
SIGNAL rw_temp		: STD_LOGIC := '0';

BEGIN

  --Espero un rato para prender el reset del integrado
  PROCESS(clk)
    VARIABLE count1  :  INTEGER RANGE 0 TO 50100 := 0;  --timing for clock generation
  BEGIN
    IF(clk'EVENT AND clk = '1') THEN
    CASE count1 IS
		WHEN 0 TO 50000 =>
			count1 := count1 + 1;
		WHEN OTHERS =>
			reset_tmp <= '1';
	 END CASE;
	 reset_n <= reset_tmp;
	 END IF;
  END PROCESS;

  --generación 
  PROCESS(clk)
  VARIABLE count  :  INTEGER RANGE 0 TO 10000 := 0;  --timing for clock generation
  VARIABLE pack_count :	INTEGER RANGE 0 TO 15  := 0;
  BEGIN
	 IF(pack_count < 8) THEN
		 IF (clk'EVENT AND clk = '1' and reset_tmp = '1') THEN
			IF (count = 0) THEN
				i2s_en <= '0';
				address <= adrs;
				data_wr <= d_wr;
				d_word2 <= d_wr2;
				d_word3 <= d_wr3;
				rw_out  <= '0';
				rw_temp <= rw;
				count := count + 1;
			END IF;
			CASE count IS
				WHEN 1 TO 550 =>--1/50
					count := count + 1;
				WHEN 551 TO 2250 =>--51/999
					count := count + 1;
					enable <= '1';			
				WHEN 2251 TO 4049 =>--1000/2600
					count := count + 1;
					data_wr <= d_wr2;
					rw_out  <= rw_temp;
				WHEN 4050 TO 5500 =>--2601/3750
					count := count + 1;
					data_wr <= d_wr3;
				WHEN 5501 TO 8600 =>--3751/5000
					pack_end <= '1';
					IF(rw_temp = '0') THEN
						enable <= '0';
					END IF;
					count := count + 1;
				WHEN 8601 TO 9800 =>--5001/6150
					enable <= '0';
					count := count + 1;
				WHEN OTHERS =>
					pack_end <= '0';
					count := 0;
					pack_count:= pack_count+1;
			END CASE;
			en <= enable;
		 END IF;
	 END IF;
	 IF (pack_count = 8) THEN
		 i2s_en <= '1';	 
	 END IF;
  END PROCESS;


END logic;
