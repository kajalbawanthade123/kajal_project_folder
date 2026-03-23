create database sales;
use sales;

select * from retail_sales_cleaned;

# Total Revenue
select sum(price*quantity) as total_revenue
from retail_sales_cleaned;

# Total Orders
select * from retail_sales_cleaned;

# top 5 Customers
select customer_name,
sum(price*Quantity) as total_spent
from retail_sales_cleaned
group by customer_name
order by total_spent desc
limit 5;

# City wise Sales
select city,
sum(price*quantity) as city_sales
from retail_sales_cleaned
group by city;

# Most sold product
select product,
sum(quantity) as total_sold
from retail_sales_cleaned
group by product
order by total_sold desc
limit 1;

# Category wise revenue
select category,
sum(price*quantity)
from retail_sales_cleaned
group by category;

# average order values
select avg(price*quantity)
from retail_sales_cleaned;

# Monthly sales 
select month(order_date) as month
#sum(price*quantity) as monthly_sales
from retail_sales_cleaned
group by month(order_date);

# payment mode analysis
select payment_mode,
count(*)
from retail_sales_cleaned
group by payment_mode;
