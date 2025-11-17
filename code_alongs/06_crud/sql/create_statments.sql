CREATE SCHEMA IF NOT EXISTS database_schema;

CREATE SCHEMA IF NOT EXISTS programing_schema;

SELECT
    *
FROM
    information_schema.schemata
WHERE
    catalog_name = 'glossary';