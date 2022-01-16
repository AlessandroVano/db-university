-- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT  `students`.*, `degrees`.`name` AS `degrees_name`
FROM `students`
INNER JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = 'corso di Laurea in economia';

-- Selezionare tutti i corsi di Laurea del Dipartimento di Neuroscienze
SELECT `degrees`.*, `departments`.`name` AS `Dipartimento_Di_Neuroscienze`
FROM `degrees`
INNER JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze'


-- Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `teachers`.`id`, `teachers`.`surname`, `teachers`.`name`,  `course_teacher`.`course_id`, `courses`.`name`
FROM `courses`
INNER JOIN `course_teacher`ON `courses`.`id` = `course_teacher`.`course_id`
INNER JOIN `teachers` ON `course_teacher`.`teacher_id`  = `teachers`.`id`
WHERE `teachers`.`id` = 44

--  Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT `students`.`surname`, `students`.`name`, `degrees`.`name` AS 'Corso_di_Laurea' , `departments`.`name` AS 'Nome_Dipartimento'
FROM `students` 
INNER JOIN `degrees` ON `students`.`degree_id`= `degrees`.`id` 
INNER JOIN `departments` ON `degrees`.`department_id` = `departments`.`id` 
ORDER BY `students`.`surname`, `students`.`surname`;





SELECT `teachers`.`id`, `teachers`.`surname`, `teachers`.`name`,  `course_teacher`.`course_id`