SELECT 
    tzl."Zone" , sum(gt.total_amount)
FROM public.green_tripdata gt
left join taxi_zone_lookup tzl 
    on tzl."LocationID" = gt."PULocationID" 
where to_date(lpep_pickup_datetime, 'YYYY-MM-DD') = '2019-10-18'
group by tzl."Zone" 
having sum(gt.total_amount) > 13000
order by 2 desc