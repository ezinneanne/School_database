USE [School_database]

IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = 'Programme')
BEGIN
  CREATE TABLE dbo.Programme(
  Prog_number CHAR(10) NOT NULL PRIMARY KEY,
  Prog_name  [NVARCHAR](50)  NOT NULL,
  Prog_description  [NVARCHAR](50)  NOT NULL,
);
END

INSERT INTO dbo.Programme
(
[Prog_number],[Prog_name],[Prog_description]
)
VALUES
('Prog01','Morning','For morning(regular)students'),
('Prog02','Evening','For evening students'),
('Prog03','Weekend','For weekend students');
GO


Select * from dbo.Programme
