-- insert into products(name,category,price,stock,sku,description)
-- values('laptop stand 1','electronics',100,45,'elec-lap-100','laptop stand 1'),
-- ('laptop stand 2','electronics',100,45,'elec-lap-1002','laptop stand 1');

select name,category,price,stock,sku
 from products
where sku in ('elec-lap-100','elec-lap-1002');
-- where sku = 'elec-lap-1002'
