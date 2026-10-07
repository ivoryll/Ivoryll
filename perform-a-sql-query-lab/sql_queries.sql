-- Perform a SQL Query Lab
-- Basic SQL queries used to review employee devices and login activity.

-- Retrieve all employee device data
SELECT *
FROM machines;

-- Retrieve device ID and email client
SELECT device_id, email_client
FROM machines;

-- Retrieve operating system and patch information
SELECT device_id, operating_system, OS_patch_date
FROM machines;

-- Review login locations
SELECT event_id, country
FROM log_in_attempts;

-- Review login date and time
SELECT username, login_date, login_time
FROM log_in_attempts;

-- Retrieve all login attempt data
SELECT *
FROM log_in_attempts;

-- Sort login attempts by date
SELECT *
FROM log_in_attempts
ORDER BY login_date;

-- Sort login attempts by date and time
SELECT *
FROM log_in_attempts
ORDER BY login_date, login_time;
