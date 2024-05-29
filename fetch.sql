SELECT * FROM public."Homework";

SELECT l.*, h.*
FROM public."Lesson" l
         LEFT JOIN public."Homework" h ON l.homework_id = h.id;


SELECT l.*, h.*
FROM public."Lesson" l
         LEFT JOIN public."Homework" h ON l.homework_id = h.id
ORDER BY l."updatedAt";


SELECT s.*, l.*
FROM public."Schedule" s
         LEFT JOIN public."Lesson_Schedule" ls ON s.id = ls.schedule_id
         LEFT JOIN public."Lesson" l ON ls.lesson_id = l.id;


SELECT s.id AS schedule_id, COUNT(ls.lesson_id) AS lesson_count
FROM public."Schedule" s
         LEFT JOIN public."Lesson_Schedule" ls ON s.id = ls.schedule_id
GROUP BY s.id;
