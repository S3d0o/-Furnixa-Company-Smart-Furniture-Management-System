# -Furnixa-Company-Smart-Furniture-Management-System
Furnixa is a fictional furniture retail and management company designed as a full-stack SQL-based project. The system simulates real-world enterprise database operations for handling sales, inventory, HR, and order tracking — with a focus on mastering SQL Server advanced features.
# 🪑 Furnixa Company – Smart Furniture Management System

**Furnixa** is a fictional company developed as an advanced SQL Server project that simulates a real-world furniture retail and management system. It serves as a practice and showcase project for mastering enterprise-level SQL concepts such as triggers, views, stored procedures, functions, and schema design.

---

## 🚀 Features

- ✅ Modular **schema-based** architecture (`changed`, `HR`, `Sales`, etc.)
- ✅ Audit system with **triggers** to track:
  - Inserted records
  - Deleted records
  - Updated records
- ✅ **Stored procedures** for CRUD operations and reports
- ✅ **Views** for analytics and abstraction
- ✅ **User-defined functions** for data validation and formatting
- ✅ Simulation of a full business workflow including:
  - Inventory tracking
  - Employee management
  - Customer orders and delivery
  - Sales reporting

---

## 🧱 Project Structure

```bash
📦 Furnixa/
 ┣ 📁 schemas/
 ┃ ┣ 📄 changed_schema.sql
 ┃ ┣ 📄 hr_schema.sql
 ┃ ┗ 📄 sales_schema.sql
 ┣ 📁 triggers/
 ┃ ┣ 📄 trg_insert_audit.sql
 ┃ ┣ 📄 trg_update_audit.sql
 ┃ ┗ 📄 trg_delete_audit.sql
 ┣ 📁 procedures/
 ┃ ┣ 📄 proc_add_employee.sql
 ┃ ┣ 📄 proc_generate_invoice.sql
 ┃ ┗ 📄 proc_adjust_stock.sql
 ┣ 📁 views/
 ┃ ┣ 📄 vw_top_selling_products.sql
 ┃ ┣ 📄 vw_monthly_sales_report.sql
 ┣ 📁 functions/
 ┃ ┣ 📄 fn_format_fullname.sql
 ┃ ┗ 📄 fn_calculate_discount.sql
 ┗ 📄 README.md

