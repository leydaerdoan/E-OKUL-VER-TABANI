-- biyoloji yerine beden eðitimi
update brans
set BransAdi = 'Beden Eðitimi'
where BransAdi = 'Biyoloji'

--Matematik yerine Geometri
update brans
set BransAdi = 'Geometri'
where BransAdi = 'Matematik'

--Ýngilizce yerine Arapça
update brans
set BransAdi = 'Arapça'
where BransAdi = 'Ýngilizce'
--Almanca yerine Rusça

update brans
set BransAdi = 'Rusça'
where BransAdi = 'Almanca'

--Fransýzca yerine Çince
update brans
set BransAdi = 'Çince'
where BransAdi = 'Fransýzca'

--Biyoloji yerine Beden Eðitimi
update Dersler
set DersAdi = 'Beden Eðitimi'
where DersAdi = 'Biyoloji'

--Matematik yerine Geometri
update Dersler
set DersAdi = 'Geometri'
where DersAdi = 'Matematik'

--Ýngilizce yerine Arapça
update Dersler
set DersAdi = 'Arapça'
where DersAdi = 'Ýngilizce'

--Almanca yerine Rusça
update Dersler
set DersAdi = 'Rusça'
where DersAdi = 'Almanca'

--Fransýzca yerine Çince
update Dersler
set DersAdi = 'Çince'
where DersAdi = 'Fransýzca'



--Pazartesi 13.00 dersi Salý 09.00 oldu
update DersProgrami
set Saat = '09.00' , Gun = 'Salý'
where Saat = '13.00' and Gun ='Pazartesi'

--Salý 13.00 dersi Perþembe 10.00 oldu
update DersProgrami
set Saat = '10.00' , Gun = 'Perþembe'
where Saat = '13.00' and Gun ='Salý'

--Perþembe 13.00 dersi Cuma 09.00 oldu
update DersProgrami
set Saat = '09.00' , Gun = 'Cuma'
where Saat = '13.00' and Gun ='Perþembe'

--Cuma 14.00 dersi Perþembe 09.00 oldu
update DersProgrami
set Saat = '09.00' , Gun = 'Perþembe'
where Saat = '14.00' and Gun ='Cuma'

--Salý 13.00 dersi Pazartesi 09.00 oldu
update DersProgrami
set Saat = '09.00' , Gun = 'Pazartesi'
where Saat = '14.00' and Gun ='Salý'



--11 nolu ve baþlangýç tarihi 01.01.2005 olan öðretmenin Okulunun id'sini 2 yaptýk
update Mudurler
set Okulid = 2
where BaslangicTarihi = '01.01.2005' and Ogretmenid = 11

--11 nolu ve baþlangýç tarihi 01.01.2000 olan öðretmenin Okulunun id'sini 3 yaptýk
update MudurYardimcilari
set Okulid = 3
where BaslangicTarihi = '01.01.2000' and Ogretmenid = 11

--1 nolu öðrencinin 1 nolu ders birinci sýnav notu 81 oldu
--(ogrenciid ve dersid foreign key primary key deðil)
update Notlar
set BirinciSinav='81'
where Ogrenciid=1 and Dersid=1


--Adý Murat olan öðrencinin adý Can oldu
update Ogrenciler 
set Ad = 'Can'
where Ad = 'Murat'


--Doðum tarihi 1980 olan öðretmenin branþý 2 nolu branþ oldu
update Ogretmenler
set  Bransid = 2
WHERE DogumTarihi = 1980

--Þehitler Ortaokulunun adý 15 Temmuz Þehitleri Okulu oldu
update Okullar
set OkulAdi='15 Temmuz Þehitleri Okulu'
where OkulAdi= 'Þehitler Ortaokulu'

--9/C þubesi 11/G oldu
update Subeler
set SubeAdi='11/G'
where SubeAdi='9/C'

