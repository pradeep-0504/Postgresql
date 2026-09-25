-- limit  -> How many rows u want to return 
-- offset -> how many rows we want to skip

select name ,category, price 
from products 
where category ILIKE 'electronics' 
order by price asc 
limit 5 ;

select name ,category, price 
from products 
where category ILIKE 'electronics' 
order by price asc 
limit 5  offset 5;
-- this will skip the first 5 and give the next 5