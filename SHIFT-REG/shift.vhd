LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY shift_reg IS
    GENERIC (
        WIDTH : INTEGER := 8
    );
    PORT (
        clk : IN STD_LOGIC;
        load : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR(WIDTH - 1 DOWNTO 0);
        data_out : OUT STD_LOGIC_VECTOR(WIDTH - 1 DOWNTO 0);
        rst : IN STD_LOGIC;
        shift : IN STD_LOGIC
    );
END ENTITY shift_reg;

ARCHITECTURE rtl OF shift_reg IS
    SIGNAL reg : STD_LOGIC_VECTOR(WIDTH - 1 DOWNTO 0);
BEGIN
    PROCESS (clk, rst)
    BEGIN
        IF rst = '1' THEN
            reg <= (OTHERS => '0');
        ELSIF rising_edge(clk) THEN
            IF load = '1' THEN
                reg <= data_in;
            ELSIF shift = '1' THEN
                reg <= reg(WIDTH - 2 DOWNTO 0) & reg(WIDTH - 1);
            END IF;
        END IF;
    END PROCESS;
    data_out <= reg;
END ARCHITECTURE rtl;