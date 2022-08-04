use olist;

select max(price) as max_price, min(price) as min_price from order_items;

select concat(date(min(shipping_limit_date))," : ", date(max(shipping_limit_date))) as shipping_range  from order_items;

select customer_state, (count(customer_id))
from customers
group by customer_state
order by count(customer_id) desc
limit 1;

select customer_city, customer_state, count(customer_id)
from customers 
where customer_state ="SP"
group by customer_city
order by count(customer_id) desc
limit 1;

select distinct(business_segment) from closed_deals
where business_segment is not null;



select business_segment, sum(declared_monthly_revenue)
from closed_deals
where declared_monthly_revenue is not null and business_segment is not null
group by business_segment
order by sum(declared_monthly_revenue) desc
limit 3;

select * from closed_deals;

select count(distinct(review_score)) as total_grades from order_reviews;


select review_score, count(review_score), case
when review_score=1 then "Do not buy" when review_score=2 then "buy for your mother in law" when review_score=3 then "Decent" when review_score=4 then "Very good" when review_score=5 then "Perfection" end as Description
from order_reviews
group by review_score
order by count(review_score) desc
limit 1;

select distinct(review_score), count(review_score) from order_reviews
group by review_score
order by review_score;




