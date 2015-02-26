-- addsub4g.vhd
-- 4-bit parallel adder, using a generate statement and components
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY addsub4g IS
	PORT(
		sub		: IN	STD_LOGIC;
		a, b	: IN	STD_LOGIC_VECTOR(4 downto 1);
		c4		: OUT	STD_LOGIC;
		sum		: OUT	STD_LOGIC_VECTOR(4 downto 1));
END addsub4g;

ARCHITECTURE adder OF addsub4g IS
	-- Component declaration
	COMPONENT full_add
		PORT(
			a, b, c_in	: IN	STD_LOGIC;
			c_out, sum	: OUT	STD_LOGIC);
	END COMPONENT;
	-- Define a signal for internal carry bits
	SIGNAL c		: STD_LOGIC_VECTOR (4 downto 0);
	SIGNAL b_comp	: STD_LOGIC_VECTOR (4 downto 1);
BEGIN
	-- Carry input depends on add or subtract (sub=1 for subtract)
	c(0)	<=	sub;
	adders:
	FOR i IN 1 to 4 GENERATE
		-- invert b for subtract function (b(i) xor 1)
		-- do not invert b for add function (b(i) xor 0)
		b_comp(i) <= b(i) xor sub;
    	adder: full_add PORT MAP (a(i), b_comp(i), c(i-1), c(i), sum(i));
	END GENERATE;
	c4	<=	c(4);
END adder;

