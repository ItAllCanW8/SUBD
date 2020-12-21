use laba;

SET foreign_key_checks =0;
TRUNCATE TABLE student;
SET foreign_key_checks =1;

INSERT INTO student (id_first_name, id_surname, id_fathername,
id_personal_data)
WITH
temp_first_name AS
(SELECT id FROM first_name ORDER BY rand() LIMIT 100),
temp_surname AS
(SELECT id FROM surname ORDER BY rand() LIMIT 100),
temp_fathername AS
(SELECT id FROM fathername ORDER BY rand() LIMIT 100),
temp_result AS(SELECT
a.id AS id_name,
b.id AS id_surname,
c.Id AS id_fathername,
row_number() over () r
FROM temp_first_name AS a
CROSS JOIN temp_surname AS b
CROSS JOIN temp_fathername AS c)
SELECT * FROM temp_result;