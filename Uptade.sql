-- biyoloji yerine beden e�itimi
update brans
set BransAdi = 'Beden E�itimi'
where BransAdi = 'Biyoloji'

--Matematik yerine Geometri
update brans
set BransAdi = 'Geometri'
where BransAdi = 'Matematik'

--�ngilizce yerine Arap�a
update brans
set BransAdi = 'Arap�a'
where BransAdi = '�ngilizce'
--Almanca yerine Rus�a

update brans
set BransAdi = 'Rus�a'
where BransAdi = 'Almanca'

--Frans�zca yerine �ince
update brans
set BransAdi = '�ince'
where BransAdi = 'Frans�zca'

--Biyoloji yerine Beden E�itimi
update Dersler
set DersAdi = 'Beden E�itimi'
where DersAdi = 'Biyoloji'

--Matematik yerine Geometri
update Dersler
set DersAdi = 'Geometri'
where DersAdi = 'Matematik'

--�ngilizce yerine Arap�a
update Dersler
set DersAdi = 'Arap�a'
where DersAdi = '�ngilizce'

--Almanca yerine Rus�a
update Dersler
set DersAdi = 'Rus�a'
where DersAdi = 'Almanca'

--Frans�zca yerine �ince
update Dersler
set DersAdi = '�ince'
where DersAdi = 'Frans�zca'



--Pazartesi 13.00 dersi Sal� 09.00 oldu
update DersProgrami
set Saat = '09.00' , Gun = 'Sal�'
where Saat = '13.00' and Gun ='Pazartesi'

--Sal� 13.00 dersi Per�embe 10.00 oldu
update DersProgrami
set Saat = '10.00' , Gun = 'Per�embe'
where Saat = '13.00' and Gun ='Sal�'

--Per�embe 13.00 dersi Cuma 09.00 oldu
update DersProgrami
set Saat = '09.00' , Gun = 'Cuma'
where Saat = '13.00' and Gun ='Per�embe'

--Cuma 14.00 dersi Per�embe 09.00 oldu
update DersProgrami
set Saat = '09.00' , Gun = 'Per�embe'
where Saat = '14.00' and Gun ='Cuma'

--Sal� 13.00 dersi Pazartesi 09.00 oldu
update DersProgrami
set Saat = '09.00' , Gun = 'Pazartesi'
where Saat = '14.00' and Gun ='Sal�'



--11 nolu ve ba�lang�� tarihi 01.01.2005 olan ��retmenin Okulunun id'sini 2 yapt�k
update Mudurler
set Okulid = 2
where BaslangicTarihi = '01.01.2005' and Ogretmenid = 11

--11 nolu ve ba�lang�� tarihi 01.01.2000 olan ��retmenin Okulunun id'sini 3 yapt�k
update MudurYardimcilari
set Okulid = 3
where BaslangicTarihi = '01.01.2000' and Ogretmenid = 11

--1 nolu ��rencinin 1 nolu ders birinci s�nav notu 81 oldu
--(ogrenciid ve dersid foreign key primary key de�il)
update Notlar
set BirinciSinav='81'
where Ogrenciid=1 and Dersid=1


--Ad� Murat olan ��rencinin ad� Can oldu
update Ogrenciler 
set Ad = 'Can'
where Ad = 'Murat'


--Do�um tarihi 1980 olan ��retmenin bran�� 2 nolu bran� oldu
update Ogretmenler
set  Bransid = 2
WHERE DogumTarihi = 1980

--�ehitler Ortaokulunun ad� 15 Temmuz �ehitleri Okulu oldu
update Okullar
set OkulAdi='15 Temmuz �ehitleri Okulu'
where OkulAdi= '�ehitler Ortaokulu'

--9/C �ubesi 11/G oldu
update Subeler
set SubeAdi='11/G'
where SubeAdi='9/C'

