SELECT county, district, town, COUNT(1) AS sales_number
FROM project_data
GROUP BY county, district, town
ORDER BY sales_number DESC
LIMIT 10;