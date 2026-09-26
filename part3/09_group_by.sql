
select 
    u.name as author_name,
    count(p.id) as total_posts,
    sum(p.views) as total_views
from users as u
left join posts as p
    on u.id=p.user_id
group by u.id
having count(p.id)>=2
