DECLARE
   subscriptions_result sys_refcursor;
   subscription_record Subscription%ROWTYPE;
BEGIN
   BLASTERIFY.Get_All_Subscriptions(subscriptions_result);
   
   LOOP
      FETCH subscriptions_result INTO subscription_record;
      EXIT WHEN subscriptions_result%NOTFOUND;
      
      -- Aquí puedes utilizar los valores de subscription_record como desees
      -- Por ejemplo, imprimirlos en la consola
      DBMS_OUTPUT.PUT_LINE('ID: ' || subscription_record.Id || ', Name: ' || subscription_record.Name);
   END LOOP;
   
   CLOSE subscriptions_result;
EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
----------------
CREATE OR REPLACE PROCEDURE Select_All_Users(users OUT sys_refcursor)
IS
BEGIN
	/*
   FOR i IN (SELECT * FROM User_Client ) LOOP
       OPEN users FOR
       SELECT * FROM User_Client u ORDER BY u.Id ;
   END LOOP;
  */
   OPEN users FOR
   SELECT u.ID, u.NAME, u.CARD_NUMBER, u.EMAIL, u.SUBSCRIPTION_DATE FROM User_Client u ORDER BY u.ID;
EXCEPTION    
   WHEN OTHERS THEN
   DBMS_OUTPUT.PUT_LINE ('Error');    

END;

COMMIT;
/
----------------------
CREATE OR REPLACE PROCEDURE Select_All_Subscriptions(subscriptions OUT sys_refcursor)
IS
BEGIN
   OPEN subscriptions FOR
   SELECT * FROM Subscription ORDER BY ID;

EXCEPTION    
   WHEN OTHERS THEN
   DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;





SELECT * FROM Subscription
SELECT * FROM Actor
COMMIT;