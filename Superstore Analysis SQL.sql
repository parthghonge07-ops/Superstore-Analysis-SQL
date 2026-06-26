--=========================
--Superstore Sales Analysis
--Author: Parth Ghonge
--Tool: PostgreSQL
--=========================

--=========================
--Basic Analysis
--=========================

--Q1:Which region has highest sales
select region,round(sum(sales)::numeric,2) as sales from sales
group by region
order by sales desc;

--Q2:Which category is most profitable
select category,round(sum(profit)::numeric,2) as profit from sales
group by category 
order by profit desc;

--Q3:Which sub-category has highest sales
select sub_category,round(sum(sales)::numeric,2) as sales from sales
group by sub_category
order by sales desc;

--Q4:Monthly sales trend
select extract( year from order_date) as year,extract(month from order_date) as month,
round(sum(sales)::numeric,2) as sales from sales
group by year,month
order by year asc,month asc,sales desc;

--Q5:Top 10 customers by revenue
select customer_name,round(sum(sales)::numeric,2) as revenue from sales
group by customer_name
order by revenue desc 
limit 10;

--Q6:Most valuable customer segment
select segment,round(sum(sales)::numeric,2) as total_sales,round(sum(profit)::numeric,2) as profit,
count(distinct customer_name) as no_of_customers from sales
group by segment
order by total_sales desc;

--Q7:Top 5 cities by profit
select city,round(sum(profit)::numeric,2) as profit from sales
group by city
order by profit desc
limit 5;

--Q8:Top 5 cities with highest loss
select city,round(sum(profit)::numeric,2) as profit from sales
group by city
order by profit
limit 5;

--Q9:High sales but negative profit products
select product_name,round(sum(sales)::numeric,2) as sales,
round(sum(profit)::numeric,2) as profit from sales
group by product_name
having sum(profit)<0
order by sales desc;

--Q10:Discount impact on profit
select discount,round(sum(profit)::numeric,2) as profit,
count(*) as no_orders from sales
group by discount
order by discount;

--======================
--Advance Analysis
--======================

--Q11:Rank regions by profit using RANK()
select region,round(sum(profit)::numeric,2) as sales,
rank() over(order by sum(profit) desc)
from sales
group by region;

--Q12:Running total of monthly sales
select year,month,sales,round(sum(sales) over(partition by year order by month)::numeric,2) as monthly_running_total
from
(select extract(year from order_date) as year,extract(month from order_date) as month,
round(sum(sales)::numeric,2) as sales
from sales
group by year,month
order by year asc,month asc);

--Q13:Year over year sales comparison
select year,sales,round(lag(sales) over(order by year asc),2) as previous_year
from 
(select extract(year from order_date) as year,
round(sum(sales)::numeric,2) as sales from sales
group by year);

--Q14:Average order value by segment
select segment,round(avg(sales)::numeric,2) as avg_order_value from sales
group by segment
order by avg_order_value desc;

--Q15:Ship mode preference by region
select region,ship_mode,count(ship_mode) as no_of_orders,
rank() over(partition by region order by count(ship_mode) desc) as preference from sales
group by region,ship_mode;








