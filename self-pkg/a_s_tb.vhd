LIBRARY work;
USE work.self_pkg.ALL;

ENTITY a_s_tb IS
END ENTITY;

ARCHITECTURE test OF a_s_tb IS
    COMPONENT generic_adder_subtractor IS
        GENERIC (n : INTEGER := 4);
        PORT (
            a : IN self_logic_VECTOR (n - 1 DOWNTO 0);
            b : IN self_logic_VECTOR (n - 1 DOWNTO 0);
            m : IN self_logic;
            s : OUT self_logic_VECTOR (n - 1 DOWNTO 0);
            cout : OUT self_logic);
    END COMPONENT;

    SIGNAL a : self_logic_VECTOR (3 DOWNTO 0);
    SIGNAL b : self_logic_VECTOR (3 DOWNTO 0);
    SIGNAL m : self_logic;
    SIGNAL s : self_logic_vector (3 DOWNTO 0);
    SIGNAL cout : self_logic;
BEGIN
    uut : generic_adder_subtractor PORT MAP(
        a, b, m, s, cout
    );

    PROCESS
    BEGIN

        a <= "0001";
        b <= "0010";
        m <= '0';
        WAIT FOR 10 ns;

        a <= "0100";
        b <= "0001";
        m <= '1';
        WAIT FOR 10 ns;

        ASSERT false REPORT "END OF TEST";
        WAIT;

    END PROCESS;
END ARCHITECTURE;