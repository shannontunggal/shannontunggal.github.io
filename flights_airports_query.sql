--1 & 2. Select all the data from the table "airports"
SELECT *
FROM airports;

--3. Select 4 identifiers: "faa", "name", "lat", "lon" from the table "airports"
SELECT faa, name, lat, lon
FROM airports;

--4. Rename "lat" to "latitude" and "lon" to "longtitude"
SELECT faa, name, lat AS latitude, lon AS longtitude 
FROM airports;

--5.Round the results of "latitude" and "longtitude" to two decimal places
SELECT faa, name, ROUND(lat, 2) AS latitude, ROUND(lon, 2) AS longtitude 
FROM airports; 

--6. Convert measurements of "temp" field into Celcius
SELECT (temp - 32) * 5/9 AS temp_celcius 
FROM weather;

--7. Create and return a field with the format "This plane seats X", where "X" is "seats"
--field and named the field "plane_seats"
SELECT CONCAT('This plane seats ', seats, '.') AS plane_seats
FROM planes;

--8. Create and return a field, model_seats. The first row of this field should read: 
--"This 2004 Embraer EMB-145XR seats 55."
SELECT year, model, seats, manufacturer
FROM planes; 

SELECT CONCAT('This ', year, ' ', INITCAP(manufacturer), ' ', model, ' seats ', seats, '.') AS model_seats
FROM planes;

--9. Save thhe script as flights_query.sql
