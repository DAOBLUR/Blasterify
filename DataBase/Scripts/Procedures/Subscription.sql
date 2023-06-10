CREATE OR REPLACE PROCEDURE Insert_Subscription (subscription_name in varchar, 
    subscription_price in number, subscription_features in clob, result out boolean)  AS
BEGIN
    insert into Subscription 
        values (Sec_Subscription.nextval, subscription_name, subscription_price, subscription_features);
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


CREATE OR REPLACE PROCEDURE Get_All_Subscriptions(subscriptions OUT sys_refcursor)
IS
BEGIN
   FOR i IN (SELECT * FROM Subscription ) LOOP
       OPEN subscriptions FOR
       SELECT * FROM Subscription s ORDER BY s.ID ;
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