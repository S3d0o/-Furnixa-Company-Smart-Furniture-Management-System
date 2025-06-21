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
Furnexa-ERP/
├── 📁 DDL/
│   ├── create_schemas.sql
│   ├── create_tables.sql
│   ├── alter_tables.sql
│   └── drop_tables.sql
│
├── 📁 DML/
│   ├── insert_sample_data.sql
│   └── update_delete_examples.sql
│
├── 📁 Procedures/
│   └── usp_GetCustomerOrders.sql
│   └── usp_AddNewCustomer.sql
│
├── 📁 Functions/
│   └── fn_CalcOrderTotal.sql
│   └── fn_TotalSalesPerProduct.sql
│
├── 📁 Views/
│   └── vw_OrderWithTotal.sql
│   └── vw_LowStockProducts.sql
│
├── 📁 Triggers/
│   └── trg_AfterInsert_Order.sql
│   └── trg_AfterUpdate_Employee.sql
│   └── trg_AfterDelete_Product.sql
│
├── 📁 Audit_Logs/
│   ├── inserted_log.sql
│   ├── updated_log.sql
│   └── deleted_log.sql
│
├── 📁 Indexes/
│   └── index_customer_email.sql
│   └── index_order_date.sql
│
├── 📁 ERD/
│   └── Furnexa_ERD.png
│
├── README.md
└── LICENSE
