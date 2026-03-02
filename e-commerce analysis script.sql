
CREATE VIEW orders_cleaned as
SELECT       order_id,
			order_date,
			customer_id,
			product_id,
			quantity,
			price,
			CAST(replace(discount,'%','')as INTEGER) as "Discount",
			CASE
			    WHEN lower(city) in ('new delhi','delhi') THEN 'New delhi'
				WHEN lower(city) in ('gurugram','gurgaon') THEN 'Gurgaon'
				WHEN lower(city) in ('bangalore','bengaluru') THEN 'Bangalore'
				ELSE city
				END as city,
			payment_mode
FROM orders_2025;

SELECT sum(quantity*price) as "total gross revenue",
       sum(quantity*price*(1-discount/100.0))as "total net revenue"
FROM orders_cleaned;                                                   /*calculating gross and net revenue*/ 

SELECT count(*)
FROM orders_cleaned;  --Total orders 

SELECT count (customer_id)
FROM customers_2025;   --Total customers

SELECT sum(quantity*price*(1-discount/100.0))as "Net Revenue"
FROM orders_cleaned;     --Net revenue

SELECT count(DISTINCT r.order_id)*100.0/ count(DISTINCT o.order_id)
FROM orders_cleaned o  left JOIN returns_2025 r on o.order_id=r.order_id;   -- order Return rate 

SELECT o.city,
       sum(quantity*price) as "Revenue"
FROM orders_cleaned o 
group by o.city
order by "Revenue" DESC; --Revenue by city 

SELECT p.category,
       sum(o.quantity*o.price*(1-o.discount/100.0))as "net revenue"
FROM products_2025_v2 p JOIN orders_cleaned o on p.product_id=o.product_id
group by p.category
order by "net revenue" DESC;       --revenue by category 

create table Revenue_by_product as 
SELECT p.product_name,
       sum(o.quantity*o.price*(1-o.discount/100.0))as "Net revenue"
FROM products_2025_v2 p JOIN orders_cleaned o on p.product_id=o.product_id
group by p.product_name
order by "Net revenue" DESC;  --revenue by products 

SELECT o.city,
       sum(o.quantity*o.price*(1-o.discount/100.0)) as "Net revenue",
	   count( distinct r.order_id)*100.0/count(distinct o.order_id) as "return rate %"
FROM orders_cleaned o left JOIN returns_2025 r on o.order_id=r.order_id
group by o.city
order by "Net revenue" DESC;        --cities revenue and return rates 

create table Monthly_revenue as 
SELECT strftime('%Y-%m',o.order_date)as "Month",
       sum(o.quantity*o.price*(1-o.discount/100.0))as "Net revenue"
FROM orders_cleaned o 
group by strftime('%Y-%m',o.order_date)
order by "Month";                       --Monthly revenue 

