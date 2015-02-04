-- library
library ieee;
use ieee.std_logic_1164.all;

--entity
entity mux_8ch is
	port
	(					 	7654321
		d:		in			std_logic_vector(7 downto 0);		--this is where data comes from 
		s:		in			std_logic_vector(2 downto 0);		--this will select which data flows
		y:		out		std_logic								--this is where data comes out
	);
end mux_8ch;

--architecture
architecture logic_8to1 of mux_8ch is
begin
	with s select
		Y		<=		D0 when "000",
						D1 when "001",
						D2 when "010",
						D3 when "011",
						D4 when "100",
						D5 when "101",
						D6 when "110",
						D7 when "111";
end logic_8to1;