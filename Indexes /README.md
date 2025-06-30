# 📚 Indexes Folder – Furnixa SQL Project

This folder contains all index-related scripts used in the Furnixa Smart Furniture Management System. Indexes are essential for improving query performance, enforcing constraints, and optimizing data retrieval across large and frequently accessed tables.

---

## 📌 Purpose

Indexes in this folder are used to:

- Speed up `SELECT`, `JOIN`, `WHERE`, and `ORDER BY` queries.
- Support primary key and unique constraints.
- Improve performance on foreign key lookups.
- Optimize searches on audit log tables.
- Prevent performance degradation as data volume increases.

---

## 🧠 Usage Notes

- Always **analyze execution plans** before creating new indexes.
- Use **covering indexes** when possible for read-heavy queries.
- Avoid creating too many indexes on a single table to prevent slow inserts/updates.
- Rebuild/reorganize indexes periodically for maintenance.

---

## ✅ Best Practices Followed

- Indexes are named using consistent patterns:  
  `IX_[TableName]_[ColumnName]_NC` for non-clustered  
  `PK_[TableName]` for clustered (primary key)  
  `UQ_[TableName]_[ColumnName]` for unique constraints
- Scripts are modular and categorized for easy use.
- Indexes align with the query patterns used in the Furnixa project views, procedures, and reports.

---

## 🔐 Security & Performance

> ⚠️ Indexes impact **write performance** (insert/update/delete). Use only when read optimization is critical.

---

## 📎 Related Folders

- [`/Triggers`](../Triggers) – Indexes support fast change tracking
- [`/Audit logs`](../Audit_Logs) – Indexes improve search/filtering on audit entries
- [`/Views`](../Views) – Indexes enhance performance of complex joins and filters

