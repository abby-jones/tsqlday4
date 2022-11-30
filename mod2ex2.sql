USE QATSQLPLUS
GO

-- ex2 task 1
SELECT DelegateID
FROM dbo.DelegateAttendance AS da
INNER JOIN dbo.CourseRun AS cr
ON da.CourseRunID = cr.CourseRunID
INNER JOIN dbo.Course AS c
ON c.CourseID = cr.CourseID
WHERE CourseName = 'QATSQL'

-- ex2 task 2
SELECT DelegateID
FROM dbo.DelegateAttendance AS da
INNER JOIN dbo.CourseRun AS cr
ON da.CourseRunID = cr.CourseRunID
INNER JOIN dbo.Course AS c
ON c.CourseID = cr.CourseID
WHERE CourseName = 'QATSQLPLUS'

-- ex2 task 3
SELECT DelegateID
FROM dbo.DelegateAttendance AS da
INNER JOIN dbo.CourseRun AS cr
ON da.CourseRunID = cr.CourseRunID
INNER JOIN dbo.Course AS c
ON c.CourseID = cr.CourseID
WHERE CourseName = 'QATSQL'

INTERSECT

SELECT DelegateID
FROM dbo.DelegateAttendance AS da
INNER JOIN dbo.CourseRun AS cr
ON da.CourseRunID = cr.CourseRunID
INNER JOIN dbo.Course AS c
ON c.CourseID = cr.CourseID
WHERE CourseName = 'QATSQLPLUS'

GO