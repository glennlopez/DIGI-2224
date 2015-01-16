-- ASSIGNMENT // VIEWED BEST IN SUBLIMETEXT OR ATOM TEXT EDITOR

-- 1a)  Write a VHDL statement that defines an 8-bit input port, addr, with the most significant bit on the left. Assume port the is of type BIT_VECTOR. [2]

library ieee;
use ieee.std_logic_1164.all;

entity question_1a is
   port
   (
   addr: IN std_logic -- input port
   );
