LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux4x1_tb IS
END mux4x1_tb;

ARCHITECTURE test OF mux4x1_tb IS
    COMPONENT mux4x1 IS
        PORT (
            I0, I1, I2, I3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            S1, S0 : IN STD_LOGIC;
            Y : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL I0, I1, I2, I3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL S1, S0 : STD_LOGIC;
    SIGNAL Y : STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
    uut : mux4x1 PORT MAP(I0, I1, I2, I3, S1, S0, Y);

    I0 <= "00000000";
    I1 <= "00000001";
    I2 <= "00000010";
    I3 <= "00000011";

    PROCESS
    BEGIN

        S1 <= '0';
        S0 <= '0';
        WAIT FOR 10 ns;

        S1 <= '0';
        S0 <= '1';
        WAIT FOR 10 ns;

        S1 <= '1';
        S0 <= '0';
        WAIT FOR 10 ns;

        S1 <= '1';
        S0 <= '1';
        WAIT FOR 10 ns;

        ASSERT false REPORT "END OF TEST";
        WAIT;

    END PROCESS;
END ARCHITECTURE;