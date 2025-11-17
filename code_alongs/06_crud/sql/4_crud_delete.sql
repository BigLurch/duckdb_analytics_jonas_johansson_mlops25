-- safe guard check befor deleting
SELECT
    *
FROM
    database_schema.duckdb_table
WHERE
    id > 6;

DELETE FROM database_schema.duckdb_table
WHERE
    id > 6;