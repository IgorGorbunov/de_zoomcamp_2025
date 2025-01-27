SELECT 
    distinct
    to_date(lpep_pickup_datetime, 'YYYY-MM-DD'), 
    max(trip_distance) over (partition by to_date(lpep_pickup_datetime, 'YYYY-MM-DD'))
FROM public.green_tripdata
order by 2 desc, 1
limit 1