LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY fa_tb IS
END ENTITY;

ARCHITECTURE test OF fa_tb IS
    COMPONENT fa
        PORT (
            a, b, cin : IN STD_LOGIC;
            sum, cout : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL a, b, cin, sum, cout : STD_LOGIC;
BEGIN
    uut : fa PORT MAP(a, b, cin, sum, cout);

    PROCESS
    BEGIN
        a <= '0';
        b <= '0';
        cin <= '0';
        WAIT FOR 10 ns;

        a <= '0';
        b <= '0';
        cin <= '1';
        WAIT FOR 10 ns;

        a <= '0';
        b <= '1';
        cin <= '0';
        WAIT FOR 10 ns;

        a <= '0';
        b <= '1';
        cin <= '1';
        WAIT FOR 10 ns;

        a <= '1';
        b <= '0';
        cin <= '0';
        WAIT FOR 10 ns;

        a <= '1';
        b <= '0';
        cin <= '1';
        WAIT FOR 10 ns;

        a <= '1';
        b <= '1';
        cin <= '0';
        WAIT FOR 10 ns;

        a <= '1';
        b <= '1';
        cin <= '1';
        WAIT FOR 10 ns;

        ASSERT false REPORT "END OF TEST";
        WAIT;

    END PROCESS;
END ARCHITECTURE;