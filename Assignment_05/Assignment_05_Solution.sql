SELECT S.StudentID, S.Name, E.CourseID FROM Student S INNER JOIN Enrollment E ON S.StudentID = E.StudentID;

SELECT S.Name, E.Semester FROM Student S INNER JOIN Enrollment E ON S.StudentID = E.StudentID;

SELECT S.Name, E.Grade FROM Student S INNER JOIN Enrollment E ON S.StudentID = E.StudentID;

SELECT C.CourseName, C.Credits, F.Name AS Faculty_Name FROM Course C INNER JOIN Faculty F ON C.FacultyID = F.FacultyID;

SELECT * FROM Course WHERE FacultyID = 525;

SELECT F.Name, F.Designation, C.CourseName FROM Faculty F INNER JOIN Course C ON F.FacultyID = C.FacultyID;

SELECT S.Name, C.CourseName FROM Student S INNER JOIN Enrollment E ON S.StudentID = E.StudentID INNER JOIN Course C ON E.CourseID = C.CourseID;

SELECT S.Name, C.CourseName, E.Semester FROM Student S INNER JOIN Enrollment E ON S.StudentID = E.StudentID INNER JOIN Course C ON E.CourseID = C.CourseID;

SELECT S.Name, C.CourseName, E.Grade FROM Student S INNER JOIN Enrollment E ON S.StudentID = E.StudentID INNER JOIN Course C ON E.CourseID = C.CourseID WHERE E.Semester = '5th';

SELECT C.CourseName FROM Enrollment E INNER JOIN Course C ON E.CourseID = C.CourseID WHERE E.StudentID = 23105128005;

SELECT S.Name, S.DepartmentID, C.CourseName FROM Student S INNER JOIN Enrollment E ON S.StudentID = E.StudentID INNER JOIN Course C ON E.CourseID = C.CourseID;

SELECT D.DepartmentID, C.CourseName FROM Department D INNER JOIN Course C ON D.DepartmentID = C.DepartmentID;

SELECT F.Name, D.DepartmentName FROM Faculty F INNER JOIN Department D ON F.DepartmentID = D.DepartmentID;

SELECT S.Name, C.CourseName FROM Student S INNER JOIN Enrollment E ON S.StudentID = E.StudentID INNER JOIN Course C ON E.CourseID = C.CourseID WHERE S.DepartmentID = 101;

SELECT S.Name, C.CourseName FROM Student S INNER JOIN Enrollment E ON S.StudentID = E.StudentID INNER JOIN Course C ON E.CourseID = C.CourseID ORDER BY S.Name ASC;

SELECT F.Name, C.CourseName FROM Faculty F INNER JOIN Course C ON F.FacultyID = C.FacultyID ORDER BY C.Credits DESC;

SELECT CourseID, COUNT(StudentID) AS Student_Count FROM Enrollment GROUP BY CourseID;

SELECT FacultyID, COUNT(CourseID) AS Course_Count FROM Course GROUP BY FacultyID;

SELECT DepartmentID, COUNT(StudentID) AS Total_Students FROM Student GROUP BY DepartmentID;

SELECT C.CourseName, MAX(E.Grade) AS Max_Grade FROM Course C INNER JOIN Enrollment E ON C.CourseID = E.CourseID GROUP BY C.CourseName;