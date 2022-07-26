-- Praticas com Join dia 26/06/2022

--Exercicio 1
SELECT users.id, users.name, cities.name 
FROM users 
JOIN cities ON users."cityId" = cities.id 
WHERE cities.name = 'Rio de Janeiro';

--Exercício 3

SELECT users.id, users.name, courses.name, schools.name, educations."endDate"
FROM educations
JOIN users ON educations."userId" = users.id
JOIN courses ON educations."courseId" = courses.id
JOIN schools ON educations."schoolId" = schools.id
WHERE users.id = 30;






