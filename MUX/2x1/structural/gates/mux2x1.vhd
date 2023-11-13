LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux2x1 IS
    PORT (
        a, b, sel : IN STD_LOGIC;
        y : OUT STD_LOGIC
    );
END mux2x1;

ARCHITECTURE mux_arch OF mux2x1 IS
BEGIN

    y <= (a AND (NOT sel)) OR (b AND sel);

END mux_arch;