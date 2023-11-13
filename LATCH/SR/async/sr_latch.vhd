LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY sr_latch IS
    PORT (
        s, r : IN STD_LOGIC;
        q, qbar : INOUT STD_LOGIC
    );
END sr_latch;

ARCHITECTURE sr OF sr_latch IS
BEGIN

    q <= (NOT s) NAND qbar;
    qbar <= (NOT r) NAND q;

END sr;