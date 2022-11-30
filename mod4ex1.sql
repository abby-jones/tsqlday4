-- ex 1 task 1
USE QATSQLPLUS 
GO

SELECT VendorName, CourseName, StartDate, NumberDelegates 
FROM dbo.VendorCourseDateDelegateCount

-- ex 1 task 2
SELECT * FROM(
	SELECT VendorName, StartDate, NumberDelegates 
	FROM dbo.VendorCourseDateDelegateCount
	)
	AS BaseData
	PIVOT(
	SUM(NumberDelegates) FOR VendorName IN (QA, Microsoft, Oracle)
	)
	AS Pivotted
