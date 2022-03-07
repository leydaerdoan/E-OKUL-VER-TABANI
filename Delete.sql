

--Gamze isimli öðrenci silindi
--gamze isimli öðrencinin öðrenci devamsýzlýk tablosundan sildik (öðrenciid) foreign keydir 
delete from OgrenciDevamsizlik where Ogrenciid =(SELECT ID from Ogrenciler where Ad='Gamze')
--gamze isimli öðrencinin subeokul tablosundan sildik (öðrenciid) foreign keydir
delete from SubeOkul where Ogrenciid =(SELECT ID from Ogrenciler where Ad='Gamze')
--en son olarak gamze isimli öðrenciyi tüm veritabanýndan kaldýrdýk
delete from Ogrenciler where Ad = 'Gamze'






--Gülben öðretmeni sildik
--Gülben öðretmenin öðretmen devamsýzlýk tablosundan sildik (öðretmenid) foreign keydir 
delete from OgretmenDevamsizlik where Ogretmenid =(SELECT ID from Ogretmenler where Ad='Gülben')
--Gülben öðretmenin müdürler tablosundan sildik (öðretmenid) foreign keydir 
delete from Mudurler where Ogretmenid =(SELECT ID from Ogretmenler where Ad='Gülben')
--Gülben öðretmenin öðretmen müdür yardýmcýlarý sildik (öðretmenid) foreign keydir 
delete from MudurYardimcilari where Ogretmenid =(SELECT ID from Ogretmenler where Ad='Gülben')
--Gülben öðretmenin öðretmen okul tablosundan sildik (öðretmenid) foreign keydir 
delete from OgretmenOkul where Ogretmenid =(SELECT ID from Ogretmenler where Ad='Gülben')
--Gülben öðretmenin þube ders öðretmen tablosundan sildik (öðretmenid) foreign keydir 
delete from SubeDersOgretmen where Ogretmenid =(SELECT ID from Ogretmenler where Ad='Gülben')
--en son olarak gülben öðretmeni tüm veritabanýndan kaldýrdýk
delete from Ogretmenler where Ad = 'Gülben'