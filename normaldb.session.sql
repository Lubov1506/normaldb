DROP TABLE test;
CREATE TABLE test(
    v1 char(13),
    v2 int,
    PRIMARY KEY (v1, v2)
);

INSERT INTO test VALUES 
('test', 1), ('abra', 2), ('test', 1)



CREATE TABLE employers (
    id serial PRIMARY KEY,
    name varchar(32) REFERENCES positions,
    position varchar(32)
)

INSERT INTO employers (name, position, car_aviability) VALUES 
('John' , 'HR', false),
('Ann' , 'sales', false),
('Pit' , 'developer', false),
('Mike' , 'driver', true)

CREATE TABLE positions (
    name varchar(64) PRIMARY KEY,
    car_aviability boolean
)

INSERT INSERT positions VALUES 
('HR', false),('developer', false), ('driver', true)



CREATE TABLE students (
    id serial PRIMARY KEY
)

CREATE TABLE teachers (
    id serial PRIMARY KEY,
    subject varchar(32) REFERENCES subjects
)

CREATE TABLE subjects (
    name varchar(32) PRIMARY KEY
)

CREATE TABLE student_to_teachers (
    student_id int REFERENCES students,
    teavher_id int REFERENCES teachers,
    PRIMARY KEY (teavher_id, student_id)
);

INSERT INTO student_to_teachers VALUES 
(1,1),
(1,2),
(2,2),
(2,1);