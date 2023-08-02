drop schema `awesome chocolates`;
create schema sales_data;
use sales_data;
select * from sales_data;

-- top 10 product sold by the company
select * from sales_data 
order by QUANTITYORDERED desc
limit 10

-- list and count of total shipped product;
select count(ordernumber) from sales_data
where status='Shipped' 

select * from sales_data
where status='Shipped' 

--list of Cancelleditems
select * from sales_data
where status='Cancelled'

--count of shipped items in the year 2003

select count(*) from sales_data
where YEAR_ID= 2003 and status='Shipped';

--avg sales, minimum sale, maximum sale of year 2004
select avg(SALES) as avg_sales, min(SALES) as Min_sale, max(SALES) as Max_sale
from sales_data
where YEAR_ID= 2004

--avg sales of USA and Australia

select avg(SALES) as avg_sales_USA
from sales_data
where COUNTRY= 'USA'

select avg(SALES) as avg_sales_Australia
from sales_data
where COUNTRY= 'Australia'

-- count of country where sales is greater than 3000 
select count(ORDERNUMBER), country from sales_data
where SALES>=3000
group by COUNTRY;

--list of countries
select DISTINCT COUNTRY
from sales_data

--list and count of orders wehere sales is betwwen 3000-4000
select * from sales_data
where sales between  3000 and 4000

select count(*) from sales_data
where sales between  3000 and 4000





