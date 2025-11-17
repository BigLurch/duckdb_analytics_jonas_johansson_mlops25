-- throws away a table
DROP TABLE database_schema.sql_table;

-- gives dependency error becuse the schema is not empty
DROP SCHEMA database_schema;

-- to delete this schema and all its content
DROP SCHEMA database_schema CASCADE;