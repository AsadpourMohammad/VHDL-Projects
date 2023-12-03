LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY delayed_2_or IS
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
END ENTITY delayed_2_or;

ARCHITECTURE rtl OF delayed_2_or IS
    SIGNAL a_delayed : STD_LOGIC;
    SIGNAL b_delayed : STD_LOGIC;
BEGIN
    PROCESS (a)
    BEGIN
        IF rising_edge(a) THEN
            a_delayed <= '1' AFTER a_low_to_high_delay;
        ELSIF falling_edge(a) THEN
            a_delayed <= '0' AFTER a_high_to_low_delay;
        END IF;
    END PROCESS;

    PROCESS (b)
    BEGIN
        IF rising_edge(b) THEN
            b_delayed <= '1' AFTER b_low_to_high_delay;
        ELSIF falling_edge(b) THEN
            b_delayed <= '0' AFTER b_high_to_low_delay;
        END IF;
    END PROCESS;

    PROCESS (a_delayed, b_delayed)
        VARIABLE temp : STD_LOGIC_VECTOR(1 DOWNTO 0);
    BEGIN

        temp := a_delayed & b_delayed;
        CASE temp IS
            WHEN "00" =>
                c <= '0' AFTER or_high_to_low_delay;
            WHEN OTHERS =>
                c <= '1' AFTER or_low_to_high_delay;
        END CASE;
    END PROCESS;
END ARCHITECTURE rtl;