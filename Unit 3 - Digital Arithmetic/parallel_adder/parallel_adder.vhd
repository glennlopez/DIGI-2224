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
			c0		: 	IN		std_logic;
			a, b	: 	IN		std_logic_vector(8 downto 1);
			c8		:	OUT	std_logic;
			sum	:	OUT	std_logic_vector(8 downto 1)
		);
end parallel_adder;

--architecture
architecture adder of parallel_adder is


	--component---------------FULL-ADDER---------------
	--dependencies: full_adder.vhd
	component full_adder
		port
			(
				a, b, c_in	: IN	std_logic;
				c_out, sum	: OUT	std_logic
			);
	end component;
	--component---------------FULL-ADDER---------------
	
	
	--signal statements
	signal c : std_logic_vector (8 downto 0);
	
begin
	c(0)	<=	c0;

		adders:
		for i IN 1 to 8 generate
		
		adder: full_adder port map 
		(
			a(i), 		--
			b(i), 		--
			c(i-1), 		--
			c(i), 		--
			sum(i)		--
		);
		end generate;
	
	c8	<=	c(8);	
end adder;


----------------------------------------------------------------------
--			Version Control: https://github.com/glennlopez/DIGI-2224
----------------------------------------------------------------------