

--1
--Kimya dersinden ortalamasý 70'den aþaðý olan öðrencinin
--dersine giren öðretmenin adý
Select Ogretmenler.Ad,Ogretmenler.Soyad
From Ogretmenler inner join SubeDersOgretmen on Ogretmenler.ID = SubeDersOgretmen.Ogretmenid 
inner join Subeler on SubeDersOgretmen.Subeid = Subeler.ID inner join SubeOkul on SubeOkul.Subeid =Subeler.ID
inner join Ogrenciler on Ogrenciler.ID=SubeOkul.Ogrenciid
where Ogrenciler.Ad in ( select Ogrenciler.Ad from Ogrenciler
			inner join Notlar on Notlar.Ogrenciid = Ogrenciler.ID
			inner join Dersler on Dersler.ID = Notlar.Dersid
			where  (Notlar.BirinciSinav+Notlar.IkinciSinav)/2 < 70   and  Notlar.ID in (
									 Select Notlar.ID from Notlar
									 inner join Dersler on Dersler.ID = Notlar.Dersid
									 where Dersler.DersAdi = 'Kimya'
			)  
) 




--2
--Devamsýzlýk sayýsý, tüm öðrencilerin ortalama devamszýlýk sayýsýndan
--büyük olan öðrencilerin okuduðu okullarýn bilgileri
select Okullar.OkulAdi,Count(Ogrenciler.ID) from Ogrenciler
inner join SubeOkul 
on Ogrenciler.ID = SubeOkul.Ogrenciid
inner join Okullar
on SubeOkul.Okulid = Okullar.ID
where Ogrenciler.ID in (	
				select Ogrenciler.ID from Ogrenciler 
				inner join OgrenciDevamsizlik
				on Ogrenciler.ID = OgrenciDevamsizlik.Ogrenciid
				group by Ogrenciler.ID
				having COUNT(OgrenciDevamsizlik.Ogrenciid) > (
								select avg(T.devamsizlik )from (
										select Ogrenciler.Ad,COUNT(OgrenciDevamsizlik.Ogrenciid) as devamsizlik from Ogrenciler 
										inner join OgrenciDevamsizlik
										on Ogrenciler.ID = OgrenciDevamsizlik.Ogrenciid
										group by Ogrenciler.Ad)T 
				)
		)
Group by Okullar.OkulAdi





--3
--Okullara göre erkek devamsýzlýk sayýsý
 select Okullar.OkulAdi,Ilce.IlceAdi,Il.IlAdi,SUM( T.devamsizlik) as Erkek_devamsýzlýk_sayisi from (select Ogrenciler.ID,Ogrenciler.Cinsiyet,count(OgrenciDevamsizlik.Ogrenciid) as devamsizlik from Ogrenciler 
				inner join OgrenciDevamsizlik
				on Ogrenciler.ID = OgrenciDevamsizlik.Ogrenciid
				where Ogrenciler.Cinsiyet='Erkek'
				group by Ogrenciler.ID,Ogrenciler.Cinsiyet)T 
     inner join SubeOkul on T.ID = SubeOkul.Ogrenciid
	 inner join Okullar on Okullar.ID = SubeOkul.Okulid
	 inner join Ilce on Okullar.Ilceid = Ilce.ID
	 inner join Il on Okullar.Ilid = Il.ID
	 group by Okullar.OkulAdi,Ilce.IlceAdi,Il.IlAdi