-- Into Query, Select all records form actor table
SELECT *
FROM actor;


--Query for first_name and last_name from actor table
SELECT first_name, last_name
FROM actor;

SELECT actor_id, first_name, last_name
FROM actor;

-- Query for first_name that is equal to nick
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick' and last_name = 'Stallone';

--Query for a fist_name 'pattern' that matches Jennifer

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Jennifer';

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick';

--Query all first_name data that starts with a J using LIKE and WHERE clauses -- using wildcard %
--cannot use = because no data is equal to N%
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'N%';

SELECT first_name, last_name
FROM actor
WHERE first_name = 'N%';--cannot use = because no data is equal to N%

-- Select specific names that start with a K and is followed by two slots __
--cannot filter integer this way
SELECT first_name, actor_id
FROM actor
WHERE first_name LIKE 'J__';

--Query for all first_name data that starts with K, has 2 letters following K and ends with th
--LIKe and WHERE clauses with underscore
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'J__ne';

--Comparing Operators:
--Greater than >
--Less than <
--greater or = >=
--less or = <=
-- not equal !=

--Explore data from payment table
SELECT *
FROM payment;

--Query for data that shows customers who paid
--an amount greater than $2
SELECT customer_id, amount
FROM payment
WHERE amount> 11.00;

--Quesry for customers who paid an amount
-- less than $7.99
SELECT customer_id, amount
FROM payment
WHERE amount< 7.99;

--Query for customers who paid an amount
--less than or = 5.99
SELECT customer_id, amount
FROM payment
WHERE amount <= 5.99;

--Query for customers who paid
--an amount greater than or = 3.99
SELECT customer_id, amount
FROM payment
WHERE amount >= 3.99;


--DISTINCT returns unique values, return and removes duplicates
SELECT DISTINCT amount --will give 1 of each amount
FROM payment
WHERE amount > 3.99;

-- Query for customers who paid
--amount betwen 2.00 and 7.00 $s
SELECT customer_id, amount, payment_id
FROM payment
WHERE amount BETWEEN 2.00 and 7.00;

--Query for customers who paid an amount != 7.99
--order by amount DESC -- ORDER BY defaults to ascending
SELECT customer_id, amount
FROM payment
WHERE amount != 7.99
ORDER BY amount DESC;

--LIMIT-- limit the output to specified amount, how many you want to pull
SELECT *
FROM payment
LIMIT 100;

-- SQL aggregations --> SUM(), AVG(), COUNT(), MIN(), MAX()

--Query to display sum of amount paid that are greater than 5.99
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99;

--Query for average amounts paid over 6.99
SELECT AVG(amount)
FROM payment
WHERE amount > 6.99;

--Count of amounts paid less than 3.99
SELECT COUNT(amount)
FROM payment
WHERE amount < 3.99;

--SELECT specific amounts over 4.99
SELECT COUNT(DISTINCT amount)
FROM payment
WHERE amount > 4.99;

--SELECT the min amount greater than 7.99
SELECT MIN(amount) AS min_num_payments
FROM payment
WHERE amount > 7.99;

--Select max amount greater than 7.99
SELECT MAx(amount) as max_num_payments
FROM payment
Where amount > 7.99;

--Select all mounts = 7.99
SELECT amount, customer_id, payment_id
FROM payment
WHERE amount = 7.99;

--Query to display diff amounts grouper together
--and count thosee amounts
SELECT amount, COUNT(amount)
FROM payment
GROUP BY amount
ORDER BY COUNT(amount) DESC;

--Total spent by each customer
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY customer_id DESC;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

--Query to display customer_id with the summed amounts for each customer_id
SELECT customer_id, amount
FROM payment
GROUP BY amount, customer_id
ORDER BY customer_id DESC;

SELECT *
FROM rental
ORDER BY customer_id;

--Query to display customer_id that show up more than 5 times
--group by email
SELECT customer_id, COUNT(rental_id)
FROM rental
GROUP BY customer_id
HAVING COUNT(rental_id) > 15 --aggregate version of where
ORDER BY COUNT(rental_id);

