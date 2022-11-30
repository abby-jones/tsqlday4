USE QATSQLPLUS
GO

-- ex3 task 1
SELECT DelegateID
FROM dbo.DelegateAttendance AS da
INNER JOIN dbo.CourseRun AS cr
ON da.CourseRunID = cr.CourseRunID
INNER JOIN dbo.Course AS c
ON c.CourseID = cr.CourseID
WHERE CourseName = 'QATSQL'

EXCEPT

SELECT DelegateID
FROM dbo.DelegateAttendance AS da
INNER JOIN dbo.CourseRun AS cr
ON da.CourseRunID = cr.CourseRunID
INNER JOIN dbo.Course AS c
ON c.CourseID = cr.CourseID
WHERE CourseName = 'QATSQLPLUS'

GO