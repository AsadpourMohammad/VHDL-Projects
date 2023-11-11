library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4x1 is
    Port (
        I0, I1, I2, I3: in STD_LOGIC_VECTOR(7 downto 0);
        S1, S0: in STD_LOGIC;
        Y: out STD_LOGIC_VECTOR(7 downto 0)
    );
end entity;

architecture structural of mux4x1 is
    component mux2x1 is
        Port(
            a, b : in STD_LOGIC_VECTOR(7 downto 0);
            sel : in STD_LOGIC;
            y : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

    signal mid0, mid1: STD_LOGIC_VECTOR(7 downto 0);
begin
    mux0: mux2x1 port map(I0, I1, S1, mid0);
    mux1: mux2x1 port map(I2, I3, S1, mid1);
    mux2: mux2x1 port map(mid0, mid1, S0, Y);
end structural;
