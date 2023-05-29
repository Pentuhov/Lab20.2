with geo_las as (select geo_lat as geo_las from city where city = 'Самара'), geo_los as (select geo_lon as geo_los from city where city = 'Самара'), geo_lam as (select geo_lat as geo_lam, city from city), geo_lou as (select geo_lon as geo_lou  from city) Select sqrt((power((geo_las - geo_lam),2) + power((geo_los - geo_lou),2))) As distance, city  from (geo_las ,geo_los ,geo_lam, geo_lou ) Where city != 'Самара' ORDER by distance  ASC limit 3;