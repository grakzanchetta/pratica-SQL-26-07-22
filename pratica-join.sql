-- Praticas com Join dia 26/06/2022

--Exercicio 1
SELECT users.id AS id, users.name AS name, cities.name AS city 
FROM users 
JOIN cities ON users."cityId" = cities.id 
WHERE cities.name = 'Rio de Janeiro';

--Exercício 3
SELECT users.id AS id, users.name AS name, courses.name AS course, schools.name AS school, educations."endDate"
FROM educations
JOIN users ON educations."userId" = users.id
JOIN courses ON educations."courseId" = courses.id
JOIN schools ON educations."schoolId" = schools.id
WHERE users.id = 30;

--Exercício 4
SELECT users.id AS id, users.name AS name, roles.name AS role, companies.name AS company, experiences."startDate"
FROM experiences
JOIN companies ON experiences."companyId" = companies.id
JOIN roles ON experiences."roleId" = roles.id
JOIN users ON experiences."userId" = users.id
WHERE users.id = 50
AND experiences."endDate" IS NULL;





