--BT1 
select NAME from CITY
where COUNTRYCODE = 'USA'
and POPULATION > 120000
--BT2 
select * from CITY 
where COUNTRYCODE ='JPN'
--BT3 
SELECT CITY, STATE FROM STATION 
--BT4 
SELECT CITY FROM STATION 
WHERE (CITY LIKE 'a%') OR (CITY LIKE 'e%') OR (CITY LIKE 'i%') OR (CITY LIKE 'o%') OR (CITY LIKE 'u%')
--BT5 
  SELECT DISTINCT CITY FROM STATION 
WHERE (CITY LIKE '%a') OR (CITY LIKE '%e') OR (CITY LIKE '%i') OR (CITY LIKE '%o') OR (CITY LIKE '%u')
-- BT6 
SELECT DISTINCT CITY FROM STATION 
WHERE NOT  ((CITY LIKE 'a%') OR (CITY LIKE 'e%') OR (CITY LIKE 'i%') OR (CITY LIKE 'o%') OR (CITY LIKE 'u%'))
-- BT7 
SELECT DISTINCT CITY FROM STATION 
WHERE (CITY LIKE '%a') OR (CITY LIKE '%e') OR (CITY LIKE '%i') OR (CITY LIKE '%o') OR (CITY LIKE '%u')
-- BT8 
select name from Employee
where salary > 2000 and months < 10 
-- BT9 
select product_id from Products 
where low_fats = 'Y' and recyclable = 'Y'
-- BT10 
select name from Customer 
where referee_id  <> 2 or referee_id is null
--BT11 
select name, population, area from World 
where  area >= 3000000 or  population >= 25000000
--BT12 
select distinct  author_id as id  from Views 
where viewer_id = author_id 
order by  author_id ASC 
--BT13 
select distinct part from parts_assembly 
where finish_date is null 
--BT14 
SELECT * FROM yft_drivers
WHERE
 yearly_salary <= 30000 OR
 yearly_salary >= 70000
-- BT15 
select advertising_channel from uber_advertising
where money_spent >= 100000 and year = '2019'



