Create database EOkulDataBase
GO
Create table brans(
        
		ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
		BransAdi nvarchar(25) )
GO
Create table EgitimOgretim(
		ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
		Yil nvarchar(25) NOT NULL,
		Donem nvarchar(25) NOT NULL)
GO
Create table Dersler(
		ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
		DersKodu nvarchar(25) NOT NULL,
		DersAdi nvarchar(25) NOT NULL)
GO
Create table DersProgrami(
		ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
		Gun nvarchar(25) NOT NULL,
		Saat nvarchar(25) NOT NULL)
GO
Create table Subeler(
		ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
		SubeAdi nvarchar(25) NOT NULL)
GO
Create table Ogrenciler(
		ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
		Ad nvarchar(25) NOT NULL,
		Soyad nvarchar(25) NOT NULL,
		TC nvarchar(25) NOT NULL,
		DogumTarihi nvarchar(25) NOT NULL,
		Numara nvarchar(25) NOT NULL,
		Cinsiyet nvarchar(25) NOT NULL)
GO
Create table DevamsizlikTuru(
		ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
		DevamsizlikAdi nvarchar(25) NOT NULL)
GO
Create table Il(
		ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
		IlAdi nvarchar(25) NOT NULL)
GO
Create table Ilce(
		ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
		IlceAdi nvarchar(25) NOT NULL)
GO
create table Okullar(
		ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
		OkulAdi nvarchar(25) NOT NULL,
		Mail nvarchar(25) NOT NULL,
		Telefon nvarchar(25) NOT NULL,
		Adres nvarchar(25) NOT NULL,
		Ilid INT FOREIGN KEY REFERENCES Il(ID),
		Ilceid INT FOREIGN KEY REFERENCES Ilce(ID))
GO
Create table Notlar(
		ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
		BirinciSinav int NOT NULL,
		IkinciSinav int NOT NULL,
		Ogrenciid INT FOREIGN KEY REFERENCES Ogrenciler(ID) on delete cascade,
		Dersid INT FOREIGN KEY REFERENCES Dersler(ID))
GO
Create table Ogretmenler(
		ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
		Ad nvarchar(25) NOT NULL,
		Soyad nvarchar(25) NOT NULL,
		TC nvarchar(25) NOT NULL,
		DogumTarihi nvarchar(25) NOT NULL,
		Numara nvarchar(25) NOT NULL,
		Cinsiyet nvarchar(25) NOT NULL,
		Subeid INT FOREIGN KEY REFERENCES Subeler(ID),
		Bransid INT FOREIGN KEY REFERENCES Brans(ID))
GO
Create table OgrenciDevamsizlik(
		ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
		Tarih nvarchar(25) NOT NULL,
		DevamsizlikTuruid INT FOREIGN KEY REFERENCES DevamsizlikTuru(ID),
		Ogrenciid INT FOREIGN KEY REFERENCES Ogrenciler(ID)on delete cascade)
GO
Create table OgretmenDevamsizlik(
		ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
		Tarih nvarchar(25) NOT NULL,
		DevamsizlikTuruid INT FOREIGN KEY REFERENCES DevamsizlikTuru(ID),
		Ogretmenid INT FOREIGN KEY REFERENCES Ogretmenler(ID))
GO
Create Table Mudurler(
		ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
		BaslangicTarihi nvarchar(25) NOT NULL,
		BitisTarihi nvarchar(25) NOT NULL,
		Okulid INT FOREIGN KEY REFERENCES Okullar(ID),
		Ogretmenid INT FOREIGN KEY REFERENCES Ogretmenler(ID))
GO
Create table MudurYardimcilari(
		ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
		BaslangicTarihi nvarchar(25) NOT NULL,
		BitisTarihi nvarchar(25) NOT NULL,
		Okulid INT FOREIGN KEY REFERENCES Okullar(ID),
		Ogretmenid INT FOREIGN KEY REFERENCES Ogretmenler(ID))
GO
Create Table OgretmenOkul(
		ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
		BaslangicTarihi nvarchar(25) NOT NULL,
		BitisTarihi nvarchar(25) NOT NULL,
		Okulid INT FOREIGN KEY REFERENCES Okullar(ID),
		Ogretmenid INT FOREIGN KEY REFERENCES Ogretmenler(ID))
GO
Create Table SubeOkul(
		ID INT IDENTITY(1,1)PRIMARY KEY NOT NULL,
		BaslangicTarihi nvarchar(25) NOT NULL,
		BitisTarihi nvarchar(25) NOT NULL,
		Okulid INT FOREIGN KEY REFERENCES Okullar(ID),
		Subeid INT FOREIGN KEY REFERENCES Subeler(ID),
		Ogrenciid INT FOREIGN KEY REFERENCES Ogrenciler(ID)on delete cascade)
GO
Create table SubeDersOgretmen(
		DersProgramiid INT FOREIGN KEY REFERENCES DersProgrami(ID),
		Subeid INT FOREIGN KEY REFERENCES Subeler(ID),
		Dersid INT FOREIGN KEY REFERENCES Dersler(ID),
		Ogretmenid INT FOREIGN KEY REFERENCES Ogretmenler(ID),
		EgitimOgretimid INT FOREIGN KEY REFERENCES EgitimOgretim(ID))
GO
create table SilinenKayitlar(
        ID INT IDENTITY(1,1)PRIMARY KEY NOT NULL,
		Ogrenciid INT FOREIGN KEY REFERENCES Ogrenciler(ID) ,
		Ad nvarchar(25) NOT NULL,
		Soyad nvarchar(25) NOT NULL,
		TC nvarchar(25) NOT NULL,
		DogumTarihi nvarchar(25) NOT NULL,
		Numara nvarchar(25) NOT NULL,
		Cinsiyet nvarchar(25) NOT NULL
    
)
