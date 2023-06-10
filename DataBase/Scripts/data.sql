----------------------------------------------------------------------
--          Subscription
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Subscription');
END;
/

create sequence Sec_Subscription maxvalue 9999999 increment by 1 nocycle;

insert into Subscription (Id, Name, Price, Features) 
    values (Sec_Subscription.nextval, 'Free', 0.0, 'Movies, limited series and with advertising. Watch in HD.');
insert into Subscription (Id, Name, Price, Features) 
    values (Sec_Subscription.nextval, 'Basic', 9.99, 'Unlimited movies, series and without advertising. Watch in HD. Rating On.');
insert into Subscription (Id, Name, Price, Features) 
    values (Sec_Subscription.nextval, 'Standard', 14.99, 'Unlimited movies, series and without advertising. Watch in Full HD. Rating On. Download enabled.');
insert into Subscription (Id, Name, Price, Features) 
    values (Sec_Subscription.nextval, 'Premium', 19.99, 'Unlimited movies, series and without advertising. Watch in UltraHD. Download enabled. Rating On. Spatial audio from Blasterify. Access to Music.');

----------------------------------------------------------------------
--          Country
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Country');
END;

create sequence Sec_Country maxvalue 9999999 increment by 1 nocycle;

insert into Country (Id, Name) values (Sec_Country.nextval, 'Argentina');
insert into Country (Id, Name) values (Sec_Country.nextval, 'Россия');
insert into Country (Id, Name) values (Sec_Country.nextval, 'भारत');
insert into Country (Id, Name) values (Sec_Country.nextval, 'Italia');
insert into Country (Id, Name) values (Sec_Country.nextval, 'México');
insert into Country (Id, Name) values (Sec_Country.nextval, 'Perú');
insert into Country (Id, Name) values (Sec_Country.nextval, '日本');
insert into Country (Id, Name) values (Sec_Country.nextval, 'Deutschland');
insert into Country (Id, Name) values (Sec_Country.nextval, 'España');
insert into Country (Id, Name) values (Sec_Country.nextval, 'United States');

----------------------------------------------------------------------
--          User_Client
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('User_Client');
END;
/

create sequence Sec_User maxvalue 9999999 increment by 1 nocycle;

insert into User_Client (Id, Name, Card_Number, Status, Email, Password, Subscription_Date, Id_Subscription, Id_Country) 
    values (Sec_User.nextval, 'Juan Perez', '', 1, 'juanperez@gmail.com', 'Xasfasf_564s6dgs_Fr55G5_a4sf6AFA6S5_4F', to_date('01012022','ddmmyyyy'), 1, 1);

insert into User_Client (Id, Name, Card_Number, Status, Email, Password, Subscription_Date, Id_Subscription, Id_Country) 
    values (Sec_User.nextval, 'Ana Garcia', '9876543213213211', 1, 'anagarcia@gmail.com', 'Xasfasf_564s6dgs_Fr55G5_a4sf6AFA6S5_4F', to_date('01012022','ddmmyyyy'), 2, 2);
insert into User_Client (Id, Name, Card_Number, Status, Email, Password, Subscription_Date, Id_Subscription, Id_Country) 
    values (Sec_User.nextval, 'Pedro Gutierrez', '9876543213213212', 1, 'pedroguti@gmail.com', 'Xasfasf_564s6dgs_Fr55G5_a4sf6AFA6S5_4F', to_date('01012022','ddmmyyyy'), 2, 3);
insert into User_Client (Id, Name, Card_Number, Status, Email, Password, Subscription_Date, Id_Subscription, Id_Country) 
    values (Sec_User.nextval, 'Lucia Martinez', '9876543213213213', 1, 'lucimar@gmail.com', 'Xasfasf_564s6dgs_Fr55G5_a4sf6AF56S5_4F', to_date('01012022','ddmmyyyy'), 3, 4);
insert into User_Client (Id, Name, Card_Number, Status, Email, Password, Subscription_Date, Id_Subscription, Id_Country) 
    values (Sec_User.nextval, 'Miguel Romero', '9876543213213214', 1, 'miguelrom@gmail.com', 'Xasfasf_564s6dgs_Fr55G5_a4sf6A3A6S5_4F', to_date('01012022','ddmmyyyy'), 3, 5);
insert into User_Client (Id, Name, Card_Number, Status, Email, Password, Subscription_Date, Id_Subscription, Id_Country) 
    values (Sec_User.nextval, 'Carmen Hernandez', '9876543213213215', 1, 'carmenh@gmail.com', 'Xasfasf_564s6dgs_Fr55G5_a4sf6AFA6S5_4F', to_date('01012022','ddmmyyyy'), 3, 6);
insert into User_Client (Id, Name, Card_Number, Status, Email, Password, Subscription_Date, Id_Subscription, Id_Country) 
    values (Sec_User.nextval, 'Diego Garcia', '9876543213213216', 1, 'diegogarcia@gmail.com', 'Xasfas_564s6dgs_Fr55G5_a4sf6AFA6S5_4F', to_date('01012022','ddmmyyyy'), 4, 1);

insert into User_Client (Id, Name, Card_Number, Status, Email, Password, Subscription_Date, Id_Subscription, Id_Country) 
    values (Sec_User.nextval, 'Valentina Gomez', '9876543213213217', 1, 'valegomez@gmail.com', 'Xasfasf_564s6dgs_Fr55G5_a4sf6AFA6S5_4F', to_date('01012022','ddmmyyyy'), 4, 1);
insert into User_Client (Id, Name, Card_Number, Status, Email, Password, Subscription_Date, Id_Subscription, Id_Country) 
    values (Sec_User.nextval, 'Esteban Jimenez', '9876543213213218', 1, 'estebancocazo@gmail.com', 'Xasfasf_564s6dgs_Fr55G5_sf6AFA6S5_4F', to_date('01012022','ddmmyyyy'), 4, 1);

insert into User_Client (Id, Name, Card_Number, Status, Email, Password, Subscription_Date, Id_Subscription, Id_Country) 
    values (Sec_User.nextval, 'Paul Ruiz', '', 1, 'paulinho@gmail.com', 'Xasfasf_564s6dgs_Fr55G5_a4sf6AFA6S5_4F', to_date('01012022','ddmmyyyy'), 1, 1);
insert into User_Client (Id, Name, Card_Number, Status, Email, Password, Subscription_Date, Id_Subscription, Id_Country) 
    values (Sec_User.nextval, 'Ana Torrez', '', 1, 'anatorr@gmail.com', 'Xasfasf_564s6dgs_Fr55G5_a4sf6AFA6S5_4F', to_date('01012022','ddmmyyyy'), 1, 1);
insert into User_Client (Id, Name, Card_Number, Status, Email, Password, Subscription_Date, Id_Subscription, Id_Country) 
    values (Sec_User.nextval, 'Zdravko Kolarov', '', 1, 'zdravlorov@gmail.com', 'Xasfasf_564s6dgs_Fr55G5_a4sf6AFA6S5_4F', to_date('01012022','ddmmyyyy'), 1, 1);

----------------------------------------------------------------------
--          Genre
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Genre');
END;


create sequence Sec_Genre maxvalue 9999999 increment by 1 nocycle;

insert into Genre (Id, Name) values (Sec_Genre.nextval, 'Action');
insert into Genre (Id, Name) values (Sec_Genre.nextval, 'Adventure');
insert into Genre (Id, Name) values (Sec_Genre.nextval, 'Comedy');
insert into Genre (Id, Name) values (Sec_Genre.nextval, 'Drama');
insert into Genre (Id, Name) values (Sec_Genre.nextval, 'Fantasy');
insert into Genre (Id, Name) values (Sec_Genre.nextval, 'Horror');
insert into Genre (Id, Name) values (Sec_Genre.nextval, 'Musical');
insert into Genre (Id, Name) values (Sec_Genre.nextval, 'Romance');
insert into Genre (Id, Name) values (Sec_Genre.nextval, 'Science Fiction');
insert into Genre (Id, Name) values (Sec_Genre.nextval, 'Thriller');
insert into Genre (Id, Name) values (Sec_Genre.nextval, 'War');
insert into Genre (Id, Name) values (Sec_Genre.nextval, 'Western');

----------------------------------------------------------------------
--          Director
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Director');
END;

create sequence Sec_Director maxvalue 9999999 increment by 1 nocycle;

INSERT INTO Director (Id, Name) VALUES (Sec_Director.nextval, 'Christopher Nolan');
INSERT INTO Director (Id, Name) VALUES (Sec_Director.nextval, 'Martin Scorsese');
INSERT INTO Director (Id, Name) VALUES (Sec_Director.nextval, 'Steven Spielberg');
INSERT INTO Director (Id, Name) VALUES (Sec_Director.nextval, 'Quentin Tarantino');
INSERT INTO Director (Id, Name) VALUES (Sec_Director.nextval, 'Alfred Hitchcock');
INSERT INTO Director (Id, Name) VALUES (Sec_Director.nextval, 'Spike Lee');
INSERT INTO Director (Id, Name) VALUES (Sec_Director.nextval, 'Francis Ford Coppola');
INSERT INTO Director (Id, Name) VALUES (Sec_Director.nextval, 'Stanley Kubrick');
INSERT INTO Director (Id, Name) VALUES (Sec_Director.nextval, 'Tim Burton');
INSERT INTO Director (Id, Name) VALUES (Sec_Director.nextval, 'James Cameron');
INSERT INTO Director (Id, Name) VALUES (Sec_Director.nextval, 'Wes Anderson');
INSERT INTO Director (Id, Name) VALUES (Sec_Director.nextval, 'Coen Brothers');

----------------------------------------------------------------------
--          Writer
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Writer');
END;
/

create sequence Sec_Writer maxvalue 9999999 increment by 1 nocycle;

INSERT INTO Writer (Id, Name) VALUES (Sec_Writer.nextval, 'Aaron Sorkin');
INSERT INTO Writer (Id, Name) VALUES (Sec_Writer.nextval, 'Quentin Tarantino');
INSERT INTO Writer (Id, Name) VALUES (Sec_Writer.nextval, 'Christopher Nolan');
INSERT INTO Writer (Id, Name) VALUES (Sec_Writer.nextval, 'David Benioff');
INSERT INTO Writer (Id, Name) VALUES (Sec_Writer.nextval, 'D. B. Weiss');
INSERT INTO Writer (Id, Name) VALUES (Sec_Writer.nextval, 'George R. R. Martin');
INSERT INTO Writer (Id, Name) VALUES (Sec_Writer.nextval, 'Greta Gerwig');
INSERT INTO Writer (Id, Name) VALUES (Sec_Writer.nextval, 'Noah Baumbach');
INSERT INTO Writer (Id, Name) VALUES (Sec_Writer.nextval, 'Sofia Coppola');
INSERT INTO Writer (Id, Name) VALUES (Sec_Writer.nextval, 'Wes Anderson');
INSERT INTO Writer (Id, Name) VALUES (Sec_Writer.nextval, 'Jordan Peele');
INSERT INTO Writer (Id, Name) VALUES (Sec_Writer.nextval, 'Lena Waithe');

----------------------------------------------------------------------
--          Actor
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Actor');
END;
/

create sequence Sec_Actor maxvalue 9999999 increment by 1 nocycle;

INSERT INTO Actor (Id, Name) VALUES (Sec_Actor.nextval, 'Tom Hanks');
INSERT INTO Actor (Id, Name) VALUES (Sec_Actor.nextval, 'Meryl Streep');
INSERT INTO Actor (Id, Name) VALUES (Sec_Actor.nextval, 'Leonardo DiCaprio');
INSERT INTO Actor (Id, Name) VALUES (Sec_Actor.nextval, 'Emma Stone');
INSERT INTO Actor (Id, Name) VALUES (Sec_Actor.nextval, 'Robert De Niro');
INSERT INTO Actor (Id, Name) VALUES (Sec_Actor.nextval, 'Jennifer Lawrence');
INSERT INTO Actor (Id, Name) VALUES (Sec_Actor.nextval, 'Brad Pitt');
INSERT INTO Actor (Id, Name) VALUES (Sec_Actor.nextval, 'Charlize Theron');
INSERT INTO Actor (Id, Name) VALUES (Sec_Actor.nextval, 'Denzel Washington');
INSERT INTO Actor (Id, Name) VALUES (Sec_Actor.nextval, 'Angelina Jolie');
INSERT INTO Actor (Id, Name) VALUES (Sec_Actor.nextval, 'Johnny Depp');
INSERT INTO Actor (Id, Name) VALUES (Sec_Actor.nextval, 'Saoirse Ronan');

----------------------------------------------------------------------
--          Character
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Character');
END;


create sequence Sec_Character maxvalue 9999999 increment by 1 nocycle;

INSERT INTO Character (Id, Name) VALUES (Sec_Character.nextval, 'Harry Potter');
INSERT INTO Character (Id, Name) VALUES (Sec_Character.nextval, 'Hermione Granger');
INSERT INTO Character (Id, Name) VALUES (Sec_Character.nextval, 'Ron Weasley');
INSERT INTO Character (Id, Name) VALUES (Sec_Character.nextval, 'Gollum');
INSERT INTO Character (Id, Name) VALUES (Sec_Character.nextval, 'Frodo Baggins');
INSERT INTO Character (Id, Name) VALUES (Sec_Character.nextval, 'Samwise Gamgee');
INSERT INTO Character (Id, Name) VALUES (Sec_Character.nextval, 'Indiana Jones');
INSERT INTO Character (Id, Name) VALUES (Sec_Character.nextval, 'Luke Skywalker');
INSERT INTO Character (Id, Name) VALUES (Sec_Character.nextval, 'Princess Leia');
INSERT INTO Character (Id, Name) VALUES (Sec_Character.nextval, 'Darth Vader');
INSERT INTO Character (Id, Name) VALUES (Sec_Character.nextval, 'Neo');
INSERT INTO Character (Id, Name) VALUES (Sec_Character.nextval, 'Morpheus');
--execute
----------------------------------------------------------------------
--          Character_Actor
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Character_Actor');
END;
/

INSERT INTO Character_Actor (Character_Id, Actor_Id) VALUES (1, 1);
INSERT INTO Character_Actor (Character_Id, Actor_Id) VALUES (2, 2);
INSERT INTO Character_Actor (Character_Id, Actor_Id) VALUES (3, 3);
INSERT INTO Character_Actor (Character_Id, Actor_Id) VALUES (3, 4);
INSERT INTO Character_Actor (Character_Id, Actor_Id) VALUES (4, 6);
INSERT INTO Character_Actor (Character_Id, Actor_Id) VALUES (5, 1);
INSERT INTO Character_Actor (Character_Id, Actor_Id) VALUES (6, 1);
INSERT INTO Character_Actor (Character_Id, Actor_Id) VALUES (7, 1);
INSERT INTO Character_Actor (Character_Id, Actor_Id) VALUES (3, 1);
INSERT INTO Character_Actor (Character_Id, Actor_Id) VALUES (2, 1);
INSERT INTO Character_Actor (Character_Id, Actor_Id) VALUES (8, 1);
INSERT INTO Character_Actor (Character_Id, Actor_Id) VALUES (9, 1);

----------------------------------------------------------------------
--          Producer
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Producer');
END;
/

create sequence Sec_Producer maxvalue 9999999 increment by 1 nocycle;

INSERT INTO Producer (Id, Name) VALUES (Sec_Producer.nextval, 'Warner Bros.');
INSERT INTO Producer (Id, Name) VALUES (Sec_Producer.nextval, 'Universal Pictures');
INSERT INTO Producer (Id, Name) VALUES (Sec_Producer.nextval, 'Paramount Pictures');
INSERT INTO Producer (Id, Name) VALUES (Sec_Producer.nextval, '20th Century Fox');
INSERT INTO Producer (Id, Name) VALUES (Sec_Producer.nextval, 'Walt Disney Pictures');
INSERT INTO Producer (Id, Name) VALUES (Sec_Producer.nextval, 'Marvel Studios');
INSERT INTO Producer (Id, Name) VALUES (Sec_Producer.nextval, 'Lucasfilm Ltd.');
INSERT INTO Producer (Id, Name) VALUES (Sec_Producer.nextval, 'Netflix');
INSERT INTO Producer (Id, Name) VALUES (Sec_Producer.nextval, 'Amazon Studios');
INSERT INTO Producer (Id, Name) VALUES (Sec_Producer.nextval, 'HBO');
INSERT INTO Producer (Id, Name) VALUES (Sec_Producer.nextval, 'BBC Studios');
INSERT INTO Producer (Id, Name) VALUES (Sec_Producer.nextval, 'Sony Pictures');

----------------------------------------------------------------------
--          Composer
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Composer');
END;
/

create sequence Sec_Composer maxvalue 9999999 increment by 1 nocycle;

INSERT INTO Composer (Id, Name) VALUES (Sec_Composer.nextval, 'Hans Zimmer');
INSERT INTO Composer (Id, Name) VALUES (Sec_Composer.nextval, 'John Williams');
INSERT INTO Composer (Id, Name) VALUES (Sec_Composer.nextval, 'Ennio Morricone');
INSERT INTO Composer (Id, Name) VALUES (Sec_Composer.nextval, 'Alan Silvestri');
INSERT INTO Composer (Id, Name) VALUES (Sec_Composer.nextval, 'James Horner');
INSERT INTO Composer (Id, Name) VALUES (Sec_Composer.nextval, 'Danny Elfman');
INSERT INTO Composer (Id, Name) VALUES (Sec_Composer.nextval, 'Howard Shore');
INSERT INTO Composer (Id, Name) VALUES (Sec_Composer.nextval, 'Thomas Newman');
INSERT INTO Composer (Id, Name) VALUES (Sec_Composer.nextval, 'Michael Giacchino');
INSERT INTO Composer (Id, Name) VALUES (Sec_Composer.nextval, 'Jerry Goldsmith');
INSERT INTO Composer (Id, Name) VALUES (Sec_Composer.nextval, 'Alexandre Desplat');
INSERT INTO Composer (Id, Name) VALUES (Sec_Composer.nextval, 'Ramin Djawadi');

----------------------------------------------------------------------
--          Language
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Language');
END;
/

create sequence Sec_Language maxvalue 9999999 increment by 1 nocycle;

INSERT INTO Language (Id, Name) VALUES (Sec_Language.nextval, 'English');
INSERT INTO Language (Id, Name) VALUES (Sec_Language.nextval, 'Español');
INSERT INTO Language (Id, Name) VALUES (Sec_Language.nextval, 'Français');
INSERT INTO Language (Id, Name) VALUES (Sec_Language.nextval, 'Deutsch');
INSERT INTO Language (Id, Name) VALUES (Sec_Language.nextval, 'Italiano');
INSERT INTO Language (Id, Name) VALUES (Sec_Language.nextval, 'Português');
INSERT INTO Language (Id, Name) VALUES (Sec_Language.nextval, '日本語');
INSERT INTO Language (Id, Name) VALUES (Sec_Language.nextval, '中文');
INSERT INTO Language (Id, Name) VALUES (Sec_Language.nextval, 'Русский');
INSERT INTO Language (Id, Name) VALUES (Sec_Language.nextval, 'العربية');

----------------------------------------------------------------------
--          Subtitle
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Subtitle');
END;
/

create sequence Sec_Subtitle maxvalue 9999999 increment by 1 nocycle;

INSERT INTO Subtitle (Id, Name_Language) VALUES (Sec_Subtitle.nextval, 'English');
INSERT INTO Subtitle (Id, Name_Language) VALUES (Sec_Subtitle.nextval, 'Español');
INSERT INTO Subtitle (Id, Name_Language) VALUES (Sec_Subtitle.nextval, 'Français');
INSERT INTO Subtitle (Id, Name_Language) VALUES (Sec_Subtitle.nextval, 'Deutsch');
INSERT INTO Subtitle (Id, Name_Language) VALUES (Sec_Subtitle.nextval, 'Italiano');
INSERT INTO Subtitle (Id, Name_Language) VALUES (Sec_Subtitle.nextval, 'Português');
INSERT INTO Subtitle (Id, Name_Language) VALUES (Sec_Subtitle.nextval, '日本語');
INSERT INTO Subtitle (Id, Name_Language) VALUES (Sec_Subtitle.nextval, '中文');
INSERT INTO Subtitle (Id, Name_Language) VALUES (Sec_Subtitle.nextval, 'Русский');
INSERT INTO Subtitle (Id, Name_Language) VALUES (Sec_Subtitle.nextval, 'العربية');

----------------------------------------------------------------------
--          Age_Restriction
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Age_Restriction');
END;
/

create sequence Sec_Age maxvalue 9999999 increment by 1 nocycle;

INSERT INTO Age_Restriction (Id, Age, Description) VALUES (Sec_Age.nextval, 18, 'Suitable for viewers aged 18 and over');
INSERT INTO Age_Restriction (Id, Age, Description) VALUES (Sec_Age.nextval, 13, 'Suitable for viewers aged 13 and over');
INSERT INTO Age_Restriction (Id, Age, Description) VALUES (Sec_Age.nextval, 16, 'Suitable for viewers aged 16 and over');
INSERT INTO Age_Restriction (Id, Age, Description) VALUES (Sec_Age.nextval, 12, 'Suitable for viewers aged 12 and over');
INSERT INTO Age_Restriction (Id, Age, Description) VALUES (Sec_Age.nextval, 15, 'Suitable for viewers aged 15 and over');
INSERT INTO Age_Restriction (Id, Age, Description) VALUES (Sec_Age.nextval, 7, 'Suitable for viewers aged 7 and over');
INSERT INTO Age_Restriction (Id, Age, Description) VALUES (Sec_Age.nextval, 10, 'Suitable for viewers aged 10 and over');
INSERT INTO Age_Restriction (Id, Age, Description) VALUES (Sec_Age.nextval, 21, 'Suitable for viewers aged 21 and over');
INSERT INTO Age_Restriction (Id, Age, Description) VALUES (Sec_Age.nextval, 6, 'Suitable for viewers aged 6 and over');
INSERT INTO Age_Restriction (Id, Age, Description) VALUES (Sec_Age.nextval, 9, 'Suitable for viewers aged 9 and over');

----------------------------------------------------------------------
--          Music
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Music');
END;
/

create sequence Sec_Music maxvalue 9999999 increment by 1 nocycle;

INSERT INTO Music (Id, Title, Duration, Rate) VALUES (Sec_Music.nextval, 'Theme Song', 60, 4.5);
INSERT INTO Music (Id, Title, Duration, Rate) VALUES (Sec_Music.nextval, 'Love Theme', 90, 4.2);
INSERT INTO Music (Id, Title, Duration, Rate) VALUES (Sec_Music.nextval, 'Action Music', 120, 4.0);
INSERT INTO Music (Id, Title, Duration, Rate) VALUES (Sec_Music.nextval, 'Romantic Ballad', 180, 4.7);
INSERT INTO Music (Id, Title, Duration, Rate) VALUES (Sec_Music.nextval, 'Comedic Tune', 90, 3.9);
INSERT INTO Music (Id, Title, Duration, Rate) VALUES (Sec_Music.nextval, 'Tragic Score', 150, 4.6);
INSERT INTO Music (Id, Title, Duration, Rate) VALUES (Sec_Music.nextval, 'Chase Music', 120, 4.1);
INSERT INTO Music (Id, Title, Duration, Rate) VALUES (Sec_Music.nextval, 'Epic Score', 180, 4.9);
INSERT INTO Music (Id, Title, Duration, Rate) VALUES (Sec_Music.nextval, 'Mystery Theme', 60, 4.3);
INSERT INTO Music (Id, Title, Duration, Rate) VALUES (Sec_Music.nextval, 'Western Music', 90, 3.8);
INSERT INTO Music (Id, Title, Duration, Rate) VALUES (Sec_Music.nextval, 'Horror Score', 120, 4.4);
INSERT INTO Music (Id, Title, Duration, Rate) VALUES (Sec_Music.nextval, 'Sci-fi Score', 150, 4.5);
INSERT INTO Music (Id, Title, Duration, Rate) VALUES (Sec_Music.nextval, 'Dramatic Music', 180, 4.2);
INSERT INTO Music (Id, Title, Duration, Rate) VALUES (Sec_Music.nextval, 'Romantic Theme', 90, 4.6);
INSERT INTO Music (Id, Title, Duration, Rate) VALUES (Sec_Music.nextval, 'Feel-good Tune', 120, 3.9);

----------------------------------------------------------------------
--          Music_Composer
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Music_Composer');
END;
/

INSERT INTO Music_Composer (Music_Id, Composer_Id) VALUES (1, 1);
INSERT INTO Music_Composer (Music_Id, Composer_Id) VALUES (2, 2);
INSERT INTO Music_Composer (Music_Id, Composer_Id) VALUES (3, 3);
INSERT INTO Music_Composer (Music_Id, Composer_Id) VALUES (3, 4);
INSERT INTO Music_Composer (Music_Id, Composer_Id) VALUES (4, 6);
INSERT INTO Music_Composer (Music_Id, Composer_Id) VALUES (5, 1);
INSERT INTO Music_Composer (Music_Id, Composer_Id) VALUES (6, 1);
INSERT INTO Music_Composer (Music_Id, Composer_Id) VALUES (7, 1);
INSERT INTO Music_Composer (Music_Id, Composer_Id) VALUES (3, 1);
INSERT INTO Music_Composer (Music_Id, Composer_Id) VALUES (2, 1);
INSERT INTO Music_Composer (Music_Id, Composer_Id) VALUES (8, 1);
INSERT INTO Music_Composer (Music_Id, Composer_Id) VALUES (9, 1);
INSERT INTO Music_Composer (Music_Id, Composer_Id) VALUES (10, 1);
INSERT INTO Music_Composer (Music_Id, Composer_Id) VALUES (11, 1);

----------------------------------------------------------------------
--          Multimedia
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Multimedia');
END;
/

----HERE

create sequence Sec_Multimedia maxvalue 9999999 increment by 1 nocycle;

insert into Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate)
values (Sec_Multimedia.nextval, 'The Godfather', 175, 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', to_date('1972-03-24', 'yyyy-mm-dd'), 4.2);

insert into Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate)
values (Sec_Multimedia.nextval, 'The Shawshank Redemption', 142, 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', to_date('1994-09-23', 'yyyy-mm-dd'), 4.3);

insert into Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate)
values (Sec_Multimedia.nextval, 'The Dark Knight', 152, 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', to_date('2008-07-18', 'yyyy-mm-dd'), 5.0);

insert into Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate)
values (Sec_Multimedia.nextval, 'Schindlers List', 195, 'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.', to_date('1993-02-04', 'yyyy-mm-dd'), 4.9);

insert into Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate)
values (Sec_Multimedia.nextval, 'Forrest Gump', 142, 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate and other historical events unfold through the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.', to_date('1994-07-06', 'yyyy-mm-dd'), 4.8);

insert into Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate)
values (Sec_Multimedia.nextval, 'Inception', 148, 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.', to_date('2010-07-16', 'yyyy-mm-dd'), 4.7);

insert into Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate)
values (Sec_Multimedia.nextval, 'The Lord of the Rings: The Fellowship of the Ring', 178, 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.', to_date('2001-12-19', 'yyyy-mm-dd'), 4.8);

INSERT INTO Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate, Sequel_Id)
VALUES (Sec_Multimedia.nextval, 'The Godfather: Part II', 200, 'The continuing saga of the Corleone crime family.', to_date('1974-12-12', 'yyyy-mm-dd'), 4.7, 1);

INSERT INTO Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate, Prequel_Id)
VALUES (Sec_Multimedia.nextval, 'The Dark Knight Rises', 165, 'Batman faces his toughest foe yet, Bane, who aims to destroy Gotham.', to_date('2012-07-20', 'yyyy-mm-dd'), 4.4, 3);

--
INSERT INTO Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate)
VALUES (Sec_Multimedia.nextval, 'Star Wars: Episode V - The Empire Strikes Back', 124, 'Luke Skywalker seeks out Jedi Master Yoda to continue his training and defeat the evil Empire.', to_date('1980-06-20', 'yyyy-mm-dd'), 4.7);

INSERT INTO Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate, Prequel_Id)
VALUES (Sec_Multimedia.nextval, 'Star Wars: Episode VI - Return of the Jedi', 131, 'Luke Skywalker and his friends lead the Rebel Alliance in a final showdown with the Empire.', to_date('1983-05-25', 'yyyy-mm-dd'), 4.3, 10);
--

INSERT INTO Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate)
VALUES (Sec_Multimedia.nextval, 'Rogue One: A Star Wars Story', 133, 'Jyns father is forcibly taken by the Galactic Empire to help them complete the Death Star. When she grows up, she joins a group of resistance fighters who aim to steal the Empires blueprints.', to_date('2016-12-16', 'yyyy-mm-dd'), 4.3);

INSERT INTO Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate)
VALUES (Sec_Multimedia.nextval, 'Solo: A Star Wars Story', 131, 'In a galaxy where hyperfuel is in high demand, Han Solo gets involved in a large-scale heist within the criminal underworld and meets individuals who change his life.', to_date('2018-05-12', 'yyyy-mm-dd'), 2.3);

--13
----------------------------------------------------------

INSERT INTO Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate, Sequel_Id, Prequel_Id)
VALUES (Sec_Multimedia.nextval, 'Breaking Bad', 600, 'A high school chemistry teacher turns to a life of crime to provide for his familys future.', to_date('2008-01-20', 'YYYY-MM-DD'), 4.5, null, null);

INSERT INTO Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate, Sequel_Id, Prequel_Id)
VALUES (Sec_Multimedia.nextval, 'Game of Thrones', 1000, 'Nine noble families fight for control over the lands of Westeros, while an ancient enemy returns after being dormant for millennia.', to_date('2011-04-17', 'YYYY-MM-DD'), 4.3, null, null);

INSERT INTO Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate, Sequel_Id, Prequel_Id)
VALUES (Sec_Multimedia.nextval, 'Stranger Things', 500, 'When a young boy disappears, his mother, a police chief and his friends must confront terrifying supernatural forces in order to get him back.', to_date('2016-07-15', 'YYYY-MM-DD'), 3.8, null, null);

INSERT INTO Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate, Sequel_Id, Prequel_Id)
VALUES (Sec_Multimedia.nextval, 'Friends', 2200, 'Follows the personal and professional lives of six twenty to thirty-something-year-old friends living in Manhattan.', to_date('1994-09-22', 'YYYY-MM-DD'), 4.9, null, null);

INSERT INTO Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate, Sequel_Id, Prequel_Id)
VALUES (Sec_Multimedia.nextval, 'The Office', 2200, 'A mockumentary on a group of typical office workers, where the workday consists of ego clashes, inappropriate behavior, and tedium.', to_date('2005-03-24', 'YYYY-MM-DD'), 4.9, null, null);

--
INSERT INTO Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate) 
VALUES (Sec_Multimedia.nextval, 'The Crown', 600, 'A drama series about the reign of Queen Elizabeth II.', to_date('04-11-2016','dd-mm-yyyy'), 4.4);

INSERT INTO Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate) 
VALUES (Sec_Multimedia.nextval, 'The Handmaid''s Tale', 600, 'A dystopian series based on the novel by Margaret Atwood.', to_date('26-04-2017','dd-mm-yyyy'), 4.6);

INSERT INTO Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate) 
VALUES (Sec_Multimedia.nextval, 'Black Mirror', 360, 'An anthology series exploring the dark side of technology.', to_date('04-12-2011','dd-mm-yyyy'), 4.3);

INSERT INTO Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate) 
VALUES (Sec_Multimedia.nextval, 'The Witcher', 480, 'A fantasy series based on the books by Andrzej Sapkowski.', to_date('20-12-2019','dd-mm-yyyy'), 4.7);
--

INSERT INTO Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate, Sequel_Id, Prequel_Id)
VALUES (Sec_Multimedia.nextval, 'Over the Garden Wall', 110, 'Two brothers find themselves lost in a mysterious land and try to find their way back home', TO_DATE('2014/11/3', 'yyyy/mm/dd'), 4.5, NULL, NULL);

INSERT INTO Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate, Sequel_Id, Prequel_Id)
VALUES (Sec_Multimedia.nextval, 'Samurai Champloo', 650, 'A rogue samurai, a broke waitress, and a wandering swordsman journey together across feudal Japan', TO_DATE('2004/05/20', 'yyyy/mm/dd'), 4.3, NULL, NULL);

INSERT INTO Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate, Sequel_Id, Prequel_Id)
VALUES (Sec_Multimedia.nextval, 'The Act of Killing', 159, 'A documentary in which former Indonesian death-squad leaders reenact their mass-killings in whichever cinematic genres they wish', TO_DATE('2012/07/26', 'yyyy/mm/dd'), 4.6, NULL, NULL);

INSERT INTO Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate, Sequel_Id, Prequel_Id)
VALUES (Sec_Multimedia.nextval, 'A Silent Voice', 130, 'A former school bully tries to make amends with a deaf girl he bullied in elementary school', TO_DATE('2016/09/17', 'yyyy/mm/dd'), 4.7, NULL, NULL);

INSERT INTO Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate, Sequel_Id, Prequel_Id)
VALUES (Sec_Multimedia.nextval, 'The Mandalorian', 1300, 'After the fall of the Galactic Empire, a lone gunfighter makes his way through the outer reaches of the lawless galaxy.', TO_DATE('2019/11/12', 'yyyy/mm/dd'), 4.7, NULL, NULL);

INSERT INTO Multimedia (Id, Title, Duration, Description, Premiere_Date, Rate, Sequel_Id, Prequel_Id)
VALUES (Sec_Multimedia.nextval, 'The Book of Boba Fett', 500, 'On the sands of Tatooine, bounty hunter Boba Fett and mercenary Fennec Shand navigate the Galaxys underworld and fight for Jabba the Hutts old territory.', TO_DATE('2021/11/12', 'yyyy/mm/dd'), 4.7, NULL, NULL);

--15
----------------------------------------------------------------------
--          Spin_Off
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Spin_Off');
END;
/

INSERT INTO Spin_Off (Original_Id, Spin_Off_Id) VALUES (10, 12);
INSERT INTO Spin_Off (Original_Id, Spin_Off_Id) VALUES (10, 13);
INSERT INTO Spin_Off (Original_Id, Spin_Off_Id) VALUES (10, 27);
INSERT INTO Spin_Off (Original_Id, Spin_Off_Id) VALUES (10, 28);
INSERT INTO Spin_Off (Original_Id, Spin_Off_Id) VALUES (11, 12);
INSERT INTO Spin_Off (Original_Id, Spin_Off_Id) VALUES (11, 13);
INSERT INTO Spin_Off (Original_Id, Spin_Off_Id) VALUES (11, 27);
INSERT INTO Spin_Off (Original_Id, Spin_Off_Id) VALUES (11, 28);

----------------------------------------------------------------------
--          Multimedia_Genre
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Multimedia_Genre');
END;
/

INSERT INTO Multimedia_Genre (Multimedia_Id, Genre_Id) VALUES (1, 4);
INSERT INTO Multimedia_Genre (Multimedia_Id, Genre_Id) VALUES (1, 1);
INSERT INTO Multimedia_Genre (Multimedia_Id, Genre_Id) VALUES (2, 3);
INSERT INTO Multimedia_Genre (Multimedia_Id, Genre_Id) VALUES (2, 4);
INSERT INTO Multimedia_Genre (Multimedia_Id, Genre_Id) VALUES (3, 6);
INSERT INTO Multimedia_Genre (Multimedia_Id, Genre_Id) VALUES (4, 1);
INSERT INTO Multimedia_Genre (Multimedia_Id, Genre_Id) VALUES (5, 1);
INSERT INTO Multimedia_Genre (Multimedia_Id, Genre_Id) VALUES (6, 5);
INSERT INTO Multimedia_Genre (Multimedia_Id, Genre_Id) VALUES (7, 6);
INSERT INTO Multimedia_Genre (Multimedia_Id, Genre_Id) VALUES (7, 9);
INSERT INTO Multimedia_Genre (Multimedia_Id, Genre_Id) VALUES (8, 10);
INSERT INTO Multimedia_Genre (Multimedia_Id, Genre_Id) VALUES (8, 2);
INSERT INTO Multimedia_Genre (Multimedia_Id, Genre_Id) VALUES (9, 6);
INSERT INTO Multimedia_Genre (Multimedia_Id, Genre_Id) VALUES (9, 8);

----------------------------------------------------------------------
--          Multimedia_Actor
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Multimedia_Actor');
END;
/

INSERT INTO Multimedia_Actor (Multimedia_Id, Actor_Id) VALUES (1, 4);
INSERT INTO Multimedia_Actor (Multimedia_Id, Actor_Id) VALUES (1, 1);
INSERT INTO Multimedia_Actor (Multimedia_Id, Actor_Id) VALUES (2, 3);
INSERT INTO Multimedia_Actor (Multimedia_Id, Actor_Id) VALUES (2, 4);
INSERT INTO Multimedia_Actor (Multimedia_Id, Actor_Id) VALUES (3, 6);
INSERT INTO Multimedia_Actor (Multimedia_Id, Actor_Id) VALUES (4, 1);
INSERT INTO Multimedia_Actor (Multimedia_Id, Actor_Id) VALUES (5, 1);
INSERT INTO Multimedia_Actor (Multimedia_Id, Actor_Id) VALUES (6, 5);
INSERT INTO Multimedia_Actor (Multimedia_Id, Actor_Id) VALUES (7, 6);
INSERT INTO Multimedia_Actor (Multimedia_Id, Actor_Id) VALUES (7, 9);
INSERT INTO Multimedia_Actor (Multimedia_Id, Actor_Id) VALUES (8, 10);
INSERT INTO Multimedia_Actor (Multimedia_Id, Actor_Id) VALUES (8, 2);
INSERT INTO Multimedia_Actor (Multimedia_Id, Actor_Id) VALUES (9, 6);
INSERT INTO Multimedia_Actor (Multimedia_Id, Actor_Id) VALUES (9, 8);

----------------------------------------------------------------------
--          Multimedia_Character
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Multimedia_Character');
END;
/

INSERT INTO Multimedia_Character (Multimedia_Id, Character_Id) VALUES (1, 4);
INSERT INTO Multimedia_Character (Multimedia_Id, Character_Id) VALUES (1, 1);
INSERT INTO Multimedia_Character (Multimedia_Id, Character_Id) VALUES (2, 3);
INSERT INTO Multimedia_Character (Multimedia_Id, Character_Id) VALUES (2, 4);
INSERT INTO Multimedia_Character (Multimedia_Id, Character_Id) VALUES (3, 6);
INSERT INTO Multimedia_Character (Multimedia_Id, Character_Id) VALUES (4, 1);
INSERT INTO Multimedia_Character (Multimedia_Id, Character_Id) VALUES (5, 1);
INSERT INTO Multimedia_Character (Multimedia_Id, Character_Id) VALUES (6, 5);
INSERT INTO Multimedia_Character (Multimedia_Id, Character_Id) VALUES (7, 6);
INSERT INTO Multimedia_Character (Multimedia_Id, Character_Id) VALUES (7, 9);
INSERT INTO Multimedia_Character (Multimedia_Id, Character_Id) VALUES (8, 10);
INSERT INTO Multimedia_Character (Multimedia_Id, Character_Id) VALUES (8, 2);
INSERT INTO Multimedia_Character (Multimedia_Id, Character_Id) VALUES (9, 6);
INSERT INTO Multimedia_Character (Multimedia_Id, Character_Id) VALUES (9, 8);

----------------------------------------------------------------------
--          Multimedia_Producer
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Multimedia_Producer');
END;
/

INSERT INTO Multimedia_Producer (Multimedia_Id, Producer_Id) VALUES (1, 4);
INSERT INTO Multimedia_Producer (Multimedia_Id, Producer_Id) VALUES (1, 1);
INSERT INTO Multimedia_Producer (Multimedia_Id, Producer_Id) VALUES (2, 3);
INSERT INTO Multimedia_Producer (Multimedia_Id, Producer_Id) VALUES (2, 4);
INSERT INTO Multimedia_Producer (Multimedia_Id, Producer_Id) VALUES (3, 6);
INSERT INTO Multimedia_Producer (Multimedia_Id, Producer_Id) VALUES (4, 1);
INSERT INTO Multimedia_Producer (Multimedia_Id, Producer_Id) VALUES (5, 1);
INSERT INTO Multimedia_Producer (Multimedia_Id, Producer_Id) VALUES (6, 5);
INSERT INTO Multimedia_Producer (Multimedia_Id, Producer_Id) VALUES (7, 6);
INSERT INTO Multimedia_Producer (Multimedia_Id, Producer_Id) VALUES (7, 9);
INSERT INTO Multimedia_Producer (Multimedia_Id, Producer_Id) VALUES (8, 10);
INSERT INTO Multimedia_Producer (Multimedia_Id, Producer_Id) VALUES (8, 2);
INSERT INTO Multimedia_Producer (Multimedia_Id, Producer_Id) VALUES (9, 6);
INSERT INTO Multimedia_Producer (Multimedia_Id, Producer_Id) VALUES (9, 8);

----------------------------------------------------------------------
--          Multimedia_Music
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Multimedia_Music');
END;
/

INSERT INTO Multimedia_Music (Multimedia_Id, Music_Id) VALUES (1, 4);
INSERT INTO Multimedia_Music (Multimedia_Id, Music_Id) VALUES (1, 1);
INSERT INTO Multimedia_Music (Multimedia_Id, Music_Id) VALUES (2, 3);
INSERT INTO Multimedia_Music (Multimedia_Id, Music_Id) VALUES (2, 4);
INSERT INTO Multimedia_Music (Multimedia_Id, Music_Id) VALUES (3, 6);
INSERT INTO Multimedia_Music (Multimedia_Id, Music_Id) VALUES (4, 1);
INSERT INTO Multimedia_Music (Multimedia_Id, Music_Id) VALUES (5, 1);
INSERT INTO Multimedia_Music (Multimedia_Id, Music_Id) VALUES (6, 5);
INSERT INTO Multimedia_Music (Multimedia_Id, Music_Id) VALUES (7, 6);
INSERT INTO Multimedia_Music (Multimedia_Id, Music_Id) VALUES (7, 9);
INSERT INTO Multimedia_Music (Multimedia_Id, Music_Id) VALUES (8, 10);
INSERT INTO Multimedia_Music (Multimedia_Id, Music_Id) VALUES (8, 2);
INSERT INTO Multimedia_Music (Multimedia_Id, Music_Id) VALUES (9, 6);
INSERT INTO Multimedia_Music (Multimedia_Id, Music_Id) VALUES (9, 8);

----------------------------------------------------------------------
--          Movie
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Movie');
END;
/

INSERT INTO Movie (Id, Age_Restriction_Id) VALUES (1, 1);
INSERT INTO Movie (Id, Age_Restriction_Id) VALUES (2, 2);
INSERT INTO Movie (Id, Age_Restriction_Id) VALUES (3, 3);
INSERT INTO Movie (Id, Age_Restriction_Id) VALUES (4, 4);
INSERT INTO Movie (Id, Age_Restriction_Id) VALUES (5, 5);
INSERT INTO Movie (Id, Age_Restriction_Id) VALUES (6, 6);
INSERT INTO Movie (Id, Age_Restriction_Id) VALUES (7, 7);
INSERT INTO Movie (Id, Age_Restriction_Id) VALUES (8, 8);
INSERT INTO Movie (Id, Age_Restriction_Id) VALUES (9, 9);
INSERT INTO Movie (Id, Age_Restriction_Id) VALUES (10, 10);
INSERT INTO Movie (Id, Age_Restriction_Id) VALUES (11, 10);
INSERT INTO Movie (Id, Age_Restriction_Id) VALUES (12, 10);
INSERT INTO Movie (Id, Age_Restriction_Id) VALUES (13, 1);

----------------------------------------------------------------------
--          Movie_Director
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Movie_Director');
END;
/

INSERT INTO Movie_Director (Movie_Id, Director_Id) VALUES (1, 1);
INSERT INTO Movie_Director (Movie_Id, Director_Id) VALUES (2, 2);
INSERT INTO Movie_Director (Movie_Id, Director_Id) VALUES (3, 3);
INSERT INTO Movie_Director (Movie_Id, Director_Id) VALUES (4, 4);
INSERT INTO Movie_Director (Movie_Id, Director_Id) VALUES (5, 5);
INSERT INTO Movie_Director (Movie_Id, Director_Id) VALUES (6, 6);
INSERT INTO Movie_Director (Movie_Id, Director_Id) VALUES (7, 7);
INSERT INTO Movie_Director (Movie_Id, Director_Id) VALUES (8, 8);
INSERT INTO Movie_Director (Movie_Id, Director_Id) VALUES (9, 9);
INSERT INTO Movie_Director (Movie_Id, Director_Id) VALUES (10, 10);
INSERT INTO Movie_Director (Movie_Id, Director_Id) VALUES (11, 10);
INSERT INTO Movie_Director (Movie_Id, Director_Id) VALUES (1, 10);

----------------------------------------------------------------------
--          Movie_Writer
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Movie_Writer');
END;
/

INSERT INTO Movie_Writer (Movie_Id, Writer_Id) VALUES (1, 1);
INSERT INTO Movie_Writer (Movie_Id, Writer_Id) VALUES (2, 2);
INSERT INTO Movie_Writer (Movie_Id, Writer_Id) VALUES (3, 3);
INSERT INTO Movie_Writer (Movie_Id, Writer_Id) VALUES (4, 4);
INSERT INTO Movie_Writer (Movie_Id, Writer_Id) VALUES (5, 5);
INSERT INTO Movie_Writer (Movie_Id, Writer_Id) VALUES (6, 6);
INSERT INTO Movie_Writer (Movie_Id, Writer_Id) VALUES (7, 7);
INSERT INTO Movie_Writer (Movie_Id, Writer_Id) VALUES (8, 8);
INSERT INTO Movie_Writer (Movie_Id, Writer_Id) VALUES (9, 9);
INSERT INTO Movie_Writer (Movie_Id, Writer_Id) VALUES (10, 10);
INSERT INTO Movie_Writer (Movie_Id, Writer_Id) VALUES (11, 10);
INSERT INTO Movie_Writer (Movie_Id, Writer_Id) VALUES (1, 10);

----------------------------------------------------------------------
--          Movie_Language
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Movie_Language');
END;
/

INSERT INTO Movie_Language (Movie_Id, Language_Id) VALUES (1, 1);
INSERT INTO Movie_Language (Movie_Id, Language_Id) VALUES (2, 2);
INSERT INTO Movie_Language (Movie_Id, Language_Id) VALUES (3, 3);
INSERT INTO Movie_Language (Movie_Id, Language_Id) VALUES (4, 4);
INSERT INTO Movie_Language (Movie_Id, Language_Id) VALUES (5, 5);
INSERT INTO Movie_Language (Movie_Id, Language_Id) VALUES (6, 6);
INSERT INTO Movie_Language (Movie_Id, Language_Id) VALUES (7, 7);
INSERT INTO Movie_Language (Movie_Id, Language_Id) VALUES (8, 8);
INSERT INTO Movie_Language (Movie_Id, Language_Id) VALUES (9, 9);
INSERT INTO Movie_Language (Movie_Id, Language_Id) VALUES (10, 1);
INSERT INTO Movie_Language (Movie_Id, Language_Id) VALUES (10, 10);
INSERT INTO Movie_Language (Movie_Id, Language_Id) VALUES (1, 10);

----------------------------------------------------------------------
--          Movie_Subtitle
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Movie_Subtitle');
END;
/

INSERT INTO Movie_Subtitle (Movie_Id, Subtitle_Id) VALUES (1, 1);
INSERT INTO Movie_Subtitle (Movie_Id, Subtitle_Id) VALUES (2, 2);
INSERT INTO Movie_Subtitle (Movie_Id, Subtitle_Id) VALUES (3, 3);
INSERT INTO Movie_Subtitle (Movie_Id, Subtitle_Id) VALUES (4, 4);
INSERT INTO Movie_Subtitle (Movie_Id, Subtitle_Id) VALUES (5, 5);
INSERT INTO Movie_Subtitle (Movie_Id, Subtitle_Id) VALUES (6, 6);
INSERT INTO Movie_Subtitle (Movie_Id, Subtitle_Id) VALUES (7, 7);
INSERT INTO Movie_Subtitle (Movie_Id, Subtitle_Id) VALUES (8, 8);
INSERT INTO Movie_Subtitle (Movie_Id, Subtitle_Id) VALUES (9, 9);
INSERT INTO Movie_Subtitle (Movie_Id, Subtitle_Id) VALUES (10, 1);
INSERT INTO Movie_Subtitle (Movie_Id, Subtitle_Id) VALUES (10, 10);
INSERT INTO Movie_Subtitle (Movie_Id, Subtitle_Id) VALUES (1, 10);

----------------------------------------------------------------------
--          Movie_History
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Movie_History');
END;
/
--25 min and 20 sec.

INSERT INTO Movie_History (User_Id, Movie_Id, Stop_Time) VALUES (1, 1, interval '00:25:20' hour to second);
INSERT INTO Movie_History (User_Id, Movie_Id, Stop_Time) VALUES (1, 2, interval '00:25:20' hour to second);
INSERT INTO Movie_History (User_Id, Movie_Id, Stop_Time) VALUES (1, 3, interval '00:25:20' hour to second);
INSERT INTO Movie_History (User_Id, Movie_Id, Stop_Time) VALUES (1, 4, interval '00:25:20' hour to second);
INSERT INTO Movie_History (User_Id, Movie_Id, Stop_Time) VALUES (1, 5, interval '00:25:20' hour to second);
INSERT INTO Movie_History (User_Id, Movie_Id, Stop_Time) VALUES (1, 6, interval '00:25:20' hour to second);
INSERT INTO Movie_History (User_Id, Movie_Id, Stop_Time) VALUES (2, 3, interval '00:25:20' hour to second);
INSERT INTO Movie_History (User_Id, Movie_Id, Stop_Time) VALUES (3, 4, interval '01:25:20' hour to second);
INSERT INTO Movie_History (User_Id, Movie_Id, Stop_Time) VALUES (4, 5, interval '00:29:20' hour to second);
INSERT INTO Movie_History (User_Id, Movie_Id, Stop_Time) VALUES (5, 6, interval '00:20:20' hour to second);
INSERT INTO Movie_History (User_Id, Movie_Id, Stop_Time) VALUES (6, 11, interval '00:15:20' hour to second);
INSERT INTO Movie_History (User_Id, Movie_Id, Stop_Time) VALUES (7, 10, interval '00:05:20' hour to second);

----------------------------------------------------------------------
--          Serie
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Serie');
END;
/

INSERT INTO Serie (Id, Seasons) VALUES (14, 6);
INSERT INTO Serie (Id, Seasons) VALUES (15, 8);
INSERT INTO Serie (Id, Seasons) VALUES (16, 4);
INSERT INTO Serie (Id, Seasons) VALUES (17, 7);
INSERT INTO Serie (Id, Seasons) VALUES (18, 2);
INSERT INTO Serie (Id, Seasons) VALUES (19, 5);
INSERT INTO Serie (Id, Seasons) VALUES (20, 2);
INSERT INTO Serie (Id, Seasons) VALUES (21, 3);
INSERT INTO Serie (Id, Seasons) VALUES (22, 5);
INSERT INTO Serie (Id, Seasons) VALUES (23, 2);
INSERT INTO Serie (Id, Seasons) VALUES (24, 6);
INSERT INTO Serie (Id, Seasons) VALUES (25, 3);
INSERT INTO Serie (Id, Seasons) VALUES (26, 5);
INSERT INTO Serie (Id, Seasons) VALUES (27, 2);
INSERT INTO Serie (Id, Seasons) VALUES (28, 1);

----------------------------------------------------------------------
--          Season
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Season');
END;
/

create sequence Sec_Season maxvalue 9999999 increment by 1 nocycle;

INSERT INTO Season (Id, Serie_Id, Premiere_Date, Name, Chapters, Description) 
    VALUES (Sec_Season.nextval, 14, to_date('2015/11/12', 'yyyy/mm/dd'), '', 10, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');
INSERT INTO Season (Id, Serie_Id, Premiere_Date, Name, Chapters, Description) 
    VALUES (Sec_Season.nextval, 14, to_date('2016/11/12', 'yyyy/mm/dd'), '', 10, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');
INSERT INTO Season (Id, Serie_Id, Premiere_Date, Name, Chapters, Description) 
    VALUES (Sec_Season.nextval, 14, to_date('2017/11/12', 'yyyy/mm/dd'), '', 10, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');
INSERT INTO Season (Id, Serie_Id, Premiere_Date, Name, Chapters, Description) 
    VALUES (Sec_Season.nextval, 14, to_date('2018/11/12', 'yyyy/mm/dd'), '', 10, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');
INSERT INTO Season (Id, Serie_Id, Premiere_Date, Name, Chapters, Description) 
    VALUES (Sec_Season.nextval, 14, to_date('2019/11/12', 'yyyy/mm/dd'), '', 10, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');
INSERT INTO Season (Id, Serie_Id, Premiere_Date, Name, Chapters, Description) 
    VALUES (Sec_Season.nextval, 14, to_date('2021/11/12', 'yyyy/mm/dd'), '', 10, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');

INSERT INTO Season (Id, Serie_Id, Premiere_Date, Name, Chapters, Description) 
    VALUES (Sec_Season.nextval, 16, to_date('2015/11/12', 'yyyy/mm/dd'), '', 10, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');
INSERT INTO Season (Id, Serie_Id, Premiere_Date, Name, Chapters, Description) 
    VALUES (Sec_Season.nextval, 16, to_date('2016/11/12', 'yyyy/mm/dd'), '', 10, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');
INSERT INTO Season (Id, Serie_Id, Premiere_Date, Name, Chapters, Description) 
    VALUES (Sec_Season.nextval, 16, to_date('2017/11/12', 'yyyy/mm/dd'), '', 10, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');
INSERT INTO Season (Id, Serie_Id, Premiere_Date, Name, Chapters, Description) 
    VALUES (Sec_Season.nextval, 16, to_date('2018/11/12', 'yyyy/mm/dd'), '', 10, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');


----------------------------------------------------------------------
--          Chapter
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Chapter');
END;
/

create sequence Sec_Chapter maxvalue 9999999 increment by 1 nocycle;

INSERT INTO Chapter (Id, Serie_Id, Season_Id, Chapter_Number, Duration, Name, Age_Restriction_Id, Description) 
    VALUES (Sec_Chapter.nextval, 14, 1, 1, 30, 'Chapter 1', 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');
INSERT INTO Chapter (Id, Serie_Id, Season_Id, Chapter_Number, Duration, Name, Age_Restriction_Id, Description) 
    VALUES (Sec_Chapter.nextval, 14, 1, 2, 30, 'Chapter 2', 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');
INSERT INTO Chapter (Id, Serie_Id, Season_Id, Chapter_Number, Duration, Name, Age_Restriction_Id, Description) 
    VALUES (Sec_Chapter.nextval, 14, 1, 3, 30, 'Chapter 3', 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');
INSERT INTO Chapter (Id, Serie_Id, Season_Id, Chapter_Number, Duration, Name, Age_Restriction_Id, Description) 
    VALUES (Sec_Chapter.nextval, 14, 1, 4, 30, 'Chapter 4', 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');
INSERT INTO Chapter (Id, Serie_Id, Season_Id, Chapter_Number, Duration, Name, Age_Restriction_Id, Description) 
    VALUES (Sec_Chapter.nextval, 14, 1, 5, 30, 'Chapter 5', 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');
INSERT INTO Chapter (Id, Serie_Id, Season_Id, Chapter_Number, Duration, Name, Age_Restriction_Id, Description) 
    VALUES (Sec_Chapter.nextval, 14, 1, 6, 30, 'Chapter 6', 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');
INSERT INTO Chapter (Id, Serie_Id, Season_Id, Chapter_Number, Duration, Name, Age_Restriction_Id, Description) 
    VALUES (Sec_Chapter.nextval, 14, 1, 7, 30, 'Chapter 7', 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');
INSERT INTO Chapter (Id, Serie_Id, Season_Id, Chapter_Number, Duration, Name, Age_Restriction_Id, Description) 
    VALUES (Sec_Chapter.nextval, 14, 1, 8, 30, 'Chapter 8', 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');
INSERT INTO Chapter (Id, Serie_Id, Season_Id, Chapter_Number, Duration, Name, Age_Restriction_Id, Description) 
    VALUES (Sec_Chapter.nextval, 14, 1, 9, 30, 'Chapter 9', 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');
INSERT INTO Chapter (Id, Serie_Id, Season_Id, Chapter_Number, Duration, Name, Age_Restriction_Id, Description) 
    VALUES (Sec_Chapter.nextval, 14, 1, 10, 30, 'Chapter 10', 4, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');
INSERT INTO Chapter (Id, Serie_Id, Season_Id, Chapter_Number, Duration, Name, Age_Restriction_Id, Description) 
    VALUES (Sec_Chapter.nextval, 14, 2, 1, 30, 'Chapter 1', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');

INSERT INTO Chapter (Id, Serie_Id, Season_Id, Chapter_Number, Duration, Name, Age_Restriction_Id, Description) 
    VALUES (Sec_Chapter.nextval, 16, 1, 1, 30, 'Chapter 1', 6, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');
INSERT INTO Chapter (Id, Serie_Id, Season_Id, Chapter_Number, Duration, Name, Age_Restriction_Id, Description) 
    VALUES (Sec_Chapter.nextval, 16, 1, 2, 30, 'Chapter 2', 6, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');
INSERT INTO Chapter (Id, Serie_Id, Season_Id, Chapter_Number, Duration, Name, Age_Restriction_Id, Description) 
    VALUES (Sec_Chapter.nextval, 16, 1, 3, 30, 'Chapter 3', 6, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');
INSERT INTO Chapter (Id, Serie_Id, Season_Id, Chapter_Number, Duration, Name, Age_Restriction_Id, Description) 
    VALUES (Sec_Chapter.nextval, 16, 1, 4, 30, 'Chapter 4', 6, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');
INSERT INTO Chapter (Id, Serie_Id, Season_Id, Chapter_Number, Duration, Name, Age_Restriction_Id, Description) 
    VALUES (Sec_Chapter.nextval, 16, 1, 5, 30, 'Chapter 5', 6, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum soluta quisquam suscipit accusamus voluptatibus doloribus? Vero, excepturi molestias distinctio perspiciatis officia natus reiciendis id, aspernatur eligendi, aliquam hic odit.');

----------------------------------------------------------------------
--          Chapter_Director
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Chapter_Director');
END;
/

INSERT INTO Chapter_Director (Chapter_Id, Director_Id) VALUES (1, 1);
INSERT INTO Chapter_Director (Chapter_Id, Director_Id) VALUES (2, 1);
INSERT INTO Chapter_Director (Chapter_Id, Director_Id) VALUES (3, 1);
INSERT INTO Chapter_Director (Chapter_Id, Director_Id) VALUES (4, 1);
INSERT INTO Chapter_Director (Chapter_Id, Director_Id) VALUES (5, 5);
INSERT INTO Chapter_Director (Chapter_Id, Director_Id) VALUES (6, 6);
INSERT INTO Chapter_Director (Chapter_Id, Director_Id) VALUES (7, 7);
INSERT INTO Chapter_Director (Chapter_Id, Director_Id) VALUES (8, 8);
INSERT INTO Chapter_Director (Chapter_Id, Director_Id) VALUES (9, 9);
INSERT INTO Chapter_Director (Chapter_Id, Director_Id) VALUES (1, 7);
INSERT INTO Chapter_Director (Chapter_Id, Director_Id) VALUES (1, 8);
INSERT INTO Chapter_Director (Chapter_Id, Director_Id) VALUES (1, 9);

----------------------------------------------------------------------
--          Chapter_Writer
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Chapter_Writer');
END;
/

INSERT INTO Chapter_Writer (Chapter_Id, Writer_Id) VALUES (1, 1);
INSERT INTO Chapter_Writer (Chapter_Id, Writer_Id) VALUES (2, 1);
INSERT INTO Chapter_Writer (Chapter_Id, Writer_Id) VALUES (3, 1);
INSERT INTO Chapter_Writer (Chapter_Id, Writer_Id) VALUES (4, 1);
INSERT INTO Chapter_Writer (Chapter_Id, Writer_Id) VALUES (5, 5);
INSERT INTO Chapter_Writer (Chapter_Id, Writer_Id) VALUES (6, 6);
INSERT INTO Chapter_Writer (Chapter_Id, Writer_Id) VALUES (7, 7);
INSERT INTO Chapter_Writer (Chapter_Id, Writer_Id) VALUES (8, 8);
INSERT INTO Chapter_Writer (Chapter_Id, Writer_Id) VALUES (9, 9);
INSERT INTO Chapter_Writer (Chapter_Id, Writer_Id) VALUES (1, 7);
INSERT INTO Chapter_Writer (Chapter_Id, Writer_Id) VALUES (1, 8);
INSERT INTO Chapter_Writer (Chapter_Id, Writer_Id) VALUES (1, 9);

----------------------------------------------------------------------
--          Chapter_Language
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Chapter_Language');
END;
/

INSERT INTO Chapter_Language (Chapter_Id, Language_Id) VALUES (1, 1);
INSERT INTO Chapter_Language (Chapter_Id, Language_Id) VALUES (2, 1);
INSERT INTO Chapter_Language (Chapter_Id, Language_Id) VALUES (3, 1);
INSERT INTO Chapter_Language (Chapter_Id, Language_Id) VALUES (4, 1);
INSERT INTO Chapter_Language (Chapter_Id, Language_Id) VALUES (5, 5);
INSERT INTO Chapter_Language (Chapter_Id, Language_Id) VALUES (6, 6);
INSERT INTO Chapter_Language (Chapter_Id, Language_Id) VALUES (7, 7);
INSERT INTO Chapter_Language (Chapter_Id, Language_Id) VALUES (8, 8);
INSERT INTO Chapter_Language (Chapter_Id, Language_Id) VALUES (9, 9);
INSERT INTO Chapter_Language (Chapter_Id, Language_Id) VALUES (1, 7);
INSERT INTO Chapter_Language (Chapter_Id, Language_Id) VALUES (1, 8);
INSERT INTO Chapter_Language (Chapter_Id, Language_Id) VALUES (1, 9);

----------------------------------------------------------------------
--          Chapter_Subtitle
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Chapter_Subtitle');
END;
/

INSERT INTO Chapter_Subtitle (Chapter_Id, Subtitle_Id) VALUES (1, 1);
INSERT INTO Chapter_Subtitle (Chapter_Id, Subtitle_Id) VALUES (2, 1);
INSERT INTO Chapter_Subtitle (Chapter_Id, Subtitle_Id) VALUES (3, 1);
INSERT INTO Chapter_Subtitle (Chapter_Id, Subtitle_Id) VALUES (4, 1);
INSERT INTO Chapter_Subtitle (Chapter_Id, Subtitle_Id) VALUES (5, 5);
INSERT INTO Chapter_Subtitle (Chapter_Id, Subtitle_Id) VALUES (6, 6);
INSERT INTO Chapter_Subtitle (Chapter_Id, Subtitle_Id) VALUES (7, 7);
INSERT INTO Chapter_Subtitle (Chapter_Id, Subtitle_Id) VALUES (8, 8);
INSERT INTO Chapter_Subtitle (Chapter_Id, Subtitle_Id) VALUES (9, 9);
INSERT INTO Chapter_Subtitle (Chapter_Id, Subtitle_Id) VALUES (1, 7);
INSERT INTO Chapter_Subtitle (Chapter_Id, Subtitle_Id) VALUES (1, 8);
INSERT INTO Chapter_Subtitle (Chapter_Id, Subtitle_Id) VALUES (1, 9);

----------------------------------------------------------------------
--          Chapter_History
----------------------------------------------------------------------
BEGIN
  DBMS_OUTPUT.PUT_LINE('Chapter_History');
END;
/
--5 min and 20 sec.

INSERT INTO Chapter_History (User_Id, Chapter_Id, Stop_Time) VALUES (1, 1, interval '00:05:20' hour to second);
INSERT INTO Chapter_History (User_Id, Chapter_Id, Stop_Time) VALUES (1, 2, interval '00:05:20' hour to second);
INSERT INTO Chapter_History (User_Id, Chapter_Id, Stop_Time) VALUES (1, 3, interval '00:05:20' hour to second);
INSERT INTO Chapter_History (User_Id, Chapter_Id, Stop_Time) VALUES (1, 4, interval '00:05:20' hour to second);
INSERT INTO Chapter_History (User_Id, Chapter_Id, Stop_Time) VALUES (1, 5, interval '00:05:20' hour to second);
INSERT INTO Chapter_History (User_Id, Chapter_Id, Stop_Time) VALUES (1, 6, interval '00:05:20' hour to second);
INSERT INTO Chapter_History (User_Id, Chapter_Id, Stop_Time) VALUES (2, 3, interval '00:05:20' hour to second);
INSERT INTO Chapter_History (User_Id, Chapter_Id, Stop_Time) VALUES (3, 4, interval '01:05:20' hour to second);
INSERT INTO Chapter_History (User_Id, Chapter_Id, Stop_Time) VALUES (4, 5, interval '00:09:20' hour to second);
INSERT INTO Chapter_History (User_Id, Chapter_Id, Stop_Time) VALUES (5, 6, interval '00:00:20' hour to second);
INSERT INTO Chapter_History (User_Id, Chapter_Id, Stop_Time) VALUES (6, 11, interval '00:01:20' hour to second);
INSERT INTO Chapter_History (User_Id, Chapter_Id, Stop_Time) VALUES (7, 10, interval '00:05:20' hour to second);


