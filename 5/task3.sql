use laba;

SET foreign_key_checks =0;
TRUNCATE TABLE address;
SET foreign_key_checks =1;
INSERT INTO address(id_country, id_region, id_city, id_streets, id_street_type)
WITH temp_country AS
(SELECT id FROM country ORDER BY rand()),
temp_region AS
(SELECT id FROM region ORDER BY rand()),
temp_city AS
(SELECT id FROM city ORDER BY rand()),
temp_streets AS
(SELECT id FROM streets ORDER BY rand()),temp_street_type AS
(SELECT id FROM street_type ORDER BY rand()),
temp_result AS(
SELECT d.id AS id_country,
b.id AS id_region,
c.id AS id_city,
a.id AS id_streets,
e.id AS id_street_type
FROM temp_streets AS a
CROSS JOIN temp_region AS b
CROSS JOIN temp_city AS c
CROSS JOIN temp_country AS d
CROSS JOIN temp_street_type AS e)
SELECT * FROM temp_result
LIMIT 10000;