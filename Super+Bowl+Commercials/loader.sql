 use superbowl;
 
 drop table sourcedata;
 CREATE TABLE sourcedata (
	-- id INT NOT NULL AUTO_INCREMENT,
	year_of_ad INT NOT NULL , 
 	brand VARCHAR(255) NOT NULL,
	superbowl_ads_url VARCHAR(255) NOT NULL,
	youtube_url VARCHAR(255)  NULL,
	funny VARCHAR(255) NOT NULL,
	shows_product_quickly VARCHAR(255) NOT NULL,
	patriotic	VARCHAR(255) NOT NULL,
    celebrity VARCHAR(255) NOT NULL,
	danger VARCHAR(255) NOT NULL,
	animals VARCHAR(255) NOT NULL,
	uses_sex	VARCHAR(255) NOT NULL,
    length_of_ad INT NOT NULL,
	estimated_cost DECIMAL(10,2) NOT NULL,
	youtube_views LONG  NULL,
	youtube_likes INT  NULL,
	tv_viewers DECIMAL(10,2) NOT NULL     
    -- PRIMARY KEY (id)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/superbowl_commercials.csv' 
INTO TABLE sourcedata 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@year_of_ad, @brand, @superbowl_ads_url, @youtube_url , @funny, @shows_product_quickly, @patriotic, @celebrity, @danger , @animals , @uses_sex , @length_of_ad , @estimated_cost , @youtube_views, @youtube_likes , @tv_viewers) 
       SET year_of_ad = @year_of_ad,
			brand = @brand,
            superbowl_ads_url= @superbowl_ads_url,
            youtube_url = IF(@youtube_url = '', NULL, @youtube_url),
            funny = @funny,
            shows_product_quickly = @shows_product_quickly,
            patriotic = @patriotic,
            celebrity = @celebrity,
            danger = @danger,
            animals = @animals,
            uses_sex = @uses_sex,
            length_of_ad = @length_of_ad,
            estimated_cost= @estimated_cost,
			youtube_views = IF(@youtube_views = '', NULL, @youtube_views), 
           youtube_likes = IF(@youtube_likes = '', NULL, @youtube_likes),
           tv_viewers = @tv_viewers; 
           

select * from sourcedata;