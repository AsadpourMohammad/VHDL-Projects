library ieee;
use ieee.std_logic_1164.all;

entity mux2_1 is
    port(
        a, b, sel : in std_logic;
        y : out std_logic
    );
end mux2_1;

architecture mux_arch of mux2_1 is
begin
    y <= a when sel = '0' else b;
end mux_arch;
