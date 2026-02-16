-- Cteating Required Tables according to Question:-
CREATE TABLE Student (
  RollNo INT ,
  Name VARCHAR(50),
  Dept VARCHAR(20),
  Age INT,
  Phone VARCHAR(15)
);
CREATE TABLE Course (
  CourseID INT ,
  CourseName VARCHAR(50),
  Credits INT
);

-- Modifying Table according to Question:-
ALTER TABLE Student ADD City VARCHAR(20);
ALTER TABLE Student ADD Semester INT;
ALTER TABLE Student RENAME COLUMN Phone TO MobileNo; 

-- Deleting the Course Table
DROP TABLE Course;

-- Inserting data into Table
INSERT INTO Student VALUES (221, 'Prem', 'CSE', 21, '8512475845', 'Gaya', 6);
INSERT INTO Student VALUES (598, 'Rahul', 'AI', 21, '9542845584', 'Patna', 4);
INSERT INTO Student VALUES (564, 'Abhishek', 'EEE', 20, '6112365478', 'Madhepura', 6);
INSERT INTO Student VALUES (258, 'Piyush', 'ME', 22, '858741258', 'Gaya', 7);
INSERT INTO Student VALUES (991, 'Gajadhar', 'CSE', 18, '784125879', 'Patna', 5);

-- Displaying Table details according to Question
SELECT * FROM Student;
SELECT RollNo , Name FROM Student;                                                                                                         
SELECT * FROM Student WHERE Dept='CSE';                                                                         
SELECT * FROM Student WHERE Age > 20 ;

-- Modifying Table Entries 
UPDATE Student SET Dept = 'ECE' WHERE RollNo = 564;
UPDATE student SET city = 'Patna' WHERE name = 'Rahul';
UPDATE Student SET Age=Age+1;
DELETE FROM Student WHERE RollNo = 991;

-- Deleting Yable contents
DELETE FROM Student;
