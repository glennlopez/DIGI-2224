-- library
library ieee;
use ieee.std_logic_1164.all;

-- entity
entity half_add is
	port
	(
		a, b: IN std_logic;						-- inputs
		sum, carry_out: OUT std_logic			-- outputs
	);
end half_add;

-- architecture
architecture a_logic of half_add is
	begin
		sum <= a xor b;				-- sum
		carry_out <= a and b;		-- carry_out
end a_logic;
