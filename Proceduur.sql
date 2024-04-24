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
