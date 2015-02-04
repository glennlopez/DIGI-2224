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
		d0: in std_logic;
		d1: in std_logic;
		d2: in std_logic;
		d3: in std_logic;
		d4: in std_logic;
		d5: in std_logic;
		d6: in std_logic;
		d7: in std_logic;
		s:	in std_logic_vector(2 downto 0);
		y:	out std_logic
	);
end mux_8ch;

--architecture
architecture logic_8to1 of mux_8ch is
begin
	with s select
		y		<=		D0 when "000",
						D1 when "001",
						D2 when "010",
						D3 when "011",
						D4 when "100",
						D5 when "101",
						D6 when "110",
						D7 when "111";
end logic_8to1;