-- one parent rows can have many child rows
--one user can write many posts
--but one post always belongs to one user

--users -> parent table
--posts -> child table

select 
    users.name AS author_name,
    posts.title AS post_title,
    posts.status
FROM users
inner join posts
    ON users.id=posts.user_id
ORDER BY users.name, posts.title