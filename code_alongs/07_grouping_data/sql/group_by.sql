-- top 10 most popular food searches
SELECT
    food,
    SUM(number_of_searches) AS total_searches
FROM
    cleaned_foog
GROUP BY
    food
ORDER BY
    total_searches DESC
LIMIT
    10;

-- total searches by year
-- filter on number of searches
SELECT
    year,
    SUM(number_of_searches) AS total_searches
FROM cleaned_foog
GROUP BY year
HAVING 
    total_searches > 400_000
ORDER BY year;

-- can group by several columns
/* 
work like this:
group by food and year
for this group there ar 52 rows
take the sum of the 52 rows
 */
SELECT
    food, 
    year,
    SUM(number_of_searches) AS total_searches
FROM cleaned_foog
GROUP BY
    food, 
    year
ORDER BY food, year;

--
SELECT
    food, 
    year,
    SUM(number_of_searches) AS total_searches
FROM cleaned_foog
GROUP BY
    food, 
    year
HAVING food IN ('pizza', 'sushi')
ORDER BY food, year;