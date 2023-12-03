LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY string_finder IS
    PORT (
        din : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        dout : OUT STD_LOGIC;
        counter : INOUT INTEGER := 0
    );
END string_finder;

ARCHITECTURE behavioral OF string_finder IS
    TYPE states IS (state0, state1, state2, state3, state4);
    SIGNAL current_state : states := state0;
BEGIN
    PROCESS (clk)
    BEGIN
        IF (rising_edge(clk)) THEN
            CASE current_state IS
                WHEN state0 =>
                    IF (din = '0') THEN
                        current_state <= state1;
                    ELSE
                        current_state <= state0;
                    END IF;
                WHEN state1 =>
                    IF (din = '0') THEN
                        current_state <= state2;
                    ELSE
                        current_state <= state0;
                    END IF;
                WHEN state2 =>
                    IF (din = '0') THEN
                        current_state <= state2;
                    ELSE
                        current_state <= state3;
                    END IF;
                WHEN state3 =>
                    IF (din = '0') THEN
                        current_state <= state1;
                    ELSE
                        current_state <= state4;
                        counter <= 1 + counter;
                    END IF;
                WHEN state4 =>
                    IF (din = '0') THEN
                        current_state <= state1;
                    ELSE
                        current_state <= state0;
                    END IF;
            END CASE;
        END IF;
    END PROCESS;

    dout <= '1' WHEN (current_state = state4) ELSE '0';
END Behavioral;