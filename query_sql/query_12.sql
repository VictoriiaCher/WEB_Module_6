--Оцінки студентів у певній групі з певного предмета на останньому занятті
SELECT  s.fullname AS Student,d.name AS Discipline, gr.name AS Group_name, g.grade AS Grade, g.date_of AS Last_lesson
FROM grades g 
JOIN students s ON s.id = g.student_id 
JOIN groups gr ON gr.id = s.group_id 
JOIN disciplines d ON d.id = g.discipline_id 
WHERE g.discipline_id = 4 AND gr.id =1 AND g.date_of  IN (SELECT MAX(date_of) FROM grades)
	