----------------------------------------------------------------------
--			LAB5: parallel_adder.vhd
----------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY add8gen IS
	PORT(
		c0		: IN	STD_LOGIC;
		a, b	: IN	STD_LOGIC_VECTOR(8 downto 1);
		c8		: OUT	STD_LOGIC;
		sum		: OUT	STD_LOGIC_VECTOR(8 downto 1));
END add8gen;

ARCHITECTURE adder OF add8gen IS
	-- Component declaration
	COMPONENT full_add
		PORT(
			a, b, c_in	: IN	STD_LOGIC;
			c_out, sum	: OUT	STD_LOGIC);
	END COMPONENT;
	-- Define a signal for internal carry bits
	SIGNAL c : STD_LOGIC_VECTOR (8 downto 0);
BEGIN
	c(0)	<=	c0;

	adders:
	FOR i IN 1 to 8 GENERATE
    	adder: full_add PORT MAP (a(i), b(i), c(i-1), c(i), sum(i));
	END GENERATE;

	c8	<=	c(8);
END adder;


----------------------------------------------------------------------
--			Version Control: https://github.com/glennlopez/DIGI-2224
----------------------------------------------------------------------