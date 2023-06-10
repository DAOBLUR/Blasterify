create table Subscription (
    Id int not null primary key,
    Name varchar(20) not null,
    Price number(5,2) not null,
    Features clob not null
);

create table Country (
    Id varchar(4) not null primary key,
    Name varchar(30) not null
);
--ejecutado
create table User_Client (
    Id int not null primary key,
    Name varchar(40),
    Card_Number varchar(16),
    Status number(1) not null,
    Email varchar(35) not null unique,
    Password varchar(50),
    Subscription_Date date not null,
    Id_Subscription int not null,
    Id_Country varchar(4) not null,
    foreign key (Id_Subscription) references Subscription (Id),
    foreign key (Id_Country) references Country (Id)
);

create table Genre (
    Id int not null primary key,
    Name varchar(20)
);

create table Director (
    Id int not null primary key,
    Name varchar(40)
);

create table Writer (
    Id int not null primary key,
    Name varchar(40)
);

create table Actor (
    Id int not null primary key,
    Name varchar(40)
);

create table Character (
    Id int not null primary key,
    Name varchar(40)
);

create table Character_Actor (
    Character_Id int not null,
    Actor_Id int not null,
    foreign key (Character_Id) references Character (Id),
    foreign key (Actor_Id) references Actor (Id),
    primary key (Character_Id, Actor_Id)
);

create table Producer (
    Id int not null primary key,
    Name varchar(40)
);

create table Composer (
    Id int not null primary key,
    Name varchar(40)
);

create table Language (
    Id int not null primary key,
    Name varchar(20)
);

create table Subtitle (
    Id int not null primary key,
    Name_Language varchar(20)
);

create table Age_Restriction (
    Id int not null primary key,
    Age number(2) not null,
    Description clob
);

create table Music (
    Id int not null primary key,
    Title varchar(60) not null,
    Duration number(3) not null,
    Rate number(3,2) not null
);

create table Music_Composer (
    Music_Id int not null,
    Composer_Id int not null,
    foreign key (Music_Id) references Music (Id),
    foreign key (Composer_Id) references Composer (Id),
    primary key (Music_Id, Composer_Id)
);

create table Multimedia (
    Id int not null primary key,
    Title varchar(60) not null,
    Duration number(5) not null,
    Description clob not null,
    Premiere_Date date not null,
    Rate number(3,2) not null,
    Sequel_Id int,
    Prequel_Id int,
    foreign key (Sequel_Id) references Multimedia (Id),
    foreign key (Prequel_Id) references Multimedia (Id)
);

create table Spin_Off (
    Spin_Off_Id int not null,
    Original_Id int not null,
    foreign key (Spin_Off_Id) references Multimedia (Id),
    foreign key (Original_Id) references Multimedia (Id),
    primary key (Spin_Off_Id, Original_Id)
);

create table Multimedia_Genre (
    Multimedia_Id int not null,
    Genre_Id int not null,
    foreign key (Multimedia_Id) references Multimedia (Id),
    foreign key (Genre_Id) references Genre (Id),
    primary key (Multimedia_Id, Genre_Id)
);

create table Multimedia_Actor (
    Multimedia_Id int not null,
    Actor_Id int not null,
    foreign key (Multimedia_Id) references Multimedia (Id),
    foreign key (Actor_Id) references Actor (Id),
    primary key (Multimedia_Id, Actor_Id)
);

create table Multimedia_Character (
    Multimedia_Id int not null,
    Character_Id int not null,
    foreign key (Multimedia_Id) references Multimedia (Id),
    foreign key (Character_Id) references Character (Id),
    primary key (Multimedia_Id, Character_Id)
);

create table Multimedia_Producer (
    Multimedia_Id int not null,
    Producer_Id int not null,
    foreign key (Multimedia_Id) references Multimedia (Id),
    foreign key (Producer_Id) references Producer (Id),
    primary key (Multimedia_Id, Producer_Id)
);

create table Multimedia_Music (
    Multimedia_Id int not null,
    Music_Id int not null,
    foreign key (Multimedia_Id) references Multimedia (Id),
    foreign key (Music_Id) references Music (Id),
    primary key (Multimedia_Id, Music_Id)
);

---------------------------------------------------------------
--                  MOVIES
---------------------------------------------------------------

create table Movie (
    Id int not null primary key,
    Age_Restriction_Id int not null,
    foreign key (Id) references Multimedia(Id),
    foreign key (Age_Restriction_Id) references Age_Restriction(Id)
);

create table Movie_Director (
    Movie_Id int not null,
    Director_Id int not null,
    foreign key (Movie_Id) references Movie (Id),
    foreign key (Director_Id) references Director (Id),
    primary key (Movie_Id, Director_Id)
);

create table Movie_Writer (
    Movie_Id int not null,
    Writer_Id int not null,
    foreign key (Movie_Id) references Movie (Id),
    foreign key (Writer_Id) references Writer (Id),
    primary key (Movie_Id, Writer_Id)
);

create table Movie_Language (
    Movie_Id int not null,
    Language_Id int not null,
    foreign key (Movie_Id) references Movie (Id),
    foreign key (Language_Id) references Language (Id),
    primary key (Movie_Id, Language_Id)
);

create table Movie_Subtitle (
    Movie_Id int not null,
    Subtitle_Id int not null,
    foreign key (Movie_Id) references Movie (Id),
    foreign key (Subtitle_Id) references Subtitle (Id),
    primary key (Movie_Id, Subtitle_Id)
);

create table Movie_History (
    User_Id int not null,
    Movie_Id int not null,
    Stop_Time interval day to second not null,
    foreign key (User_Id) references User_Client (Id),
    foreign key (Movie_Id) references Movie (Id),
    primary key (User_Id, Movie_Id)
);

---------------------------------------------------------------
--                  SERIES
---------------------------------------------------------------

create table Serie (
    Id int not null primary key,
    Seasons number(3) not null,
    foreign key (Id) references Multimedia(Id)
);

create table Season (
    Id int not null primary key,
    Premiere_Date date not null,
    Name varchar(60),
    Description clob,
    Chapters number(4) not null,
    Serie_Id int not null,
    foreign key (Serie_Id) references Serie (Id)
);

create table Chapter (
    Id int not null primary key,
    Chapter_Number number(4) not null,
    Duration number(3) not null,
    Name varchar(60),
    Description clob,
    Serie_Id int not null,
    Season_Id int not null,
    Age_Restriction_Id int not null,
    foreign key (Age_Restriction_Id) references Age_Restriction(Id),
    foreign key (Serie_Id) references Serie (Id),
    foreign key (Season_Id) references Season (Id)
);

create table Chapter_Director (
    Chapter_Id int not null,
    Director_Id int not null,
    foreign key (Chapter_Id) references Chapter (Id),
    foreign key (Director_Id) references Director (Id),
    primary key (Chapter_Id, Director_Id)
);

create table Chapter_Writer (
    Chapter_Id int not null,
    Writer_Id int not null,
    foreign key (Chapter_Id) references Chapter (Id),
    foreign key (Writer_Id) references Writer (Id),
    primary key (Chapter_Id, Writer_Id)
);

create table Chapter_Language (
    Chapter_Id int not null,
    Language_Id int not null,
    foreign key (Chapter_Id) references Chapter (Id),
    foreign key (Language_Id) references Language (Id),
    primary key (Chapter_Id, Language_Id)
);

create table Chapter_Subtitle (
    Chapter_Id int not null,
    Subtitle_Id int not null,
    foreign key (Chapter_Id) references Chapter (Id),
    foreign key (Subtitle_Id) references Subtitle (Id),
    primary key (Chapter_Id, Subtitle_Id)
);

create table Chapter_History (
    User_Id int not null,
    Chapter_Id int not null,
    Stop_Time interval day to second not null,
    foreign key (User_Id) references User_Client (Id),
    foreign key (Chapter_Id) references Chapter (Id),
    primary key (User_Id, Chapter_Id)
);
