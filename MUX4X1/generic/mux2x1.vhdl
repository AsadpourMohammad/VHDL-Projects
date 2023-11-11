library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2x1 is
    generic (
        N : integer := 4
    );
    Port(
        a, b: in STD_LOGIC_VECTOR(N-1 downto 0);
        sel : in STD_LOGIC;
        y : out STD_LOGIC_VECTOR(N-1 downto 0)
    );
end entity;

architecture mux_arch of mux2x1 is
begin
    y <= a when sel = '0' else b;
end architecture;
