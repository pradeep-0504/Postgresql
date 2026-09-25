-- case insensitive 
select name, category, price
from products 
where category ILIKE 'electronics';

select name, category, price
from products 
where category='electr%';
-- anything after electr will be returned --electronics

-- returns the cols named mouse init
select name , price, category
from products
where name ILIKE '%mouse%'