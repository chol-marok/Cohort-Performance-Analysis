 -- 01P_data_qualify_check.sql

-- Elrolments per status --- How large is unkwown
SELECT status, COUNT(*) AS total_enrolments
FROM enrolments
GROUP BY status
ORDER BY total_enrolments DESC; 

-- 31.5% (178) of the enrolments records are unkwown

-- what share of students records are missings contact information
SELECT 
    SUM(email = '') missing_email,
    SUM(phone = '') missing_phone
FROM students;

-- 75% of students