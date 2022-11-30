-- ex 1
DECLARE @StartDT datetime = GETDATE()
DECLARE @EndDT datetime -- added
DECLARE @Vendor VARCHAR(50)
PRINT @StartDT
-- GO

DECLARE @X INT = 0
WHILE @X < 100
	BEGIN
		PRINT @X
		SET @X = @X + 1
	END
SET @EndDT = GETDATE()
SELECT @StartDT, @EndDT
GO -- added

IF EXISTS (SELECT * FROM sysobjects WHERE Name = 'NewView')
	DROP VIEW dbo.NewView
GO -- added

CREATE VIEW dbo.NewView AS
	SELECT * FROM dbo.Delegate
GO