use test;
SELECT p.ProjectName, avg(d.salary)
FROM developers d, projects p, developers_projects dp
where d.idDeveloper=dp.idDeveloper and p.idProject=dp.idProject and p.idProject in
(SELECT idProject FROM projects where cost in
(select min(cost) from projects));
