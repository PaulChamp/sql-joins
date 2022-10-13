-- join 2 tables so every column and record appears
SELECT * FROM owners FULL JOIN cehicles ON owners.id = vehciles.owner_id;

-- count the number of cars for each owner
SELECT
    a.first_name, a.last_name , COUNT(*) AS count
FROM 
    owners AS a JOIN vehicles AS b ON a.id = b.owner_id 
GROUP BY a.id 
ORDER BY a.first_name;


-- count num of cars for each owner and show average price of cars
SELECT 
    a.first_name, a.last_name , ROUND(AVG(b.price)) AS average_price,  COUNT(*) AS count 
FROM 
    owners AS a JOIN vehicles AS b ON a.id = b.owner_id 
GROUP BY 
    a.id HAVING COUNT(*) > 1 AND AVG(b.price) > 10000 
ORDER BY 
    a.first_name DESC;