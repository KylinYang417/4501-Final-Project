
    SELECT COUNT(key) AS count, strftime('%w', pickup_datetime) hour 
    FROM uber
    GROUP BY strftime('%w', pickup_datetime)
    ORDER BY count DESC
    