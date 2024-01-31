LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY fa IS
    PORT (
        a, b, cin : IN STD_LOGIC;
        sum, cout : OUT STD_LOGIC
    );
END fa;

ARCHITECTURE with_select OF fa IS
    SIGNAL temp : STD_LOGIC_VECTOR(2 DOWNTO 0);
BEGIN
    temp <= a & b & cin;

    WITH temp SELECT
        sum <= '0' WHEN "000",
        '1' WHEN "001",
        '1' WHEN "010",
        '0' WHEN "011",
        '1' WHEN "100",
        '0' WHEN "101",
        '0' WHEN "110",
        '1' WHEN "111",
        '0' WHEN OTHERS;
    WITH temp SELECT
        cout <= '0' WHEN "000",
        '0' WHEN "001",
        '0' WHEN "010",
        '1' WHEN "011",
        '0' WHEN "100",
        '1' WHEN "101",
        '1' WHEN "110",
        '1' WHEN "111",
        '0' WHEN OTHERS;
END with_select;