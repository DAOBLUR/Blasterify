---------------------------------------------------------------------------
--            TASK 1
---------------------------------------------------------------------------

/*
Show all User Histories (chapters and movies)
*/

create or replace procedure Show_User_Histories(user_id number) as 
begin 
    DBMS_OUTPUT.PUT_LINE(user_id); 
    DBMS_OUTPUT.PUT_LINE('MOVIES'); 
    DBMS_OUTPUT.PUT_LINE('ID - NAME - TITLE - STOP TIME');
    for item in ( 
        select u.id, u.name, mu.title, mh.stop_time
            from User_Client u, Movie_History mh, Multimedia mu 
            where mh.User_Id = user_id
            and u.id = user_id
            and mh.User_Id = u.id
            and mu.id = mh.movie_id
    )  
    loop 
        IF item.id = user_id THEN
            DBMS_OUTPUT.PUT_LINE(item.id || ' - ' || item.name || ' - ' || item.title || ' - ' || item.stop_time); 
        END IF;
    end loop; 

    DBMS_OUTPUT.PUT_LINE('SERIES'); 
    DBMS_OUTPUT.PUT_LINE('ID - NAME - TITLE - CHAPTER NUMBER - STOP TIME'); 
    for item in ( 
        select u.id, u.name, mu.title, c.Chapter_Number ,ch.stop_time
            from User_Client u, chapter_history ch, chapter c, Multimedia mu 
            where u.id = user_id
                and ch.User_Id = user_id and c.id = ch.chapter_id and mu.id = c.serie_id
    )  
    loop 
        IF item.id = user_id THEN
            DBMS_OUTPUT.PUT_LINE(item.id || ' - ' || item.name || ' - ' || item.title || ' - ' || item.Chapter_Number || ' - ' || item.stop_time); 
        END IF;
    end loop; 
END; 
/

exec Show_User_Histories(1);
exec Show_User_Histories(2);

/*
Show subscription details of a user by Id
*/

create or replace procedure Show_Subscription_Details (user_id number) as 
    v_id Subscription.Id%type;
    v_name Subscription.Name%type;
    v_price Subscription.Price%type;
    v_features Subscription.Features%type;
begin
    select Id_Subscription into v_id
    	from User_Client u where u.Id = user_id;

    select s.Name, s.Price, s.Features into v_name, v_price, v_features
    	from Subscription s where s.Id = v_id;

    DBMS_OUTPUT.PUT_LINE('Details: ' || v_id || '; '|| v_name || '; ' || v_price || '$; '  || v_features );
end;
/

exec Show_Subscription_Details(1);

/*
Show all Users with a specific Subscription
*/

create or replace procedure Show_All_Users_Suscription(suscription_id number) as 
    v_name Subscription.Name%type;
begin 
    select s.name into v_name
        from Subscription s
        where s.id = suscription_id;

    DBMS_OUTPUT.PUT_LINE(v_name); 
    DBMS_OUTPUT.PUT_LINE('ID - NAME');
    for item in ( 
        select u.id, u.name, u.Id_Subscription
            from User_Client u
            where u.Id_Subscription = suscription_id
    )  
    loop 
        IF item.Id_Subscription = suscription_id THEN
            DBMS_OUTPUT.PUT_LINE(item.id || ' - ' || item.name); 
        END IF;
    end loop; 
END; 
/

exec Show_All_Users_Suscription(1);

---------------------------------------------------------------------------
--            TASK 2
---------------------------------------------------------------------------

/*
Show the movies where an Actor acts
*/

create or replace procedure Show_Movies_Actor(actor_id number) as 
    v_name Actor.Name%type;
begin 
    select a.name into v_name
        from Actor a
        where a.id = actor_id;

    DBMS_OUTPUT.PUT_LINE(v_name); 

    for item in ( 
        select mu.Title, ma.Actor_Id
            from Multimedia_Actor ma
            inner join Movie m on m.Id = ma.Multimedia_Id
            inner join Multimedia mu on mu.Id = m.Id 
            where ma.Actor_Id = actor_id
    )  
    loop 
        IF item.Actor_Id = actor_id THEN
            DBMS_OUTPUT.PUT_LINE(item.Title); 
        END IF;
    end loop; 

    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || ' ' || SQLERRM);
END; 
/

exec Show_Movies_Actor(1);

/*
Show users without Series History
*/

CREATE OR REPLACE PROCEDURE Show_Users_Without_Series_Histories as
  CURSOR c_Chapter_History IS         
    SELECT u.Id, u.Name
        FROM User_Client u
        LEFT JOIN Chapter_History ch ON u.Id = ch.User_Id
        WHERE ch.User_Id IS NULL;
    
  TYPE t_user IS RECORD (
    Id User_Client.Id%TYPE,
    Name User_Client.Name%TYPE
  );

  users t_user;
BEGIN
  OPEN c_Chapter_History;
  LOOP
    FETCH c_Chapter_History INTO users;
    EXIT WHEN c_Chapter_History%NOTFOUND;
  DBMS_OUTPUT.PUT_LINE(users.Id || '; ' || users.Name);
  END LOOP;
  
  CLOSE c_Chapter_History;

  EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: '||SQLCODE||' '||SQLERRM);
END;
/

exec Show_Users_Without_Series_Histories;

/*
Update Multimedia Rate if less than 3.5
*/

CREATE OR REPLACE PROCEDURE Update_Multimedia_Rate IS
    CURSOR c_Multimedia IS
        SELECT m.Id, m.Rate FROM Multimedia m;

    Multimedia_row c_Multimedia%ROWTYPE;

BEGIN
    FOR Multimedia_row IN c_Multimedia
    LOOP
        IF Multimedia_row.Rate < 3.5 THEN
            UPDATE Multimedia
            SET Rate = Multimedia_row.Rate * 1.05
            WHERE Id = Multimedia_row.Id;
        END IF;
    END LOOP;
    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: '||SQLCODE||' '||SQLERRM);
        ROLLBACK;
END;
/

exec Update_Multimedia_Rate;

select m.Id, m.Title, m.Rate from Multimedia m;