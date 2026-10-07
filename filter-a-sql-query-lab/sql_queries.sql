-- Filter a SQL Query Lab

-- Inspect table structures
DESCRIBE machines;
DESCRIBE employees;

-- Task 1: List organization machines and operating systems
SELECT device_id, operating_system
FROM machines;

-- Task 2: Filter machines running OS 2
SELECT device_id, operating_system
FROM machines
WHERE operating_system = 'OS 2';

-- Task 3: Finance employees
SELECT *
FROM employees
WHERE department = 'Finance';

-- Task 3: Sales employees
SELECT *
FROM employees
WHERE department = 'Sales';

-- Task 4: Employee assigned to South-109
SELECT *
FROM employees
WHERE office = 'South-109';

-- Task 4: All employees in the South building
SELECT *
FROM employees
WHERE office LIKE 'South%';
