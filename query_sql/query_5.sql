--Знайти які курси читає певний викладач
SELECT t.fullname as Teacher, d.name AS Discipline
FROM disciplines d
join teachers t ON t.id =d.teacher_id 
WHERE d.teacher_id  = 1
GROUP BY Discipline

