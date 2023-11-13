LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux2x1 IS
    PORT (
        a, b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        sel : IN STD_LOGIC;
        y : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE mux_arch OF mux2x1 IS
BEGIN

    y <= a WHEN sel = '0' ELSE b;

END ARCHITECTURE;