library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4x1 is
    generic (
        N: integer := 16
    );
    Port (
        I0, I1, I2, I3: in STD_LOGIC_VECTOR(N-1 downto 0);
        S1, S0: in STD_LOGIC;
        Y: out STD_LOGIC_VECTOR(N-1 downto 0)
    );
end entity;

architecture structural of mux4x1 is
    component mux2x1 is
        generic (
            N : integer := 4
        );
        Port(
            a, b: in STD_LOGIC_VECTOR(N-1 downto 0);
            sel : in STD_LOGIC;
            y : out STD_LOGIC_VECTOR(N-1 downto 0)
        );    
    end component;

    signal mid0, mid1: STD_LOGIC_VECTOR(N-1 downto 0);
begin
    mux0: mux2x1 generic map(N => N) port map(a => I0, b => I1, sel => S0, y => mid0);
    mux1: mux2x1 generic map(N => N) port map(a => I2, b => I3, sel => S0, y => mid1);
    mux2: mux2x1 generic map(N => N) port map(a => mid0, b => mid1, sel => S1, y => Y);
end structural;
