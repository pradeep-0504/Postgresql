--returns the description which have null vals
select name,description
from products
where description IS NULL;

--returns not null

select name,description
from products
where description IS NOT NULL
