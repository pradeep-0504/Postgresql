
select name, category , price 
from products
where category='Accessories'
and price>1000;

select name, category, price
from products 
where category='electronics' or category='Accessories';

select name, category, price
from products 
where not category='Accessories';



select name,category,price,stock
from products
where (category='Accessories' or category='electronics')
and price < 1000
