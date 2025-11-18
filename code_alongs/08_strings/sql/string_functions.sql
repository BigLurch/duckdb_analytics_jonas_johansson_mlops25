-- remove leading and trailing spaces
SELECT
    trim(sql_word, ' ') AS trimmed_word,
    trimmed_word[1] AS first_character,
    trimmed_word[-1] AS last_character,
FROM
    staging.sql_glossary;

-- transform character to uppercase
SELECT
    upper(trim(sql_word, ' ')) AS sql_term,
    sql_term[1] AS first_character,
    sql_term[-1] AS last_character,
FROM
    staging.sql_glossary;

-- replace 2 spaces with 1 space
SELECT
    description,
    replace(description, '  ', ' ') AS cleaned_descrption
FROM staging.sql_glossary;

-- concatenate strings with ||
SELECT
    concat(upper(trim(sql_word, ' ')), ' command') AS sql_command,
    upper(trim(sql_word, ' ')) || ' command' AS sql_command_1, -- ask becuse it dident full in the 1 automatecly
FROM
    staging.sql_glossary;

-- extract substring
SELECT
    trim(sql_word) AS trimmed_word,
    substring(trim(sql_word),1,5) AS first_five_chars,
    trimmed_word[1:5] AS sliced_five_chars,
FROM
    staging.sql_glossary;

-- reverse
SELECT
    reverse(trim(sql_word)) AS reversed_word,
FROM
    staging.sql_glossary;

-- find position of first occurence of a substring
-- return 0 if not found
SELECT
    description,
    instr(description, 'select') AS select_position,
    select_position != 0 AS about_select
FROM staging.sql_glossary;

SELECT 'fun' || ' joke';