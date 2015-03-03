----------------------------------------------------------------------
--			LAB5: full_adder.vhd
--			More info on Adders:
--					https://www.youtube.com/watch?v=mZ9VWA4cTbE
--					also check the suplimental folder in the curent dir.
----------------------------------------------------------------------

--library
library ieee;
use ieee.std_logic_1164.all;

--entity
entity full_adder is port 
	(
		--inputs
		a: 		IN 	std_logic;			--M22 | P25
		b: 		IN 	std_logic;			--L21 | N26
		c_in: 	IN 	std_logic; 			--L22 | N25
		
		--outputs
		sum:		OUT	std_logic; 			--R20 | AF23
		c_out: 	OUT 	std_logic			--R19 | AE23
	);
end full_adder;

--architecture
architecture logic_add of full_adder is 
begin
	sum 		<= 	a xor b xor c_in;
	c_out 	<= 	(a and b) or (a and c_in) or (b and c_in); 
end logic_add;


----------------------------------------------------------------------
--			Version Control: https://github.com/glennlopez/DIGI-2224
----------------------------------------------------------------------