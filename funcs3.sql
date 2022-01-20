select case when brand in ('Toyota' , 'Hyundai' , 'Kia' ) then 'motor_brands' else 'non-motor' end as type_of_brand,
	case
		when animals = 'True' then 1 else 0 end as animals,
        round(avg(youtube_views)/1000000,2) as avg_yt_views
 from cleaner_data
 where length_of_ad <=90  
 group by 1,2;

-- where brand in ('Toyota' , 'Hyundai' , 'Kia' )
-- group by brand
