create extension if not exists pgcrypto ;

DROP TABLE IF EXISTS post_tags;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS tags;
DROP TABLE IF EXISTS users;

create table users (
    id UUID PRIMARY KEY default gen_random_uuid(),
    name TEXT NOT NULL
);

create table posts(
    id UUID primary key default gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id),
    title TEXT NOT NULL,
    status TEXT NOT NULL DEFAULT 'draft'
            check(status IN ('draft','published')),
    views INTEGER NOT NULL DEFAULT 0 CHECK (views>=0)
);

create table comments(

    id UUID primary key default gen_random_uuid(),

    post_id UUID NOT NULL REFERENCES posts(id),

    body TEXT NOT NULL

);

create table tags(
    id UUID primary key default gen_random_uuid(),

    name text not null unique
);
create table post_tags(
    post_id UUID NOT NULL REFERENCES posts(id),
    tag_id UUID NOT NULL REFERENCES tags(id),

    PRIMARY KEY (post_id,tag_id)
);

INSERT INTO users (name)
values ('Rahul'),
    ('Ananya');

insert into posts(user_id,title,status,views)
select id, 'PostgreSQL Joins Explained','published',100
from users 
where name = 'Ananya';

INSERT INTO posts (user_id, title, status, views)
SELECT id, 'Indexes for Beginners', 'draft', 40
FROM users
WHERE name = 'Ananya';

INSERT INTO posts (user_id, title, status, views)
SELECT id, 'Backend APIs with PostgreSQL', 'published', 180
FROM users
WHERE name = 'Rahul';

INSERT INTO comments (post_id, body)
SELECT id, 'Very clear explanation.'
FROM posts
WHERE title = 'PostgreSQL Joins Explained';

INSERT INTO comments (post_id, body)
SELECT id, 'Please add more examples.'
FROM posts
WHERE title = 'Backend APIs with PostgreSQL';

INSERT INTO tags (name) VALUES
  ('sql'),
  ('backend');

INSERT INTO post_tags (post_id, tag_id)
SELECT p.id, t.id
FROM posts p, tags t
WHERE p.title = 'PostgreSQL Joins Explained'
  AND t.name = 'sql';

INSERT INTO post_tags (post_id, tag_id)
SELECT p.id, t.id
FROM posts p, tags t
WHERE p.title = 'Indexes for Beginners'
  AND t.name = 'sql';

INSERT INTO post_tags (post_id, tag_id)
SELECT p.id, t.id
FROM posts p, tags t
WHERE p.title = 'Backend APIs with PostgreSQL'
  AND t.name = 'backend';

SELECT 'Part 3 reduced database reset and sample data inserted successfully.' AS message;


