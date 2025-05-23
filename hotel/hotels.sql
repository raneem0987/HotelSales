--create database ProjectSQL

use ProjectSQL
go

     --بعطيهم اسم واحد--
with hotels as 
( select * from dbo.['2018$']
union                      --بيجمعهم فى جدول واحد بشرط يكونوا نفس الاعمده بالظبط--
select * from dbo.['2019$']
union
select * from dbo.['2020$'] )

select * 
from hotels
left join dbo.meal_cost$
on hotels.meal = dbo.meal_cost$.meal
left join dbo.market_segment$
on hotels.market_segment = dbo.market_segment$.market_segment






/*select arrival_date_year,hotel,
round(sum ((stays_in_week_nights+stays_in_weekend_nights)*adults),2) as Revenue  --بيقربلى الكسور لارقام صحيحه(round)--
from hotels
group by arrival_date_year,hotel
*/
