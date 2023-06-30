
                          Get the order id alone from the order_Id column
 select substring(order_id,4,14)  as order_id from sales_purchase_data_updated
                order_month, should have month of the order date and year_month should have year of the month
 select 
 order_date,
 month (order_date)as order_month,
 year (order_date)as order_year
 from sales_purchase_data_updated  ;
                                      Customer id
 select substring(customer_id,4,8)  as customer_id from sales_purchase_data_updated
              Concatenate Region,Country, city, state as location_info for each records
 select concat(region,'_',country,'_',city,'_',state) as location_info from sales_purchase_data_updated 