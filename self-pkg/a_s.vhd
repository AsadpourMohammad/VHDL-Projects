LIBRARY work;
USE work.self_pkg.ALL;

ENTITY generic_adder_subtractor IS
    GENERIC (n : INTEGER := 4);
    PORT (
        a : IN self_logic_VECTOR (n - 1 DOWNTO 0);
        b : IN self_logic_VECTOR (n - 1 DOWNTO 0);
        m : IN self_logic;
        s : OUT self_logic_VECTOR (n - 1 DOWNTO 0);
        cout : OUT self_logic);
END generic_adder_subtractor;

ARCHITECTURE Behavioral OF generic_adder_subtractor IS
    COMPONENT fa IS
        PORT (
            a : IN self_logic;
            b : IN self_logic;
            cin : IN self_logic;
            s : OUT self_logic;
            cout : OUT self_logic
        );
    END COMPONENT;

    SIGNAL carry, ta : self_logic_vector(n DOWNTO 1);
    SIGNAL t : self_logic;
BEGIN
    t <= self_xor(b(0), m);
    fab : fa PORT MAP(a => a(0), b => t, cin => m, s => s(0), cout => carry(1));

    hello : FOR i IN 1 TO n - 1 GENERATE
        ta(i) <= self_xor(b(i), m);
        tfa : fa PORT MAP(a => a(i), b => ta(i), cin => carry(i), s => s(i), cout => carry(i + 1));
    END GENERATE;
    
    cout <= carry(n);
END Behavioral;