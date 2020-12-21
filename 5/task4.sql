use laba;

SET foreign_key_checks =0;
TRUNCATE TABLE result;
SET foreign_key_checks =1;
INSERT INTO result(id_mark, id_subject, id_form_of_delivery, id_tutor)
WITH
temp_mark AS
(SELECT id FROM mark ORDER BY rand()),
temp_subject AS
(SELECT id FROM subject ORDER BY rand()),
temp_form_of_delivery AS
(SELECT id FROM form_of_delivery ORDER BY rand()),
temp_tutor AS
(SELECT id FROM tutor ORDER BY rand()),
temp_result AS
(
SELECT d.id AS id_mark,
b.id AS id_subject,
c.id AS id_form_of_delivery,
a.id AS id_tutor
FROM temp_tutor AS a
CROSS JOIN temp_subject AS b
CROSS JOIN  temp_form_of_delivery AS c
CROSS JOIN  temp_mark AS d
)
SELECT * FROM temp_result
LIMIT 1000000;