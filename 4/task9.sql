use lab;

SET foreign_key_checks =0;
TRUNCATE TABLE fathername;
SET foreign_key_checks =1;

INSERT INTO fathername(father_name)
SELECT CASE
WHEN RIGHT(first_name, 1) IN ('п', 'б', 'ф', 'в', 'т', 'д', 'с', 'з', 'к', 'г', 'х', 'м', 'н','р', 'л')
THEN CONCAT(first_name, 'ович')
WHEN RIGHT(first_name, 1) IN ('ж', 'ш', 'ч', 'щ', 'ц')
THEN CONCAT(first_name, 'евич')
END
FROM firstname
WHERE RIGHT(first_name,1) NOT IN ('a', 'я')
ORDER BY first_name;