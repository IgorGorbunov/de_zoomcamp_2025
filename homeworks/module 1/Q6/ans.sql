SELECT 
    tzl2."Zone", max(tip_amount)
FROM public.green_tripdata gt
inner join taxi_zone_lookup tzl 
    on tzl."LocationID" = gt."PULocationID" 
inner join taxi_zone_lookup tzl2
    on tzl2."LocationID" = gt."DOLocationID" 
where to_date(lpep_pickup_datetime, 'YYYY-MM-DD') >= '2019-10-01'
    and to_date(lpep_pickup_datetime, 'YYYY-MM-DD') < '2019-11-01'
    and tzl."Zone" = 'East Harlem North'
group by tzl2."Zone" 
order by 2 desc
limit 1