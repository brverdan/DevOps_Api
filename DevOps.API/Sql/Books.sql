CREATE TABLE Books (
    ID INT PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(255),
    PublishingYear INT,
    PublishingCompany VARCHAR(255)
);

INSERT INTO Books (ID, Title, Author, PublishingYear, PublishingCompany)
VALUES
    (1, 'Dom Casmurro', 'Machado de Assis', 1899, 'Garnier'),
    (2, 'A Arte da Guerra', 'Sun Tzu', -500, 'Desconhecida'),
    (3, 'O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 1943, 'Reynal & Hitchcock'),
    (4, 'O Senhor dos Anéis', 'J.R.R. Tolkien', 1954, 'Allen & Unwin'),
    (5, 'Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1997, 'Bloomsbury'),
    (6, 'Cem Anos de Solidão', 'Gabriel García Márquez', 1967, 'Editorial Sudamericana'),
    (7, '1984', 'George Orwell', 1949, 'Secker & Warburg'),
    (8, 'Crime e Castigo', 'Fiódor Dostoiévski', 1866, 'O Mensageiro Russo'),
    (9, 'O Alquimista', 'Paulo Coelho', 1988, 'Sant Jordi Asociados'),
    (10, 'A Bíblia Sagrada', 'Vários', -1000, 'Várias'),
    (11, 'O Hobbit', 'J.R.R. Tolkien', 1937, 'Allen & Unwin'),
    (12, 'O Leão, a Feiticeira e o Guarda-Roupa', 'C.S. Lewis', 1950, 'Geoffrey Bles'),
    (13, 'A Revolução dos Bichos', 'George Orwell', 1945, 'Secker & Warburg'),
    (14, 'A Metamorfose', 'Franz Kafka', 1915, 'Kurt Wolff Verlag'),
    (15, 'Os Miseráveis', 'Victor Hugo', 1862, 'Pagnerre'),
    (16, 'Memórias Póstumas de Brás Cubas', 'Machado de Assis', 1881, 'Tipografia Nacional'),
    (17, 'O Processo', 'Franz Kafka', 1925, 'Verlag Die Schmiede'),
    (18, 'A Odisséia', 'Homero', -800, 'Desconhecida'),
    (19, 'O Príncipe', 'Nicolau Maquiavel', 1532, 'Desconhecida'),
    (20, 'As Crônicas de Nárnia', 'C.S. Lewis', 1950, 'Geoffrey Bles');