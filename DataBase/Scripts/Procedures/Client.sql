CREATE OR REPLACE PROCEDURE Insert_User (subscription_name in varchar, 
    , subscription_features in clob, result out boolean)  AS
BEGIN
    insert into User_Client 
        values (Sec_User.nextval, subscription_name, subscription_price, subscription_features);
    commit;
    result:= TRUE;
exception
    when others then
        DBMS_OUTPUT.PUT_LINE('Error: '||SQLCODE||' '||SQLERRM);
        rollback;
        result:= FALSE;
END;
/


CREATE OR REPLACE PROCEDURE Get_Subscription (subscription_id in number, subscription_name out varchar, 
    subscription_price out number, subscription_features out clob)  AS
BEGIN
    select s.Name, s.Price, s.Features
    into subscription_name, subscription_price, subscription_features
    from Subscription s where s.id = subscription_id;
exception
    when others then
        DBMS_OUTPUT.PUT_LINE('Error: '||SQLCODE||' '||SQLERRM);
END;
/


CREATE OR REPLACE PROCEDURE Select_All_Users(users OUT sys_refcursor)
IS
BEGIN
   FOR i IN (SELECT * FROM User_Client ) LOOP
       OPEN users FOR
       SELECT * FROM User_Client u ORDER BY u.Id ;
   END LOOP;
EXCEPTION    
   WHEN OTHERS THEN
   DBMS_OUTPUT.PUT_LINE ('Error');    

END;
/


CREATE OR REPLACE PROCEDURE Update_Subscription(subscription_id in number, subscription_name in varchar, 
    subscription_price in number, subscription_features in clob, result out boolean)  AS
BEGIN
    update Subscription s set s.Name = subscription_name, Price = subscription_price, Features = subscription_features
        where id = subscription_id;
    commit;
    result:= TRUE;
exception
    when others then
        DBMS_OUTPUT.PUT_LINE('Error: '||SQLCODE||' '||SQLERRM);
        rollback;
        result:= FALSE;
END;
/


CREATE OR REPLACE PROCEDURE Delete_Subscription (subscription_id in number, result out boolean)  AS
BEGIN
    delete from Subscription where id = subscription_id;
    commit;
    result:= TRUE;
exception
    when others then
        DBMS_OUTPUT.PUT_LINE('Error: '||SQLCODE||' '||SQLERRM);
        rollback;
        result:= FALSE;
END;
/