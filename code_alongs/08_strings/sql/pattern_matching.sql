-- LIKE operator in WHERE clause -> filrer rows
-- LIKE operator with wildcards to search for a pattern
SELECT
    example,
    lower(trim(example)) as cleaned_example
FROM
    staging.sql_glossary;

-- search for all that start with select (end with %)
SELECT
    example,
    lower(trim(example)) as cleaned_example
FROM
    staging.sql_glossary
WHERE
    -- wildcard % matches 0 or more
    cleaned_example LIKE 'select%';

-- wildcard
SELECT
    example,
    trim(example) as cleaned_example
FROM
    staging.sql_glossary
WHERE
    -- wildcard _ matches any character that can fill it
    cleaned_example LIKE 'S_LECT%';

-- reguler expression
SELECT
    lower(trim(description)) as cleaned_description
FROM
    staging.sql_glossary
WHERE
    regexp_matches (cleaned_description, '^c');

-- starting with C or S
SELECT
    trim(description) as cleaned_description
FROM
    staging.sql_glossary
WHERE
    regexp_matches (cleaned_description, '^[CS]');

-- \b makes it match exacly select word
SELECT
    lower(description) as cleaned_description
FROM
    staging.sql_glossary
WHERE
    regexp_matches (cleaned_description, 'select\b');

-- [a-f] matches range of characters
SELECT
    lower(trim(description)) as cleaned_description
FROM
    staging.sql_glossary
WHERE
    regexp_matches (cleaned_description, '[a-f]');

-- ^[a-f] matches character that starting with a to f
SELECT
    lower(trim(description)) as cleaned_description
FROM
    staging.sql_glossary
WHERE
    regexp_matches (cleaned_description, '^[a-f]');

-- [^a-f] matches any characters not in range a-f
SELECT
    lower(trim(description)) as cleaned_description
FROM
    staging.sql_glossary
WHERE
    regexp_matches (cleaned_description, '[^a-f]');

-- ^[^a-f] matches character that dont start with a to f
SELECT
    lower(trim(description)) as cleaned_description
FROM
    staging.sql_glossary
WHERE
    regexp_matches (cleaned_description, '^[^a-f]');

--
SELECT
    description,
    regexp_replace (trim(description), ' +', ' ', 'g') as cleaned_description
FROM
    staging.sql_glossary;

-- LIKE operator case sensitive
SELECT
    *
FROM
    refined.sql_glossary
WHERE
    sql_word LIKE 'ORD%';

-- ILIKE operator not case sensitive
SELECT
    *
FROM
    refined.sql_glossary
WHERE
    example ILIKE 'select%';

-- _ matches all characters
SELECT
    *
FROM
    refined.sql_glossary
WHERE
    example LIKE 'UP_DATE';