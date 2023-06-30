# adhoc_task
In the sales_purchase_data_updated perform the below tasks											
											
Select the											
Row_id, Customer_Name, Order_id, Order_date, order_month, order_year, Country, State, City, Region, Ship_mode, location_info  from the  sales_purchase_data_updated table and they should follow the below rules											
											
1. Get the order id alone from the order_Id column and name it as Order_id											
ex: CA-2022-152156											
o/p  2022-152156 (Expected format)											
											
2.  order_month,  should have month of the order date and year_month should have year of the month											
											
3. Customer id must be in the mentioned format											
Ex: CG-12520 to 12520											
											
4. Concatenate Region,Country, city, state as location_info for each records											
ex: South_United states_Los Anagels_Texas											
											
5. From the derived table ales_purchase_data_updated table create a new table called Sales_order_info it should  have											
Product_ID											
,Category											
,Sub_Category											
,Product_Name											
,Sales											
,Quantity											
, per_quantity_price											
, super_type											
,Discount											
,Profit											
, Loss											
and follow the below pattern											
											
a)product id should be  in this format											
ex FUR-BO-10001798 to 10001798											
b) per_quantity_price should be  output of Sales / Quantity of each customer records											
c) sales_type should be 3 categories											
if sales are higher than 1000 then 'Super'											
if sales are higher than 400 but lesser than 1000  then 'Average'											
if sales are lesser than 400 then 'low'											
d)cLoss will be 1 if profit is negative											
											
											
------Use single select statements to execute this											
											
6) Count of distinct order_ids in  sales_purchase_data_updated table											
7) Count of Unique product names in Sales_order_info											
8) Count of distinct Segments in sales_purchase_data_updated table											
9) Recent order date in  sales_purchase_data_updated table											
10)Old order date in sales_purchase_data_updated table											
11) Customer info of all the columns for the maximum order date											
12) No .of Unique Customers from Texas and New york											
o/p No_of_cust_texas |  No_of_cust_New_york											
