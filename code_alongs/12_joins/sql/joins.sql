FROM
    plants;

FROM
    plant_care;

-- left join
-- want to se how to take care of my plants
-- those that don't have a caring info, I want to know about it
SELECT
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM
    plants p
    LEFT JOIN plant_care pc ON p.plant_id = pc.plant_id;

-- right join
SELECT
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM
    plants p
    RIGHT JOIN plant_care pc ON p.plant_id = pc.plant_id;

-- achive RIGHT JOIN with LEFT JOIN
SELECT
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM
    plant_care pc
    LEFT JOIN plants p ON p.plant_id = pc.plant_id;

-- INNER JOIN only picks the one with complet information in all columns
SELECT
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM
    plant_care pc
    INNER JOIN plants p ON p.plant_id = pc.plant_id;

-- FULL JOIN
SELECT
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM
    plant_care pc
    FULL JOIN plants p ON p.plant_id = pc.plant_id;

-- CROSS JOIN
SELECT
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM
    plants p
    CROSS JOIN plant_care pc;