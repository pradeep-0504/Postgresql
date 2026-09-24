drop table if exists basics.sales;

create table basics.sales(
    id serial primary key,
    title text not null,
    price numeric(10,2) not null default 0,
    created_at timestamp default now()
);

insert into basics.sales(title,price)
values
('product 1',99.99),
('product 2',99.99),
('product 3',99.99),
('product 4',99.99);

select * from basics.sales;

insert into basics.sales(id,title,price)
values
(1,'product 1',99.99); -- error, as it violates bcoz primary key should be unique

select * from basics.sales;
