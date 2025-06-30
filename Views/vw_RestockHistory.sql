-- View displays restocking history by showing product name, supplier name,
-- restock date, and quantity added from the RestockingLog table.

CREATE OR ALTER VIEW vw_RestockHistory
AS
SELECT 
    p.Name AS ProductName,
    s.Name AS SupplierName,
    rl.RestockDate,
    rl.Quantity
FROM Inventory.RestockingLog rl
JOIN Inventory.Product p ON p.ProductID = rl.ProductID
JOIN Inventory.Supplier s ON s.SupplierID = rl.SupplierID;

