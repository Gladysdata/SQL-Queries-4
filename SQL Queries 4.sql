USE sakila ;

#1Get film ratings
SELECT rating FROM film ;

#2Get release years
SELECT release_year FROM film ;

#3Get all films with ARMAGEDDON in the title
SELECT * from film
WHERE title LIKE "ARMAGEDDON";

#4Get all films with APOLLO in the title
SELECT * from film
WHERE title LIKE "APOLLO";

#5Get all films which title ends with APOLLO
SELECT * FROM film
WHERE title LIKE "%APOLLO";

#6Get all films with word DATE in the title
SELECT * FROM film
WHERE title LIKE "%DATE%";

#7Get 10 films with the longest title
SELECT * FROM film
ORDER BY title DESC
LIMIT 10;

#8Get 10 the longest films
SELECT * FROM film
ORDER BY length DESC
LIMIT 10;

#9 How many films include Behind the Scenes content?(thank you Xisca!)
select count(film_id) as films_w_Behind_Scences 
from film 
where special_features regexp 'Behind the Scenes';

#10 List films ordered by release year and title in alphabetical order
SELECT * FROM film 
ORDER BY release_year, title ASC