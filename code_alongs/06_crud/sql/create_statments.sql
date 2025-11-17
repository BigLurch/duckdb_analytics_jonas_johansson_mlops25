CREATE SCHEMA IF NOT EXISTS database_schema;

CREATE SCHEMA IF NOT EXISTS programing_schema;

SELECT
    *
FROM
    information_schema.schemata
WHERE
    catalog_name = 'glossary';

CREATE SEQUENCE IF NOT EXISTS id_sql_sequence START 1;

CREATE SEQUENCE IF NOT EXISTS id_duckdb_sequence START 1;

FROM
    pg_catalog.pg_sequences;

-- create tables
CREATE TABLE
    IF NOT EXISTS database_schema.sql_table (
        id INTEGER DEFAULT nextval ('id_sql_sequence'),
        word STRING,
        description STRING
    );

CREATE TABLE
    IF NOT EXISTS database_schema.duckdb_table (
        id INTEGER DEFAULT nextval ('id_duckdb_sequence'),
        word STRING,
        description STRING
    );