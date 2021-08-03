use test;
alter table developers add column salary double;
UPDATE developers SET salary = 5000 WHERE (idDeveloper = 1);
UPDATE developers SET salary = 2600 WHERE (idDeveloper = 2);
UPDATE developers SET salary = 1200 WHERE (idDeveloper = 3);
UPDATE developers SET salary = 3200 WHERE (idDeveloper = 4);
UPDATE developers SET salary = 2400 WHERE (idDeveloper = 5);
UPDATE developers SET salary = 2500 WHERE (idDeveloper = 6);
UPDATE developers SET salary = 3300 WHERE (idDeveloper = 7);
UPDATE developers SET salary = 4400 WHERE (idDeveloper = 8);
UPDATE developers SET salary = 2600 WHERE (idDeveloper = 9);
UPDATE developers SET salary = 1000 WHERE (idDeveloper = 10);

