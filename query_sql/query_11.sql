--Середній бал, який певний викладач ставить певному студентові
SELECT s.fullname AS Student, t.fullname AS Teacher, ROUND(AVG(g.grade),2) as avg_grade
FROM grades g 
LEFT JOIN students s ON s.id = g.student_id 
LEFT JOIN teachers t ON t.id = d.teacher_id 
LEFT JOIN disciplines d ON d.id = g.discipline_id  
WHERE s.id = 1 AND t.id = 1
GROUP BY s.fullname 

