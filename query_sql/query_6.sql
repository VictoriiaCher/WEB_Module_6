--Знайти список студентів у певній групі
SELECT s.fullname AS Student, g.name AS Group_name
FROM students s
JOIN groups g ON g.id = s.group_id 
WHERE g.id  = 1

