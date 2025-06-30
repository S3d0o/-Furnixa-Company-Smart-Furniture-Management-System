-- View displays products with stock levels below 10 for quick restocking reference.

CREATE VIEW vw_InventoryLowStock
as
SELECT p.Name,p.QuantityInStock
FROM Inventory.Product p
WHERE p.QuantityInStock<10;
go
