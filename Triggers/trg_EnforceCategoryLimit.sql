-- Blocks insert if any Category exceeds 50 products.

CREATE TRIGGER trg_EnforceCategoryLimit
ON Inventory.Product
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (
        SELECT i.Category
        FROM inserted i
        GROUP BY i.Category
        HAVING (
            SELECT COUNT(*)
            FROM Inventory.Product p
            WHERE p.Category = i.Category
        ) > 50
    )
    BEGIN
        RAISERROR('Category exceeds the 50-product limit.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
