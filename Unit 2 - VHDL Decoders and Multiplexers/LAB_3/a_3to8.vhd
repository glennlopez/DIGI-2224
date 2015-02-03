--library
library ieee;
use ieee.std_logic_1164.all;

--entity
entity a_3to8 is
port(
		d: in std_logic_vector(2 downto 0);
		y: out std_logic_vector(0 to 7)
	);
end a_3to8;

--architecture
architecture decoder of a_3to8 is
begin
-- 3 to 8 decoder
	with d select
			 -- NOTE: THIS IS ACTIVE HIGH
			 -- (on DE2 LED's are active low)
			 -- 01234567	|	  421	| Decimal
		y <=	"10000000" when "000", --0
				"01000000" when "001", --1
				"00100000" when "010", --2
				"00010000" when "011", --3
				"00001000" when "100", --4
				"00000100" when "101", --5
				"00000010" when "110", --6
				"00000001" when "111", --7
				"00000000" when others;
end decoder;

		