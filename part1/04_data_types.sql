Drop table if exists basics.products_basic;


create table basics.products_basic(
    id serial primary key,

    name varchar(100) not NULL,

    description TEXT,

    stock INTEGER DEFAULT 0,

    total_views BIGINT DEFAULT 0,

    price NUMERIC(10,2),
    --10 means total digits
    --2 means digits that can be after decimal point
    --9999999.99

    is_active BOOLEAN DEFAULT true

);

--queiries
Insert into basics.products_basic
    (name,description,stock,total_views,price,is_active)
values
    ('product 1','product 1 description',1000,43832,799.87,true),
    ('product 2','product 2 description',2000,28432,9923.87,true),
    ('product 3','product 3 description',3000,38423,22999.87,false);

select * from basics.products_basic;

select id,name,is_active
from basics.products_basic
where is_active=false