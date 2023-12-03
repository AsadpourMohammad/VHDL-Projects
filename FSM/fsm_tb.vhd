LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY fsm_tb IS
END fsm_tb;

ARCHITECTURE test OF fsm_tb IS
    COMPONENT string_finder
        PORT (
            din : IN STD_LOGIC;
            clk : IN STD_LOGIC;
            dout : OUT STD_LOGIC;
            counter : INOUT INTEGER := 0
        );
    END COMPONENT;

    -- Inputs
    SIGNAL din : STD_LOGIC := '0';
    SIGNAL clk : STD_LOGIC := '0';

    -- Outputs
    SIGNAL dout : STD_LOGIC;
    SIGNAL counter : INTEGER := 0;

    -- Clock period definitions
    CONSTANT clk_period : TIME := 20 ns;
BEGIN
    uut : string_finder PORT MAP(
        din => din,
        clk => clk,
        dout => dout,
        counter => counter
    );

    clk_process : PROCESS
    BEGIN
        clk <= '0';
        WAIT FOR clk_period/2;
        clk <= '1';
        WAIT FOR clk_period/2;
    END PROCESS;

    stim_proc : PROCESS
    BEGIN
        -- hold reset state for 100 ns.
        din <= '0';
        WAIT FOR clk_period;
        din <= '0';
        WAIT FOR clk_period;
        din <= '1';
        WAIT FOR clk_period;
        din <= '0';
        WAIT FOR clk_period;
        din <= '0';
        WAIT FOR clk_period;
        din <= '1';
        WAIT FOR clk_period;
        din <= '1';
        WAIT FOR clk_period;
        din <= '0';
        WAIT FOR clk_period;
        din <= '1';
        WAIT FOR clk_period;
        din <= '0';
        WAIT FOR clk_period;
        din <= '0';
        WAIT FOR clk_period;
        din <= '1';
        WAIT FOR clk_period;
        din <= '1';
        WAIT FOR clk_period;
        din <= '0';
        WAIT FOR clk_period;
        din <= '1';
        WAIT FOR clk_period;
        din <= '0';
        WAIT FOR clk_period;
        din <= '0';
        WAIT FOR clk_period;
        din <= '1';
        WAIT FOR clk_period;
        din <= '1';
        WAIT FOR clk_period;
        din <= '1';
        WAIT FOR clk_period;

        ASSERT false REPORT "End of simulation";
        WAIT;
    END PROCESS;
END test;