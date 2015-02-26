----------------------------------------------------------------------
--			LAB5: parallel_adder.vhd
--			DEPENDENCIES: full_adder.vhd
----------------------------------------------------------------------

--library
library ieee;
use ieee.std_logic_1164.ALL;

entity parallel_adder is
	port
		(
			c0		: 	in		std_logic;
			a, b	: 	in		std_logic_vector(8 downto 1);
			c8		:	out	std_logic;
			sum	:	out	std_logic_vector(8 downto 1)
		);
end parallel_adder;

--architecture
architecture adder of parallel_adder is


	--component---------------FULL-ADDER---------------
	--dependencies: full_adder.vhd
	component full_adder
		port(
			a, b, c_in	: in	std_logic;
			c_out, sum	: out	std_logic);
	end component;
	--component---------------FULL-ADDER---------------
	
	
	--signals
	signal c : std_logic_vector (8 downto 0);
	
begin
	c(0)	<=	c0;

	adders:
	for i in 1 to 8 generate
    	adder: full_adder port map (a(i), b(i), c(i-1), c(i), sum(i));
	end generate;

	c8	<=	c(8);
end adder;


----------------------------------------------------------------------
--			Version Control: https://github.com/glennlopez/DIGI-2224
----------------------------------------------------------------------