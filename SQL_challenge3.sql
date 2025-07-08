-- ---------Utilisateurs------------
-- Create table Utilisateurs (
--         id_utilisateur SERIAL Primary key,
-- 		nom VARCHAR(100),
-- 		email VARCHAR(100),
-- 		role VARCHAR(20) CHECK (role IN ('lecteur', 'bibliothecaire', 'admin')));

-- ----------LIVRE-----------------
-- CREATE TABLE Livre (
--     id_livre SERIAL PRIMARY KEY,
--     titre VARCHAR(200),
--     auteur VARCHAR(100),
--     categorie VARCHAR(100),
--     disponible BOOLEAN
-- ); 
-- ---------EMPRUNTS---------------
-- CREATE TABLE Emprunts (
--     id_emprunts SERIAL PRIMARY KEY,
--     id_utilisateur INT REFERENCES Utilisateurs(id_utilisateur),
--     id_livre INT REFERENCES Livre(id_livre),
--     date_emprunt DATE,
--     date_retour_prevue DATE,
--     date_retour_reelle DATE
-- );
-- -----------Commentaires---------
-- CREATE TABLE Commentaires (
--          id_commentaire SERIAL PRIMARY KEY,
-- 		 id_utilisateur INT REFERENCES Utilisateurs(id_utilisateur),
-- 		 id_livre INT REFERENCES Livre(id_livre),
-- 		 texte VARCHAR(1000),
-- 		 note INT CHECK (note BETWEEN 1 AND 5)
-- );
-- ------------
-- INSERT INTO Utilisateurs ( nom,email,role) VALUES
-- ( 'Alice Martin', 'alice.martin@mail.com', 'lecteur'),
-- ( 'John Doe', 'john.doe@mail.com', 'bibliothecaire'),
-- ( 'Sarah Lopez', 'sarah.lopez@mail.com', 'lecteur'),
-- ( 'Marc Dupont', 'marc.dupont@mail.com', 'admin'),
-- ( 'Emma Bernard', 'emma.bernard@mail.com', 'bibliothecaire'),
-- ( 'Thomas Durand', 'thomas.durand@mail.com', 'lecteur');
-- -------------
-- INSERT INTO Livre (titre, auteur, categorie, disponible) VALUES
-- ( 'Étranger', 'Albert Camus', 'Roman', TRUE),
-- ( '1984', 'George Orwell', 'Science-fiction', FALSE),
-- ( 'Le Petit Prince', 'Antoine de Saint-Ex.', 'Conte', TRUE),
-- ( 'Dune', 'Frank Herbert', 'Science-fiction', FALSE),
-- ( 'Les Misérables', 'Victor Hugo', 'Classique', TRUE),
-- ( 'Sapiens', 'Yuval Noah Harari', 'Histoire', TRUE);
-- ---------------
-- INSERT INTO Emprunts (id_utilisateur, id_livre, date_emprunt, date_retour_prevue, date_retour_reelle) VALUES
-- ( 1, 2, '2024-06-01', '2024-06-15', NULL),
-- ( 3, 4, '2024-06-20', '2024-07-05', '2024-07-03'),
-- ( 6, 2, '2024-05-10', '2024-05-25', '2024-05-24'),
-- ( 1, 4, '2024-07-01', '2024-07-15', NULL);
-- ---------------
-- INSERT INTO Commentaires ( id_utilisateur, id_livre, texte, note) VALUES
-- (1, 2, 'Un classique à lire absolument', 5),
-- ( 3, 4, 'Très dense, mais fascinant', 4),
-- ( 6, 2, 'Excellent, mais un peu long', 4),
-- ( 1, 4, 'Très bon roman de SF', 5),
-- (3, 1, 'Lecture facile et intéressante', 3);
----------1
-- SELECT *
-- FROM Livre
-- WHERE disponible = TRUE;
----------2
-- SELECT *
-- FROM Utilisateurs
-- WHERE role = 'bibliothecaire';
----------3
-- SELECT *
-- FROM Emprunts WHERE date_retour_reelle IS NULL AND date_retour_prevue < CURRENT_DATE;
----------4
--SELECT COUNT(*) AS total_emprunts
--FROM Emprunts;
----------5
-- SELECT u.nom, l.titre, c.texte, c.note
-- FROM Commentaires c
-- JOIN Utilisateurs u ON c.id_utilisateur = u.id_utilisateur
-- JOIN Livre l ON c.id_livre = l.id_livre
-- ORDER BY c.id_commentaire DESC
-- LIMIT 5;
-------------
--Partie 2 : Requêtes SQL avancées
---------1
-- SELECT u.nom, COUNT(e.id_emprunts) AS nb_emprunts
-- FROM Utilisateurs u
-- LEFT JOIN Emprunts e ON u.id_utilisateur = e.id_utilisateur
-- GROUP BY u.nom;
----------2
-- SELECT *
-- FROM Livre
-- WHERE id_livre NOT IN (SELECT DISTINCT id_livre FROM Emprunts);
----------3
-- SELECT l.titre, AVG(date_retour_reelle-e.date_emprunt) AS d_moy_retour
-- From Livre l
-- JOIN Emprunts e ON l.id_livre = e.id_livre
-- WHERE e.date_retour_reelle IS NOT NULL
-- GROUP BY l.titre;
----------4
-- SELECT l.titre, AVG(c.note) AS moyenne_note
-- FROM Commentaires c
-- JOIN Livre l ON c.id_livre = l.id_livre
-- GROUP BY l.titre
-- ORDER BY moyenne_note DESC
-- LIMIT 3;
---------5
-- SELECT DISTINCT u.nom
-- FROM Utilisateurs u
-- JOIN Emprunts e ON u.id_utilisateur = e.id_utilisateur
-- JOIN Livre l ON e.id_livre = l.id_livre
-- WHERE l.categorie = 'Science-fiction';
-------------------
--Partie 3 : Mises à jour & transactions
-------------------
----------1





















