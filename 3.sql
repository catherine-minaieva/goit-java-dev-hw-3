use test;
select sum(d.salary)
from developers d, skills s, developers_skills ds
where s.language='Java' and d.idDeveloper = ds.idDeveloper and s.idSkill=ds.idSkill;