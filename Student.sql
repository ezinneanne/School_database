USE [School_database]

IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = 'Programme')
BEGIN
  CREATE TABLE dbo.student_school
(
 Student_number   INT NOT NULL PRIMARY KEY, 
 Last_name  [NVARCHAR](50)  NOT NULL,
 First_name  [NVARCHAR](50)  NOT NULL,
 Student_address  [NVARCHAR](50)  NOT NULL,
 Student_date_of_birth  [NVARCHAR](50)  NOT NULL,
 Prog_number CHAR(10) NOT NULL,
 School_number INT NOT NULL,
);
END


INSERT INTO dbo.student_school
(
[Student_number],[Last_name],[First_name],[Student_address],[Student_date_of_birth],[Prog_number],[School_number]
)
VALUES
(1,'Emeka','Emeka','20 house address','16th October 1992','Prog01',001),
(2,'Victor','Emenike','30 house address','25th October 1999','Prog03',002),
(3,'Ganihu','Kyrian','40 house address','15th October 1992','Prog02',003);
GO

Select * from student_school