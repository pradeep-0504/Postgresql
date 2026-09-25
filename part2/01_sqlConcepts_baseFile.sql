-- PostgreSQL + pgcrypto = extra functions for hashing, encryption, random values, UUIDs, etccc

create extension if not exists pgcrypto;

DROP TABLE IF EXISTS products;

create table products(
    id UUID primary key default gen_random_uuid(),
    name text not null,
    category text not null,
    price numeric(10,2) not null check(price>=0),
    stock integer not null default 0 check (stock>=0),
    is_active boolean not null default true,
    sku text unique,
    description text,
    created_at timestamp not null default now()
);

INSERT INTO products
    (name, category, price, stock, is_active, sku, description)
VALUES
    ('Wireless Mouse', 'Electronics', 799.00, 50, true, 'WM-001',
     'Ergonomic wireless mouse with USB receiver'),

    ('Mechanical Keyboard', 'Electronics', 2499.00, 30, true, 'KB-001',
     'RGB mechanical keyboard with blue switches'),

    ('USB-C Cable', 'Accessories', 399.00, 100, true, 'UC-001',
     '1 meter fast charging USB-C cable'),

    ('Laptop Stand', 'Accessories', 1299.00, 25, true, 'LS-001',
     'Adjustable aluminum laptop stand'),

    ('Bluetooth Speaker', 'Electronics', 1999.00, 40, true, 'BS-001',
     'Portable Bluetooth speaker with stereo sound'),

    ('Water Bottle', 'Home & Kitchen', 599.00, 75, true, 'WB-001',
     'Stainless steel insulated water bottle'),

    ('Office Chair', 'Furniture', 8999.00, 10, true, 'OC-001',
     'Ergonomic office chair with adjustable height'),

    ('Backpack', 'Bags', 1499.00, 35, true, 'BP-001',
     'Water-resistant laptop backpack'),

    ('Running Shoes', 'Footwear', 2999.00, 20, true, 'RS-001',
     'Lightweight running shoes for daily workouts'),

    ('Smart Watch', 'Wearables', 4999.00, 15, true, 'SW-001',
     'Smart watch with fitness and health tracking');

SELECT * FROM products;