select * from User_Client


Delete FROM User_Client WHERE id = 21



DECLARE
  -- Declare variables to hold the output values
  v_u_firebase_uid User_Client.Firebase_UID%type;
  v_u_name User_Client.Name%type;
  v_u_card_number User_Client.Card_Number%type;
  v_u_status User_Client.Status%type;
  v_u_email User_Client.Email%type;
  v_u_subscription_date User_Client.Subscription_Date%type;
  v_s_name Subscription.Name%type;
  v_c_name Country.Name%type;
BEGIN
  -- Call the procedure
  Select_User(u_id => 23, -- Replace with the actual value for u_id
              u_firebase_uid => v_u_firebase_uid,
              u_name => v_u_name,
              u_card_number => v_u_card_number,
              u_status => v_u_status,
              u_email => v_u_email,
              u_subscription_date => v_u_subscription_date,
              s_name => v_s_name,
              c_name => v_c_name);

  -- Display the retrieved values
  DBMS_OUTPUT.PUT_LINE('Firebase UID: ' || v_u_firebase_uid);
  DBMS_OUTPUT.PUT_LINE('Name: ' || v_u_name);
  DBMS_OUTPUT.PUT_LINE('Card Number: ' || v_u_card_number);
  DBMS_OUTPUT.PUT_LINE('Status: ' || v_u_status);
  DBMS_OUTPUT.PUT_LINE('Email: ' || v_u_email);
  DBMS_OUTPUT.PUT_LINE('Subscription Date: ' || v_u_subscription_date);
  DBMS_OUTPUT.PUT_LINE('Subscription Name: ' || v_s_name);
  DBMS_OUTPUT.PUT_LINE('Country Name: ' || v_c_name);
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || ' ' || SQLERRM);
END;
