DESC;

FROM
    film;

-- 1000 films
DESC TABLE film;

-- check the uniq ratings that exist in the film table
SELECT DISTINCT
    rating
FROM
    film;

-- 5462 > 1000 films -> actors can play >= 1 film
FROM
    film_actor;

-- ex insight
-- actor_id 1 -> Penelope Guiness
-- plays in movies: academy dinosaur, anaconda confessions, ...
FROM
    actor;

-- bridge table between film and category
-- it holds film_id and category_id
FROM
    film_category;

FROM
    category;

-- okej to only use space as alias insted of AS
SELECT
    'customer' AS type,
    c.first_name || ' ' || c.last_name AS name
FROM
    customer c;

-- all customers firstname start with B
SELECT
    'customer' AS type,
    c.first_name || ' ' || c.last_name AS name
FROM
    customer c;

WHERE
    c.first_name ILIKE 'b%'