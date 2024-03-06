
SELECT COUNT(*) AS total_trips FROM taxi_trips;
SELECT SUM(total_amount) AS total_revenue FROM taxi_trips;
SELECT SUM(tolls_amount) / SUM(total_amount) AS tolls_fraction FROM taxi_trips;
SELECT SUM(tip_amount) / SUM(total_amount) AS tips_fraction FROM taxi_trips;
SELECT AVG(total_amount) AS avg_trip_amount FROM taxi_trips;
SELECT AVG(trip_distance) AS avg_trip_distance FROM taxi_trips;
SELECT COUNT(DISTINCT payment_type) AS num_payment_types FROM taxi_trips;
SELECT 
    payment_type,
    AVG(fare_amount) AS avg_fare,
    AVG(tip_amount) AS avg_tip,
    AVG(mta_tax) AS avg_tax
FROM 
    taxi_trips
GROUP BY 
    payment_type;
SELECT 
    HOUR(pickup_datetime) AS pickup_hour,
    SUM(total_amount) AS total_revenue
FROM 
    taxi_trips
GROUP BY 
    HOUR(pickup_datetime)
ORDER BY 
    total_revenue DESC
LIMIT 1;
