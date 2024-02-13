DECLARE
  NUM1           INT(10):= '&num1';
  NUM2           INT(10):= '&num2';
  SAM            INT;
  DIFFERENCE     INT;
  MULTIPLICATION INT;
  DIVISION       INT;
BEGIN
  SAM := NUM1+NUM2;
  DIFFERENCE := NUM1-NUM2;
  MULTIPLICATION := NUM1*NUM2;
  DIVISION := NUM1/NUM2;
  DBMS_OUTPUT.PUT_LINE( 'the sum of '
                        ||NUM1
                        || 'and '
                        ||NUM2
                        || 'is '
                        || SAM );
  DBMS_OUTPUT.PUT_LINE( ' the difference of '
                        ||NUM1
                        || 'and'
                        ||NUM2
                        ||  ' is '
                        || DIFFERENCE );
  DBMS_OUTPUT.PUT_LINE( 'the multiplication of'
                        ||NUM1
                        || 'and'
                        ||NUM2
                        || 'is '
                        || MULTIPLICATION );
  DBMS_OUTPUT.PUT_LINE( 'the difference between'
                        ||NUM1
                        || 'and'
                        ||NUM2
                        || 'is'
                        || DIVISION );
END;
/