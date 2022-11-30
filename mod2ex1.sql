USE QATSQLPLUS

-- ex1 task 1
SELECT VendorName, PhoneNumber FROM dbo.Vendor

-- ex1 task 2
SELECT TrainerName, PhoneNumber  FROM dbo.Trainer

-- ex1 task 3
SELECT 'Vendor' AS ContactType, VendorName, PhoneNumber FROM dbo.Vendor
UNION ALL
SELECT 'Trainer' AS ContactType, TrainerName, PhoneNumber  FROM dbo.Trainer