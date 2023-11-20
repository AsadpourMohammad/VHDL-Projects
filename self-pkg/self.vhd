PACKAGE self_pkg IS
    TYPE self_logic IS ('0', '1');
    TYPE self_logic_vector IS ARRAY (NATURAL RANGE <>) OF self_logic;

    FUNCTION self_and (l : self_logic; r : self_logic) RETURN self_logic;
    FUNCTION self_or (l : self_logic; r : self_logic) RETURN self_logic;
    FUNCTION self_xor (l : self_logic; r : self_logic) RETURN self_logic;
END self_pkg;

PACKAGE BODY self_pkg IS
    TYPE self_logic_table IS ARRAY (self_logic, self_logic) OF self_logic;

    CONSTANT self_and_table : self_logic_table := (
        -- 0 | 1 
        ('0', '0'), -- 0
        ('0', '1') -- 1
    );

    CONSTANT self_or_table : self_logic_table := (
        -- 0 | 1 
        ('0', '1'), -- 0
        ('1', '1') -- 1
    );

    CONSTANT self_xor_table : self_logic_table := (
        -- 0 | 1 
        ('0', '1'), -- 0
        ('1', '0') -- 1
    );

    FUNCTION self_and (l : self_logic; r : self_logic) RETURN self_logic IS
    BEGIN
        RETURN (self_and_table(l, r));
    END self_and;

    FUNCTION self_or (l : self_logic; r : self_logic) RETURN self_logic IS
    BEGIN
        RETURN (self_or_table(l, r));
    END self_or;

    FUNCTION self_xor (l : self_logic; r : self_logic) RETURN self_logic IS
    BEGIN
        RETURN (self_xor_table(l, r));
    END self_xor;
END self_pkg;