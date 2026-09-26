-- left joins keeps all rows from the left table
-- if right table has matching data ,psql includes that..if it doesn;\'t it woll return null

--posts left table and comments right table

select 
    p.title as post_title,
    p.views as views,
    c.body as comment
from posts p 
left join comments c
    on p.id=c.post_id;

-- here for empty comment place it will return null..but  if we use inner join it will give only 2 posts as there are only 2 posts have comments