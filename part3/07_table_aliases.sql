select p.title AS post_title,
    p.status,
    p.views,
    u.name AS author_name,
    c.body AS comment
from posts AS p
inner join users AS u
    on p.user_id=u.id
left join comments AS c
    on p.id=c.post_id
order by p.views ASC