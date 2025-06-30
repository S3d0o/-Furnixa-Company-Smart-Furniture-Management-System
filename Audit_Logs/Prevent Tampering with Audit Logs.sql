-- Prevent any DML on audit log tables
DENY INSERT, UPDATE, DELETE ON audit.InsertedLog TO PUBLIC;
DENY INSERT, UPDATE, DELETE ON audit.UpdatedLog TO PUBLIC;
DENY INSERT, UPDATE, DELETE ON audit.DeletedLog TO PUBLIC;
