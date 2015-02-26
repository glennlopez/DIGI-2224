----------------------------------------------------------------------
--			LAB5: full_adder.vhd
----------------------------------------------------------------------

--library
library ieee;
use ieee.std_logic_1164.all;

--entity
entity full_adder is port 
	(
		--inputs
		x: 	in 	std_logic;
		y: 	in 	std_logic;
		cin: 	in 	std_logic; 
		
		--outputs
		sum:	out	std_logic; 
		cout: out 	std_logic
	);
end full_adder;

--architecture
architecture logic_add of full_adder is 
begin
	sum 	<= 	x xor y xor cin;
	cout 	<= 	(x and y) or (x and cin) or (y and cin); 
end logic_add;


----------------------------------------------------------------------
--			Version Control: https://github.com/glennlopez/DIGI-2224
----------------------------------------------------------------------