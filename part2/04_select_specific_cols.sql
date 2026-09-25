--   select * returns all the datta from the table

select name, price,
    stock,
    is_active as available from products;
-- aliases , so here is_active will be seen as available

-- using where

select name, category, price as Selling_Price
 from products
 where category='Electronics' 
