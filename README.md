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
## 🧰 Tech Stack

- **Microsoft SQL Server**
- **T-SQL**
- **GitHub** (Version Control)
- **.NET Core** or C# for frontend/backend integration

---

## 📌 Goals

This project was designed to:

- Reinforce advanced SQL concepts
- Simulate real-life data handling
- Demonstrate full control over schema design and data change tracking
- Serve as a portfolio-ready backend database system

---

## 📎 Future Ideas

- Integrate with a .NET API or frontend
- Automate monthly sales reports using SQL Server Agent
- Add role-based access logic using SQL users and permissions
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

