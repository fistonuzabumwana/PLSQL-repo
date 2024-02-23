DECLARE
  SNAME         VARCHAR(14) := &sname(HELLOUU);
  YEAR_OF_BIRTH NUMBER(4) := &YEAR_OF_BIRTH;
  CURRENT_YEAR  NUMBER(4) := 2024;
  LIM EXCEPTION;
  AGE           NUMBER;
BEGIN
  IF YEAR_OF_BIRTH < 2000 THEN
    RAISE LIM;
  END IF;

  AGE := CURRENT_YEAR - YEAR_OF_BIRTH;
  DBMS_OUTPUT.PUT_LINE ( SNAME
                         || ' was born in : '
                         || YEAR_OF_BIRTH
                         || '. The current age is: '
                         || AGE );
EXCEPTION
  WHEN LIM THEN
    DBMS_OUTPUT.PUT_LINE ('You are old.');
END;
/