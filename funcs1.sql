select 
	 case 
 		when length_of_ad between 0 and 30 then 'A.less than 30'
         when length_of_ad between 30 and 60 then 'B.30 to 60 '
         when length_of_ad between 60 and 90 then 'C.60 to 90'
         when length_of_ad between 90 and 120 then 'D.90 to 120'
         when length_of_ad between 120 and 150 then 'E.120 to 150'
         when length_of_ad between 150 and 180 then 'F.150 to 180'
         else 'other time'
         end as length_segment
 	
 		, count(distinct ad_id) as number_of_ads ,  round(sum(estimated_cost )/ (avg(tv_viewers) + (avg(youtube_views)/1000000)),2) as av_cost
        from cleaner_data 
 	
     group by 1
     order by 1 ;
     
  
  --   select length_of_ad , round(avg(youtube_views),2) as avg_YT_views from cleaner_data 
-- 	
--     group by 1
--     order by 1 ;
--     
   --  select * from cleaner_data