SELECT start_station_id, start_station_name,  end_station_id, end_station_name, COUNT(tripduration) as trip_count
FROM nk1877.citibike

GROUP BY
 start_station_id,
 start_station_name,
 end_station_id,
 end_station_name
 ORDER BY trip_count DESC
 LIMIT 5
 
 /* 318, W 41 st & 8 Av ,477,E 43 St & Vanderbilt Ave,61 