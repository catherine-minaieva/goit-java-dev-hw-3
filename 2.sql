use test;
select p.ProjectName, sum(d.salary) as totalCost
from projects p
inner join developers_projects dp ON p.idProject = dp.idProject
inner join developers d on d.idDeveloper = dp.idDeveloper
group by ProjectName
order by totalCost desc
