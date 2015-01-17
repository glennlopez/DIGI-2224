
--   __   ___  ___  __  __  _  _  __  __  ___  _  _  ____
--  (  ) / __)/ __)(  )/ _)( \( )(  \/  )(  _)( \( )(_  _)
--  /__\ \__ \\__ \ )(( (/\ )  (  )    (  ) _) )  (   )(
-- (_)(_)(___/(___/(__)\__/(_)\_)(_/\/\_)(___)(_)\_) (__)
--
-- •	Assigning values to individual elements of a BIT_VECTOR or STD_LOGIC_VECTOR.
-- •	Write a selected signal assignment statement in VHDL using INTEGER types.
-- •	Write VHDL statements that use signals to combine inputs or separate outputs.
--                                                      ~ github.com/glennlopez

-- QUESTIONS:

-- 1a)  Write a VHDL statement that defines an 8-bit input port, addr, with the most significant bit on the left. Assume port the is of type BIT_VECTOR. [2]
entity question_1a is
   port
   (
      addr: IN BIT_VECTOR (7 downto 0)
   );
end question_1a;



-- b) Write a VHDL statement that defines an 8-bit input port, addr, with the most significant bit on the right. Assume port the is of type BIT_VECTOR. [2]
entity question_1b is
   port
   (
      addr: IN BIT_VECTOR (0 to 7)
   );
end question_1b;



-- 2a) An output port is defined as x : OUT BIT_VECTOR(5 downto 0); It is assigned a value by the statement x <= “100101”; Write the equivalent VHDL statements that will assign the port values separately for each bit. [2]
entity question_2a is -- ref: to page 247
   port
      (
         x: OUT BIT_VECTOR (5 downto 0)
      );
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
         x: OUT BIT_VECTOR (0 to 5)
      );
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



-- 3) Write a VHDL file to encode the following truth table. Define the input, d, as an INTEGER and the output, y, as type BIT. [5]
entity truth_table is -- ref: page 253 - 254
   port
      (
         -- bit inputs (d) | integer
         -- bit output (y) | bit
      );
end truth_table;

architecture theWorld  of truth_table is
begin

end theWorld;
