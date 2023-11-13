LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux2x1_tb IS
END ENTITY;

ARCHITECTURE test OF mux2x1_tb IS
    COMPONENT mux2_1 IS
        PORT (
            a, b, sel : IN STD_LOGIC;
            y : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL a, b, sel, y : STD_LOGIC;
BEGIN
    uut : mux2_1 PORT MAP(
        a => a,
        b => b,
        sel => sel,
        y => y
    );

    PROCESS
    BEGIN

        a <= '0';
        b <= '1';
        sel <= '0';
        WAIT FOR 10 ns;

        sel <= '1';
        WAIT FOR 10 ns;

        ASSERT false REPORT "END OF TEST";
        WAIT;

    END PROCESS;
END ARCHITECTURE;