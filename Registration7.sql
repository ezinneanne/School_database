USE [School_database]

IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = 'Programme')
BEGIN
  CREATE TABLE dbo.registration_school(
    Student_number   INT NOT NULL PRIMARY KEY, 
    Course_number  INT  NOT NULL,
    Term  [NVARCHAR](50)  NOT NULL,
    Reg_status  [NVARCHAR](50)  NOT NULL,
);
END

INSERT INTO dbo.registration_school
(
[Student_number],[Course_number],[Term],[Reg_status]
)
VALUES
(1,011,'First_semester','successful'),
(2,022,'Second_semester','successful'),
(3,033,'Second_semester','successful');
GO

Select * from registration_school