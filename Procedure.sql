use learnsql;

-- Procedures--
CREATE PROCEDURE GetAllEmployees
AS
BEGIN
    SELECT * FROM sql_operations;
END;
GO

--alter--
ALTER PROCEDURE  GetAllEmployees
    @empSal INT
AS
BEGIN
    SELECT * FROM sql_operations WHERE salary = @empSal;
END;



--call it--
EXEC GetAllEmployees;

--drop--
DROP PROCEDURE GetAllEmployees;


