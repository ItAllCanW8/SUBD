use laba;

SET foreign_key_checks =0;
TRUNCATE personal_data;
SET foreign_key_checks =1;

SET @MIN = '2000-01-01';
SET @MAX = '2025-01-01';

INSERT INTO personal_data(id_country, id_region, id_city, id_university,
id_faculty, id_speciality,id_department,id_result, id_email, birth_date, enhance_date, graduation_date,
issue_date, expiration_date )
WITH
temp_address1 AS
(SELECT id FROM country ORDER BY rand()),
temp_address2 AS
(SELECT id FROM region ORDER BY rand()),
temp_address3 AS
(SELECT id FROM city ORDER BY rand()),
temp_university AS
(SELECT id FROM university ORDER BY rand()),
temp_faculty AS
(SELECT id FROM faculty ORDER BY rand()),
temp_speciality AS
(SELECT id FROM speciality ORDER BY rand()),
temp_department AS
(SELECT id FROM department ORDER BY rand()),
temp_result AS
(SELECT id FROM result ORDER BY rand()),
temp_email AS
(SELECT id FROM email ORDER BY rand()),
temp_results AS
(
SELECT a.id AS id_result,
b.id AS id_country,
c.id AS id_region,
d.id AS id_city,
e.id AS id_university,
f.id AS id_faculty,
g.id AS id_speciality,
h.id AS id_department,
i.id AS id_email,
(DATE_FORMAT(FROM_UNIXTIME(UNIX_TIMESTAMP(@MIN) + FLOOR(RAND() * TIMESTAMPDIFF(SECOND, @MIN, @MAX))), '%Y-%m-%d')) AS birth_date,
(DATE_FORMAT(FROM_UNIXTIME(UNIX_TIMESTAMP(@MIN) + FLOOR(RAND() * TIMESTAMPDIFF(SECOND, @MIN, @MAX))), '%Y-%m-%d')) AS enhance_date,
(DATE_FORMAT(FROM_UNIXTIME(UNIX_TIMESTAMP(@MIN) + FLOOR(RAND() * TIMESTAMPDIFF(SECOND, @MIN, @MAX))), '%Y-%m-%d')) AS expiration_date,
(DATE_FORMAT(FROM_UNIXTIME(UNIX_TIMESTAMP(@MIN) + FLOOR(RAND() * TIMESTAMPDIFF(SECOND, @MIN, @MAX))), '%Y-%m-%d')) AS graduation_date,
(DATE_FORMAT(FROM_UNIXTIME(UNIX_TIMESTAMP(@MIN) + FLOOR(RAND() * TIMESTAMPDIFF(SECOND, @MIN, @MAX))), '%Y-%m-%d')) AS issue_date
FROM temp_result AS a
CROSS JOIN temp_address1 AS b
CROSS JOIN temp_address2 AS c
CROSS JOIN temp_address3 AS d
CROSS JOIN temp_university AS e
CROSS JOIN temp_faculty AS f
CROSS JOIN temp_speciality AS g
CROSS JOIN temp_department AS h
CROSS JOIN temp_email AS i
)
SELECT * FROM temp_results
LIMIT 1000000;