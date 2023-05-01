
    WITH hired_rides AS (
        SELECT strftime('%H', pickup_datetime) pick_day,
               COUNT(*) num_rides
        FROM (
            SELECT pickup_datetime
            FROM yellow_taxi
            WHERE pickup_datetime >= '2012-10-22' AND pickup_datetime < '2012-11-06'
            UNION ALL
            SELECT pickup_datetime
            FROM uber
            WHERE pickup_datetime >= '2012-10-22' AND pickup_datetime < '2012-11-06'
             ) AS all_rides
        GROUP BY strftime('%H', pickup_datetime)
    )

    SELECT DATE, num_rides, HourlyPrecipitation, HourlyWindSpeed
    FROM hired_rides 
    JOIN hourly_weather ON hired_rides.pick_day = strftime('%H', hourly_weather.DATE)
    WHERE DATE >= '2012-10-22' AND DATE < '2012-11-06'
    ORDER BY DATE 
    