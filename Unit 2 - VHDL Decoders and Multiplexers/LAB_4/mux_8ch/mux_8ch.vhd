----------------------------------------------------------------------
--			LAB4: mux_8ch.vhd
--
--			Write a VHDL file, using a selected signal assignment 
--			statement, to design an 8-to-1 multiplexer.
----------------------------------------------------------------------

-- library
library ieee;
use ieee.std_logic_1164.all;

--entity
entity mux_8ch is
	port
	(	
		d: in std_logic_vector(0 to 7);
		s:	in std_logic_vector(2 downto 0);
		y:	out std_logic
	);
end mux_8ch;

--architecture
architecture logic_8to1 of mux_8ch is
begin
	with s select
	-- COMMON ERROR: 	Do not mistake d(0) for d0. These are not the same.
	--						d(0) points to a vector, d0 points to a port.
		y		<=	  	d(0) when "000",
						d(1) when "001",
						d(2) when "010",
						d(3) when "011",
						d(4) when "100",
						d(5) when "101",
						d(6) when "110",
						d(7) when "111";
end logic_8to1;
