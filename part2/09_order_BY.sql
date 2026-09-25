--ascending order order by price
select name,category,price
from products
order by price asc;

--desc order
select name,category,price
from products
order by price desc;

--ascending order by category and desc y price
select name,category,price
from products
order by category asc, price desc