
-- Q1. 
SELECT first_name, last_name FROM actor;

-- Q2. 
SELECT first_name, last_name FROM actor WHERE first_name = "John";

-- Q3. 
SELECT first_name, last_name FROM actor WHERE last_name = "Neeson";

-- Q4. 
SELECT * FROM actor WHERE (actor_id %10 = 0);

-- Q5. 
SELECT * FROM film WHERE film_id = 100;

-- Q6. 
SELECT * FROM film WHERE rating = "R";

-- Q7. 
SELECT * FROM film WHERE rating != "R";

-- Q8. 
SELECT * FROM film ORDER BY length ASC LIMIT 10;

-- Q9. 
SELECT * FROM film WHERE length = (SELECT MAX(length) FROM FILM);

-- Q10. 
SELECT * FROM film WHERE special_features LIKE "%Deleted Scenes%";

-- Q11. 
SELECT last_name, COUNT(*) FROM actor GROUP BY last_name HAVING COUNT(*)= 1 ORDER BY last_name DESC;

-- Q12. 
SELECT last_name, COUNT(*) FROM actor GROUP BY last_name HAVING COUNT(*) >1 ORDER BY COUNT(*) ASC;

-- Q13.
SELECT actor.actor_id, first_name, last_name, COUNT(actor.actor_id)
FROM actor
JOIN film_actor ON actor.actor_id=film_actor.actor_id
GROUP BY actor.actor_id
ORDER BY COUNT(actor.actor_id) DESC
LIMIT 1;

-- Q14. Will attempt tommorow. Brain melted. Need food.

-- Q15. 
SELECT AVG(length) FROM film;

-- Q16. 
SELECT AVG(f.length), fc.category_id
FROM film AS f
JOIN film_category AS fc ON f.film_id = fc.film_id
GROUP BY fc.category_id;

-- Q17. 
SELECT * FROM `film` WHERE `description` LIKE "%robot%";

-- Q18. 
SELECT * FROM `film` WHERE `release_year` = 2010;


-- Q19. 
SELECT c.category_id, c.name, fc.film_id, f.title
FROM category AS c
JOIN film_category AS fc ON c.category_id = fc.category_id
JOIN film as f ON f.film_id = fc.film_id
WHERE c.name = "Horror";

-- Q.20. 
SELECT * FROM staff WHERE staff_id = 2;

-- Q.21 
SELECT *
FROM actor
JOIN film_actor ON actor.actor_id=film_actor.actor_id
JOIN film ON film_actor.film_id=film.film_id
WHERE actor.first_name = "Fred" AND actor.last_name = "Costner";

-- Q.22 
SELECT COUNT(country) AS no_of_countries FROM country;

-- Q.23 
SELECT `name` FROM `language` ORDER BY `name` DESC;

-- Q.24 
SELECT first_name, last_name  FROM actor WHERE last_name LIKE "%son"
ORDER BY `first_name` ASC;

-- Q.25
SELECT category.category_id, category.`name`, COUNT(category.category_id)
FROM category
JOIN film_category ON category.category_id=film_category.category_id
GROUP BY category.category_id
ORDER BY COUNT(category.category_id) DESC;


