LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY i2c_wrd_gen IS
  PORT(
    clk       	: IN     STD_LOGIC;                    --system clock
	 pack_end	: IN		STD_LOGIC;
	 d_wr			: OUT		STD_LOGIC_VECTOR(7 DOWNTO 0);
	 d_wr2		: OUT		STD_LOGIC_VECTOR(7 DOWNTO 0);
	 d_wr3		: OUT		STD_LOGIC_VECTOR(7 DOWNTO 0);
	 rw			: OUT		STD_LOGIC;
	 address   	: OUT		STD_LOGIC_VECTOR(6 DOWNTO 0));
END i2c_wrd_gen;

ARCHITECTURE logic OF i2c_wrd_gen IS

BEGIN


  --Espero un rato para prender el reset del integrado
  PROCESS(clk,pack_end)
    VARIABLE count  		:  INTEGER RANGE 0 TO 15 := 0;  --timing for clock generation
  BEGIN
	 IF(pack_end'EVENT AND pack_end = '1') THEN
		count:= count +1;
	 END IF;
    IF(clk'EVENT AND clk = '1') THEN
		 CASE count IS
			--Register h7F
			WHEN 0 =>
				d_wr 		<= "01111111";
				d_wr2 	<= "00000000";
				d_wr3 	<= "00000000";
				rw 		<= '0';
				address 	<= "0011000";
			--Register h00
			WHEN 1=>
				d_wr 		<= "00000000";
				d_wr2 	<= "00111111";
				d_wr3 	<= "00110010";
				rw 		<= '0';
				address 	<= "0011000";
			--Read de test
--			WHEN 2=>
--				d_wr 		<= "00000000";
--				d_wr2 	<= "11100111";
--				d_wr3 	<= "11111111";
--				rw 		<= '1';
--				address 	<= "0011000";
				
				--Register h01
--			WHEN 3=>
--				d_wr 		<= "00000001";
--				d_wr2 	<= "00000000";
--				d_wr3 	<= "00000000";
--				rw 		<= '0';
--				address 	<= "0011000";
			--Register h02
			WHEN 2=>
				d_wr 		<= "00000010";
				d_wr2 	<= "10100100";
				d_wr3 	<= "11011111";
				rw 		<= '0';
				address 	<= "0011000";			
			--Register h03
			WHEN 3=>
				d_wr 		<= "00000011";
				d_wr2 	<= "00000000";
				d_wr3 	<= "00000000";
				rw 		<= '0';
				address 	<= "0011000";		
			--Register h04
--			WHEN 6=>
--				d_wr 		<= "00000100";
--				d_wr2 	<= "00000010";
--				d_wr3 	<= "00000010";
--				rw 		<= '0';
--				address 	<= "0011000";
			--Register h10
--			WHEN 7=>
--				d_wr 		<= "00010000";
--				d_wr2 	<= "00000000";
--				d_wr3 	<= "00000000";
--				rw 		<= '0';
--				address 	<= "0011000";
			--Register h11
			WHEN 4=>
				d_wr 		<= "00010001";
				d_wr2 	<= "00000000";
				d_wr3 	<= "00000000";
				rw 		<= '0';
				address 	<= "0011000";
			--Register h12
--			WHEN 9=>
--				d_wr 		<= "00010010";
--				d_wr2 	<= "00000000";
--				d_wr3 	<= "00000000";
--				rw 		<= '0';
--				address 	<= "0011000";
			--Register h13
			WHEN 5=>
				d_wr 		<= "00010011";
				d_wr2 	<= "00000000";
				d_wr3 	<= "00000000";
				rw 		<= '0';
				address 	<= "0011000";
			--Register h14
--			WHEN 11=>
--				d_wr 		<= "00010100";
--				d_wr2 	<= "00000000";
--				d_wr3 	<= "00000000";
--				rw 		<= '0';
--				address 	<= "0011000";	
			WHEN OTHERS =>
				d_wr 		<= "00000000";
				d_wr2 	<= "00111111";
				d_wr3 	<= "00110010";
				rw 		<= '0';
				address 	<= "0011000";
		 END CASE;
	 END IF;
  END PROCESS;
  
END logic;
