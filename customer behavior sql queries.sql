select gender , SUM(purchase_amount) as revenue
from customer 
group by gender,


select customer_id, purchase_amount
from customer
where discount_applied='Yes' and purchase_amount>= (
select AVG(purchase_amount) from customer)


select item_purchased,ROUND(AVG(review_rating::numeric),2)  as "average rating"
from customer
group by item_purchased
order by avg(review_rating) desc
limit 5;

select shipping_type,
AVG(purchase_amount)
from customer
where shipping_type in ('Standard', 'Express')
group by shipping_type


select  subscription_status,
COUNT(customer_id) as total_customers,
ROUND(AVG(purchase_amount),2) as average_spend,
ROUND(SUM(purchase_amount),2) as total_revenue
from customer
group by subscription_status
order by total_revenue, average_spend desc;


select item_purchased ,
ROUND(100*SUM(CASE WHEN discount_applied='Yes' THEN 1 ELSE 0 END)/COUNT(*) ,2) as discount_rate
from customer
group by item_purchased
order by discount_rate desc
limit 5;


with customer_type as(
select customer_id,previous_purchases,
CASE 
	WHEN previous_purchases = 1 THEN 'NEW'
	WHEN previous_purchases BETWEEN 2 AND 10 THEN 'RETURNNG'
	ELSE 'LOYAL'
	END AS customer_segment
from customer
)
select customer_segment , count(*) as " number of customers"
from  customer_type
group by customer_segment


with item_count as (
select category, 
item_purchased,
COUNT ( customer_id) as total_orders,
ROW_NUMBER() over(partition by category order by count(customer_id) DESC ) as item_rank
from customer
group by category, item_purchased
)

select item_rank, category, item_purchased, total_orders 
from item_count
where item_rank<=3;


select subscription_status,
count(customer_id) as repeat_buyers
from customer
where previous_purchases >5
group by subscription_status


select age_group,
SUM(purchase_amount) as total_revenue
from customer
group by age_group
order by total_revenue desc;
