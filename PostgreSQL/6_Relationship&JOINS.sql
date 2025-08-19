CREATE DATABASE School_db;

CREATE TABLE student(
std_id SERIAL PRIMARY KEY,
name text NOT NULL
);

INSERT INTO student(NAME) 
VALUES
('Rohan Mushan'),
('Akash Sankanna'),
('Riddhesh Padma');

CREATE TABLE std_info(
std_id SERIAL PRIMARY KEY,
address TEXT NOT NULL,
age INT,
phone BIGINT UNIQUE
);

DROP TABLE std_info;

INSERT INTO std_info(address, age, phone) VALUES
('Solapur, Maharashtra', 21, 1111111111),
('Pune, Maharashtra', 20, 2222222222),
('Mumbai, Maharashtra', 21, 3333333333);

SELECT * FROM std_info;

AlTER TABLE std_info
ADD CONSTRAINT fk_std_id 
FOREIGN KEY(std_id) REFERENCES student(std_id);

SELECT 
s.std_id, s.name, si.address, si.age, si.phone
FROM student s  JOIN std_info si
ON s.std_id = si.std_id;




CREATE TABLE std_marks(
mark_id SERIAL PRIMARY KEY,
std_id INT,
subject VARCHAR(25),
marks INT NOT NULL,
FOREIGN KEY(std_id) REFERENCES student(std_id)
);

INSERT INTO std_marks(std_id, subject, marks) VALUES 
(1, 'English', 85),
(1, 'Maths', 75),
(1, 'Science', 80),

(2, 'English', 80), 
(2, 'Maths', 80),
(2, 'Science', 85),

(3, 'English', 85),
(3, 'Maths', 75),
(3, 'Science', 85)

SELECT * FROM student;
SELECT * FROM std_marks;


SELECT * FROM student s JOIN std_marks sm ON s.std_id = sm.std_id;

SELECT s.name, sm.subject, sm.marks FROM student s JOIN std_marks sm ON s.std_id = sm.std_id 
WHERE name = 'Rohan Mushan';

INSERT INTO student(name) 
VALUES ('Ronin');
SELECT s.name, sm.subject, sm.marks FROM student s LEFT JOIN std_marks sm ON s.std_id = sm.std_id;
INSERT INTO std_marks(std_id, subject, marks) 
VALUES (4, 'English', 79);
SELECT s.name, sm.subject, sm.marks FROM student s RIGHT JOIN std_marks sm ON s.std_id = sm.std_id;
INSERT INTO student(name) 
VALUES ('Github');
SELECT s.name, sm.subject, sm.marks FROM student s FULL JOIN std_marks sm ON s.std_id = sm.std_id;
SELECT s.name, sm.subject, sm.marks FROM student s CROSS JOIN std_marks sm;



