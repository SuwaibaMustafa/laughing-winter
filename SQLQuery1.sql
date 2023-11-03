-- Create the CollegeDB database
CREATE DATABASE CollegeDB;

-- Use the CollegeDB database
USE CollegeDB;

-- Create the Department table with auto-incrementing DepartmentID
CREATE TABLE Department (
    DepartmentID		INT PRIMARY KEY,
    DepartmentName		VARCHAR(255),
    HeadOfDepartment	VARCHAR(255)
);

-- Create the Student table with auto-incrementing StudentID and a foreign key
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FullName VARCHAR(255),
    Gender VARCHAR(10),
    Year VARCHAR(20), 
    GRNo VARCHAR(10),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

--Create User Credentioals Table
CREATE TABLE UserCredentials(
 UserId INT IDENTITY(1,1),
 [Name] VARCHAR(20),
 [Password] VARCHAR(20)
);
INSERT INTO UserCredentials VALUES('Admin','Admin@123');

-- Insert data into the Department table
INSERT INTO Department (DepartmentID,DepartmentName, HeadOfDepartment)
VALUES
    (1,'Computer', 'Dr.M.U.Kharat'),
    (2,'Information Technology', 'Dr.S.V.Gumaste'),
    (3,'Civil', 'Dr.Shakeel Sayyed'),
	(4,'Mechanical', 'Dr.K.R.Ahire'),
	(5,'Electrical', 'Dr.R.P.Khairnar'),
	(6,'E&TC', 'Dr.S.P.Iyyer'),
	(7,'MCA', 'Dr.M.I.Khan');

-- Insert data into the Student table
INSERT INTO Student (StudentID,FullName, Gender, Year, GRNo, DepartmentID)
VALUES
    (1,'Harshada Barve', 'Female', '2nd year', 'S12345', 1),
    (2,'Suwaiba Sayyed', 'Female', '4th year', 'S67890', 2),
    (3,'Mohammadi Shaikh', 'Female', '1st year', 'S54321', 2),
    (4,'Rahul Bathija', 'Male', '2nd year', 'S98765', 7),
	(5,'Mehraj Khan', 'Male', '1st year', 'S12345', 7),
    (6,'Prince Karavadiya', 'Male', '2nd year', 'S67890', 5),
    (7,'Mayank Gupta', 'Male', '2nd year', 'S54321', 3),
	(8,'Ujjwal Jejurkar', 'Male', '1st year', 'S12345', 6),
    (9,'Aakanksha Barkale', 'Female', '2nd year', 'S67890', 3),
    (10,'Kainat Sayyed', 'Female', '3rd year', 'S54321', 1),
    (11,'Maseera Sayyed', 'Female', '3rd year', 'S98765', 3),
    (12,'Avirat Chandramore', 'Male', '3rd year', 'S98765', 3);

 SELECT	*
 FROM	Department;

 SELECT	*
 FROM	Student;

 SELECT *
 FROM   UserCredentials;