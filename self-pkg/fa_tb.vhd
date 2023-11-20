LIBRARY work;
USE work.self_pkg.ALL;

ENTITY fa_tb IS
END fa_tb;

ARCHITECTURE test OF fa_tb IS
    COMPONENT fa
        PORT (
            a : IN self_logic;
            b : IN self_logic;
            cin : IN self_logic;
            s : OUT self_logic;
            cout : OUT self_logic
        );
    END COMPONENT;

    SIGNAL a, b, cin, s, cout : self_logic;
BEGIN
    uut : fa PORT MAP(
        a => a,
        b => b,
        cin => cin,
        s => s,
        cout => cout
    );

    PROCESS
    BEGIN

        a <= '1';
        b <= '0';
        cin <= '0';
        WAIT FOR 10 ns;

        a <= '0';
        b <= '1';
        cin <= '0';
        WAIT FOR 10 ns;

        a <= '0';
        b <= '0';
        cin <= '1';
        WAIT FOR 10 ns;

        a <= '1';
        b <= '1';
        cin <= '0';
        WAIT FOR 10 ns;

        a <= '1';
        b <= '0';
        cin <= '1';
        WAIT FOR 10 ns;

        a <= '0';
        b <= '1';
        cin <= '1';
        WAIT FOR 10 ns;

        a <= '1';
        b <= '1';
        cin <= '1';
        WAIT FOR 10 ns;

        ASSERT false REPORT "END OF TEST";
        WAIT;

    END PROCESS;
END ARCHITECTURE;