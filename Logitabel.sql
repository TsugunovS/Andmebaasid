
Create table logitabel(
autoID int PRIMARY KEY identity(1,1),
autonimi varchar(15),
omanikud int);

--Loo tabel, mis me salvestame info auto
Create table autoregistr(
lid int PRIMARY KEY identity(1,1),
aeg DATETIME,
toiming  varchar(100),
andmed TEXT,
kasutaja varchar(100)
)

INSERT INTO logitabel(autonimi, omanikud)
values ('Toyota', 4);
select * from logitabel;