LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux2x1_tb IS
END ENTITY;

ARCHITECTURE test OF mux2x1_tb IS
    COMPONENT mux2_1 IS
        PORT (
            a, b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            sel : IN STD_LOGIC;
            y : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL a, b, y : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL sel : STD_LOGIC;
BEGIN
    uut : mux2_1 PORT MAP(
        a => a,
        b => b,
        sel => sel,
        y => y
    );

    a <= "00000001";
    b <= "00000010";

    PROCESS
    BEGIN

        sel <= '0';
        WAIT FOR 10 ns;

        sel <= '1';
        WAIT FOR 10 ns;

        ASSERT false REPORT "END OF TEST";
        WAIT;

    END PROCESS;
END ARCHITECTURE;