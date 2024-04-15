
-- cd Andmebaasid
-- git add .
-- git commit -a -m "tabel ... on loodud"

CREATE DATABASE kinoteatrTsugunov;
Use kinoteatrTsugunov;



-- tabel filmType

--cd Andmebaasid
--git add .
--git commit -a -m "tabel filmType on loodud"
--git push

--zanr rezosor filmtype film kinokava piletihind

--filmType

--CREATE TABLE filmType(
--	filmTypeID int Primary key identity(1,1),
--	filmType varchar(25),
--	kirjeldus TEXT);

CREATE TABLE filmType(
	filmTypeId int Primary Key identity(1,1),
	filmType varchar(25),
	kirjeldus TEXT)
INSERT INTO filmType (filmTypeId, filmType, kirjeldus)
VALUES (1,'3D', '4D');

select * from filmType;
DELETE FROM filmType;
DROP TABLE filmType;
--rezisor


CREATE TABLE rezisor(
	rezisorID int Primary key identity(1,1),
	eesnimi varchar(25),
	perenimi varchar(25));
INSERT INTO rezisor (eesnimi, perenimi)
VALUES ('Stanislav','Tsugunov'), ('Nikita', 'Konjaev');

select * from rezisor;
DELETE FROM rezisor;
DROP TABLE rezisor;

--piletiMyyk

CREATE TABLE piletiMyyk(
	piletiMyykID int Primary key identity(1,1),
	kogus int,
	kinokavaID int);
INSERT INTO piletiMyyk (kogus, kinokavaID)
VALUES ('3', 1);

select * from piletiMyyk;
DELETE FROM piletiMyyk;
DROP TABLE piletiMyyk;

--kinokava

CREATE TABLE kinokava(
	kinokavaID int Primary key identity(1,1),
	kuupaev DATETIME,
	filmNimetus int,
	piletihind int);
INSERT INTO kinokava (kuupaev, filmNimetus, piletihind)
VALUES ('10.04.24',  15, 12)
select * from kinokava;
DELETE FROM kinokava;
DROP TABLE kinokava;
--zanr

CREATE TABLE zanr(
	zanrID int Primary key identity(1,1),
	zanrNimi varchar(25),
	zanrKirjeldus TEXT);
INSERT INTO zanr (zanrNimi, zanrKirjeldus)
VALUES ('Horror', 'Ponev kartul')

select * from zanr;
DELETE FROM zanr;
DROP TABLE zanr;
--film

CREATE TABLE film(
	filmID int Primary key identity (1,1),
	filmNimetus varchar(25),
	zanrID int,
	pikkus int,
	rezisorID int,
	filmTypeId int,
	kinokavaID int,
	reklaam image);
INSERT INTO film (filmNimetus, pikkus, zanrId, rezisorId, filmTypeId, kinokavaID)
VALUES ('HorrorDad', 12, 1, 2, 1, 1)



select * from film;
DELETE FROM film;
DROP TABLE film;

select * from film;
select * from zanr;




--KEY




---film-->filmType
ALTER TABLE film ADD FOREIGN KEY (filmTypeId) REFERENCES filmType(filmTypeId);

---film-->rezisorId
ALTER TABLE film ADD FOREIGN KEY (rezisorId) REFERENCES rezisor(resizorId);

---film-->zanrId
ALTER TABLE film ADD FOREIGN KEY (zanrId) REFERENCES zanr(zanrId);

---kinokava-->filmId
ALTER TABLE kinokava ADD FOREIGN KEY (filmNimetus) REFERENCES film(filmId);

---piletiMyyk-->kinokavaId
ALTER TABLE piletiMyyk ADD FOREIGN KEY (kinokavaId) REFERENCES kinokava(kinokavaId);
