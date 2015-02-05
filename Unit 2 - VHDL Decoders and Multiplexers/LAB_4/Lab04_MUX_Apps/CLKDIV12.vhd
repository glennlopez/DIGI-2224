-- clkdiv12.vhd
-- 12-bit clock divider: binary counter based on a component
--   from the Library of Parameterized Modules (LPM)
-- RSR PLDT-2:		 4 MHz/(2^12) 	= 976 Hz
-- Altera UP-2:	25.175 MHz/(2^12) 	= 6146 Hz
-- Altera DE2:		50 MHz/(2^12) 	= 12207 Hz

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
LIBRARY lpm;
USE lpm.lpm_components.ALL;

ENTITY clkdiv12 IS
	PORT(
		clk		: IN		STD_LOGIC;
		trigger : OUT 		STD_LOGIC;
		q		: BUFFER	STD_LOGIC_VECTOR(2 downto 0));
END clkdiv12;

ARCHITECTURE count OF clkdiv12 IS
	SIGNAL qd : STD_LOGIC_VECTOR (11 downto 0);
BEGIN
-- Instantiate 12-bit counter
	count: lpm_counter
		GENERIC MAP (LPM_WIDTH	=>	12) 
		PORT MAP (	clock 		=>	clk,
					q 			=>	qd(11 downto 0));

-- Map 3 MSBs to 3-bit clock divider output
	q <= qd(11 downto 9);

-- Scope trigger signal	
	WITH q SELECT
	trigger <=	'1' WHEN "000",
				'0' WHEN others;

END count;


