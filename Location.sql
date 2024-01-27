USE [School_database]

IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = 'Programme')
BEGIN
  CREATE TABLE dbo.room_school(
  Room_Id   INT NOT NULL PRIMARY KEY, 
  Building  [NVARCHAR](50)  NOT NULL,
  Room_number  INT  NOT NULL,
  Capacity  [NVARCHAR](50)  NOT NULL,
  Room_Type INT NOT NULL,
);
END


INSERT INTO dbo.location_school
(
[Room_Id],[Building],[Room_number],[Capacity],[Room_Type]
)
VALUES
(01,'Building1',10,'10 rooms',001),
(02,'Building2',20,'20 rooms',002),
(03,'Building3',30,'30 rooms',003);
GO

Select * from dbo.location_school