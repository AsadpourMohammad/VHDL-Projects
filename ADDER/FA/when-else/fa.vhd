LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY fa IS
    PORT (
        a, b, cin : IN STD_LOGIC;
        sum, cout : OUT STD_LOGIC
    );
END fa;

ARCHITECTURE when_else OF fa IS
    SIGNAL temp : STD_LOGIC_VECTOR(2 DOWNTO 0);
BEGIN
    temp <= a & b & cin;

    sum <= '1' WHEN temp = "001" OR temp = "010" OR temp = "100" OR temp = "111" ELSE '0';
    cout <= '1' WHEN temp = "011" OR temp = "101" OR temp = "110" OR temp = "111" ELSE '0';
END when_else;