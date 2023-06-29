LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY SU IS
    PORT (
        A, B: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        CI: IN STD_LOGIC;
        S: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        CF: OUT STD_LOGIC
    );
END ENTITY SU;
ARCHITECTURE A_SU OF SU IS
SIGNAL C: STD_LOGIC_VECTOR(0 TO 3);
ATTRIBUTE synthesis_OFF OF C: Signal is true;
BEGIN 
         --NB(0)<= (B(0) XOR CI);
         S(0)<= CI XOR A(0) XOR (B(0) XOR CI);
         C(1)<= (CI AND A(0)) OR (CI AND (B(0) XOR CI)) OR (A(0) AND (B(0) XOR CI));
         --NB(1)<= (B(1) XOR CI);
         S(1)<= C(1) XOR A(1) XOR (B(1) XOR CI);
         C(2)<= (C(1) AND A(1)) OR (C(1) AND (B(1) XOR CI)) OR (A(1) AND (B(1) XOR CI));
         -- DO<=C(2);
         --NB(2)<= (B(2) XOR CI);
         S(2)<= C(2) XOR A(2) XOR (B(2) XOR CI);
         C(3)<= (C(2) AND A(2)) OR (C(2) AND (B(2) XOR CI)) OR (A(2) AND (B(2) XOR CI));
         --NB(3)<= (B(3) XOR CI);
         S(3)<= C(3) XOR A(3) XOR (B(3) XOR CI);
         CF <= (C(3) AND A(3)) OR (C(3) AND (B(3) XOR CI)) OR (A(3) AND (B(3) XOR CI));
END A_SU; 
