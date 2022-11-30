-- ex 2 task 1
DECLARE @Vendor VARCHAR(100)
SET @Vendor = 'QA'

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
		PRINT('Vendor ' + @Vendor + ' does not exist')
		RETURN
	END
	
SELECT *
	FROM dbo.Course AS C
	INNER JOIN dbo.Vendor AS V
	ON C.VendorID = V.VendorID
	WHERE VendorName = @Vendor
GO

-- ex 2 task 2
DECLARE @Vendor VARCHAR(100)
SET @Vendor = NULL

IF @Vendor IS NULL
	BEGIN
		THROW 54000 'Vendor must not be NULL',1
		RETURN
	END

IF NOT EXISTS (SELECT * FROM dbo.Vendor WHERE VendorName = @Vendor)
	BEGIN
		THROW 54000 'Vendor cannot be found',1
		RETURN
	END

SELECT *
	FROM dbo.Course AS C
		INNER JOIN dbo.Vendor AS V
			ON C.VendorID = V.VendorID
	WHERE VendorName = @Vendor	
GO

-- ex 2 task 3
UPDATE dbo.Vendor
SET VendorName = NULL
WHERE VendorID = 1

DECLARE @Vendor VARCHAR(100)
SET @Vendor = NULL

IF @Vendor IS NULL
	BEGIN
		THROW 54000 'Vendor must not be NULL',1
		RETURN
	END

IF NOT EXISTS (SELECT * FROM dbo.Vendor WHERE VendorName = @Vendor)
	BEGIN
	DECLARE @msg VARCHAR(100)
	SET @msg = FORMATMESSAGE('Vendor %s cannot be found.', @Vendor);
	THROW 5400,@msg,1
	RETURN
END

SELECT *
	FROM dbo.Course AS C
		INNER JOIN dbo.Vendor AS V
			ON C.VendorID = V.VendorID
	WHERE VendorName = @Vendor	
GO