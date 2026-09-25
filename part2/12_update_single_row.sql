-- select name, price, category,stock
-- from products
-- where sku='KB-001';

update products
set stock=60,
    price = 2699
where sku='KB-001'; 

select name, price, category,stock
from products
where sku='KB-001';