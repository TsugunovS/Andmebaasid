SQL SERVER MANAGEMENT STUUDIO

https://meet.google.com/?hs=193
--ab loomine
CREATE DATABASE TsugunovLOGITpv22;
USE TsugunovLOGITpv22;
--tabeli loomine
CREATE TABLE opilane(
id int Primary Key identity(1,1),
eesnimi varchar(20),
perenimi varchar(25) not null,
isikukood char(11) unique,
aadress TEXT,
sisseastumis_kp date
);
--primary key - primaarne võti mis annab unikaalsus 
--identity(1.1) - määrab igaühele oma numbri

SELECT * FROM opilane;
--andmete lisamine
INSERT INTO opilane(
eesnimi, perenimi, isikukood, aadress, sisseastumis_kp)
VALUES(
'Mysql', 'Sql', '123456', 'Tallinn', '2023-08-16');
SELECT * FROM opilane;




--10-04-2024




--SQL SERVER MANAGEMENT STUUDIO

https://meet.google.com/?hs=193
--ab loomine
CREATE DATABASE TsugunovLOGITpv22;
USE TsugunovLOGITpv22;
--tabeli loomine
CREATE TABLE opilane(
id int Primary Key identity(1,1),
eesnimi varchar(20),
perenimi varchar(25) not null,
isikukood char(11) unique,
aadress TEXT,
sisseastumis_kp date
);
--primary key - primaarne võti mis annab unikaalsus 
--identity(1.1) - määrab igaühele oma numbri-- väli täidetakse automaatselt


SELECT * FROM opilane;
--andmete lisamine
INSERT INTO opilane(
eesnimi, perenimi, isikukood, aadress, sisseastumis_kp, ryhmId)
VALUES(
'Stanislav', 'Tsugunov', '50607147056', 'Tallinn', '2023-08-16', 2);
SELECT * FROM opilane;


--tabeli Ryhm loomine
CREATE TABLE ryhm(
ryhmID int Primary Key identity(1,1),
ryhmNimetus varchar(20) UNIQUE,
osakond char(3));
SELECT * FROM ryhm;
INSERT INTO ryhm(ryhmNimetus, osakond)
VALUES ('Titpv22', 'IT', 1);


SELECT * FROM juhataja;
SELECT * FROM ryhm;
SELECT * FROM opilane;
--FOREING KEY ---/ PK teises tabelis
ALTER TABLE ryhm ADD juhatajaID int;
--tabeli opilane uuendamine
UPDATE opilane SET ryhmID=2;
--FK lisamine opilane tabelisse


ALTER TABLE opilane
ADD FOREIGN KEY (ryhmId) REFERENCES ryhm(ryhmId);


--
drop table juhataja;
alter table ... drop column ...;

ryhmajuhataja

--tabeli ryhmajuhataja loomine
CREATE TABLE ryhmajuhataja(
juhatajaID int Primary Key identity(1,1),
eesnimi varchar(20) not null,
perenimi varchar(10) not null,
telefon varchar(15),
);

INSERT INTO ryhmajuhataja(eesnimi, perenimi, telefon)
VALUES ('Bogdan', 'Jakovlev', '58585858');
SELECT * FROM ryhmajuhataja;
SELECT * FROM ryhm;
ALTER TABLE ryhm ADD juhatajaId int;
UPDATE ryhm SET juhatajaId=1;
--FK lisamine opilane uuendamine
ALTER TABLE ryhm
ADD FOREIGN KEY (juhatajaId) REFERENCES ryhmajuhataja(juhatajaId)

INSERT INTO ryhmajuhataja(eesnimi, perenimi, telefon)
VALUES ('Titpv22', 'IT', 1);



CREATE TABLE hinnang(
hinnangID int Primary Key identity(1,1),
kuupaev date,
opilaneID int,
ryhmajuhataja int,
hinnang text,
);

ADD FOREIGN KEY (


SELECT * FROM hinnang(
INSERT INTO hinnang(kuupaev, opilaneID, ryhmajuhataja, hinnang)
VALUES ('2023-08-16', '1', '', '3')
