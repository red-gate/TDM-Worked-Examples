CREATE TABLE dbo.[DateFormatDemo] (
	Id INT NOT NULL,
	DoBActualDate DATETIME2 NOT NULL,
	DoB6 NCHAR(6) NOT NULL,
	Dob8 NCHAR(8) NOT NULL,
	CONSTRAINT PK_DateFormatTests PRIMARY KEY CLUSTERED  (Id));

TRUNCATE TABLE dbo.DateFormatDemo

INSERT INTO dbo.DateFormatDemo(Id, DoBActualDate,  DoB6,  Dob8)
VALUES
(   1, '20250812', '120825', '12/08/25'),
(   2, '20251102', '021125', '02/11/25');

SELECT * FROM dbo.DateFormatDemo

