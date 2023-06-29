LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY SU IS
    PORT (
        A, B: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        CA, CI, DI: IN STD_LOGIC;
        S: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        DO, CF: OUT STD_LOGIC
    );
END ENTITY SU;
ARCHITECTURE A_SU OF SU IS
SIGNAL C: STD_LOGIC_VECTOR(1 TO 3);
ATTRIBUTE synthesis_OFF OF C: Signal is true;
SIGNAL NB: STD_LOGIC_VECTOR(0 TO 3);
BEGIN 
NB(0)<= B(0) XOR CA;
S(0)<= CI XOR A(0) XOR NB(0);
C(1)<= (CI AND A(0)) OR (CI AND NB(0)) OR (A(0) AND NB(0));
NB(1)<= B(1) XOR CA;
S(1)<= C(1) XOR A(1) XOR NB(1);
C(2)<= (C(1) AND A(1)) OR (C(1) AND NB(1)) OR (A(1) AND NB(1));
-- DO<=C(2);
NB(2)<= B(2) XOR CA;
S(2)<= C(2) XOR A(2) XOR NB(2);
C(3)<= (C(2) AND A(2)) OR (C(2) AND NB(2)) OR (A(2) AND NB(2));

NB(3)<= B(3) XOR CA;
S(3)<= C(3) XOR A(3) XOR NB(3);
CF <= (C(3) AND A(3)) OR (C(3) AND NB(3)) OR (A(3) AND NB(3));
END A_SU; 