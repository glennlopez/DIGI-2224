<!-- https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet -->
Lab/Assignment 2
---------
<b>1a. </b> Write a VHDL statement that defines an 8-bit input port, <b>addr</b>, with the <u>most significant bit on the left</u>. Assume port the is of type <b>BIT_VECTOR.</b> [2]

```vhdl
entity question_1a is
	port(
			addr: IN BIT_VECTOR (7 downto 0) --input
		);
end question_1a;
```
>**Tip:** When you want the MSB on the left, put the 'n' on the left ('n' downto 0). Opposite is true if you want the MSB on the right.

---

**b.** Write a VHDL statement that defines an 8-bit input port, <b>addr</b>, with the <u>most significant bit on the right</u>. Assume port the is of type <b>BIT_VECTOR.</b> [2]
```vhdl
entity question_1b is
	port(
			addr: IN BIT_VECTOR (0 to 7) --input
		);
end question_1b;
```
---

**2a.** An output port is defined as x : **OUT BIT_VECTOR(5 downto 0);** It is assigned a value by the statement **x <= “100101”;** Write the equivalent VHDL statements that will assign the port values separately for each bit. [2]
```vhdl
entity question_2a is -- ref: to page 247
	port(
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
```
