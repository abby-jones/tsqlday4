-- ex 1 task 1
INSERT INTO dbo.BookTransfers VALUES (@ProductID,getdate(),
	'Transfer Out',@Amount)
UPDATE dbo.BookStock
	SET StockAmount = StockAmount - @Amount
	WHERE ProductID = @ProductID
-- what issues may arise from the code given the table designs?
-- can't put nulls in columns
-- stock amount needs to be >= 0

-- ex 1 task 2
DECLARE @ProductID INT = 4
DECLARE @AMOUNT INT = 1

IF (@ProductID IS NULL OR @Amount IS NULL)
	BEGIN;
		THROW 59999, 'Neither variable is allowed to be null',1
		RETURN
	END

BEGIN TRY
	BEGIN TRAN
		INSERT INTO dbo.BookTransfers VALUES
		(@ProductID, getdate(),'Transfer Out',-@Amount)
		UPDATE dbo.BookStock
		SET StockAmount = StockAmount - @Amount
		WHERE ProductID = @ProductID
		COMMIT TRAN
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		THROW 59999, 'An error occurred in the transaction. Everything rolled back',1
	END CATCH
	GO