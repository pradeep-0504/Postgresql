-- inner joins only take the matching rows from both tables

select 
    users.name as author_name,
    posts.title as post_title,
    posts.status,
    posts.views
from users
inner join posts
on users.id=posts.user_id
where posts.status= 'published' 
order by posts.views desc 
