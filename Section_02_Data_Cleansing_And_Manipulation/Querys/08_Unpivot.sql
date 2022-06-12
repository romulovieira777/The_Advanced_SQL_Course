CREATE TABLE avg_test_scores
(
    class VARCHAR(10)
  , math NUMBER
  , science NUMBER
  , english NUMBER
);

INSERT INTO
    avg_test_scores
VALUES('7A', 70, 50, 80);

INSERT INTO
    avg_test_scores
VALUES('7B', 80, 80, 90);

INSERT INTO
    avg_test_scores
VALUES('7C', 80, 67, 89);


SELECT
    *
FROM
    avg_test_scores;


SELECT
    *
FROM
    avg_test_scores
UNPIVOT(avg_score FOR subject IN(MATH AS 'Mathematics', SCIENCE, ENGLISH));
