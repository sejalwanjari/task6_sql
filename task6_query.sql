select * from sales

select * from customer

select * from product

--inner join

select s.order_id,s.order_date,s.product_id,s.ship_mode,
p.product_id,p.category,p.product_name 
from sales as s
inner join product as p
on p.product_id=s.product_id

select s.order_line as s_ord_line,s.customer_id as s_cust_id,
c.customer_name as cust_name, c.customer_id as cust_id 
from customer as c
inner join sales as s
on c.customer_id=s.customer_id

--full join

select c.customer_id,c.customer_name,
s.order_id,s.customer_id,s.ship_mode
from sales as s
full join customer as c 
on c.customer_id = s.customer_id limit 50

--left join

select c.customer_id as id ,c.country as country,
p.product_id as p_id,p.product_name as p_name,p.category as pcategory 
from product as p 
left join customer as c 
on  product_id=c.customer_id

select s.quantity as sales_quantity, s.discount as "sales_discount",
p.category as "pro_category" , p.sub_category as "pro_sub_category"
from sales as s 
left join product as p
on s.product_id = p. product_id

	
--right join

select p.product_id as pro_id, p.category as pro_category,
c.customer_id as cust_id,c.customer_name as cust_name,c.age as cust_age 
from customer as c
right join product as p
on c.customer_id = product_id

--join at three tables

select s.order_id,s.ship_mode,s.customer_id,s.product_id,
customer_name,c.age,c.city,
product_name,p.category from sales as s
inner join customer as c
on s.customer_id=c.customer_id
inner join product as p
on s.product_id=p.product_id


