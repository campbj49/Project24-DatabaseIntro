\c playstore 
--analytics
SELECT app_name, reviews, min_installs, (min_installs/reviews) AS proportion FROM analytics
	WHERE min_installs >=100000
	ORDER BY proportion DESC
	LIMIT 1;