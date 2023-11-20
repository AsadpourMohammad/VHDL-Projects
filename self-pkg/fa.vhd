LIBRARY work;
USE work.self_pkg.ALL;

ENTITY fa IS
    PORT (
        a : IN self_logic;
        b : IN self_logic;
        cin : IN self_logic;
        s : OUT self_logic;
        cout : OUT self_logic
    );
END fa;

ARCHITECTURE structural OF fa IS
    SIGNAL first_xor, first_and, second_and : self_logic;
BEGIN
    first_xor <= self_xor(a, b);
    first_and <= self_and(a, b);

    second_and <= self_and(first_xor, cin);

    s <= self_xor(first_xor, cin);
    cout <= self_or(first_and, second_and);
END ARCHITECTURE;