-- library
library ieee;
use ieee.std_logic_1164.all;

--entity
entity mux_8ch is
	port
	(
		--mus = 8 data lines | 3 select lines | 1 output
		--data line							 	7654321
		d:		in			std_logic_vector(7 downto 0);
		
		--select line						  	210
		s:		in			std_logic_vector(2 downto 0); ar
		
		--output
		y:		out		std_logic
	);
end mux_8ch;

--architecture
architecture logic_8to1 of mux_8ch is
--concatinate signal
signal:		input		(2 downto 0);
begin
	-- select statement include select line
	with input select
	
end logic_8to1;