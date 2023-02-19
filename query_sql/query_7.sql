--Знайти оцінки студентів у окремій групі з певного предмета
SELECT d.name AS Discipline, gr.name AS Group_name, s.fullname AS Student, g.grade AS Grade
FROM grades g 
LEFT JOIN students s ON s.id = g.student_id 
LEFT JOIN groups gr ON gr.id = s.group_id 
LEFT JOIN disciplines d ON d.id = g.discipline_id 
WHERE d.id = 3 AND gr.id = 1