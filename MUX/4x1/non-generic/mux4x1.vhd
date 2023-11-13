LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux4x1 IS
    PORT (
        I0, I1, I2, I3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        S1, S0 : IN STD_LOGIC;
        Y : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE structural OF mux4x1 IS
    COMPONENT mux2x1 IS
        PORT (
            a, b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            sel : IN STD_LOGIC;
            y : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL mid0, mid1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN

    mux0 : mux2x1 PORT MAP(I0, I1, S0, mid0);
    mux1 : mux2x1 PORT MAP(I2, I3, S0, mid1);
    mux2 : mux2x1 PORT MAP(mid0, mid1, S1, Y);

END structural;