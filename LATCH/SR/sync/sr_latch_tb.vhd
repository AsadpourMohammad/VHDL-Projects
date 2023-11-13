LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY sr_latch_tb IS
END sr_latch_tb;

ARCHITECTURE test OF sr_latch_tb IS
    COMPONENT sr_latch
        PORT (
            s, r, clk, clr, pr : IN STD_LOGIC;
            q, qbar : INOUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL s, r, clr, pr, q, qbar : STD_LOGIC;
    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL finished : STD_LOGIC := '0';
BEGIN
    uut : sr_latch PORT MAP(
        s => s,
        r => r,
        clk => clk,
        clr => clr,
        pr => pr,
        q => q,
        qbar => qbar
    );

    clk <= NOT clk AFTER 5 ns WHEN finished /= '1' ELSE '0';

    PROCESS
    BEGIN

        s <= '0';
        r <= '0';
        clr <= '0';
        pr <= '0';
        WAIT FOR 10 ns;

        pr <= '1';
        WAIT FOR 10 ns;

        pr <= '0';
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

        clr <= '1';
        WAIT FOR 10 ns;

        clr <= '0';
        WAIT FOR 10 ns;

        pr <= '1';
        WAIT FOR 10 ns;

        pr <= '0';
        WAIT FOR 10 ns;

        s <= '1';
        WAIT FOR 10 ns;

        s <= '0';
        WAIT FOR 10 ns;

        r <= '1';
        WAIT FOR 10 ns;

        finished <= '1';
        ASSERT false REPORT "END OF TEST";
        WAIT;

    END PROCESS;
END ARCHITECTURE;