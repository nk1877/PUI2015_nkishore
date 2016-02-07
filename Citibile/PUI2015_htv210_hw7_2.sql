SELECT
 start_station_id, start_station_name as     	start_station_location,
 CDB_TransformToWebmercator(CDB_LatLng(
 start_station_latitude,
 start_station_longitude)
 ) as the_geom_webmercator,
 COUNT(tripduration) as trip_count
FROM nk1877.citibike
WHERE
ST_DWithin(
 CDB_LatLng(
 end_station_latitude,
 end_station_longitude
 )::geography,
 CDB_LatLng(40.730806,-73.997440)::geography,
 1000)
AND
extract(DOW FROM starttime) IN (0,6)

GROUP BY
 start_station_id,
 start_station_latitude,
 start_station_name,
 start_station_longitude
ORDER BY trip_count DESC
LIMIT 1

/* 435, W 21 St & 6 Ave , 63