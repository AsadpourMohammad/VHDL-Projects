LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY delayed_2_or_tb IS
END ENTITY;

ARCHITECTURE test OF delayed_2_or_tb IS
    COMPONENT delayed_2_or
        GENERIC (
            a_high_to_low_delay : TIME := 1 ns;
            a_low_to_high_delay : TIME := 1 ns;
            b_high_to_low_delay : TIME := 1 ns;
            b_low_to_high_delay : TIME := 1 ns;
            or_high_to_low_delay : TIME := 1 ns;
            or_low_to_high_delay : TIME := 1 ns
        );
        PORT (
            a : IN STD_LOGIC;
            b : IN STD_LOGIC;
            c : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL a : STD_LOGIC := '0';
    SIGNAL b : STD_LOGIC := '0';
    SIGNAL c : STD_LOGIC;

BEGIN
    uut : delayed_2_or
    GENERIC MAP(
        a_high_to_low_delay => 1 ns,
        a_low_to_high_delay => 2 ns,
        b_high_to_low_delay => 3 ns,
        b_low_to_high_delay => 4 ns,
        or_high_to_low_delay => 5 ns,
        or_low_to_high_delay => 6 ns
    )
    PORT MAP(
        a => a,
        b => b,
        c => c
    );

    a <= '0' AFTER 20 ns, '1' AFTER 40 ns, '0' AFTER 60 ns, '1' AFTER 80 ns, '0' AFTER 100 ns, '1' AFTER 120 ns, '0' AFTER 140 ns, '1' AFTER 160 ns, '0' AFTER 180 ns;
    b <= '0' AFTER 30 ns, '1' AFTER 60 ns, '0' AFTER 90 ns, '1' AFTER 120 ns, '0' AFTER 150 ns, '1' AFTER 180 ns, '0' AFTER 210 ns, '1' AFTER 240 ns, '0' AFTER 270 ns;

END ARCHITECTURE;