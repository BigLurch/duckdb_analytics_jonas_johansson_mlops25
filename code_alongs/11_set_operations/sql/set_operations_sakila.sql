-- select customers
SELECT
    'customer' AS type,
    c.first_name,
    c.last_name,
FROM
    customer c;

-- select actors
SELECT
    'actor' AS type,
    a.first_name,
    a.last_name,
FROM
    actor a;

-- select unik customers and acters and combine in one list
SELECT
    'customer' AS type,
    c.first_name,
    c.last_name,
FROM
    customer c
WHERE
    c.first_name ILIKE 'a%'
UNION
SELECT
    'actor' AS type,
    a.first_name,
    a.last_name,
FROM
    actor a
WHERE
    a.first_name ILIKE 'a%';

-- find all overlapping names between actors and customers
SELECT
    c.first_name,
    c.last_name,
FROM
    customer c
INTERSECT
SELECT
    a.first_name,
    a.last_name,
FROM
    actor a;

-- find all initials JD in both cutomer and actor
SELECT
    'customer' AS type,
    c.first_name,
    c.last_name,
FROM
    customer c
WHERE
    c.first_name LIKE 'J%'
    AND c.last_name LIKE 'D%'
UNION ALL
SELECT
    'actor' AS type,
    a.first_name,
    a.last_name,
FROM
    actor a
WHERE
    a.first_name LIKE 'J%'
    AND a.last_name LIKE 'D%';

-- own check
SELECT
    'staff' AS type,
    s.first_name,
    s.last_name,
FROM
    staff s;