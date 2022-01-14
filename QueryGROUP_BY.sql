-- Contare quanti iscritti ci sono stati ogni anno

SELECT COUNT(`id`) AS `numero_studenti`, YEAR(`enrolment_date`) AS `data_iscrizione`
FROM `students`
GROUP BY `data_iscrizione`;

-- Calcolare la media dei voti di ogni appello d'esame
SELECT COUNT(`id`) AS `numero_insegnati`, `office_address` 
FROM `teachers`
GROUP BY `office_address`;

-- Calcolare la media dei voti di ogni appello d'esame
SELECT AVG(`vote`) AS `media_voti`, `exam_id`
FROM `exam_student`
GROUP BY `exam_id`;

-- Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT COUNT(`id`) AS `numero_corsi_di_laurea`, `department_id`
FROM `degrees`
GROUP BY `department_id`
