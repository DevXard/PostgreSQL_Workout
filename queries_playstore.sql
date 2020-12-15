-- Comments in SQL Start with dash-dash --
-- Find app with ID 1880
SELECT * FROM analytics WHERE id=1880;
-- Find all id and app name  of all apps last updated on aug 01 2018
SELECT id, app_name FROM analytics WHERE last_updated='2018-08-01';
-- Count the number of apps in each category
SELECT category, COUNT(*) FROM analytics GROUP BY category;
-- Find top 5 reviewd apps
SELECT * FROM analytics ORDER BY reviews desc LIMIT 5;
-- Find app With most revews and rating greater or equal to 4.8
SELECT * FROM analytics WHERE rating >= 4.8 ORDER BY reviews desc LIMIT 1;
-- Find averege rating  for each category and order  from highest to lowest
SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY AVG(rating) desc;
-- Select the app with the highest price and rating lest then 3
SELECT app_name, price, rating FROM analytics WHERE  rating < 3  ORDER BY price desc LIMIT 1;
-- Find all apps not exeading 50 min installs and have rating order from highest to lowest
SELECT * FROM analytics WHERE min_installs <= 50 AND rating > 0 ORDER BY min_installs desc;
-- Find the names of the apps that are rated les then 3 and have more then 10 000 reviews
SELECT app_name FROM analytics WHERE rating < 3 AND reviews > 10000;
-- Fint top 10 apps with most reviews and are betwean  10 cents and 1 dolar
SELECT * FROM analytics WHERE price BETWEEN 0.10 AND 1.00 ORDER BY reviews desc LIMIT 10;
-- FInd the app that is most out of date
SELECT * FROM analytics ORDER BY last_updated asc Limit 1;
-- Find most expencive app
SELECT * FROM analytics ORDER BY price desc Limit 1;
SELECT * FROM analytics WHERE price = (SELECT MAX(price) FROM analytics);
-- Count all reviews in google play store
SELECT SUM(reviews) FROM analytics;
-- Find categories that have more then 300 apps
SELECT category FROM analytics GROUP BY category HAVING COUNT(*) > 300;
-- FInd all apps that have the highest production reviews to min installs that have been instaled atleas 100 000 times display the name of the app
SELECT app_name, reviews, min_installs, min_installs/reviews AS production FROM analytics WHERE min_installs > 100000 ORDER BY production LIMIT 1;