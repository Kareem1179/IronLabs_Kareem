/* 1-What are the different genres?*/
select distinct(prime_genre)
from apple_store.applestore;

/* 2- Which is the genre with the most apps rated?*/
select distinct(prime_genre), sum(track_name) as total_rated 
from apple_store.applestore
group by prime_genre
order by total_rated desc;

/* 3- Which is the genre with most apps?*/
select prime_genre, count(track_name) as total_apps
from apple_store.applestore
group by prime_genre;

/* 4-  Which is the one with least?*/
select prime_genre, count(track_name)
from apple_store.applestore
group by prime_genre
order by count(track_name)
limit 1;

/* 5- Find the top 10 apps most rated*/
select track_name, rating_count_tot
from apple_store.applestore
order by rating_count_tot desc
limit 10;

/* 6-  Find the top 10 apps best rated by users.*/
select track_name, user_rating_ver
from apple_store.applestore
order by user_rating_ver desc
limit 10;

/* 10- How could you take the top 3 regarding both user ratings and number of votes?*/
select track_name,rating_count_tot,user_rating_ver
from apple_store.applestore
order by user_rating_ver desc, rating_count_tot desc
limit 3;

/* 11- Do people care about the price of an app? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?*/
select track_name, price, rating_count_tot
from apple_store.applestore
order by rating_count_tot desc
/*  Yes, as the most dowloaded apps are free or less than $1 */
