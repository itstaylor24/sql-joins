-- write your queries here
SELECT * FROM owners FULL OUTER JOIN vehicles ON owners.id = vehicles.owner_id;
--1
SELECT first_name, last_name, COUNT(vehicles.model)
 FROM owners JOIN vehicles ON owners.id = vehicles.owner_id 
  GROUP BY owners.id ORDER BY first_name;
--2
SELECT first_name, last_name, ROUND(AVG(vehicles.price)), 
COUNT(vehicles.model) FROM owners JOIN vehicles ON owners.id = vehicles.owner_id 
GROUP BY owners.id HAVING COUNT(vehicles.model) > 1 AND
 ROUND(AVG(vehicles.price)) > 10000  ORDER BY first_name DESC;
--3
