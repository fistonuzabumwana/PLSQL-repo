DECLARE
  FIRST_NUMBER  NUMBER := &FIRST_NUMBER;
  SECOND_NUMBER NUMBER := &SECOND_NUMBER;
  THIRD_NUMBER  NUMBER := &THIRD_NUMBER;
BEGIN
  DBMS_OUTPUT.PUT_LINE('THE FIRST NUMBER: IS  '
                       || FIRST_NUMBER);
  DBMS_OUTPUT.PUT_LINE('THE SECOND NUMBER: IS  '
                       || SECOND_NUMBER);
  DBMS_OUTPUT.PUT_LINE('THE THIRD NUMBER: IS  '
                       || THIRD_NUMBER);
  IF FIRST_NUMBER > SECOND_NUMBER AND FIRST_NUMBER > THIRD_NUMBER THEN
    DBMS_OUTPUT.PUT_LINE('THE HIGHEST NUMBER AMONG THE THREE IS  '
                         || FIRST_NUMBER);
  ELSIF SECOND_NUMBER > FIRST_NUMBER AND SECOND_NUMBER > THIRD_NUMBER THEN
    DBMS_OUTPUT.PUT_LINE('THE HIGHEST NUMBER AMONG THE THREE IS  '
                         || SECOND_NUMBER);
  ELSIF THIRD_NUMBER > FIRST_NUMBER AND THIRD_NUMBER > SECOND_NUMgitBER THEN
    DBMS_OUTPUT.PUT_LINE('THE HIGHEST NUMBER AMONG THE THREE IS  '
                         || SECOND_NUMBER);
  ELSE
    DBMS_OUTPUT.PUT_LINE('all three Numbers should be unique ');
  END IF;
END;
/