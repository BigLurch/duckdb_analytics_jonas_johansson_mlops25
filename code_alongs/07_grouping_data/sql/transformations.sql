/* 
Based on the EDA, I want to do the fallowing

- id -> food
- remove googleTopic
- value -> number_of_searches
- week_id -> week column and year column

Vary good to SELECT before doing the tranformation

 */
SELECT 
    id AS food, 
    value AS number_of_searches,  
    week_id[1:4] AS year,
    week_id[-2:] AS week
FROM 
    food;

-- create a new table with these transformatins
CREATE TABLE IF NOT EXISTS cleaned_foog AS ( --felstavad^^'
    SELECT 
        id AS food, 
        value AS number_of_searches,  
        week_id[1:4] AS year,
        week_id[-2:] AS week
    FROM 
        food
);

