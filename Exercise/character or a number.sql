
DECLARE
  INPUT_VALUE VARCHAR2(100);
BEGIN

  INPUT_VALUE := '&input_value';

  IF REGEXP_LIKE(INPUT_VALUE, '^[[:alpha:]]+$') THEN
    DBMS_OUTPUT.PUT_LINE('The user input value: '
                         || INPUT_VALUE);
    DBMS_OUTPUT.PUT_LINE('The value provided is a character');

  ELSIF REGEXP_LIKE(INPUT_VALUE, '^[[:digit:]]+$') THEN
    DBMS_OUTPUT.PUT_LINE('The user input value: '
                         || INPUT_VALUE);
    DBMS_OUTPUT.PUT_LINE('The value provided is a number');

  ELSE
    DBMS_OUTPUT.PUT_LINE('The user input value: '
                         || INPUT_VALUE);
    DBMS_OUTPUT.PUT_LINE('The value provided is neither a character nor a number');
  END IF;
END;
/