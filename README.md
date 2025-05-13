# 🛒 THE SMART SUPERMARKET MANAGEMENT SYSTEM

## 📅 Project Details

**Student Name:** Edson MUGABO

**Student ID:** 27502

**Class Group:** Tuesday

**Lecturer:** Eric Maniraguha

**Course Code & Name:** INSY 8311 – Database Development with PL/SQL

**Academic Year:** 2024–2025

## 🌐 Introduction

Retail operations like supermarkets face significant challenges in inventory control, sales tracking, and supplier coordination. Manual processes often lead to stockouts, poor decision-making, and customer dissatisfaction. This project introduces a robust Oracle PL/SQL-based solution to digitize and automate the management of supermarket operations — ensuring efficiency, transparency, and reliability through well-designed database components.

## 💡 Problem Statement

Supermarkets struggle with:

* Inconsistent stock levels
* Manual and error-prone order and invoice processing
* Limited performance analytics
* Lack of audit tracking for sensitive actions

This system resolves these issues using a full-featured Oracle database system with real-time stock tracking, invoice management, and supplier coordination, backed by security and audit features.

## 🎯 Project Objectives

* Automate core supermarket functions like stock, sales, and orders
* Ensure data consistency through constraints and triggers
* Provide analytical tools via PL/SQL functions and cursors
* Enable secure, traceable database operations
* Support real-time insights for inventory and financials

## 🛍️ Target Users

* Cashiers
* Store Managers
* Inventory Controllers
* Suppliers

## 🛠️ Database Features

### 📂 Tables:

* `CATEGORY`
* `PRODUCT`
* `CUSTOMER`
* `SUPPLIER`
* `EMPLOYEE`
* `INVOICE`
* `INVOICE_DETAIL`
* `ORDER_SUPERMARKET`
* `STOCK`
* `AUDIT_LOG`
* `HOLIDAY`

### ⚙️ Constraints:

* Primary keys
* Foreign keys
* Unique constraints
* Not-null constraints
* Domain-specific checks (e.g., `quantity >= 0`)

### 🔢 SQL Components

#### 🔧 Procedures:

* `add_invoice_detail`: Automates inserting invoice items while updating stock.

#### 💡 Functions:

* `get_invoice_total`: Calculates the total value of a single invoice.

#### 👁️ Cursors:

* `low_stock_cursor`: Lists all products below threshold stock levels.

#### 📦 Packages:

* `Supermarket_Package`: Bundles procedures/functions for inventory and billing.

#### 🔐 Triggers:

* `prevent_dml_on_holidays`: Blocks stock/invoice actions on holidays.
* `log_user_action`: Inserts every sensitive DML into the `AUDIT_LOG`.

### 🔄 ERD – Entity Relationship Diagram

The ERD models the supermarket domain with entities for products, sales, suppliers, staff, and stock. Relationships include:

* Products belong to Categories
* Invoices involve Customers and Employees
* Orders link Products and Suppliers
* Stock updates automatically via Triggers

📌 Full ERD available in the documentation folder.

### 🧪 Sample Data

Names and values were adapted to realistic Rwandan context:

* **Customers:** Jean Bosco, Uwase Divine
* **Employees:** Alice Mukamana, Eric Niyonzima
* **Suppliers:** Niyonzima Suppliers Ltd, Kigali Wholesalers
* **Products:** Rice, Sugar, Tea, Soap

### 🧰 Tools Used

* Oracle Database 21c
* Oracle SQL Developer
* DBeaver (for visualization)
* GitHub (version control and documentation)

### 🔐 Auditing & Security

A custom trigger logs all updates and deletions in the `AUDIT_LOG` table with:

* Action performed (e.g., `DELETE`)
* User ID (from `EMPLOYEE`)
* Timestamp of the operation

A separate `HOLIDAY` table works with the `prevent_dml_on_holidays` trigger to stop critical changes on public holidays.

### 📈 Future Enhancements

* Mobile app integration for sales updates
* Real-time analytics dashboard with APEX
* Barcode-based scanning and product registration
* Integration with supplier portals for automated reordering

### 📅 Timeline Overview

* Phase I: Problem Definition ✔️
* Phase II: Process Modeling with Flow Diagrams ✔️
* Phase III: Logical Design with ERD ✔️
![ERD 1](https://github.com/user-attachments/assets/3d3f9926-1f95-4b13-ae0a-39f3d090eb54)
* Phase IV: Physical Database Creation ✔️
* Phase V: Data Population and Testing ✔️
![TESTING FUNCTIONS](https://github.com/user-attachments/assets/b289828e-d31c-459c-b463-3bb4309d344c)

* Phase VI: Advanced PL/SQL Implementation ✔️
![insert data into stock table](https://github.com/user-attachments/assets/37741949-aac2-4787-9af5-181f31da7eb8)

* Phase VII: Auditing and Trigger Management ✔️
* Phase VIII: Final Documentation & GitHub Deployment ✔️

### 🧾 License

This capstone project is developed and submitted as partial fulfillment for the course INSY 8311 – Database Development with PL/SQL, under the Adventist University of Central Africa (AUCA), Academic Year 2024–2025.
