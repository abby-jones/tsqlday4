USE QATSQLPLUS

-- ex 1 task 1
EXEC sp_addmessage(50003, 16, 'Vendor %s cannot be found')
GO

-- ex 1 task 2
RAISERROR(50003,16,1,'Red Hat')
GO
