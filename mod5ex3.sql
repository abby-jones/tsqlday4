-- ex 3 task 1
DECLARE @Vendor VARCHAR(100)
SET @Vendor = 'NULL'
SELECT *
	FROM dbo.Course AS C
		INNER JOIN dbo.Vendor AS V
			ON C.VendorID = V.VendorID
	WHERE 
		VendorName = @Vendor

-- ex 3 task 2
DECLARE @Vendor VARCHAR(100)
SET @Vendor = NULL

IF @Vendor IS NULL
	PRINT('Vendor cannot be null')
ELSE
SELECT *
	FROM dbo.Course AS C
		INNER JOIN dbo.Vendor AS V
			ON C.VendorID = V.VendorID
	WHERE 
		VendorName = @Vendor
GO

-- ex 3 task 3
DECLARE @Vendor VARCHAR(100)
SET @Vendor = 'AQ'

IF @Vendor IS NULL
	PRINT('Vendor cannot be null')
ELSE
	IF NOT EXISTS(
		SELECT * FROM dbo.Vendor
		WHERE VendorName = @Vendor
		)
		PRINT('Vendor name cannot be found')
	ELSE
		SELECT *
		FROM dbo.Course AS C
		INNER JOIN dbo.Vendor AS V
			ON C.VendorID = V.VendorID
		WHERE 
		VendorName = @Vendor
GO

-- ex 3 task 4
DECLARE @Vendor VARCHAR(100)
SET @Vendor = 'AQ'

IF @Vendor IS NULL
	BEGIN
		PRINT('Vendor cannot be null')
		RETURN
	END

IF NOT EXISTS(
	SELECT * FROM dbo.Vendor
	WHERE VendorName = @Vendor
	)
	BEGIN
		PRINT('Vendor name cannot be found')
		RETURN
	END

SELECT *
	FROM dbo.Course AS C
	INNER JOIN dbo.Vendor AS V
		ON C.VendorID = V.VendorID
	WHERE 
	VendorName = @Vendor
GO

