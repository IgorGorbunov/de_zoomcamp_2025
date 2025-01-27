SELECT count(*)
FROM public.green_tripdata
where to_timestamp(lpep_pickup_datetime,'YYYY-MM-DD HH24:MI:SS') >= '2019-10-01 00:00:00' 
    and to_timestamp(lpep_pickup_datetime,'YYYY-MM-DD HH24:MI:SS') < '2019-11-01 00:00:00'
    and trip_distance < 1.00
    
SELECT count(*)
FROM public.green_tripdata
where to_timestamp(lpep_pickup_datetime,'YYYY-MM-DD HH24:MI:SS') >= '2019-10-01 00:00:00' 
    and to_timestamp(lpep_pickup_datetime,'YYYY-MM-DD HH24:MI:SS') < '2019-11-01 00:00:00'
    and trip_distance > 1
    and trip_distance <= 3

SELECT count(*)
FROM public.green_tripdata
where to_timestamp(lpep_pickup_datetime,'YYYY-MM-DD HH24:MI:SS') >= '2019-10-01 00:00:00' 
    and to_timestamp(lpep_pickup_datetime,'YYYY-MM-DD HH24:MI:SS') < '2019-11-01 00:00:00'
    and trip_distance > 3
    and trip_distance <= 7
    
SELECT count(*)
FROM public.green_tripdata
where to_timestamp(lpep_pickup_datetime,'YYYY-MM-DD HH24:MI:SS') >= '2019-10-01 00:00:00' 
    and to_timestamp(lpep_pickup_datetime,'YYYY-MM-DD HH24:MI:SS') < '2019-11-01 00:00:00'
    and trip_distance > 7
    and trip_distance <= 10
    
SELECT count(*)
FROM public.green_tripdata
where to_timestamp(lpep_pickup_datetime,'YYYY-MM-DD HH24:MI:SS') >= '2019-10-01 00:00:00' 
    and to_timestamp(lpep_pickup_datetime,'YYYY-MM-DD HH24:MI:SS') < '2019-11-01 00:00:00'
    and trip_distance > 10