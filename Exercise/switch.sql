DECLARE
  SALARY       NUMBER := 20000;
  BONUS_AMOUNT NUMBER;
BEGIN
  bonus_amount :=
CASE
WHEN SALARY >= 10000 AND SALARY <= 20000 THEN 1500
WHEN SALARY > 20000 AND SALARY <= 40000 THEN 1000
WHEN SALARY > 40000 THEN 500
ELSE 0
END * 10;

DBMS_OUTPUT.PUT_LINE(BONUS_AMOUNT);

END;
/