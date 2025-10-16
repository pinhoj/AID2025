SELECT county, district, town, signup_date, COUNT(1) AS sales_number
FROM project_data
GROUP BY county, district, town, signup_date
ORDER BY sales_number DESC
LIMIT 10;