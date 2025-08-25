-- Create Database
CREATE DATABASE student_database;

-- Create Table
CREATE TABLE student_table (
    Student_id INTEGER PRIMARY KEY,
    Stu_name TEXT,
    Department TEXT,
    email_id TEXT,
    Phone_no NUMERIC,
    Address TEXT,
    Date_of_birth DATE,
    Gender TEXT,
    Major TEXT,
    GPA NUMERIC,
    Grade TEXT
);

-- 2. Data Entry

INSERT INTO student_table (Student_id, Stu_name, Department, email_id, Phone_no, Address, Date_of_birth, Gender, Major, GPA, Grade) VALUES
(1, 'Mugilan', 'Mechanical', 'mugilan@gmail.com', 9876543210, 'Chennai', '2000-05-10', 'Male', 'Thermal', 7.8, 'A'),
(2, 'Vinitha', 'Civil', 'vinitha@gmail.com', 9876543211, 'Coimbatore', '2001-03-15', 'Female', 'Structural', 8.2, 'A'),
(3, 'Yaksha', 'Aerospace', 'yaksha@gmail.com', 9876543212, 'Madurai', '2002-07-20', 'Female', 'Avionics', 6.5, 'B'),
(4, 'Aarav', 'Mechanical', 'aarav@gmail.com', 9876543213, 'Chennai', '1999-11-11', 'Male', 'Design', 4.8, 'C'),
(5, 'Jameer', 'Civil', 'jameer@gmail.com', 9876543214, 'Salem', '2000-09-25', 'Male', 'Construction', 5.6, 'B'),
(6, 'Manoj', 'Aerospace', 'manoj@gmail.com', 9876543215, 'Trichy', '2001-02-05', 'Male', 'Aerodynamics', 9.0, 'A'),
(7, 'Raja', 'Civil', 'raja@gmail.com', 9876543216, 'Chennai', '2002-06-18', 'Male', 'Structural', 3.9, 'C'),
(8, 'Nikesh', 'Mechanical', 'nikesh@gmail.com', 9876543217, 'Madurai', '2001-01-01', 'Male', 'Thermal', 8.5, 'A'),
(9, 'Venu', 'Aerospace', 'venu@gmail.com', 9876543218, 'Coimbatore', '1999-08-08', 'Male', 'Propulsion', 7.0, 'B'),
(10, 'Leo', 'Civil', 'leo@gmail.com', 9876543219, 'Chennai', '2000-04-22', 'Male', 'Construction', 6.2, 'B');

-- 3. Student Information Retrieval

SELECT *
FROM student_table
ORDER BY Grade DESC;


-- 4.Query for Male Students
SELECT *
FROM student_table
WHERE Gender = 'Male';

-- 5. Query for Students with GPA less than 5.0
SELECT *
FROM student_table
WHERE GPA < 5.0;

-- 6. Update Student Email and Grade
UPDATE student_table
SET email_id = 'updated_email@gmail.com',
    Grade = 'A'
WHERE Student_id = 4;

-- 7. Query for Students with Grade "B"
SELECT 
    Stu_name,
    TIMESTAMPDIFF(YEAR, Date_of_birth, CURDATE()) AS Age
FROM student_table
WHERE Grade = 'B';

-- 8. Grouping and Calculation
SELECT 
    Department,
    Gender,
    AVG(GPA) AS Average_GPA
FROM student_table
GROUP BY Department, Gender;

-- 9. Table Renaming
ALTER TABLE student_table
RENAME TO student_info;

-- 10. Retrieve Student with Highest GPA
SELECT Stu_name, GPA
FROM student_info
ORDER BY GPA DESC
LIMIT 1;












