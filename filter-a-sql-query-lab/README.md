# Filter a SQL Query Lab

## Overview
In this lab, I practiced filtering SQL queries in MariaDB to retrieve specific security-related information from an organization's database.

The scenario focused on finding information about:
- Employee machines and operating systems
- Machines that require updates
- Employees in specific departments
- Employees assigned to machines in a specific building

## Skills Practiced
- `SELECT`
- `FROM`
- `WHERE`
- Filtering text values with single quotes
- `LIKE`
- The `%` wildcard
- Using `DESCRIBE` to inspect table structure

## Database Orientation
Before querying, I used:

```sql
DESCRIBE machines;
DESCRIBE employees;
```

This helped identify the correct column names and data types before writing queries.

## Task 1: List Organization Machines
Retrieve only the device ID and operating system from the `machines` table:

```sql
SELECT device_id, operating_system
FROM machines;
```

**Result:** 200 rows were returned.

## Task 2: Filter Machines Running OS 2
Retrieve only machines using `OS 2`:

```sql
SELECT device_id, operating_system
FROM machines
WHERE operating_system = 'OS 2';
```

**Result:** 80 machines were running OS 2.

## Task 3: Filter Employees by Department

### Finance
```sql
SELECT *
FROM employees
WHERE department = 'Finance';
```

**Result:** The first employee ID returned was `1003`.

### Sales
```sql
SELECT *
FROM employees
WHERE department = 'Sales';
```

**Result:** 33 employees worked in the Sales department.

## Task 4: Identify Employee Machines

### Find the employee in office South-109
```sql
SELECT *
FROM employees
WHERE office = 'South-109';
```

**Result:** The employee username was `jlansky`.

### Find all employees in the South building
```sql
SELECT *
FROM employees
WHERE office LIKE 'South%';
```

The `%` wildcard matches any number of characters after `South`.

**Result:** The first employee returned worked in the Finance department.

## SQL Filtering Formula
A useful pattern from this lab is:

```sql
SELECT columns
FROM table_name
WHERE column_name = 'value';
```

For pattern matching:

```sql
SELECT columns
FROM table_name
WHERE column_name LIKE 'pattern%';
```

## Security Relevance
Filtering allows a security analyst to quickly narrow large datasets to only the records relevant to an investigation. In this lab, filters helped identify machines needing updates, employees in sensitive departments, and users associated with machines in a specific building.

## What I Learned
I learned how to use `WHERE` to filter exact values and `LIKE` with `%` to search for text patterns. I also reinforced the importance of using exact column names, single quotes for string values, and semicolons to end SQL statements.
