-- ex 2 task 1
SELECT VendorName, CourseName, StartDate, 
SUM(NumberDelegates) AS TotalDelegates
FROM dbo.VendorCourseDateDelegateCount
GROUP BY VendorName, CourseName, StartDate
WITH ROLLUP
GO

-- ex 2 task 2
SELECT VendorName, CourseName, StartDate, 
SUM(NumberDelegates) AS TotalDelegates,
GROUPING_ID(VendorName, CourseName, StartDate) AS GroupingType
FROM dbo.VendorCourseDateDelegateCount
GROUP BY GROUPING SETS (
(VendorName), 
(VendorName, CourseName),
(VendorName, CourseName, StartDate)
)
GO
