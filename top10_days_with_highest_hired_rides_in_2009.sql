
    WITH hired_rides AS (
        SELECT pickup_datetime,
               COUNT(*) num_rides,
               AVG(trip_distance) avg_distance
        FROM (
            SELECT pickup_datetime, trip_distance
            FROM yellow_taxi
            WHERE pickup_datetime >= '2009-01-01' AND pickup_datetime < '2010-01-01'
            UNION ALL
            SELECT pickup_datetime, distance
            FROM uber
            WHERE pickup_datetime >= '2009-01-01' AND pickup_datetime < '2010-01-01'
             ) AS all_rides
        GROUP BY strftime('%j', pickup_datetime)
        ORDER BY num_rides DESC
        LIMIT 10
    )

    SELECT pickup_datetime, num_rides, avg_distance
    FROM hired_rides
    