--punto 1

SELECT *
FROM `students`
WHERE `date_of_birth` LIKE '1990%';

-- punto 2

SELECT * 
FROM `courses`
WHERE `cfu` > 10;

-- punto 3

SELECT *
FROM `students`
WHERE  `date_of_birth` < DATE_SUB(CURRENT_DATE(), INTERVAL 30 YEAR);

-- punto 4 

SELECT *
FROM `courses`
WHERE `period` = 'I semestre'
AND `year` = 1

-- punto 5

SELECT *
FROM `exams` 
WHERE `date` = '2020/06/20'
AND `hour` > TIME('14:00:00');

--punto 6

SELECT * 
FROM `degrees`
WHERE `level` = 'magistrale';

--punto 7

SELECT COUNT('id') AS 'Numero dipartimenti'
 FROM `departments`;

--punto 8

SELECT *
FROM `teachers`
WHERE `phone` iS NULL

