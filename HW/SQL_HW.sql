--Question 1: How many actors are there with the last name ‘Wahlberg’? 

SELECT *
FROM actor
WHERE last_name = 'Wahlberg';

--Question 2: How many payments were made between $3.99 and $5.99?

SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;

--Question 3: What film does the store have the most of? (search in inventory) 

SELECT COUNT(film_id), film_id
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

--Question 4: How many customers have the last name ‘William’?
SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'William';

--Question 5: What store employee (get the id) sold the most rentals? 

SELECT Count(rental_id), staff_id
FROM rental
GROUP BY staff_id
ORDER BY COUNT(rental_id) DESC;

--Question 6: How many different district names are there?

SELECT COUNT(DISTINCT district)
FROM address;

--Question 7: What film has the most actors in it? (use film_actor table and get film_id)

SELECT COUNT(actor_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;

--Question 8: From store_id 1, how many customers have a 
--last name ending with ‘es’? (use customer table) 

SELECT last_name, first_name, store_id
FROM customer
WHERE last_name LIKE '%es'
ORDER BY store_id;

--Question 9: How many payment amounts (4.99, 5.99, etc.) had a number of 
--rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250) 
SELECT COUNT(amount), amount
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(amount) > 250;

--Question 10: Within the film table, how many rating categories are there? 
--And what rating has the most  movies total?

SELECT COUNT(film_id), rating
FROM film
GROUP BY rating;








