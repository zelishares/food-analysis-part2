select count(distinct (tweet))
from tasty_twitter_clean  

select count(tweet)
from tasty_twitter_clean  

drop view distinct_tweet_count

create or replace view distinct_tweet_count as
select (twitter.recipe_name)
		--,twitter.created
	    -- ,twitter.expanded_url 
		,SUM(twitter.favorites) as favorites
		,SUM(twitter.count) as count
		, count(twitter.recipe_name) as same_tweet_count
		-- ,tasty."name" 
		-- ,tasty.user_ratings_count_positive 
		-- ,tasty.user_ratings_count_negative 
		-- ,tasty.user_ratings_score 
from distinct_tweet as twitter
join tasty_clean as tasty on twitter.recipe_name  = tasty.name 
group by twitter.recipe_name
	-- , (twitter.favorites)
	-- , twitter.created
	--, (twitter.count)
order by twitter.recipe_name asc;

---SELECT ID,NAME, SUM(NO) AS TOTAL_NO  
--FROM TBL_NAME 
--GROUP BY ID, NAME



create or replace view distinct_tweet as 
select distinct (tweet)
		, recipe_name
		, created
	    , expanded_url 
		,favorites
		,count
from tasty_twitter_clean
group by tweet
		, recipe_name
	 	, created
		, expanded_url 
		,favorites
		,count
		
		
create or replace view view_question_1_vers2 as
select distinct(twitter.recipe_name)
		-- ,tweet.created
	    ,tweet.expanded_url 
		,twitter.favorites as favorites
		,twitter.count as count
		,twitter.same_tweet_count
		,tasty."name" 
		,tasty.user_ratings_count_positive 
		,tasty.user_ratings_count_negative 
		,tasty.user_ratings_score 
from distinct_tweet_count as twitter
join tasty_clean as tasty on twitter.recipe_name  = tasty.name
join tasty_twitter_clean as tweet on twitter.recipe_name =tweet.recipe_name 
order by twitter.recipe_name asc;

-- to see any connection with the tags, cooking time or nutrition
create or replace view view_question_1_vers3 as
select distinct(twitter.recipe_name)
		-- ,tweet.created
	    ,tweet.expanded_url 
		,twitter.favorites as favorites
		,twitter.count as count
		,twitter.same_tweet_count
		--,tasty."name" 
		,tasty.user_ratings_count_positive 
		,tasty.user_ratings_count_negative 
		,tasty.user_ratings_score 
		,tasty.nutrition_calories 
		,tasty.total_time_minutes 
		,tasty.total_time_tier_display_tier 
		,tasty.topics_clean 
		, tasty.tags_clean 
from distinct_tweet_count as twitter
join tasty_clean as tasty on twitter.recipe_name  = tasty.name
join tasty_twitter_clean as tweet on twitter.recipe_name =tweet.recipe_name 
order by twitter.recipe_name asc;

