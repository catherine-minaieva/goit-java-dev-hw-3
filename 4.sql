use test;
alter table projects add column cost double;
UPDATE projects SET cost = 7600 WHERE (idProject = 1);
UPDATE projects SET cost = 4400 WHERE (idProject = 2);
UPDATE projects SET cost = 4900 WHERE (idProject = 3);
UPDATE projects SET cost = 7700 WHERE (idProject = 4);
UPDATE projects SET cost = 3600 WHERE (idProject = 5);