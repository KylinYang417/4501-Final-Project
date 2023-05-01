
    WITH hired_rides AS (
        SELECT strftime('%j', pickup_datetime) date,
               COUNT(*) num_rides
        FROM (
            SELECT pickup_datetime
            FROM yellow_taxi
            WHERE pickup_datetime >= '2014-01-01' AND pickup_datetime < '2015-01-01'
            UNION ALL
            SELECT pickup_datetime
            FROM uber
            WHERE pickup_datetime >= '2014-01-01' AND pickup_datetime < '2015-01-01'
             ) AS all_rides
        GROUP BY strftime('%j', pickup_datetime)
    )

    SELECT day, DailyAverageWindSpeed, num_rides
    FROM hired_rides 
    JOIN daily_weather ON hired_rides.date = strftime('%j', daily_weather.day)
    WHERE day >= '2014-01-01' AND day < '2015-01-01'
    ORDER BY DailyAverageWindSpeed DESC
    LIMIT 10
    