-- Comments in SQL Start with dash-dash --
SELECT * FROM analytics WHERE id = 1880;--Querey 1
SELECT id, app_name FROM analytics WHERE last_updated = '2018-07-01';-- Querey 2
SELECT category, COUNT(*) FROM analytics GROUP BY category;--Querey 3
SELECT app_name, rating, reviews FROM analytics 
	ORDER BY rating DESC 
	LIMIT 5;--Querey 4
SELECT app_name, rating, reviews FROM analytics 
	WHERE rating >=4.8
	ORDER BY reviews DESC 
	LIMIT 1;--Querey 5
SELECT category, AVG(rating) AS average_rating FROM analytics 
	GROUP BY category
	ORDER BY AVG(rating) DESC;--Querey 6
SELECT app_name, price, rating FROM analytics 
	WHERE rating <3
	ORDER BY price DESC 
	LIMIT 1;--Querey 7
SELECT app_name, rating FROM analytics 
	WHERE rating IS NOT NULL AND min_installs < 50
	ORDER BY rating DESC; --Querey 8
SELECT app_name FROM analytics 
	WHERE rating <3 AND reviews >=10000; --Querey 9
SELECT app_name FROM analytics 
	WHERE price >.1 AND price <1
	ORDER BY rating DESC
	LIMIT 10; --Querey 10
SELECT app_name, last_updated FROM analytics 
	ORDER BY last_updated ASC
	LIMIT 1; --Querey 11
SELECT app_name, price FROM analytics 
	ORDER BY price DESC
	LIMIT 1; --Querey 12
SELECT SUM(reviews) as total_reviews FROM analytics; --Querey 13
SELECT category, COUNT(*) as app_count FROM analytics 
	GROUP BY category
	HAVING COUNT(*) > 300;--Querey 14
SELECT app_name, reviews, min_installs, (min_installs/reviews) AS proportion FROM analytics
	WHERE min_installs >=100000
	ORDER BY proportion DESC
	LIMIT 1; --Querey 15