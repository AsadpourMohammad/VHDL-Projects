LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ha IS
    PORT (
        a, b : IN STD_LOGIC;
        s, c : OUT STD_LOGIC
    );
END ha;

ARCHITECTURE ha_arch OF ha IS
BEGIN

    s <= a XOR b;
    c <= a AND b;

END ha_arch;