LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY fa IS
    PORT (
        a, b, cin : IN STD_LOGIC;
        sum, cout : OUT STD_LOGIC
    );
END fa;

ARCHITECTURE case_when OF fa IS
BEGIN
    PROCESS (a, b, cin)
        VARIABLE temp : STD_LOGIC_VECTOR(2 DOWNTO 0);
    BEGIN
        temp := a & b & cin;
        CASE temp IS
            WHEN "000" => sum <= '0';
                cout <= '0';
            WHEN "001" => sum <= '1';
                cout <= '0';
            WHEN "010" => sum <= '1';
                cout <= '0';
            WHEN "011" => sum <= '0';
                cout <= '1';
            WHEN "100" => sum <= '1';
                cout <= '0';
            WHEN "101" => sum <= '0';
                cout <= '1';
            WHEN "110" => sum <= '0';
                cout <= '1';
            WHEN "111" => sum <= '1';
                cout <= '1';
            WHEN OTHERS => sum <= '0';
                cout <= '0';
        END CASE;
    END PROCESS;
END case_when;