

--Gamze isimli ��renci silindi
--gamze isimli ��rencinin ��renci devams�zl�k tablosundan sildik (��renciid) foreign keydir 
delete from OgrenciDevamsizlik where Ogrenciid =(SELECT ID from Ogrenciler where Ad='Gamze')
--gamze isimli ��rencinin subeokul tablosundan sildik (��renciid) foreign keydir
delete from SubeOkul where Ogrenciid =(SELECT ID from Ogrenciler where Ad='Gamze')
--en son olarak gamze isimli ��renciyi t�m veritaban�ndan kald�rd�k
delete from Ogrenciler where Ad = 'Gamze'






--G�lben ��retmeni sildik
--G�lben ��retmenin ��retmen devams�zl�k tablosundan sildik (��retmenid) foreign keydir 
delete from OgretmenDevamsizlik where Ogretmenid =(SELECT ID from Ogretmenler where Ad='G�lben')
--G�lben ��retmenin m�d�rler tablosundan sildik (��retmenid) foreign keydir 
delete from Mudurler where Ogretmenid =(SELECT ID from Ogretmenler where Ad='G�lben')
--G�lben ��retmenin ��retmen m�d�r yard�mc�lar� sildik (��retmenid) foreign keydir 
delete from MudurYardimcilari where Ogretmenid =(SELECT ID from Ogretmenler where Ad='G�lben')
--G�lben ��retmenin ��retmen okul tablosundan sildik (��retmenid) foreign keydir 
delete from OgretmenOkul where Ogretmenid =(SELECT ID from Ogretmenler where Ad='G�lben')
--G�lben ��retmenin �ube ders ��retmen tablosundan sildik (��retmenid) foreign keydir 
delete from SubeDersOgretmen where Ogretmenid =(SELECT ID from Ogretmenler where Ad='G�lben')
--en son olarak g�lben ��retmeni t�m veritaban�ndan kald�rd�k
delete from Ogretmenler where Ad = 'G�lben'