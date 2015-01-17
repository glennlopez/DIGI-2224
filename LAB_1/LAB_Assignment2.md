<!-- https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet -->
Lab/Assignment 2
---------
<b>1a)</b> Write a VHDL statement that defines an 8-bit input port, <b>addr</b>, with the <u>most significant bit on the left</u>. Assume port the is of type <b>BIT_VECTOR.</b> [2]

```vhdl
entity question_1a is
port(
		addr: IN BIT_VECTOR (7 downto 0) --input
	);
end question_1a;
```

<b>1b)</b> Write a VHDL statement that defines an 8-bit input port, <b>addr</b>, with the <u>most significant bit on the right</u>. Assume port the is of type <b>BIT_VECTOR.</b> [2]
```vhdl
entity question_1b is
port(
		addr: IN BIT_VECTOR (0 to 7) --input
	);
end question_1b;
```
