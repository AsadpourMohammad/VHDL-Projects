LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY sr_latch_tb IS
END sr_latch_tb;

ARCHITECTURE test OF sr_latch_tb IS
    COMPONENT sr_latch
        PORT (
            s, r : IN STD_LOGIC;
            q, qbar : INOUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL s, r, q, qbar : STD_LOGIC := '0';
BEGIN
    uut : sr_latch PORT MAP(
        s => s,
        r => r,
        q => q,
        qbar => qbar
    );

    PROCESS
    BEGIN

        s <= '0';
        WAIT FOR 10 ns;

        s <= '1';
        WAIT FOR 10 ns;

        s <= '0';
        WAIT FOR 10 ns;

        r <= '1';
        WAIT FOR 10 ns;

        r <= '0';
        WAIT FOR 10 ns;

        s <= '1';
        WAIT FOR 10 ns;

        s <= '0';
        WAIT FOR 10 ns;

        ASSERT false REPORT "END OF TEST";
        WAIT;

    END PROCESS;
END ARCHITECTURE;