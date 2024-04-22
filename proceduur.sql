CREATE DATABASE TsugunovProcedure;
USE TsugunovProcedure;

CREATE TABLE film(
filmId int PRIMARY KEY identity(1,1),
filmNimetus varchar(50),
kestvus int,
rezisoor varchar(50),
v_aasta int);

select * from film;
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Sometimes They Come Back', 111, 'Karlen Skillen', 2002);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Punk''s Dead: SLC Punk! 2', 277, 'Isak Barwell', 2009);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('They Live', 225, 'Calley Oldridge', 1995);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('13 Sins', 268, 'Shayne Gendricke', 2007);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Life Is All You Get (Das Leben ist eine Baustelle.)', 224, 'Hedwiga Hefferan', 1993);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Auggie Rose (a.k.a. Beyond Suspicion)', 164, 'Marion Aylmore', 2009);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Love Is Strange', 231, 'Rory Ruskin', 2004);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('That Night''s Wife', 233, 'Vin Franck', 2002);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Haunted Strangler, The (Grip of the Strangler)', 179, 'Nevsa Wegman', 2008);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Sgt. Pepper''s Lonely Hearts Club Band', 147, 'Iain Barradell', 2001);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Hell and Back Again', 117, 'Stepha Birkby', 2004);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Redemption of General Butt Naked, The', 227, 'Roxi Muskett', 2005);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('No Way Home', 134, 'Akim Dionisi', 1995);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Lucky Them', 180, 'Egan Gonsalo', 1993);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Marie Antoinette', 280, 'Lemar Ivashov', 1996);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Last Trapper, The (Le dernier trappeur)', 211, 'Lian Stockle', 2003);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Hitcher, The', 176, 'Anabelle Partridge', 1995);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('God on Trial', 237, 'Valentijn Conahy', 1989);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Single Shot, A', 142, 'Melesa Dudliston', 2003);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Nazty Nuisance', 274, 'Dalenna Haws', 2007);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Wave, The (Welle, Die)', 243, 'Annissa Twizell', 1992);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('B.T.K.', 139, 'Law Paulton', 2000);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Morocco', 274, 'Marcelia Carlesso', 2007);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Cinema Verite', 278, 'Nan Wimbury', 2000);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Woman of Paris, A', 163, 'Sandi McVeighty', 2012);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Hum Aapke Hain Koun...!', 176, 'Julianne Moden', 2009);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Rewrite, The', 210, 'Marthe Brabben', 2001);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Blume in Love', 111, 'Ernesta Hallatt', 1992);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Fear', 120, 'Jobina Vango', 2009);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Gervaise', 108, 'Jenelle Giraldez', 1992);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Deathtrap', 233, 'Raychel Dellenbach', 2007);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Dilemma, The', 182, 'Donny Catenot', 2011);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Rubber Johnny', 213, 'Starr Elman', 1983);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Wonderful Ice Cream Suit, The', 247, 'Marsh Bodocs', 2004);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Family Honeymoon', 132, 'Vale Brede', 2003);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Of Human Bondage', 287, 'Kerstin Stollman', 2000);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Night of the Hunted, The (Nuit des traquées, La)', 298, 'Welby Effnert', 2007);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Lie, The', 130, 'Kliment Minucci', 2005);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Mr. & Mrs. Bridge', 105, 'Milicent Jockle', 1986);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Born Losers, The', 133, 'Ivie Tyght', 2004);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Scusa ma ti chiamo amore', 164, 'Mendie Hadny', 2003);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Breaking and Entering', 282, 'Lowrance Hoffman', 2003);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Tell Them Who You Are', 234, 'Winfield Marciskewski', 2009);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Dragon Ball Z: Bio-Broly (Doragon bôru Z 11: Sûpâ senshi gekiha! Katsu no wa ore da)', 221, 'Clare Draayer', 2005);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Education for Death', 208, 'Norine Kornilyev', 2002);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Miss Congeniality', 224, 'Wilone Winterburn', 2006);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Nell', 234, 'Silvie Pinfold', 2003);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Grandview, U.S.A.', 156, 'Malina Snarie', 2012);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Face/Off', 276, 'Linnell Arnecke', 2005);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Terribly Happy (Frygtelig lykkelig)', 206, 'Curtis Hadwin', 2011);





--filmiNimetuse otsing esimese tähe järgi
DROP Procedure osting1Taht
CREATE Procedure otsing1Taht
@taht char(1)
AS
Begin
	SELECT * FROM film
	--uslovie
	WHERE filmNimetus LIKE CONCAT(@taht,'%');
End;

--käivitamine
EXEC otsing1Taht 'M';





--proceduur mis kustutab sisestatud id järgi
CREATE Procedure kustutaFilm
@id int
AS
BEGIN
	SELECT * FROM film;
	DELETE FROM film WHERE filmId=@id;
	SELECT * FROM film;
END;

EXEC kustutaFilm 42;





--proceduur mis loeb filmide arv kokku
DROP Procedure FilmideArv
CREATE Procedure FilmideArv
AS
SELECT COUNT(*) AS 'filmide Arv' FROM film;

EXEC FilmideArv;
