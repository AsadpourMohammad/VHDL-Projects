library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4x1_tb is
end mux4x1_tb;

architecture test of mux4x1_tb is
    component mux4x1 is
        Port (
            I0, I1, I2, I3: in STD_LOGIC_VECTOR(7 downto 0);
            S1, S0: in STD_LOGIC;
            Y: out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

    signal I0, I1, I2, I3: STD_LOGIC_VECTOR(7 downto 0);
    signal S1, S0: STD_LOGIC;
    signal Y: STD_LOGIC_VECTOR(7 downto 0);

begin
    uut: mux4x1 port map (I0, I1, I2, I3, S1, S0, Y);

    I0 <= "00000000";
    I1 <= "00000001";
    I2 <= "00000010";
    I3 <= "00000011";
    
    process
    begin
        S1 <= '0';
        S0 <= '0';
        wait for 10 ns;
        
        S1 <= '0';
        S0 <= '1';
        wait for 10 ns;

        S1 <= '1';
        S0 <= '0';
        wait for 10 ns;
        
        S1 <= '1';
        S0 <= '1';
        wait for 10 ns; 

        assert false report "End of test";
        wait;
    end process;
end architecture;