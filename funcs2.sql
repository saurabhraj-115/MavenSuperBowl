-- select 
-- 	case
-- 		when year_of_ad between 2000 and 2005 then 'A.2000-05'
--         when year_of_ad between 2005 and 2010 then 'B.2005-10'
--         when year_of_ad between 2010 and 2015 then 'C.2010-15'
--         when year_of_ad between 2015 and 2021 then 'D.2015-21'
-- 		else 'mistake' end as time_period,
--        count(ad_id) as number_of_ads , round((avg(youtube_views)+(avg(tv_viewers)*1000000))/1000000 , 2) as avg_ratio
-- from cleaner_data
-- where length_of_ad <=90
-- group by 1
-- order by 1

select  * from cleaner_data;