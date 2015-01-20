-- Ref: Page 254 for using INTEGERS


-- libraries
library ieee;
use ieee.std_logic_1164.all;


-- entity
entity question_3 is
	port(
		d: in integer range 0 to 7; -- this gives us 3 bits (0111 = 7 | 0 is omited)
		y: out bit);
end question_3;


-- architecture
architecture tbl_logic of question_3 is
begin
	with d select
		y <= 	'1' when 0,
				'1' when 3,
				'1' when 5,
				'1' when 6,
				'0' when others;
end tbl_logic;