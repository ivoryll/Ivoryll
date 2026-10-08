# Apply More Filters in SQL

**Status:** Completed — 4/4 tasks  
**Completed:** October 8, 2026  
**Author:** Ivory’ll Cantrell  
**Course:** Google Cybersecurity Professional Certificate  
**Environment:** MariaDB shell, `organization` database

## Project overview

I completed a SQL lab investigating login attempts during a simulated security incident. I filtered records by dates, times, and event IDs to narrow the investigation and retrieve relevant information from the `log_in_attempts` table.

## Skills demonstrated

- Selecting all columns or specific fields with `SELECT`.
- Identifying the source table with `FROM`.
- Filtering records with `WHERE`, `>`, `>=`, and `<`.
- Applying inclusive ranges with `BETWEEN ... AND`.
- Using single quotation marks for date and time values and unquoted numeric values.

## Task 1: Filter login attempts by date

### Login attempts after May 9, 2022

```sql
SELECT *
FROM log_in_attempts
WHERE login_date > '2022-05-09';
```

**Lab result:** 125 login attempts.

### Login attempts on or after May 9, 2022

```sql
SELECT *
FROM log_in_attempts
WHERE login_date >= '2022-05-09';
```

**Lab result:** 165 login attempts. Including the boundary date expanded the results by 40 records.

## Task 2: Filter login attempts within a date range

```sql
SELECT *
FROM log_in_attempts
WHERE login_date BETWEEN '2022-05-09' AND '2022-05-11';
```

**Lab result:** 123 login attempts. Both boundary dates are included.

## Task 3: Investigate login times

### Login attempts before the start of typical work hours

```sql
SELECT *
FROM log_in_attempts
WHERE login_time < '07:00:00';
```

**Lab answer:** The fifth record returned in the lab belonged to `eraab`.

### Narrow the investigation to 6:00–7:00 AM

```sql
SELECT *
FROM log_in_attempts
WHERE login_time BETWEEN '06:00:00' AND '07:00:00';
```

**Lab answer:** The earliest login time in this range was `06:01:31`.

## Task 4: Investigate event IDs

### Event IDs greater than or equal to 100

```sql
SELECT event_id, username, login_date
FROM log_in_attempts
WHERE event_id >= 100;
```

**Lab answer:** The third result returned in the lab had a login date of `2022-05-09`.

### Event IDs between 100 and 150

```sql
SELECT event_id, username, login_date
FROM log_in_attempts
WHERE event_id BETWEEN 100 AND 150;
```

**Lab answer:** The seventh result returned in the lab belonged to `tmitchel`. Both 100 and 150 are included.

## What I learned

My approach was to work through each query using **SELECT → FROM → WHERE**: identify the fields I need, the table containing them, and the condition that determines which records to return.

One issue I corrected was confusing the `login_time` column with the `log_in_attempts` table. I also practiced formatting time values as `'HH:MM:SS'` and learned that `>= 100` needs an upper boundary to limit results to 100–150.

## Security application

These filters help an analyst focus on a relevant investigation period, review activity outside typical work hours, and retrieve specific event records. A matching record provides a lead for further investigation; the filter alone does not establish malicious activity.

## Evidence and limitations

Completion and results above are documented from my completed lab feedback. These queries have not been rerun against a live database for this portfolio entry. References to the third, fifth, and seventh records describe the lab's displayed results. SQL does not guarantee row order without `ORDER BY`.

## Source

Google Cybersecurity Professional Certificate — **Activity: Apply more filters in SQL**. This entry summarizes my completed work using the lab's training data.
