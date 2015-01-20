
--   __   ___  ___  __  __  _  _  __  __  ___  _  _  ____
--  (  ) / __)/ __)(  )/ _)( \( )(  \/  )(  _)( \( )(_  _)
--  /__\ \__ \\__ \ )(( (/\ )  (  )    (  ) _) )  (   )(    Lab# 1
-- (_)(_)(___/(___/(__)\__/(_)\_)(_/\/\_)(___)(_)\_) (__)
--
-- •	Assigning values to individual elements of a BIT_VECTOR or STD_LOGIC_VECTOR.
-- •	Write a selected signal assignment statement in VHDL using INTEGER types.
-- •	Write VHDL statements that use signals to combine inputs or separate outputs.
--                                                    ~ https://github.com/glennlopez/DIGI-2224

-- QUESTIONS:

-- 1a)  Write a VHDL statement that defines an 8-bit input port, addr, with the most significant bit on the left. Assume port the is of type BIT_VECTOR. [2]
entity quest_3 is
   port
   (
      addr: IN BIT_VECTOR (7 downto 0));
end quest_3;



-- b) Write a VHDL statement that defines an 8-bit input port, addr, with the most significant bit on the right. Assume port the is of type BIT_VECTOR. [2]
entity question_1b is
   port
   (
      addr: IN BIT_VECTOR (0 to 7));
end question_1b;



-- 2a) An output port is defined as x : OUT BIT_VECTOR(5 downto 0); It is assigned a value by the statement x <= “100101”; Write the equivalent VHDL statements that will assign the port values separately for each bit. [2]
entity question_2a is -- ref: to page 247
   port
      (
         x: OUT BIT_VECTOR (5 downto 0));
end question_2a;

architecture all_humans of question_2a is
begin -- //100101 (n downto 0) | since n is on the left side, list will start with left number
   x(5) <= '1';
   x(4) <= '0';
   x(3) <= '0';
   x(2) <= '1';
   x(1) <= '0';
   x(0) <= '1';
end all_humans;



--2b) Repeat Problem 2a for the case where the output is defined as: x : OUT BIT_VECTOR(0 to 5); and x is assigned by the statement x <= “100101”; [2]
entity question_2a is -- ref: page 247
   port
      (
         x: OUT BIT_VECTOR (0 to 5));
end question_2a;

architecture all_humans of question_2a is
begin -- //100101 (0 to n) | since n is on the right side, list will start with right number
   x(5) <= '1';
   x(4) <= '0';
   x(3) <= '1';
   x(2) <= '0';
   x(1) <= '0';
   x(0) <= '1';
end all_humans;



-- 3) Write a VHDL file to encode the following truth table. Define the input, d, as an INTEGER and the output, y, as type BIT. [5] -- ref: page 253

-- |  D(2)  |  D(1)  |  D(0)  |  Y  |
----------------------------------
--    0        0        0        1
--    0        0        1        0
--    0        1        0        0
--    0        1        1        1
--    1        0        0        0
--    1        0        1        1
--    1        1        0        1
--    1        1        1        0

library ieee;
use ieee.std_logic_1164.all; 

entity question_3 is
	port(
		d: in integer range 0 to 7; -- this gives us 3 bits (0111 = 7 | 0 is omited)
		y: out bit);
end question_3;

architecture tbl_logic of question_3 is
begin
	with d select
		y <= 	'1' when 0, -- we omit putting quotes '0' since this is an intiger
				'1' when 3, -- we would put dbl quotes if this was "0011"
				'1' when 5,
				'1' when 6,
				'0' when others;
end tbl_logic;




-- 4) 4. A VHDL design has five input ports labeled enable (MSB), read, write, selector, and compare (LSB) and three outputs labeled address_latch (MSB), data_enable, and strobe (LSB).

-- a. Write a VHDL statement that concatenates all input lines into a signal called control. The signal is written with the most significant bit on the left. [3] -- ref: page 255

architecture concatenation_logic of question_4a is 
   -- First we define the bundle cable (the signal called control)
   signal control: std_logic_vector(4 downto 0); -- here we define the signal called "control"
begin
   -- After we defined the bundle cable, we define the wires we want in the bundle
   control <= a_enable & a_read & a_write & a_selector a_compare;
-- etc..



-- b. Write a series of VHDL statements that separate a signal called status into the output ports listed above. The ports are written with the most significant bit on the left. [3]

architecture concatenation_logic of question_4b is
   -- define the output wire bundle
   signal status: std_logic_vector(2 downto 0);
begin
   -- we skip bundling the output cables and
      -- then we write the table for select statements
      with control select
         status <=   "000" when "00000"
                     "001" when "00001"
                     "010" when "00010"
                     -- etc....
                     "111" when others;

   -- separate signal into individual ports
   address_latch <= status(0);
   data_enable <= status(1);
   strobe <= status(2);
end concatenation_logic;


-- 5. Write a VHDL file that uses a selected signal assignment statement to encode the following truth table. [6]

library ieee;
use ieee.std_logic_1164.all;
   
entity question_5 is 
   port(
      a,b,c: in std_logic;
      x,y,z: out std_logic);
end question_5;
   
architecture logic of question_5 is
   -- declare signals
   signal inputs: std_logic_vector (2 downto 0);
   signal outputs: std_logic_vector (2 downto 0);
begin
   -- concatenate inputs
   inputs <= a & b & c;
   with inputs select
               -- xyz        abc
      outputs <=  "100" when "000",
                  "011" when "001",
                  "010" when "010",
                  "101" when "011",
                  "010" when "100",
                  "101" when "101",
                  "100" when "110",
                  "010" when "111",
                  "000" when others;
   -- seperate outputs
   x <= outputs (2);
   y <= outputs (1);
   z <= outputs (0);
end logic;                  
