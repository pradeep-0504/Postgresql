-- it is a column in a table which will be pointing to a primary key in another table

--users.id is a primary key in users table
--user_id is a foreign key in the posts table when compare it with users table as both are same

select id,name from users;

select id,user_id,title as postName
from posts;

-- id value in users == user_id in posts...so user_id is a foreign key hereeeeeee
