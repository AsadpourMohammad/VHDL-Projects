LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY shift_tb IS
END ENTITY;

ARCHITECTURE test OF shift_tb IS
    COMPONENT shift_reg IS
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
    END COMPONENT;

    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL load : STD_LOGIC := '0';
    SIGNAL data_in : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
    SIGNAL data_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL rst : STD_LOGIC := '0';
    SIGNAL shift : STD_LOGIC := '0';

BEGIN
    uut : shift_reg
    GENERIC MAP(
        WIDTH => 8
    )
    PORT MAP(
        clk => clk,
        load => load,
        data_in => data_in,
        data_out => data_out,
        rst => rst,
        shift => shift
    );

    clk_process : PROCESS
    BEGIN
        clk <= '0';
        WAIT FOR 10 ns;
        clk <= '1';
        WAIT FOR 10 ns;
    END PROCESS;

    stim_proc : PROCESS
    BEGIN
        rst <= '1';
        load <= '0';
        data_in <= "00000000";
        WAIT FOR 20 ns;
        rst <= '0';
        WAIT FOR 20 ns;
        load <= '1';
        data_in <= "00000001";
        WAIT FOR 20 ns;
        load <= '0';
        WAIT FOR 20 ns;
        shift <= '1';
        WAIT FOR 20 ns;
        shift <= '0';
        WAIT FOR 20 ns;
        load <= '1';
        data_in <= "00000010";
        WAIT FOR 20 ns;
        load <= '0';
        WAIT FOR 20 ns;
        shift <= '1';
        WAIT FOR 20 ns;
        shift <= '0';
        WAIT FOR 20 ns;
        load <= '1';
        data_in <= "00000011";
        WAIT FOR 20 ns;
        load <= '0';
        WAIT FOR 20 ns;
        shift <= '1';
        WAIT FOR 20 ns;
        shift <= '0';
        WAIT FOR 20 ns;
        load <= '1';
        data_in <= "00000100";
        WAIT FOR 20 ns;
        load <= '0';
        WAIT FOR 20 ns;
        shift <= '1';
        WAIT FOR 20 ns;
        shift <= '0';
        WAIT FOR 20 ns;
        load <= '1';
        data_in <= "00000101";
        WAIT FOR 20 ns;
        load <= '0';
        WAIT FOR 20 ns;
        shift <= '1';
        WAIT FOR 20 ns;
        shift <= '0';
        WAIT FOR 20 ns;
        load <= '1';
        data_in <= "00000110";
        WAIT FOR 20 ns;
        load <= '0';
        WAIT FOR 20 ns;
        shift <= '1';
        WAIT FOR 20 ns;
        shift <= '0';
        WAIT FOR 20 ns;
        load <= '1';
        data_in <= "00000111";
        WAIT FOR 20 ns;
        load <= '0';
        WAIT FOR 20 ns;
        shift <= '1';
        WAIT FOR 20 ns;
        shift <= '0';
        WAIT FOR 20 ns;

        ASSERT false REPORT "End of simulation";
        WAIT;
    END PROCESS;
END ARCHITECTURE;