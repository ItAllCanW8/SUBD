SELECT 'first_name' AS firstname,
max(length(first_name)) AS max_length,
min(length(first_name)) AS min_length,
avg(length(first_name)) AS avg_length
FROM firstname;

SELECT 'last_name' AS last_name,
max(length(last_name)) AS max_length,
min(length(last_name)) AS min_length,
avg(length(last_name)) AS avg_length
FROM surname;

SELECT 'city_name' AS city,
max(length(city_name)) AS max_length,
min(length(city_name)) AS min_length,
avg(length(city_name)) AS avg_length
FROM city;

SELECT 'region_name' AS region,
max(length(region_name)) AS max_length,
min(length(region_name)) AS min_length,
avg(length(region_name)) AS avg_length
FROM region;

SELECT 'country_name' AS country,
max(length(country_name)) AS max_length,
min(length(country_name)) AS min_length,
avg(length(country_name)) AS avg_length
FROM country;

SELECT 'university_name' AS university,
max(length(university_name)) AS max_length,
min(length(university_name)) AS min_length,
avg(length(university_name)) AS avg_length
FROM university;