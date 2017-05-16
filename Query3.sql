--Problem 1
SELECT * FROM project_uses_tech WHERE tech_id = 3 AND project_id = 5;
--Problem 2
SELECT * FROM project_uses_tech WHERE project_id = 4;
--Problem 3
SELECT * FROM tech LEFT OUTER JOIN project_uses_tech ON project_uses_tech.tech_id = tech.id;
--Problem 4  
SELECT name, count(tech_id)FROM tech LEFT OUTER JOIN project_uses_tech ON project_uses_tech.tech_id = tech.id GROUP BY tech.id;
--Problem 5
SELECT * FROM project LEFT OUTER JOIN project_uses_tech ON project_uses_tech.project_id = project.id;
--Problem 6
SELECT name, count(project_id)FROM project LEFT OUTER JOIN project_uses_tech ON project_uses_tech.project_id = project.id GROUP BY project.id;
--Problem 7
SELECT * FROM project FULL OUTER JOIN project_uses_tech ON project_uses_tech.project_id = project.id;
--Problem 8
SELECT DISTINCT (tech.name) FROM tech INNER JOIN project_uses_tech ON project_uses_tech.tech_id = tech.id;
--Problem 9
SELECT DISTINCT (tech.name) FROM project RIGHT OUTER JOIN project_uses_tech ON project_uses_tech.project_id = project.id RIGHT OUTER JOIN tech ON project_uses_tech.tech_id = tech.id WHERE project_id is NULL;
--Problem 10
SELECT  DISTINCT (project_uses_tech.project_id) FROM project_uses_tech JOIN project ON project_id = project.id;
--Problem 11
SELECT  DISTINCT (project_uses_tech.tech_id) FROM project_uses_tech JOIN tech ON project_uses_tech.tech_id = tech.id WHERE tech_id IS NULL;
--Problem 12
SELECT project.id, project.name, COUNT (project_uses_tech.project_id) FROM project LEFT OUTER JOIN project_uses_tech ON project_uses_tech.project_id = project.id GROUP BY project.id ORDER BY COUNT;
--Problem 13
SELECT tech.id, tech.name, COUNT (project_uses_tech.tech_id) FROM tech LEFT OUTER JOIN project_uses_tech ON project_uses_tech.tech_id = tech.id GROUP BY tech.id ORDER BY COUNT;
--Problem 14
SELECT AVG(COUNT) FROM (SELECT project.id, project.name, COUNT(project.id) FROM project LEFT OUTER JOIN project_uses_tech on project_uses_tech.project_id = project.id GROUP BY project.id) AS project_counts;

