library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2x1_tb is
end entity;

architecture test of mux2x1_tb is
    component mux2_1 is
        port(
            a, b, sel : in std_logic;
            y : out std_logic
        );
    end component;

    signal a, b, sel, y : std_logic;
begin
    mux : mux2_1 port map(
        a => a,
        b => b,
        sel => sel,
        y => y
    );

    process begin
        a <= '0';
        b <= '1';
        sel <= '0';
        wait for 10 ns;

        sel <= '1';
        wait for 10 ns;

        assert false report "End of test";
        wait;
    end process;
end architecture;
