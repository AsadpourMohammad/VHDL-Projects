LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ha_tb IS
END ENTITY;

ARCHITECTURE test OF ha_tb IS
    COMPONENT ha
        PORT (
            a : IN STD_LOGIC;
            b : IN STD_LOGIC;
            s : OUT STD_LOGIC;
            c : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL a, b, s, c : STD_LOGIC;
BEGIN
    uut : ha PORT MAP(
        a => a,
        b => b,
        s => s,
        c => c
    );

    PROCESS
    BEGIN

        a <= 'X';
        b <= 'X';
        WAIT FOR 10 ns;

        a <= '0';
        b <= '0';
        WAIT FOR 10 ns;

        a <= '0';
        b <= '1';
        WAIT FOR 10 ns;

        a <= '1';
        b <= '0';
        WAIT FOR 10 ns;

        a <= '1';
        b <= '1';
        WAIT FOR 10 ns;

        ASSERT false REPORT "END OF TEST";
        WAIT;

    END PROCESS;
END ARCHITECTURE;