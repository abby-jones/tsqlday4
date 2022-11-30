-- ex 2 task 1
USE QATSQLPLUS
DECLARE @TotalDelegates  INT
SELECT @TotalDelegates = COUNT(*) 
FROM dbo.Delegate
PRINT(@TotalDelegates)