library ieee;
use ieee.std_logic_1164.all;

entity sop1 is
	port(
		d: in std_logic_vector(3 downto 0);
		y: out std_logic
	);
end sop1;

architecture sum_of_product of sop1 is
begin
	with d select
		y <= 	'1' when "0001",
				'1' when "0010",
				'1' when "0111",
				'1' when "1000",
				'1' when "1011",
				'1' when "1101",
				'0' when others;
end sum_of_product;