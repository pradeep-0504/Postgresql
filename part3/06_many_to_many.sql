-- take an example for posts and tags
-- as the one post can have many tags and a tag can be on many posts

select 
    posts.title as post_title,
    tags.name as tag_name
from posts
inner join post_tags
on posts.id = post_tags.post_id
inner join tags
on post_tags.tag_id=tags.id