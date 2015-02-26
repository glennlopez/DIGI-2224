-- add4gen.vhd
-- 4-bit parallel adder, using a generate statement and components
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY add4gen IS
	PORT(
		c0		: IN	STD_LOGIC;
		a, b	: IN	STD_LOGIC_VECTOR(4 downto 1);
		c4		: OUT	STD_LOGIC;
		sum		: OUT	STD_LOGIC_VECTOR(4 downto 1));
END add4gen;

ARCHITECTURE adder OF add4gen IS
	-- Component declaration
	COMPONENT full_add
		PORT(
			a, b, c_in	: IN	STD_LOGIC;
			c_out, sum	: OUT	STD_LOGIC);
	END COMPONENT;
	-- Define a signal for internal carry bits
	SIGNAL c : STD_LOGIC_VECTOR (4 downto 0);
BEGIN
	c(0)	<=	c0;

	adders:
	FOR i IN 1 to 4 GENERATE
    	adder: full_add PORT MAP (a(i), b(i), c(i-1), c(i), sum(i));
	END GENERATE;

	c4	<=	c(4);
END adder;

