USE [School_database]

IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = 'Programme')
BEGIN
  CREATE TABLE dbo.course_school(
    Course_number   INT NOT NULL PRIMARY KEY, 
    Course_title  [NVARCHAR](50)  NOT NULL,
    Course_description  [NVARCHAR](50)  NOT NULL,
    Course_credit INT NOT NULL,
);
END


INSERT INTO dbo.course_school
(
[Course_number],[Course_title],[Course_description],[Course_credit]
)
VALUES
(011,'Operating system','All about operating systems',3),
(022,'Database Design','All about database designs',3),
(033,'Assembly Language','All about assenbly language',4);
GO

Select * from course_school