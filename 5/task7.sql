use laba;

SET foreign_key_checks =0;
TRUNCATE TABLE street_type;
SET foreign_key_checks =1;

INSERT IGNORE into street_type(street_type) VALUES ('Парк'),
('Площадь'),('Переулок'),('Набережная'),('Бульвар'),('Станция'),('Тракт'),('Ш
оссе'),('Территория'),('Следственный изолятор'),('Воинская
чать'),('Кольцо'),('Тупик'),('Проезд'),('Исправительное
учериждение'),('Проезд');