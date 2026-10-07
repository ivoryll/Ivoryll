# Perform a SQL Query Lab

## Overview
This lab demonstrates my beginner-level SQL skills in a cybersecurity context. I used SQL to retrieve employee device information, investigate login activity, and organize query results to help identify potentially unusual activity.

## Scenario
As a security analyst, I needed to:
- Review employee devices that may require updates.
- Investigate user login activity for potentially unusual behavior.
- Sort login records by date and time for easier analysis.

The lab used two tables:
- `machines` — employee device information
- `log_in_attempts` — user login activity

## Skills Practiced
- `SELECT`
- `FROM`
- Selecting specific columns
- Selecting all columns with `*`
- `ORDER BY`
- Sorting by multiple columns
- Reviewing login and device data from a security perspective

## SQL Queries

### 1. Retrieve all employee device information
```sql
SELECT *
FROM machines;
```

### 2. Retrieve device IDs and email clients
```sql
SELECT device_id, email_client
FROM machines;
```

### 3. Retrieve device operating system and patch information
```sql
SELECT device_id, operating_system, OS_patch_date
FROM machines;
```

### 4. Review login locations
```sql
SELECT event_id, country
FROM log_in_attempts;
```

### 5. Review login dates and times
```sql
SELECT username, login_date, login_time
FROM log_in_attempts;
```

### 6. Retrieve all login-attempt data
```sql
SELECT *
FROM log_in_attempts;
```

### 7. Sort login attempts by date
```sql
SELECT *
FROM log_in_attempts
ORDER BY login_date;
```

### 8. Sort login attempts chronologically by date and time
```sql
SELECT *
FROM log_in_attempts
ORDER BY login_date, login_time;
```

## Security Relevance
SQL allows security analysts to quickly retrieve and organize information from databases. Device patch data can help identify systems that may need security updates, while login records can help analysts investigate suspicious login locations or unusual access times.

## What I Learned
I learned how to retrieve complete tables, select only the columns needed for an investigation, and sort records using `ORDER BY`. These fundamentals provide a foundation for more advanced SQL filtering and security investigations.

## Next Step
Continue building SQL skills by using `WHERE`, comparison operators, and logical operators to filter large datasets for specific security events.
