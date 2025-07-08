-- Database: store_db

--Challenge 1 : Jointures entre Tables
-----------------
--Affichez toutes les commandes avec les noms des clients.
-----------------
-- SELECT * from custumers
-- JOIN orders 
-- ON orders.custumer_id= custumers.custumer_id
-----------------
--Listez les clients n’ayant passé aucune commande (jointure externe).
-- SELECT * from custumers 
-- left Join orders ON orders.custumer_id= custumers.custumer_id where order_id is NULL
-----------------
--Listez tous les clients avec le nombre de commandes qu’ils ont passées.
-- SELECT 
--        c.first_name, c.last_name , count(order_id) as nb_commandes
-- FROM custumers c 
-- JOIN orders o on c.custumer_id= o.custumer_id 
-- GROUP BY c.first_name, c.last_name
-----------------------------
--Challenge 2 : Agrégation de Données
-- 
-- Select sum(p.price) as total_price
-- From products p
----------
-- Select count(c.custumer_id) as Nombre_de_clients
-- From custumers c
----------
-- Select AVG(p.price) as mean_price
-- From products p
--------------------------------
--Challenge 3 : Groupement de Données
--SELECT * from orders
-----------
-- SELECT c.first_name, c.last_name, sum(o.total_amount) as Montant_total
-- From custumers c 
-- Join orders o ON c.custumer_id = o.custumer_id
-- group by c.custumer_id
-----------
-- SELECT 
-- TO_CHAR(order_date,'MM') AS mois,
-- count(order_id) as com_par_mois
-- from orders 
-- group by TO_CHAR(order_date,'MM')
-- order by mois;
--------------
-- SELECT TO_CHAR(order_date,'MM') AS mois, AVG(total_amount) as av_cm_mois
-- from orders 
-- group by TO_CHAR(order_date,'MM') 
-- order by mois
---------------------
-- Select c.first_name , c.last_name , SUM(o.total_amount) AS total_client
-- From custumers c
-- Join orders o on c.custumer_id = o.custumer_id 
-- GROUP BY 
--     c.custumer_id, c.first_name, c.last_name
-- Having  SUM(o.total_amount) >1358024.21
--------------------
--Challenge 4 : Sous-Requêtes
-- Select distinct pour éviter les doublons!!!!!
-- Select distinct c.first_name , c.last_name , o.total_amount
-- From custumers c
-- Join orders o on c.custumer_id = o.custumer_id where o.total_amount > 33333333
-------------
-- SELECT  c.first_name, c.last_name, SUM(o.total_amount) AS total_commande
-- FROM custumers c
-- JOIN orders o ON c.custumer_id = o.custumer_id
-- GROUP BY  c.custumer_id, c.first_name, c.last_name
-- HAVING  SUM(o.total_amount) = (
--         SELECT MAX(total_client)
--         FROM (
--             SELECT SUM(total_amount) AS total_client
--             FROM orders
--             GROUP BY custumer_id
--         ) AS sous_total
--     );
---------------
---------------
---------------
-- SELECT order_id, custumer_id, order_date, total_amount
-- FROM orders WHERE total_amount >(SELECT AVG(total_amount) FROM orders);
---------------
---Challenge 5 : Création de Vues
---------------
-- CREATE OR REPLACE VIEW customer_orders_view AS
-- SELECT 
--     c.custumer_id,
--     c.first_name,
--     c.last_name,
--     o.order_id,
--     o.order_date,
--     o.total_amount
-- FROM 
--     custumers c
-- JOIN 
--     orders o ON c.custumer_id = o.custumer_id;
---------------
-- SELECT 
--     custumer_id,
--     first_name,
--     last_name,
--     SUM(total_amount) AS total_commandes
-- FROM 
--     customer_orders_view
-- GROUP BY 
--     custumer_id, first_name, last_name
-- HAVING 
--     SUM(total_amount) > 1000;
-----------------------
CREATE OR REPLACE VIEW monthly_sales_view AS
SELECT 
TO_CHAR(order_date,'MM') AS mois,
SUM(total_amount) AS total_ventes
FROM orders
Group by TO_CHAR(order_date,'MM')
order by mois;
SELECT * FROM customer_orders_view;







