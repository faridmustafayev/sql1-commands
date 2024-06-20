CREATE TABLE users
(
    user_id     BIGSERIAL PRIMARY KEY,
    name        VARCHAR(16),
    birth_date  DATE,
    birth_place TEXT,
    created_at  TIMESTAMP,
    age         INT,
    surname     VARCHAR(32),
    email       VARCHAR(256)
);

ALTER TABLE users
    ADD COLUMN salary NUMERIC(16, 2);

ALTER TABLE users
    ADD COLUMN employees bool;

ALTER TABLE users
    RENAME COLUMN surname TO password;

TRUNCATE users;

DROP TABLE users;

comment ON TABLE users IS 'This is user information';

comment ON COLUMN users.user_id IS 'this is user''s id';
comment ON COLUMN users.name IS 'this is user''s name';
comment ON COLUMN users.birth_date IS 'this is user''s birth date';
comment ON COLUMN users.birth_place IS 'this is user''s birth place';
comment ON COLUMN users.created_at IS 'this is user''s created';
comment ON COLUMN users.age IS 'this is user''s age';
comment ON COLUMN users.password IS 'this is user''s password';
comment ON COLUMN users.email IS 'this is user''s email';
comment ON COLUMN users.salary IS 'this is user''s salary';
comment ON COLUMN users.employees IS 'this is user''s employees';


INSERT INTO users (name, birth_date, birth_place, created_at, age, password, email, salary, employees)
VALUES ('Farid', '2002-07-08', 'Agdash', now(), 21, 'farid2002', 'feridmustafayev@gmail.com', 650, false);

INSERT INTO users (name, birth_date, birth_place, created_at, age, password, email, salary, employees)
VALUES ('Afgan', '1999-03-31', 'Agdash', now(), 24, 'afgan1999', 'afgan@gmail.com', 1200, false);

INSERT INTO users (name, age, salary)
VALUES ('Elkhan', 21, 663);

INSERT INTO users (name, birth_date, email)
VALUES ('Rauf', '2001-02-03', 'raufmensirov@gmail.com');

INSERT INTO users (name, employees, created_at)
VALUES ('Ramiz', true, now());

INSERT INTO users (name, birth_date, birth_place, created_at, age, password, email, salary, employees)
VALUES ('Cavid', '1986-11-08', 'Baku', now(), 38, 'cavid244466666', 'cavidrez@gmail.com', 3000, false);

ALTER TABLE users
    ADD COLUMN position VARCHAR(256);

UPDATE users
SET position = 'Data analytic'
WHERE name = 'Elkhan';

UPDATE users
SET position = 'software engineer'
WHERE name = 'Afgan';

UPDATE users
SET position = 'graphic designer'
WHERE name = 'Ramiz';

INSERT INTO users (name)
VALUES ('Farid');

UPDATE users
SET position = 'marketing'
WHERE name = 'Farid';

UPDATE users
SET position = 'senior program'
WHERE name = 'Cavid';

SELECT *
FROM users;

SELECT name
FROM users;

SELECT position
FROM users
WHERE salary = 1200;

INSERT INTO users (name)
VALUES ('null');

DELETE
FROM users
WHERE name = 'Ramiz';

INSERT INTO users (name, birth_date, salary, age)
VALUES (DEFAULT, '2002-09-08', 120, 25);

INSERT INTO users (age, salary)
VALUES (26, 3500);

DELETE
FROM users
WHERE name IS NULL ;

SELECT *
FROM users
WHERE salary BETWEEN 650 AND 1200;

SELECT *
FROM users
WHERE user_id = 2
   OR user_id = 4;

SELECT user_id, salary
FROM users
WHERE user_id = 1
   OR name = 'Afgan';

SELECT *
FROM users
WHERE salary BETWEEN 650 AND 1200
  AND "user".employees = FALSE;

SELECT *
FROM users
WHERE salary = 1200
  AND (name = 'Farid' OR name = 'Afgan');

SELECT user_id, name
FROM users
ORDER BY user_id DESC ;

SELECT DISTINCT name
FROM users;

SELECT name AS n, now()
FROM users;
