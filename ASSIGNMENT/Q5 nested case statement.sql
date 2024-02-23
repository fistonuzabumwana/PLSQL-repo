DECLARE
  PASSENGER_ID NUMBER := &PASSENGER_ID;
  AGE          PASSENGER.age%TYPE;
  TRAVEL_CLASS VARCHAR(20) := '&TRAVEL_CLASS';
  DISCOUNT     NUMBER;
BEGIN

  SELECT AGE INTO AGE FROM PASSENGER WHERE ID = PASSENGER_ID;

  CASE
    WHEN AGE BETWEEN 18 AND 65 THEN

      CASE
        WHEN TRAVEL_CLASS = 'ECONOMY' THEN
          CASE
            WHEN AGE BETWEEN 18 AND 25 THEN
              DISCOUNT := 0.3;
            WHEN AGE BETWEEN 26 AND 35 THEN
              DISCOUNT := 0.1;
            ELSE
              DISCOUNT := 0;
          END CASE;
        WHEN TRAVEL_CLASS = 'BUSINESS' THEN
          CASE
            WHEN AGE BETWEEN 35 AND 65 THEN
              DISCOUNT := 0.1;
            ELSE
              DISCOUNT := 0;
          END CASE;
        ELSE
          DBMS_OUTPUT.PUT_LINE('Invalid travel class.');
      END CASE;
    ELSE
      DBMS_OUTPUT.PUT_LINE('Passenger age outside eligible range.');
  END CASE;

  IF DISCOUNT > 0 THEN
    DBMS_OUTPUT.PUT_LINE('Passenger is eligible for a ' || DISCOUNT * 100 || '% discount.');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Passenger is not eligible for a discount.');
  END IF;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Passenger with ID '|| PASSENGER_ID || ' not found.');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Unexpected error: ' || SQLERRM);
END;
/