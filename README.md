# 🪑 Furnixa Company – Smart Furniture Management System

**Furnixa** is a fictional company developed as an advanced SQL Server project that simulates a real-world furniture retail and management system. It serves as a practice and showcase project for mastering enterprise-level SQL concepts such as triggers, views, stored procedures, functions, and schema design.

---

## 🚀 Features

- ✅ Modular **schema-based** architecture (`Audit`, `HR`, `Sales`, etc.)
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

- **📂 Microsoft SQL Server (T-SQL)**
- **Relational database modeling (normalized)**
- **SSMS for development/testing**
- **🌐 GitHub for version control**
- **🔧 Optional integration with C# / .NET Core API**

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

## 📌 Folder Structure

```bash
Furnexa-ERP/
├── 📁 DDL/
│   └── -- Create, alter, and drop table scripts
│ 
├── 📁 DML/
│   └── -- Sample insert/update/delete operations
│ 
├── 📁 Procedures/
│   └── -- Stored procedures for core operations
│    
├── 📁 Functions/
│   └── -- Scalar/table-valued functions
│   
├── 📁 Views/
│   └── -- Analytical and business logic views
│
├── 📁 Triggers/
│   └── -- Business rule triggers (not audit)
│
├── 📁 Audit_Logs/
│   ├──  -- Inserted, Updated, Deleted log triggers
│
├── 📁 Indexes/
│   └── -- SQL indexing scripts
│
├── 📁 ERD/
│   └── -- Database diagram and design
│
├── README.md
└── LICENSE
