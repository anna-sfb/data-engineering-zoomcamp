# data-engineering-zoomcamp
Workshop Codespaces

Homework module 1 docker & sql
question 1
docker run -it --rm --entrypoint=bash python:3.13
pip --version
25.3 

question 2
db:5432

question 3 
SELECT * FROM green_trips 
WHERE trip_distance <=1
AND lpep_pickup_datetime >= '2025-11-01'
AND lpep_pickup_datetime < '2025-12-01'

8007

question 4
SELECT 
	CAST(lpep_pickup_datetime AS DATE) AS pickup_date,
	MAX(trip_distance) AS max_trip_distance
FROM green_trips 
WHERE trip_distance <=100
GROUP BY CAST(lpep_pickup_datetime AS DATE)
ORDER BY max_trip_distance;

SELECT 
	trip_distance AS max_trip_distance,
	CAST(lpep_pickup_datetime AS DATE) AS lpep_pickup_date
FROM green_trips 
WHERE trip_distance <=100
ORDER BY trip_distance DESC
LIMIT 1


2025-11-14

question 5
SELECT
    zpu."Zone" AS zone,
    SUM(t.total_amount) AS total_total_amount
FROM green_trips t
JOIN zones zpu
    ON t."PULocationID" = zpu."LocationID"
GROUP BY zpu."Zone"
ORDER BY total_total_amount DESC
LIMIT 1;

East Harlem North

question 6
SELECT
	zdo."Zone" AS do_zone,
    MAX(t.tip_amount) AS max_tip_amount
FROM green_trips t
JOIN zones zpu
    ON t."PULocationID" = zpu."LocationID"
JOIN zones zdo
	ON t."DOLocationID" = zdo."LocationID"
WHERE zpu."Zone" = 'East Harlem North'
AND lpep_pickup_datetime >= '2025-11-01'
AND lpep_pickup_datetime < '2025-12-01'
GROUP BY zdo."Zone"
ORDER BY max_tip_amount DESC
LIMIT 1;

Yorkville West
