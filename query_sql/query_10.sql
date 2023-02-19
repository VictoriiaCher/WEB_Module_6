--Список курсів, які певному студенту читає певний викладач
SELECT s.fullname AS Student, t.fullname AS Teacher, d.name AS Discipline
FROM grades g 
LEFT JOIN students s ON s.id = g.student_id 
LEFT JOIN teachers t ON t.id = d.teacher_id 
LEFT JOIN disciplines d ON d.id = g.discipline_id  
WHERE s.id = 2 AND t.id = 4
GROUP BY d.name