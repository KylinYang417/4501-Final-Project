
    SELECT COUNT(vendor_id) AS count, strftime('%H', pickup_datetime) hour 
    FROM yellow_taxi
    GROUP BY strftime('%H', pickup_datetime)
    ORDER BY count DESC
    