-- count distinct values
-- how many unique posts are connected to each tag

select 
t.name as tag_name,
count(distinct p.id) as unique_posts
from tags t
left join post_tags
    on t.id=post_tags.tag_id
left join posts p
    on p.id= post_tags.post_id
group by t.id
order by unique_posts desc;


-- adding number of comments
select 
t.name as tag_name,
count(distinct p.id) as unique_posts,
count(distinct c.id) as total_comments
from tags t
left join post_tags
    on t.id=post_tags.tag_id
left join posts p
    on p.id= post_tags.post_id
left join comments c
    on c.post_id=p.id
group by t.id
order by unique_posts desc

