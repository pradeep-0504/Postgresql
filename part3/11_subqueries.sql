--first the sub query will be executed

-- which post is having more view ...more performing

select 
 p.title,
 p.status,
 p.views
from posts p
where p.views >
(select avg(views) from posts)
