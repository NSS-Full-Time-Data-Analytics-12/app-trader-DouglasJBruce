select distinct(name)
from play_store_apps



select name, 
category, genres,
rating, review_count
from play_store_apps
--where rating = 4.8
order by --rating DESC NULLS LAST,
	review_count DESC;
	
select category,count(category)
from play_store_apps
where rating between 4.7 and 4.9
and review_count > 2000
group by category
order by count DESC NULLS LAST

--'FAMILY' category has 152 apps with rating 4.7 to 4.9
--'GAME' category has 82

--'Education' genres has 74 apps with rating 4.7 to 4.9
--'Tools' and 'Health & Fitness' have 47 and 44

--when i pick review counts above 2000 i get the GAME category

select name, price, content_rating, rating, review_count
from play_store_apps
where rating between 4.7 and 4.9
--and genres = 'Education'
and category = 'GAME'
and review_count > 2000
ORDER by rating DESC NULLS LAST,
review_count DESC

select * 
from app_store_apps

select primary_genre,count(primary_genre)
from app_store_apps
where rating > 4.4
and review_count::numeric > 2000
group by primary_genre
order by count DESC NULLS LAST;

select name, price, content_rating, rating, review_count, primary_genre
from app_store_apps
where rating = 5.0
and primary_genre = 'Games'
and review_count::int > 2000
ORDER by review_count::int DESC NULLS LAST,
rating DESC

select *
from play_store_apps
where name ILIKE '%vlogger go viral%'

select *
from app_store_apps
where name ILIKE '%vlogger go viral%'

--im going to export some top rated apps and show the category price and age rating they fall in

select *
from play_store_apps
where rating >4.4
and review_count > 80000;


select *
from app_store_apps
where rating >4.4
and review_count::int > 5000;