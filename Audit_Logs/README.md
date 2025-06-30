# 🛡️ Audit Logs

This folder contains the definitions and setup for audit log tables.

These logs store snapshots of rows affected by DML operations:
- `InsertedLog`: Tracks new rows.
- `UpdatedLog`: Captures old and new data on updates.
- `DeletedLog`: Logs rows that were deleted.

Audit data is stored in XML format to preserve the full state of each row. These logs are populated automatically by triggers and protected with `DENY` statements to prevent tampering.
