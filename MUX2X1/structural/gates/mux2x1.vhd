library ieee;
use ieee.std_logic_1164.all;

entity mux2_1 is
    port(
        a, b, sel : in std_logic;
        y : out std_logic
    );
end mux2_1;

architecture mux_arch of mux2_1 is
    signal not_sel, a_and_sel, b_and_not_sel : std_logic;
begin
    not_sel <= not sel;
    a_and_sel <= a and sel;
    b_and_not_sel <= b and not_sel;
    y <= a_and_sel or b_and_not_sel;
end mux_arch;
