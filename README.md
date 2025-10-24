# Aggregate-Functions-and-Grouping
# Task 4: Aggregate Functions and Grouping (PostgreSQL)

## 🎯 Objective
Use SQL **aggregate functions** and the **GROUP BY** clause to summarize and analyze tabular data.

---

## 🧰 Tools Used
- **pgAdmin 4** (PostgreSQL)
- SQL Aggregate Functions: `COUNT()`, `SUM()`, `AVG()`, `MAX()`, `MIN()`, `ROUND()`
- Clauses: `GROUP BY`, `HAVING`

---

## 🗂️ Table Structure
Table Name: **employees**

| Column Name | Data Type | Description |
|--------------|------------|-------------|
| emp_id | SERIAL | Primary Key |
| name | VARCHAR(50) | Employee Name |
| department | VARCHAR(50) | Department Name |
| salary | NUMERIC(10,2) | Employee Salary |
| age | INT | Employee Age |

---

## 📊 Sample Data
Inserted 7 sample employee records across HR, IT, and Finance departments.

---

## 🧮 Queries Performed
1. **COUNT()** – Total number of employees  
2. **SUM()** and **AVG()** – Total and average salary  
3. **GROUP BY** – Average and total salary by department  
4. **HAVING** – Filter departments with average salary > 60000  
5. **ROUND()** – Round average salary values  
6. **MAX() / MIN()** – Find highest and lowest salaries per department  

---

## 📈 Expected Output Summary
| Query | Purpose | Example Result |
|--------|----------|----------------|
| COUNT | Total employees | 7 |
| AVG by dept | Average salary per department | HR: 52500, IT: 72333, Finance: 68500 |
| SUM by dept | Total salary per department | HR: 105000, IT: 217000, Finance: 137000 |
| HAVING | Filtered avg salary > 60000 | IT, Finance |
| MAX/MIN | Salary range per department | HR(55000–50000), IT(82000–60000), Finance(72000–65000) |

---

## 📸 Screenshots
Include:
- Table view (`SELECT * FROM employees;`)

---

## 🧠 Key Learning
- Aggregate functions summarize multiple rows into single values.
- `GROUP BY` is used to categorize data.
- `HAVING` filters groups (while `WHERE` filters rows).
- These are essential for data analysis and reporting in SQL.

---
