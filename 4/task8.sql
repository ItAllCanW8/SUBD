SELECT 'surname' AS surname,
COUNT(CASE WHEN length(last_name) = max_length THEN 1 END) AS max_value,
COUNT(CASE WHEN length(last_name) = min_length THEN 1 END) AS min_value,
COUNT(CASE WHEN length(last_name) = avg_length THEN 1 END) AS avg_value
FROM surname,
(SELECT
MAX(length(last_name)) AS max_length,
MIN(length(last_name)) AS min_length,
AVG(length(last_name)) AS avg_length
FROM surname)s;

SELECT 'firstname' AS firstname,
COUNT(CASE WHEN length(first_name) = max_length THEN 1 END) AS max_value,
COUNT(CASE WHEN length(first_name) = min_length THEN 1 END) AS min_value,
COUNT(CASE WHEN length(first_name) = avg_length THEN 1 END) AS avg_value
FROM firstname,
(SELECT
MAX(length(first_name)) AS max_length,
MIN(length(first_name)) AS min_length,
AVG(length(first_name)) AS avg_length
FROM firstname)s;

SELECT 'city' AS city,
COUNT(CASE WHEN length(city_name) = max_length THEN 1 END) AS max_value,
COUNT(CASE WHEN length(city_name) = min_length THEN 1 END) AS min_value,
COUNT(CASE WHEN length(city_name) = avg_length THEN 1 END) AS avg_value
FROM city,
(SELECT
MAX(length(city_name)) AS max_length,
MIN(length(city_name)) AS min_length,
AVG(length(city_name)) AS avg_length
FROM city)s;

SELECT 'region' AS region,
COUNT(CASE WHEN length(region_name) = max_length THEN 1 END) AS max_value,
COUNT(CASE WHEN length(region_name) = min_length THEN 1 END) AS min_value,
COUNT(CASE WHEN length(region_name) = avg_length THEN 1 END) AS avg_value
FROM region,
(SELECT
MAX(length(region_name)) AS max_length,
MIN(length(region_name)) AS min_length,
AVG(length(region_name)) AS avg_length
FROM region)s;

SELECT 'country' AS country,
COUNT(CASE WHEN length(country_name) = max_length THEN 1 END) AS
max_value,
COUNT(CASE WHEN length(country_name) = min_length THEN 1 END) AS
min_value,
COUNT(CASE WHEN length(country_name) = avg_length THEN 1 END) AS
avg_value
FROM country,
(SELECT
MAX(length(country_name)) AS max_length,
MIN(length(country_name)) AS min_length,
AVG(length(country_name)) AS avg_length
FROM country)s;

SELECT 'university' AS university,
COUNT(CASE WHEN length(university_name) = max_length THEN 1 END) AS max_value,
COUNT(CASE WHEN length(university_name) = min_length THEN 1 END) AS min_value,
COUNT(CASE WHEN length(university_name) = avg_length THEN 1 END) AS avg_value
FROM university,
(SELECT
MAX(length(university_name)) AS max_length,
MIN(length(university_name)) AS min_length,
AVG(length(university_name)) AS avg_length
FROM university)s;