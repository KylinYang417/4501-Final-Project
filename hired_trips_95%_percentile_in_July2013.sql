
    WITH taxi_distance AS (
        SELECT trip_distance 
        FROM yellow_taxi
        WHERE pickup_datetime >= '2013-07-01' AND pickup_datetime < '2013-08-01'
    ), 
    uber_distance AS (
        SELECT distance 
        FROM uber
        WHERE pickup_datetime >= '2013-07-01' AND pickup_datetime < '2013-08-01'
    ) 

    SELECT trip_distance
    FROM (
        SELECT trip_distance FROM taxi_distance 
        UNION ALL 
        SELECT distance FROM uber_distance
    ) AS all_distances
    ORDER BY trip_distance  DESC
    LIMIT 1
    OFFSET ROUND((SELECT COUNT(*) FROM (
                      SELECT trip_distance  FROM taxi_distance 
                      UNION ALL 
                      SELECT distance  FROM uber_distance
                                        )
                 ) * 0.95) - 1

    