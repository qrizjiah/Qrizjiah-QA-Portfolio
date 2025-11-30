# SQL Data Validation Project (QA Portfolio)

This project demonstrates backend data validation and SQL testing skills commonly used in Manual QA roles.  
It includes creating a database schema, inserting test data (including intentional defects), and running validation queries to detect data integrity issues.

---

## 📌 Project Overview

This project simulates an **e-commerce backend** containing:

- Customers  
- Products  
- Orders  
- Order Items  

As a QA Engineer, the goal is to validate that:

✔ Data relationships are correct  
✔ Foreign keys are valid  
✔ Business rules are respected  
✔ Order totals match item totals  
✔ No orphan or invalid data exists  
✔ Inactive products are not used in orders  

This project showcases the SQL skills required to test real-world backend systems.

---

## 📁 Files Included

---

## 🏗 1. Database Schema (schema.sql)

The schema sets up:

### **customers**
- customer_id (PK)  
- first_name / last_name  
- email  
- created_at  

### **products**
- product_id (PK)  
- product_name  
- category  
- price  
- active (boolean)

### **orders**
- order_id (PK)  
- customer_id (FK → customers)  
- order_date  
- order_status  
- order_total  

### **order_items**
- order_item_id (PK)  
- order_id (FK → orders)  
- product_id (FK → products)  
- quantity  
- line_total  

This represents a realistic structure a QA tester would work with.

---

## 🧪 2. Test Data (test_data.sql)

The inserted records include:

- Valid customers  
- Active & inactive products  
- Valid orders  
- Line items for each order  

**Intentional Bugs Included:**  
✔ Incorrect line_total  
✔ Inactive product used in an order  
✔ Totals that do not match item sums  

These intentional defects allow QA validation queries to detect issues — just like real testing.

---

## 🔍 3. Validation Queries (validation_queries.sql)

These SQL queries act as **test cases** to identify problems in the data.

### Includes checks for:

### ✔ Record counts (sanity test)
Ensures tables are populated correctly.

### ✔ Invalid foreign keys
Detects orphaned orders or line items.

### ✔ Inactive products used in orders  
Enforces business rules.

### ✔ Incorrect order totals  
Compares order_total vs SUM(line_total).

### ✔ Incorrect line totals  
(quantity × price ≠ line_total)

### ✔ Customer spending summary  
Generates aggregated test results.

These are the exact types of SQL validations QA engineers run during backend, database, and integration testing.

---

## 🎯 Skills Demonstrated

- SQL querying  
- Data validation & verification  
- Backend QA testing  
- Detecting data integrity issues  
- Foreign key & referential integrity testing  
- Test data creation  
- Business rule validation  
- Schema understanding  
- Debugging incorrect data  

---

## 🚀 How to Run the Project

1. Execute **schema.sql** to create the tables  
2. Execute **test_data.sql** to populate them  
3. Run **validation_queries.sql** to detect defects  

This workflow simulates a real QA process inside a database environment.

---

## ✔ Summary

This SQL Data Validation Project highlights core QA skills that apply directly to real-world backend testing:

- Strong SQL  
- Ability to find data defects  
- Understanding of how systems store and connect data  
- Ability to validate complex business logic  
- QA-style test approach to databases  

It serves as a strong part of a Manual QA portfolio.
