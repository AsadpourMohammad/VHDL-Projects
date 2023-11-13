LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY sr_latch IS
    PORT (
        s, r, clk, clr, pr : IN STD_LOGIC;
        q, qbar : INOUT STD_LOGIC
    );
END sr_latch;

ARCHITECTURE sr OF sr_latch IS
    SIGNAL s_nand, r_nand : STD_LOGIC;

BEGIN

    s_nand <= s NAND clk;
    r_nand <= r NAND clk;

    q <= NOT (((NOT pr) AND s_nand) AND qbar);

    qbar <= NOT (((NOT clr) AND r_nand) AND q);

END sr;