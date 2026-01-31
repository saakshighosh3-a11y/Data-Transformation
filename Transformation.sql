                                                   -- TRANSFORMATION IN ETL
-- Question 5 : Convert the following inconsistent “Gender” entries into a standardized format (“Male”, “Female”):["M", "male", "F", "Female", "MALE", "f"]
CREATE DATABASE student_data;
USE student_data;
CREATE TABLE students (
gender VARCHAR(10)
);
INSERT INTO students VALUES
('M'),('male'),('F'),('Female'),('MALE'),('f');
SELECT * FROM students;
SELECT
CASE
WHEN LOWER(gender) IN ('m','male') THEN 'Male'
WHEN LOWER(gender) IN ('f','female') THEN 'Female'
END AS standardized_gender
FROM students;