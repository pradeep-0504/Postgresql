select
 count(*) as Total_posts,
 count(*) FILTER (where status='published') as published_posts,
 count(*) FILTER (where status='draft') as drafted_posts
from posts;

-- posts posted by the ananya

SELECT 
    count(*) as Total_posts
from posts
inner join users
on posts.user_id=users.id
where users.name ILIKE 'Ananya';

-- count of views
select
 count(*) as Total_posts,
 sum(views) as total_views,
 AVG(views) as  average_views,
 min(views) as min_views,
 max(views) as max_views
from posts;

