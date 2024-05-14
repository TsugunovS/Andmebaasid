
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


--DELETE Triger - triger, mis täidab logi tabeli,
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

delete from linnad
WHERE linnID=4;
select * from linnad;
select * from logi;


