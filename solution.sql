
-- 1. Select all the actors with the first name ‘Scarlett’.
select * from actor
where first_name = 'SCARLETT';

-- 2. Select all the actors with the last name ‘Johansson’.
select * from actor
where last_name = 'JOHANSSON';

-- 3. How many films (movies) are available for rent?
select count(rental_id) as movies_available_for_rent 
from rental;

-- 4. How many films have been rented?
select count(distinct inventory_id) as rented_movies 
from rental;

-- 5. What is the shortest and longest rental period?
select max(rental_duration) as longest_rental_period 
from film;

-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select max(length) as max_movie_duration, min(length) as min_movir_duration
from film;

-- 7. What's the average movie duration?
select avg(length) as avg__movie_duration 
from film;

-- 8. What's the average movie duration expressed in format (hours, minutes)?
select date_format(sec_to_time(avg(length)*60), '%H:%i') as average_movie_duration
from sakila.film;

-- 9 How many movies are longer then 3 hourse
select count(film_id) as movies_longer_than_3hours from film
where length > 180;

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select concat(lower(first_name),'  ',lower(last_name),' - ','* ',lower(email),' *') as cusomer_name_email
from sakila.customer;

-- 11. What's the length of the longest film title?
select max(char_length(title)) as longest_film_title, length 
from film;
