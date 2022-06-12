CREATE TABLE goals_per_season
(
    player VARCHAR(10)
  , year_2018 INT
  , year_2019 INT
  , year_2020 INT
);


INSERT INTO goals_per_season VALUES('Rick', 51, 31, 38);
INSERT INTO goals_per_season VALUES('Jeff', 28, 37 ,36);
INSERT INTO goals_per_season VALUES('George', 40, 55, 48);


SELECT
    *
FROM
    goals_per_season;


SELECT
    *
FROM
    goals_per_season
UNPIVOT
    (
        goals FOR season IN(year_2018 AS '2018', year_2019 AS '2019', year_2020 AS '2020')
    );
