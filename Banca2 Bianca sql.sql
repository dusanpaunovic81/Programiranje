create database Banca2
use Banca2
--use master
--drop database Banca2

CREATE TABLE Kontakti(
	Id_racuna int IDENTITY(1,1) primary key,
	Broj_Racuna  AS ((('115-'+right('000000000000'+CONVERT([varchar](13),[Id_racuna]),(13)))+'-')+right('00'+CONVERT([varchar](2),[Id_racuna]),(2))) PERSISTED,
	Ime nvarchar(20) NULL,
	Prezime nvarchar(20) NULL,
    JMBG varchar(13) NULL,
	Email nvarchar(50) NULL,
	Korisnicko_ime nvarchar(20) NULL,
	Lozinka nvarchar(20) NULL,
    datum_rodj date NULL,
	Adresa nvarchar(40) NULL,
	Mesto nvarchar(20) NULL,
	Mobilni varchar(20) NULL,
	Fiksni varchar(20) NULL,
	Pol nvarchar(1) NULL,
	Pozicija nvarchar(1) NULL,
       login_date date NULL,
	login_time time(7) NULL
)

insert into Kontakti values( 'Dusan', 'Paunovic','0308981710058', 'dusan.paunovic81@gmail.com', 'dusan11','dusan11','1981-08-03','Dusanov Breg 22', 'Dusangrad', '1234567890', '1234567890','M','A','',''),
( 'Obren', 'Misirlic','1203987710023', 'obren.misirlic@gmail.com', 'obren11','obren11', '1981-11-13','Obrenov Breg 22', 'Obrengrad', '123567890', '1288767890','M','Z','',''),
( 'Stana', 'Subasic', '2408992750043', 'stana.subasic@gmail.com', 'stana11','stana11', '1989-02-09','Stanin Breg 22', 'Stanograd', '1237243890', '1274567890','Z','K','','')

--drop table Kontakti

CREATE TABLE Proizvodi(
Id_proizvoda INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
Naziv_proizvoda nvarchar (50),
Kamata float (2)
)

--drop table Proizvodi

INSERT INTO Proizvodi values('Kes Kredit', '10.8'), ('Stambeni Kredit', '4.2'), ('Refinansirajuci Kredit', '14.5')

create table Partija_kredita(
Id_partije int IDENTITY(1,1) PRIMARY KEY,
Id_zaposlenog int,
Datum date,
Id_klijenta int,
Vrsta_kredita int,
Glavnica varchar(12),
Period_otplate int,
Kamata float (4),
Total_iznos float(14),
Mesecna_rata float(14)
)
ALTER TABLE Partija_kredita
ADD CONSTRAINT FK_Vrsta_kredita FOREIGN KEY (Vrsta_kredita) REFERENCES Proizvodi(Id_proizvoda)

INSERT INTO Partija_kredita values('1','02-15-2019','3','1','420000.00','96','10.8','640000.00','15500')

--drop table Partija_kredita

Create table Uplate(
Id_uplate int IDENTITY(1,1) PRIMARY KEY,
Id_zaposlenog INT,
Datum date,
Id_klijenta INT,
Id_partije INT,
Iznos_uplate float(14)
)
ALTER TABLE Uplate
ADD CONSTRAINT FK_Kontakti FOREIGN KEY (Id_klijenta) REFERENCES Kontakti(Id_racuna)
ALTER TABLE Uplate
ADD CONSTRAINT FK_Partija_kredita FOREIGN KEY (Id_partije) REFERENCES Partija_kredita(Id_partije)

--drop table Uplate

INSERT INTO Uplate values('1','02-15-2019','3','1','15500')

create table Period_otplate(
Id_perioda_otplate int identity (1,1) primary key,
Period_otplate varchar(3)
)

insert into Period_otplate values('12'),('24'),('36'),('48'),('60'),('72'),('84'),('96'),('108'),('120'),('132'),('144'),('156'),('168'),('180'),('192'),('204'),('216'),('228'),('240'),('252'),('264'),('276'),('288'),('300'),('312'),('324'),('336'),('348'),('360')


DECLARE @korisnik int
SET @korisnik = 3

CREATE PROCEDURE PregledUserKredita @korisnik int
AS
SELECT Kontakti.Ime AS Ime,Kontakti.Prezime AS Prezime, Proizvodi.Naziv_proizvoda AS Proizvod, Partija_kredita.Id_partije AS Partija,Partija_kredita.Period_otplate AS PeriodOtplate,Partija_kredita.Glavnica AS Glavnica, Partija_kredita.Kamata AS Kamata,Partija_kredita.Mesecna_rata AS Rata FROM Partija_kredita
INNER JOIN Kontakti ON Kontakti.Id_racuna = Partija_kredita.Id_klijenta
INNER JOIN Proizvodi ON Proizvodi.Id_proizvoda=Partija_kredita.Vrsta_kredita
WHERE Id_racuna=@korisnik

--DROP PROCEDURE PregledUserKredita

EXECUTE PregledUserKredita 3


CREATE PROCEDURE PregledUplata @korisnik int
AS
SELECT id_uplate AS ID, Iznos_uplate, Datum AS Uplata FROM Uplate
WHERE Id_klijenta=@korisnik

EXECUTE PregledUplata 3
--DROP PROCEDURE PregledUplata



