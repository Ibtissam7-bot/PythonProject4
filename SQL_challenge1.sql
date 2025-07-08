-- Database: store_db

-- DROP DATABASE IF EXISTS store_db;
-- CREATE TABLE custumers (
--    custumer_id SERIAL PRIMARY KEY,
--    first_name VARCHAR(50),
--    last_name VARCHAR(50),
--    email VARCHAR(100) unique,
--    phone_number VARCHAR(20)
-- )
-- SELECT * FROM custumers ;
-- CREATE TABLE products (
--        product_id SERIAL PRIMARY KEY,
--        name VARCHAR(50) NOT NULL,
--        price DECIMAL(5,3) NOT NULL,
-- 	   category VARCHAR(30)
--  );
-- CREATE TABLE orders (
--       order_id SERIAL PRIMARY KEY NOT NULL,
-- 	  custumer_id INT REFERENCES custumers(custumer_id),
--       order_date DATE,
--       total_amount DECIMAL(10,3)
-- );
-- CREATE TABLE order_items (
--      item_id SERIAL PRIMARY KEY NOT NULL,
-- 	 order_id INT REFERENCES orders(order_id),
-- 	 product_id INT REFERENCES products(product_id),
-- 	 quantity INT	
-- );
-- INSERT INTO custumers (first_name, last_name, email, phone_number)
-- VALUES 
--     ('Jean', 'Dupont', 'jean.dupont@gmail.com', '0612345678'),
--     ('Marie', 'Martin', 'marie.martin@gmail.com', '0698765432'),
-- 	('Ibtissam', 'Sannaky', 'bissam@gmail.com', '0619345678'),
--     ('Salma', 'Rihmi', 'mSalman@gmail.com', '069777432');
-- INSERT INTO products (name, price, category)
-- VALUES 
--     ('Ordinateur portable', 99.999, 'Électronique'),
--     ('T-shirt', 49.999, 'Vêtements'),
--     ('Livre SQL', 59.950, 'Livres'),
-- 	('Lunettes', 29.999, 'Items')
-- 	;
--select * from products;
-- INSERT INTO orders(custumer_id,order_date, total_amount)
--  Values 
--  (1,'2025-03-23',1234567.456),
--  (2,'2025-01-23',9876543.456),
--  (3,'2025-12-2',3846553.456),
--  (4,'2025-11-14',1658003.456);
-- select * from orders;
-- INSERT INTO order_items( order_id, product_id, quantity)
-- VALUES (1, 2,2),
--        (3,1,1),
-- 	   (4,4,4),
-- 	   (2,3,1);
--SELECT * FROM order_items;
--SELECT * FROM custumers;
--SELECT * From orders where order_date >'2024-01-01';
-- SELECT DISTINCT c.first_name, c.last_name, c.email 
-- FROM custumers c
-- JOIN orders o ON c.custumer_id = o.custumer_id;
--SELECT * from custumers where first_name='Marie';
--SELECT * from orders where total_amount>100;
--SELECT * from custumers where first_name LIKE 'D%'
-- Modifier les enregistrements existants
-- UPDATE custumers
-- SET phone_number = '0631922888'
-- where custumer_id=3;
--Select * from custumers;
-- ALTER TABLE orders
-- ALTER COLUMN total_amount TYPE DECIMAL(12,2);
-- UPDATE orders
-- SET total_amount =total_amount*1.10;
-- UPDATE custumers
-- SET email='bissamsannaky@gmail.com'
-- Where custumer_id = 3;
-- SELECT * From custumers;
-- Challenge 7 : Suppression de Données
-- D'abord supprimer les articles des vieilles commandes
-- DELETE FROM order_items 
-- WHERE order_id IN (
--     SELECT order_id FROM orders WHERE order_date < '2025-03-23'
-- );
-- -- Puis supprimer les commandes
-- DELETE FROM orders WHERE order_date < '2025-03-23';
--Select * from orders;
--------------------------------
--------------------------------
--------------------------------
-- 1. Supprimer l'ancienne contrainte de clé étrangère
-- Supprimer la contrainte existante
-- ALTER TABLE orders
-- DROP CONSTRAINT orders_custumer_id_fkey;
-- ALTER TABLE orders
-- ADD CONSTRAINT orders_custumer_id_fkey
-- FOREIGN KEY (custumer_id)
-- REFERENCES custumers(custumer_id)
-- ON DELETE CASCADE;

-- -- Supprimer la contrainte
-- ALTER TABLE order_items
-- DROP CONSTRAINT order_items_order_id_fkey;

-- -- Recréer avec ON DELETE CASCADE
-- ALTER TABLE order_items
-- ADD CONSTRAINT order_items_order_id_fkey
-- FOREIGN KEY (order_id)
-- REFERENCES orders(order_id)
-- ON DELETE CASCADE;
-- DELETE FROM custumers
-- WHERE custumer_id = 2;  

----- Supprimez toutes les commandes d’un client spécifique.
-- DELETE FROM order_items
-- WHERE order_id IN (
--     SELECT order_id FROM orders WHERE custumer_id = 4  -- par exemple pour Salma Rihmi
-- );
-- DELETE FROM orders
-- WHERE custumer_id = 4;
SELECT * From custumers;






    
    



