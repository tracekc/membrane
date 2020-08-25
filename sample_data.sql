## POPULATE TEAM ##
insert into `team` values(UUID(), "varun", TRUE, "20200808", null,null,null,1);
insert into `team` values(UUID(), "bettina", TRUE, "20200808", null,null,null,1);
insert into `team` values(UUID(), "dan", TRUE, "20200808", null,null,null,1);
insert into `team` values(UUID(), "xinghui", TRUE, "20200808", null,null,null,1);
insert into `team` values(UUID(), "crsb", FALSE, "20200808", "https://www.google.com", 30,NULL,6);

##Result:
+--------------------------------------+---------+---------------+---------------+------------------------+-------------+------------+------+
| team_name_id                         | name    | is_individual | creation_date | pageurl                | voting_freq | last_voted | size |
+--------------------------------------+---------+---------------+---------------+------------------------+-------------+------------+------+
| 2801f7db-e67b-11ea-930c-42010a8000c6 | crsb    |             0 | 2020-08-08    | https://www.google.com |          30 | NULL       |    6 |
| 3a76f2ed-e67b-11ea-930c-42010a8000c6 | varun   |             1 | 2020-08-08    | NULL                   |        NULL | NULL       |    1 |
| 3a7d814f-e67b-11ea-930c-42010a8000c6 | bettina |             1 | 2020-08-08    | NULL                   |        NULL | NULL       |    1 |
| 3a83e751-e67b-11ea-930c-42010a8000c6 | dan     |             1 | 2020-08-08    | NULL                   |        NULL | NULL       |    1 |
| 3c07daa2-e67b-11ea-930c-42010a8000c6 | xinghui |             1 | 2020-08-08    | NULL                   |        NULL | NULL       |    1 |
+--------------------------------------+---------+---------------+---------------+------------------------+-------------+------------+------+


## POPULATE Relationships ##
insert into `relationships` values(UUID(), "2801f7db-e67b-11ea-930c-42010a8000c6", "3a76f2ed-e67b-11ea-930c-42010a8000c6", TRUE, "20200808");
insert into `relationships` values(UUID(), "2801f7db-e67b-11ea-930c-42010a8000c6", "3a7d814f-e67b-11ea-930c-42010a8000c6", FALSE, "20200808");
insert into `relationships` values(UUID(), "2801f7db-e67b-11ea-930c-42010a8000c6", "3a83e751-e67b-11ea-930c-42010a8000c6", FALSE, "20200808");
insert into `relationships` values(UUID(), "2801f7db-e67b-11ea-930c-42010a8000c6", "3c07daa2-e67b-11ea-930c-42010a8000c6", FALSE, "20200808");

##Result:
+--------------------------------------+--------------------------------------+--------------------------------------+-----------+---------------+
| relationship_id                      | parent_id                            | child_id                             | is_leader | creation_date |
+--------------------------------------+--------------------------------------+--------------------------------------+-----------+---------------+
| aa4dd1b7-e67c-11ea-930c-42010a8000c6 | 2801f7db-e67b-11ea-930c-42010a8000c6 | 3a76f2ed-e67b-11ea-930c-42010a8000c6 |         1 | 2020-08-08    |
| afd0c6e6-e67c-11ea-930c-42010a8000c6 | 2801f7db-e67b-11ea-930c-42010a8000c6 | 3a7d814f-e67b-11ea-930c-42010a8000c6 |         0 | 2020-08-08    |
| afd7350d-e67c-11ea-930c-42010a8000c6 | 2801f7db-e67b-11ea-930c-42010a8000c6 | 3a83e751-e67b-11ea-930c-42010a8000c6 |         0 | 2020-08-08    |
| b1762da5-e67c-11ea-930c-42010a8000c6 | 2801f7db-e67b-11ea-930c-42010a8000c6 | 3c07daa2-e67b-11ea-930c-42010a8000c6 |         0 | 2020-08-08    |
+--------------------------------------+--------------------------------------+--------------------------------------+-----------+---------------+
