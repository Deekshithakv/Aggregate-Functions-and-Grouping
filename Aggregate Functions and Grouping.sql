-- ==============================================
-- Task 4: Aggregate Functions and Grouping COUNT(), SUM(), AVG(), MAX(), MIN(), ROUND()
-- Objective: Use aggregate functions and grouping to summarize data
-- ==============================================

-- Step 1: Create Table
CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary NUMERIC(10,2),
    age INT
);

-- Step 2: Insert Sample Data
INSERT INTO employees (name, department, salary, age) VALUES
('John', 'HR', 50000, 29),
('Alice', 'IT', 60000, 32),
('Bob', 'HR', 55000, 41),
('David', 'IT', 75000, 28),
('Emma', 'Finance', 65000, 35),
('Sophia', 'Finance', 72000, 31),
('Liam', 'IT', 82000, 36);

-- ==============================================
-- Step 3: Aggregate Queries Using SUM, COUNT, AVG, GROUP BY
-- ==============================================

--  Total Number of Employees
SELECT COUNT(*) AS total_employees
FROM employees;

--  Total and Average Salary of All Employees
SELECT 
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary
FROM employees;

-- Average Salary by Department
SELECT 
    department,
    AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

--  Total Salary Paid per Department
SELECT 
    department,
    SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- Employee Count per Department
SELECT 
    department,
    COUNT(*) AS emp_count
FROM employees
GROUP BY department;

--  Department with Average Salary Greater Than 60000
SELECT 
    department,
    AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;

--  Rounded Average Salary (2 Decimal Places)
SELECT 
    department,
    ROUND(AVG(salary), 2) AS rounded_avg_salary
FROM employees
GROUP BY department;

--  Highest and Lowest Salary by Department
SELECT 
    department,
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary
FROM employees
GROUP BY department;

-- ==============================================
-- Step 4: Verification / Table Existence Check
-- ==============================================

-- Check if table exists (returns table name or NULL)
SELECT to_regclass('public.employees');

-- OR list all user tables in the current schema
SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public';
