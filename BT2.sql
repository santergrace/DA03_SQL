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
-- BT6 
SELECT distinct user_id, 
date(max(post_date)) - date(min(post_date)) as days_between 
 from posts 
 where post_date >='2021-01-01' and post_date < '2022-01-01'
 group by user_id 
 having COUNT(post_id) > 1
--BT7 
SELECT card_name,
max (issued_amount)  - min (issued_amount) as difference
FROM monthly_cards_issued
group by card_name 
order by difference DESC 
-- BT8 
SELECT manufacturer, 
abs(sum(cogs - total_sales)) as total_loss, 
count(drug) as drug_count
from pharmacy_sales 
where cogs - total_sales > 0 
group by manufacturer
order by total_loss DESC   
-- BT9 
select * from Cinema 
where id%2 =1 and description <>'boring'
order by id DESC
-- BT10 
select teacher_id, 
count (distinct subject_id) as cnt 
from Teacher 
group by teacher_id 
-- BT11 
select user_id, 
count (follower_id) as followers_count 
from Followers 
group by user_id 
order by user_id  ASC 
-- BT12 
select class
from Courses 
group by class 
having count(student) >= 5





