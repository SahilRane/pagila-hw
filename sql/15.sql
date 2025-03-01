/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
SELECT category.name AS name, COUNT(film.film_id) AS "sum"
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
JOIN language ON film.language_id = language.language_id
WHERE language.name = 'English'
GROUP BY category.name
ORDER BY category.name;
