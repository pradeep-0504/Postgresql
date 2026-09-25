-- IN -> VALUES MUST MATCH ONE ITEM FROM THE LIST
-- NOT IN -> must not match any from the list
-- between meands in bbetween both the values

select name ,category
from products
where category IN ('electronics','Accessories');

select name ,category
from products
where category NOT IN ('electronics','Accessories');

select name ,category, price
from products
where (category='Electronics') And 
price between 100 AND 2000 --includes 100 and 2000