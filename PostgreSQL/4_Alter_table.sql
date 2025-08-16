SELECT * FROM product ORDER BY price ASC



CREATE TABLE student(
std_id SERIAL PRIMARY KEY,
name VARCHAR(20) NOT NULL,
age INT NOT NULL
);

INSERT INTO student (name, age) VALUES 
('Rohan Mushan', 21), 
('Mushan Mushan', 25), 
('Rohan Rohan', 19);

SELECT * FROM student ORDER BY AGE ASC;

--1. Add a new Column
ALTER TABLE student
ADD COLUMN email TEXT DEFAULT 'NOT PROVIDED';

--2. Remove a Column
ALTER TABLE Student
DROP COLUMN email ;

--3. Rename a Column
ALTER TABLE student 
RENAME COLUMN name TO full_name;

--4. Chane Data Type of Column
ALTER TABLE student
ALTER COLUMN full_name TYPE TEXT;

--5. Set a Default Value
ALTER TABLE student
ALTER COLUMN age SET DEFAULT 18;

--6. Remove a Default Value
ALTER TABLE student
ALTER COLUMN age DROP DEFAULT;

--7. Add Constraint 
ALTER TABLE student
ADD CONSTRAINT age CHECK (age >= 18);

--8. DELETE a Constraint
ALTER TABLE student
DROP CONSTRAINT age;

--9. Rename a Column 
ALTER TABLE student
RENAME COLUMN age SET DEFAULT 18;

SELECT * FROM student;

DROP TABLE student