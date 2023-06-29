LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY practica1 IS
PORT (A: IN STD_LOGIC;
	  B: IN STD_LOGIC;
	  C,D,E,F,G,H,I,J: OUT STD_LOGIC);
	  END practica1;
	  ARCHITECTURE A_P1 OF practica1 IS BEGIN
	  C <=NOT A;
	  D <=NOT B;
	  E <=A OR B;
	  F <=A AND B;
	  G <=A NOR B;
	  H <=A NAND B;
	  I <=A XOR B;
	  J <=A XNOR B;
	  END A_P1; 
