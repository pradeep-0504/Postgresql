DROP TABLE IF EXISTS basics.accounts;

create table basics.accounts(
    id serial primary key,
    full_name text not null,
    email text not null unique,
    is_active boolean default true,
    age integer check (age>=18),
    created_at timestamp default now()
);
INSERT INTO basics.accounts(full_name,age,email)
values
    ('pradeep',18,'p@gmail.com'),
    -- ('kumar',17,'k@gmail.com'),
    ('pradeepK',18,'pk@gmail.com');

select * from basics.accounts;