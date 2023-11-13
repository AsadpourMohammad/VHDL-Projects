LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux2_1 IS
    PORT (
        a, b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        sel : IN STD_LOGIC;
        y : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE mux_arch OF mux2_1 IS
BEGIN
    PROCESS (a, b, sel)
    BEGIN

        IF sel = '0' THEN
            y <= a;
        ELSE
            y <= b;
        END IF;

    END PROCESS;
END ARCHITECTURE;