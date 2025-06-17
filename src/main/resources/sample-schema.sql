DROP TABLE  IF EXISTS people;

CREATE TABLE people
(
    person_id  BIGSERIAL NOT NULL PRIMARY key,
    first_name VARCHAR(20),
    last_name  VARCHAR(20)
);
