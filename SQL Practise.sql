SELECT 
destination ,
passanger , 
time AS 'The time'
FROM dataset_1 
WHERE passanger = 'Alone'
AND weather = 'Sunny'
AND destination = 'Home'
OR time = '2pm'
ORDER BY time DESC;

SELECT destination, time,
AVG (temperature),
SUM (temperature),
COUNT (temperature),
COUNT (DISTINCT temperature)
FROM dataset_1 d 
WHERE time <> '10pm'
GROUP BY destination, time 
--HAVING occupation = 'student'
ORDER BY time;


SELECT *
FROM dataset_1 d 
UNION
SELECT *
FROM table_to_union;

SELECT *
FROM table_to_join ttj;

SELECT destination, d.time, ttj.part_of_day 
FROM dataset_1 d 
LEFT JOIN table_to_join ttj 
ON d.time = ttj.time 

SELECT *
FROM dataset_1 d 
WHERE d.time LIKE '%p%';

SELECT DISTINCT temperature
FROM dataset_1 
WHERE temperature BETWEEN 29 AND 75;

SELECT occupation
FROM dataset_1 d 
WHERE occupation IN ('sales & related', 'management')


