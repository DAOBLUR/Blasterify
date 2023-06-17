create or replace procedure Insert_User(
    u_firebase_uid in User_Client.Firebase_UID%type,
    u_name in User_Client.Name%type, 
    u_card_number in User_Client.Card_Number%type,
    u_email in User_Client.Email%type, 
    u_password in User_Client.Password%type,
    u_subscription_date in User_Client.Subscription_Date%type, 
    u_id_subscription in User_Client.Id_Subscription%type, 
    u_id_country in User_Client.Id_Country%type, 
    result out boolean)
as
begin
    insert into User_Client 
        values (Sec_User.nextval, u_firebase_uid, u_name, u_card_number, 1, 
        u_email, u_password, u_subscription_date, u_id_subscription, u_id_country);
    commit;
    result:= true;
exception
    when others then
        DBMS_OUTPUT.PUT_LINE('Error: '||SQLCODE||' '||SQLERRM);
        rollback;
        result:= false;
end;
---e

create or replace procedure Select_User (
    u_id in User_Client.Id%type,
    u_firebase_uid out User_Client.Firebase_UID%type,
    u_name out User_Client.Name%type,
    u_card_number out User_Client.Card_Number%type,
    u_status out User_Client.Status%type,
    u_email out User_Client.Email%type,
    u_subscription_date out User_Client.Subscription_Date%type, 
    s_name out Subscription.Name%type, 
    c_name out Country.Name%type)
as
BEGIN
    select u.Firebase_UID, u.Name, u.Card_Number, u.Status, u.Email, u.Subscription_Date,s.Name, c.Name
    into u_firebase_uid, u_name, u_card_number, u_status, u_email, u_subscription_date, s_name, c_name
    from User_Client u
    join Subscription s on s.Id = u.Id_Subscription
    join Country c on c.Id = u.Id_Country
    where u.id = u_id;
exception
    when others then
        DBMS_OUTPUT.PUT_LINE('Error: '||SQLCODE||' '||SQLERRM);
END;

------
create or replace procedure Select_All_Users(users OUT sys_refcursor)
IS
BEGIN
    for i in (SELECT * FROM User_Client ) LOOP
        OPEN users FOR
        SELECT u.Id, u.Name, u.Email, u.Subscription_Date, s.Name as Subscription, c.Name as Country
        FROM User_Client u 
        join Subscription s on s.Id = u.Id_Subscription
        join Country c on c.Id = u.Id_Country
        order by u.Id ;
    END LOOP;
EXCEPTION    
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE ('Error');    
END;
----------

create or replace procedure Update_Subscription(subscription_id in number, subscription_name in varchar, 
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


create or replace procedure Delete_Subscription (subscription_id in number, result out boolean)  AS
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