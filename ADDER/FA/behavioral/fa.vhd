LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY fa IS
    PORT (
        a, b, cin : IN STD_LOGIC;
        sum, cout : OUT STD_LOGIC
    );
END fa;

ARCHITECTURE behaviorar OF fa IS
BEGIN
    PROCESS (a, b, cin)
    BEGIN
        IF (a = '0' AND b = '0' AND cin = '0') THEN
            sum <= '0';
            cout <= '0';
        ELSIF (a = '0' AND b = '0' AND cin = '1') THEN
            sum <= '1';
            cout <= '0';
        ELSIF (a = '0' AND b = '1' AND cin = '0') THEN
            sum <= '1';
            cout <= '0';
        ELSIF (a = '0' AND b = '1' AND cin = '1') THEN
            sum <= '0';
            cout <= '1';
        ELSIF (a = '1' AND b = '0' AND cin = '0') THEN
            sum <= '1';
            cout <= '0';
        ELSIF (a = '1' AND b = '0' AND cin = '1') THEN
            sum <= '0';
            cout <= '1';
        ELSIF (a = '1' AND b = '1' AND cin = '0') THEN
            sum <= '0';
            cout <= '1';
        ELSIF (a = '1' AND b = '1' AND cin = '1') THEN
            sum <= '1';
            cout <= '1';
        END IF;
    END PROCESS;
END behaviorar;