USE [School_database]

IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = 'Programme')
BEGIN
  CREATE TABLE dbo.room_school(
  Room_Type INT NOT NULL PRIMARY KEY, 
  Room_Description  [NVARCHAR](50)  NOT NULL,
);
END

INSERT INTO dbo.room_school
(
[Room_Type],[Room_Description]
)
VALUES
(001,'Room1'),
(002,'Room2'),
(003,'Room3');
GO

Select * from room_school