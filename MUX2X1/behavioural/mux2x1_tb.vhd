library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2x1_tb is
end entity;

architecture test of mux2x1_tb is
    component mux2_1 is
         port(
            a, b : in std_logic_vector(7 downto 0);
            sel : in std_logic;
            y : out std_logic_vector(7 downto 0)
        );
    end component;

    signal a, b, y : std_logic_vector(7 downto 0);
    signal sel : std_logic;
begin
    mux : mux2_1 port map(
        a => a,
        b => b,
        sel => sel,
        y => y
    );

    process begin
        a <= "00000000";
        b <= "11111111";
        sel <= '0';
        wait for 10 ns;

        sel <= '1';
        wait for 10 ns;

        assert false report "End of test";
        wait;
    end process;
end architecture;
