 
 use internship123;
 show tables;

 select * from sales_purchase_data

   
 DROP TABLE IF EXISTS sales_order_info;
CREATE TABLE Sales_order_info AS
SELECT
    Product_ID,
    Category,
    Sub_Category,
    Product_Name,
    Sales,
    Quantity,
    Sales / Quantity AS per_quantity_price,
    super_type,
    Discount,
    Profit,
    Loss
FROM sales_purchase_data;
select *from sales_order_info
    
 ******product id 
select substring(product_id,5,15) as product_id from sales_order_info 

 ******per_quantity_price should be  output of Sales / Quantity of each customer records‎
‎select * from sales_order_info
******sales_type should be 3 categories 
select 
product_id,
category,
sub_category,
product_name,
sales,
quantity,
sales/quantity as per_quantity_price,
case 
   when sales>1000 then 'super'
   when sales>400 and sales<1000  then 'average'
   else 'low'
   end as sales_type,
   discount,
   profit,
   loss
from sales_order_info;
select * from sales_order_info
************** Loss will be 1 if profit is negative
select 
product_id,
category,
sub_category,
product_name,
sales,
quantity,
sales/quantity as per_quantity_price,
case 
   when sales>1000 then 'super'
   when sales>400 and sales<1000  then 'average'
   else 'low'
   end as sales_type,
   discount,
   profit,
   case
   when profit < 0 then 1
   else 0
   end as loss
from sales_order_info;

*****************Count of distinct order_ids in  sales_purchase_data_updated table
select count(*) order_id from sales_purchase_data_updated

******************Count of Unique product names in Sales_order_info ‎
select count(*) product_names from sales_order_info

**************** Count of distinct Segments in sales_purchase_data_updated table
select count(*) segments from sales_purchase_data_updated

************Recent order date in  sales_purchase_data_updated table
select max(order_date) from  sales_purchase_data_updated 

*********Old order date in sales_purchase_data_updated table
select min(order_date)from sales_purchase_data_updated

***************Customer info of all the columns for the maximum order date
select *from sales_purchase_data_updated
where order_date = (select max(order_date) from sales_purchase_data_updated);
***************** No .of Unique Customers from Texas and New york
SELECT
    COUNT(DISTINCT CASE WHEN State = 'Texas' THEN Customer_ID END) AS no_of_customer_texas,
    COUNT(DISTINCT CASE WHEN State = 'New York' THEN Customer_ID END) AS no_of_customer_newyork
FROM sales_purchase_data_updated ;