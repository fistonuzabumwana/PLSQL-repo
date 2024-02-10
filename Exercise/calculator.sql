DECLARE
  FIRST_NUMBER  VARCHAR(50) := &FIRST_NUMBER;
  SECOND_NUMBER VARCHAR(50) := &SECOND_NUMBER;
  SOL           NUMBER;
  DIV           DECIMAL(10, 2);
BEGIN
  SOL := FIRST_NUMBER + SECOND_NUMBER;
  DBMS_OUTPUT.PUT_LINE('The sum of '
                       || FIRST_NUMBER
                       || ' and '
                       || SECOND_NUMBER
                       || ' is '
                       || SOL);
  SOL := FIRST_NUMBER * SECOND_NUMBER;
  DBMS_OUTPUT.PUT_LINE('The Multiplication of '
                       || FIRST_NUMBER
                       || ' and '
                       || SECOND_NUMBER
                       || ' is '
                       || SOL);
  DIV := FIRST_NUMBER / SECOND_NUMBER;
  DBMS_OUTPUT.PUT_LINE('The Division of '
                       || FIRST_NUMBER
                       || ' and '
                       || SECOND_NUMBER
                       || ' is '
                       || DIV);
  SOL := FIRST_NUMBER - SECOND_NUMBER;
  DBMS_OUTPUT.PUT_LINE('The Difference of '
                       || FIRST_NUMBER
                       || ' and '
                       || SECOND_NUMBER
                       || ' is '
                       || SOL);
END;
/