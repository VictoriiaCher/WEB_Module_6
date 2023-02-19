--Знайти студента із найвищим середнім балом з певного предмета
SELECT d.name AS Discipline, s.fullname AS Student_name, ROUND(AVG(g.grade),2) AS avg_grade
FROM grades g 
LEFT JOIN students s ON s.id =g.student_id 
LEFT JOIN disciplines d ON g.discipline_id = d.id 
where d.id = 2
GROUP BY s.fullname 
ORDER BY avg_grade DESC 
LIMIT 1;