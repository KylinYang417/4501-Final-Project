-- Write your tables' schemas in this file
-- Create schema file

CREATE TABLE daily_wealther (
	"STATION" BIGINT, 
	"DATE" DATETIME, 
	"LATITUDE" FLOAT, 
	"LONGITUDE" FLOAT, 
	"ELEVATION" FLOAT, 
	"NAME" TEXT, 
	"REPORT_TYPE" TEXT, 
	"SOURCE" TEXT, 
	"DailyAverageDewPointTemperature" FLOAT, 
	"DailyAverageDryBulbTemperature" FLOAT, 
	"DailyAverageRelativeHumidity" FLOAT, 
	"DailyAverageSeaLevelPressure" FLOAT, 
	"DailyAverageStationPressure" FLOAT, 
	"DailyAverageWetBulbTemperature" FLOAT, 
	"DailyAverageWindSpeed" FLOAT, 
	"DailyCoolingDegreeDays" FLOAT, 
	"DailyDepartureFromNormalAverageTemperature" FLOAT, 
	"DailyHeatingDegreeDays" FLOAT, 
	"DailyMaximumDryBulbTemperature" FLOAT, 
	"DailyMinimumDryBulbTemperature" FLOAT, 
	"DailyPeakWindDirection" FLOAT, 
	"DailyPeakWindSpeed" FLOAT, 
	"DailyPrecipitation" TEXT, 
	"DailySnowDepth" TEXT, 
	"DailySnowfall" TEXT, 
	"DailySustainedWindDirection" FLOAT, 
	"DailySustainedWindSpeed" FLOAT, 
	"DailyWeather" TEXT
)

;



CREATE TABLE hourly_wealther (
	"STATION" BIGINT, 
	"DATE" DATETIME, 
	"LATITUDE" FLOAT, 
	"LONGITUDE" FLOAT, 
	"ELEVATION" FLOAT, 
	"NAME" TEXT, 
	"REPORT_TYPE" TEXT, 
	"SOURCE" TEXT, 
	"HourlyAltimeterSetting" TEXT, 
	"HourlyDewPointTemperature" TEXT, 
	"HourlyDryBulbTemperature" TEXT, 
	"HourlyPrecipitation" TEXT, 
	"HourlyPresentWeatherType" TEXT, 
	"HourlyPressureChange" TEXT, 
	"HourlyPressureTendency" FLOAT, 
	"HourlyRelativeHumidity" FLOAT, 
	"HourlySkyConditions" TEXT, 
	"HourlySeaLevelPressure" TEXT, 
	"HourlyStationPressure" TEXT, 
	"HourlyVisibility" TEXT, 
	"HourlyWetBulbTemperature" FLOAT, 
	"HourlyWindDirection" TEXT, 
	"HourlyWindGustSpeed" FLOAT, 
	"HourlyWindSpeed" FLOAT
)

;



CREATE TABLE uber (
	"Unnamed: 0.1" BIGINT, 
	"Unnamed: 0" BIGINT, 
	"key" DATETIME, 
	fare_amount FLOAT, 
	pickup_datetime TIMESTAMP, 
	pickup_longitude FLOAT, 
	pickup_latitude FLOAT, 
	dropoff_longitude FLOAT, 
	dropoff_latitude FLOAT, 
	passenger_count BIGINT, 
	distance FLOAT
)

;



CREATE TABLE yellow_taxi (
	"Unnamed: 0" BIGINT, 
	vendor_id TEXT, 
	pickup_datetime DATETIME, 
	dropoff_datetime DATETIME, 
	passenger_count SMALLINT, 
	trip_distance FLOAT, 
	pickup_longitude FLOAT, 
	pickup_latitude FLOAT, 
	dropoff_longitude FLOAT, 
	dropoff_latitude FLOAT, 
	payment_type TEXT, 
	tip_amount FLOAT, 
	tolls_amount FLOAT, 
	total_amount FLOAT, 
	fare_amount FLOAT, 
	distance FLOAT
)
;