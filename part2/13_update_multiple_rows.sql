-- update products
--     set stock = 1000
-- where category ILIKE 'electronics';

-- select name,category,price,stock
-- from products


-- if u want to update accessories cost by 2 times
update products
set price=Round(price*2 ,2)
where category='Accessories'

select name ,price, category 
from products
where category='Accessories'

-- also if u want to make avaialblity false if stock=0
update products 
set is_active=false
where stock=0