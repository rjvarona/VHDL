library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY mips_register_file IS
	PORT(	clock, reset, RegWrite	: IN	STD_LOGIC;
			read_reg1, read_reg2		: IN	STD_LOGIC_VECTOR( 4 DOWNTO 0);
			write_reg					: IN	STD_LOGIC_VECTOR( 4 DOWNTO 0);
			write_data					: IN	STD_LOGIC_VECTOR(31 DOWNTO 0);
			read_data1, read_data2  : OUT	STD_LOGIC_VECTOR(31 DOWNTO 0) );
END mips_register_file;

ARCHITECTURE arch OF mips_register_file IS

	TYPE REG_TYPE IS ARRAY (0 TO 31) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL testing : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL registers : REG_TYPE;
	
BEGIN
	read_data1 <= registers( CONV_INTEGER( read_reg1 ) );
	read_data2 <= registers( CONV_INTEGER( read_reg2 ) );
	
	PROCESS( reset, clock )
	BEGIN
		IF( reset = '0' ) THEN
			FOR i IN 0 to 31 LOOP 
				registers(i) <= X"00000000";
			END LOOP;
		ELSIF( RISING_EDGE( clock )) THEN
			IF ( RegWrite = '1' ) THEN
				testing <= write_data;
			END IF;
		END IF;
		registers(CONV_INTEGER(write_reg)) <= testing;

	END PROCESS;
END arch;