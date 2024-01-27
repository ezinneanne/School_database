USE [School_database]

IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = 'Programme')
BEGIN
  CREATE TABLE dbo.school_school(
  School_number   INT NOT NULL PRIMARY KEY, 
  School_name  [NVARCHAR](50)  NOT NULL,
  School_phone  INT  NOT NULL,
  Room_Id INT NOT NULL,
);
END

INSERT INTO dbo.school_school
(
[School_number],[School_name],[School_phone],[Room_Id]
)
VALUES
(001,'ICT',1234-5678,01),
(002,'Engineering',2341-5678,02),
(003,'General Studies',3412-5678,03);
GO

Select * from dbo.school_school