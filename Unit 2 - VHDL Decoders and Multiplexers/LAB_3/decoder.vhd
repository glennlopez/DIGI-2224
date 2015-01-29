-- set library
library ieee;
use ieee.std_logic_1164.all;

--entity
entity decoder is
	port(
		y: out std_logic_vector(0 to 6);
		d: in std_logic_vector(2 downto 0)
	);
end h7seg;

--architecture
architecture logic_3to8 of decoder is
	
begin
	with d select
	y <= 	"00000001" when "001", -- 1 |
			"00000010" when "010", -- 2 |
			"00000100" when "011", -- 3 | 
			"00001000" when "100", -- 4 | 
			"00010000" when "101", -- 5 | 
			"00100000" when "110", -- 6 | 
			"01000000" when "111", -- 7 | 
			-----------------------------
			"00000000" when others;

end logic_3to8;