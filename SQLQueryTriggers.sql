CREATE TRIGGER products_delete
ON Customers
INSTEAD OF DELETE
AS
UPDATE Customers
SET IsDeleted = 1
WHERE CustomerID =(SELECT CustomerID FROM deleted)

GO

CREATE TRIGGER CheckWarrantyOnInsert
ON Devices
AFTER INSERT
AS
BEGIN
    UPDATE d
    SET d.WarrantyExpiryDate = DATEADD(YEAR, 2, i.PurchaseDate)
    FROM Devices d
    INNER JOIN inserted i ON d.DeviceID = i.DeviceID
    WHERE i.WarrantyExpiryDate IS NULL;
END;

GO

CREATE TRIGGER UpdateTechnicianSalaryOnCompletedOrders
ON ServiceOrders
AFTER UPDATE
AS
BEGIN
IF UPDATE(StatusID)
    BEGIN
	    UPDATE t
        SET t.Salary = t.Salary + (
            SELECT SUM(so.FinalCost) * 0.38
            FROM inserted i
            JOIN ServiceOrders so ON i.OrderID = so.OrderID
            WHERE so.TechnicianID = t.TechnicianID
            AND i.StatusID = 4 
            AND (d.StatusID <> 4 OR d.StatusID IS NULL)
        )
        FROM Technicians t
        JOIN inserted i ON t.TechnicianID = i.TechnicianID
        JOIN deleted d ON i.OrderID = d.OrderID
        WHERE i.StatusID = 4 AND (d.StatusID <> 4 OR d.StatusID IS NULL);
    END
END;