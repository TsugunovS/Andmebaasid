
Create table logitabel(
autoID int PRIMARY KEY identity(1,1),
autonimi varchar(15),
omanikud int);

--Loo tabel, mis me salvestame info auto
Create table autoregistr(
lid int PRIMARY KEY identity(1,1),
aeg DATETIME,
toiming  varchar(100),
numbrimark varchar(20),
varv varchar(20),
andmed TEXT,
kasutaja varchar(100)
)

INSERT INTO logitabel(autonimi, omanikud)
values ('Kia', 2);
select * from logitabel;

--
drop TRIGGER AutoLisamine
CREATE TRIGGER AutoLisamine
ON logitabel
FOR INSERT
AS
BEGIN
	INSERT INTO autoregistr(kasutaja, aeg, numbrimark, varv, toiming, andmed)
	SELECT USER,
			GETDATE(),
			'´548 JKF',
			'Must',
			'Auto on lisatud',
			inserted.autonimi
	FROM inserted;
END

INSERT INTO logitabel(autonimi, omanikud)
values ('Skoda', 2);
select * from autoregistr;
select * from logitabel;


--DELETE Triger - triger, mis ´kustutab tabelites olevad kirjed,
CREATE TRIGGER AutoKustutamine
ON logitabel
FOR DELETE
AS
BEGIN
	INSERT INTO autoregistr(kasutaja, aeg, numbrimark, varv, toiming, andmed)
	SELECT USER,
			GETDATE(),
			'548 JKF',
			'Must',
			'linn on kustutatud',
			deleted.autonimi
	FROM deleted;
END

delete from autoregistr
WHERE lid=2;
select * from autoregistr;
select * from logitabel;


--Uendamine triger, mis muudab auto teavet
CREATE TRIGGER AutoUuendamine
ON logitabel
FOR UPDATE
AS
BEGIN
	INSERT INTO autoregistr(kasutaja, aeg, varv, numbrimark, toiming, andmed)
	SELECT USER,
			GETDATE(),
			'Kollane',
			'333 XXX',
			'AutoAndmed on uuendatud',
			concat('vanad: ', deleted.autonimi,
			'uued: ', inserted.autonimi)
	FROM deleted INNER JOIN inserted
	ON deleted.autoID=inserted.autoID;
END

UPDATE logitabel SET autonimi='Opel'
WHERE autoID=1;
select * from logitabel;
select * from autoregistr;