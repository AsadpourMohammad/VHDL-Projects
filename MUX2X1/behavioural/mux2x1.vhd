library ieee;
use ieee.std_logic_1164.all;

entity mux2_1 is
    port(
        a, b : in std_logic_vector(7 downto 0);
        sel : in std_logic;
        y : out std_logic_vector(7 downto 0)
    );
end entity;

architecture mux_arch of mux2_1 is
begin
    process (a, b, sel)
    begin
        if sel = '0' then
            y <= a;
        else
            y <= b;
        end if;
    end process;
end architecture;
