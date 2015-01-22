-- truth_table_1.vhd
-- Output y goes HIGH when any of the following values of d[3..0] are present:
-- 0011, 0110, 1001, 1101
library ieee;
use ieee.std_logic_1164.all;
entity truth_table_1 is
port(
d : in std_logic_vector(3 downto 0);
y : out std_logic
);
end truth_table_1;
architecture tt of truth_table_1 is
begin
with d select
y <= '1' when "0011",
'1' when "0100",
'1' when "1001",
'1' when "1101",
'0' when others;
end tt;