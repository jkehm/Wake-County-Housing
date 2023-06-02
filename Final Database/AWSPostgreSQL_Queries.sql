-- Avg Sale Price over the years
SELECT physical_city, 
    year,
    count(*) as how_many
    AVG(total_sale_price) as average_sales_price,
    AVG(heated_area) as average_sqfeet
INTO decade
FROM lastdecadewakecounty
GROUP BY physical_city, year
ORDER BY physical_city;

-- Avg SqFeet over the years

-- Combine the data from decade dataset and population dataset
SELECT DISTINCT ON (ld.physical_city)
    ld.physical_city,
    ld.year,
    AVG(ld.total_sale_price) as average_sales_price,
    AVG(ld.heated_area) as average_sqfeet,
    wp.population
INTO combinedpop
FROM lastdecadewakecounty as ld
LEFT JOIN wakecountypopulation as wp
    ON (ld.physical_city = wp.physical_city)
WHERE (ld.year='2021')
    AND (wp.year='2021')
GROUP BY ld.physical_city, ld.year, wp.population
ORDER BY physical_city ASC;

-- Month info
 SELECT physical_city, 
    year,
    month,
    count(*) as how_many
    AVG(total_sale_price) as average_sales_price,
--INTO monthdecade
FROM lastdecadewakecounty
GROUP BY physical_city, year
ORDER BY physical_city;

SELECT 
    month,
    count(*) as how_many,
    AVG(total_sale_price) as average_sales_price
--INTO monthdecade
FROM lastdecadewakecounty
WHERE (year ='2022')
GROUP BY month
ORDER BY month;


SELECT 
    physical_city,
    year,
    count(*) as how_many,
	AVG (total_sale_price) as average_sale_price,
	AVG (heated_area) as average_sqfeet,
    AVG(deeded_acreage) as average_acreage
--INTO acreage
FROM lastdecadewakecounty
WHERE (year ='2020' AND year= '2023')
GROUP BY physical_city, year
ORDER BY physical_city;

SELECT 
    physical_city,
    year,
    count(*) as how_many,
	AVG (total_sale_price) as average_sale_price,
	AVG (heated_area) as average_sqfeet,
    AVG(deeded_acreage) as average_acreage
--INTO acreage
FROM lastdecadewakecounty
WHERE (year BETWEEN '2020' AND '2023')
GROUP BY physical_city, year
ORDER BY physical_city;