LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux4x1 IS
    GENERIC (
        N : INTEGER := 16
    );

    PORT (
        I0, I1, I2, I3 : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
        S1, S0 : IN STD_LOGIC;
        Y : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE structural OF mux4x1 IS
    COMPONENT mux2x1 IS
        GENERIC (
            N : INTEGER := 4
        );

        PORT (
            a, b : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
            sel : IN STD_LOGIC;
            y : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL mid0, mid1 : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
BEGIN

    mux0 : mux2x1 GENERIC MAP(N => N) PORT MAP(a => I0, b => I1, sel => S0, y => mid0);
    mux1 : mux2x1 GENERIC MAP(N => N) PORT MAP(a => I2, b => I3, sel => S0, y => mid1);
    mux2 : mux2x1 GENERIC MAP(N => N) PORT MAP(a => mid0, b => mid1, sel => S1, y => Y);

END structural;