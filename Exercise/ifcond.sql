DECLARE

age number NULL := &age;

BEGIN

IF  AGE>=0 AND AGE<=17 THEN
dbms_output.put_line('you wont vote');
elsif age>=18 AND AGE<=64 THEN
dbms_output.put_line('Working group');
ELSE
dbms_output.put_line('Please retire');
end if;
END;
/
