-- returning usually returns all the rows 'immediately' after inser,update or delete

-- INSERT into products (name, category, price, stock, is_active, sku, description)
-- values ('web-camera','electronics',899,78,true,'ELEC-WEB-06','web-camera descriptioon')
-- RETURNING id,name,category,price,stock,sku,created_at;

-- After deleting also it will display that deleted thing
-- delete 
-- from products
-- where sku='ELEC-WEB-06'
-- RETURNING name,category,price,stock,sku,created_at;


-- After updating also it will display that updatedm thing
update products
set stock = stock + 11
where sku='ELEC-WEB-06'
returning name,stock