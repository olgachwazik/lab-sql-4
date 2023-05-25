use sakila;

-- 1. Get film ratings. 

select title as title, rating as rating 
from film;

-- 2. Get release years. 

select title as title, release_year as 'release year'
from film;

-- 3. Get all films with ARMAGEDDON in the title. 

select title as 'films with ARMAGEDDON'
from film
where title like '%armageddon%';


-- 4. Get all films with APOLLO in the title. 

select title as 'films with APOLLO'
from film
where title like '%apollo%';

-- 5. Get all films which title ends with APOLLO. 

select title as 'films ending with APOLLO'
from film
where title like '%apollo';

-- 6. Get all films with word DATE in the title. 

select title as 'films with the word DATE'
from film
where title regexp '(^|[[:space:]])date([[:space:]]|$)';

-- 7. Get 10 films with the longest title. 

select title as 'longest titles'
from film
order by length(title) desc
limit 10;

-- 8. Get 10 the longest films. 

select title as 'longest films', length as length
from film
order by length desc 
limit 10;

-- 9. How many films include Behind the Scenes content? 

select count(title) as 'with Behind the scenes'
from film
where special_features regexp 'Behind the scenes';

-- 10. List films ordered by release year and title in alphabetical order. 

select *
from film
order by release_year asc, title asc;
