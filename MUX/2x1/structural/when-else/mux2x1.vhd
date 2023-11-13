LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux2_1 IS
    PORT (
        a, b, sel : IN STD_LOGIC;
        y : OUT STD_LOGIC
    );
END mux2_1;

ARCHITECTURE mux_arch OF mux2_1 IS
BEGIN

    y <= a WHEN sel = '0' ELSE b;

END mux_arch;