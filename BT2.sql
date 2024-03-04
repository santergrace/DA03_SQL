--BT1 
select 
count (CITY) - count(distinct CITY) 
from STATION 
--BT2
select CITY from STATION 
  where ID%2 = 0 
--BT3 
--BT4 
SELECT 
round(sum(item_count::decimal* order_occurrences)/sum (order_occurrences), 1) as mean_item
FROM items_per_order
--BT5 
  SELECT candidate_id
FROM candidates
where skill in ('Python','Tableau','PostgreSQL')
group by candidate_id 
having count(skill) = 3 
order by candidate_id 

