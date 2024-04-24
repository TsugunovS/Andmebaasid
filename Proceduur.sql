CREATE TABLE film(
filmId int PRIMARY KEY AUTO_INCREMENT,
filmNimetus varchar(50),
kestvus int,
rezisoor varchar(50),
v_aasta int);





-otsing esimese tähe järgi
CREATE PROCEDURE `otsing1Taht`(IN `taht` CHAR(1)) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER Begin
	SELECT * FROM film
	WHERE filmNimetus LIKE CONCAT(taht,'%');
End;

CALL otsing1Taht ('A'); 





-filmi kustutamine
CREATE PROCEDURE `kustutaFilm`(IN `id` INT) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER BEGIN SELECT * FROM film; DELETE FROM film WHERE filmId=id; SELECT * FROM film; END; 

-loeb filmide arv kokku
CREATE PROCEDURE `filmidArv`() NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER BEGIN SELECT COUNT(*) AS 'filmide Arv' FROM film; END;

-täidab tabeli film
CREATE PROCEDURE `lisafilm`(IN `uusfilm` VARCHAR(50), IN `kestvus` INT, IN `rezisoor` VARCHAR(50), IN `aasta` INT) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER begin insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values (uusfilm, kestvus, rezisoor, aasta); select * from film; end; 

begin
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) 
values (uusfilm, kestvus, rezisoor, aasta);
select * from film;
end;
-uuendab rezisööri andmed filmiNimi järgi
CREATE PROCEDURE `uuendaRezisorFilmis`(IN `filmnimetus` VARCHAR(50), IN `uusrezisoor` VARCHAR(50)) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER BEGIN SELECT * FROM film WHERE filmNimetus=filmNimetus; UPDATE film SET rezisoor=uusrezisoor WHERE filmNimetus=filmNimetus; SELECT * FROM film WHERE filmNimetus=filmNimetus; END;
