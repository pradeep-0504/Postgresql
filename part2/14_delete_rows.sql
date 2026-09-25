insert into products (name, category, price, stock, is_active, sku, description)
values ('product to be deleted','electronics',123,125,true,'Elec-187','nothing');

delete 
from products
where sku='Elec-187';

select name from products
where sku='Elec-187'
