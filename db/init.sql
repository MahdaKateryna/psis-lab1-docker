CREATE TABLE IF NOT EXISTS frogs (
    id SERIAL PRIMARY KEY,
    type_slug VARCHAR(50) NOT NULL,
    type_name VARCHAR(50) NOT NULL,
    species VARCHAR(100) NOT NULL,
    habitat VARCHAR(100) NOT NULL,
    size VARCHAR(50) NOT NULL,
    toxicity VARCHAR(50) NOT NULL
);

INSERT INTO frogs (type_slug, type_name, species, habitat, size, toxicity) VALUES
('tree', 'Деревна', 'Червоноока райка', 'Тропічні ліси', '5–7 см', 'безпечна'),
('tree', 'Деревна', 'Райка звичайна', 'Листяні ліси, сади', '3–5 см', 'безпечна'),
('water', 'Водна', 'Жаба озерна', 'Озера, ставки, річки', '10–15 см', 'безпечна'),
('water', 'Водна', 'Жаба-бик', 'Прісні водойми', '15–20 см', 'безпечна'),
('poison', 'Отруйна', 'Листолаз жахливий', 'Дощові ліси Колумбії', '4–5 см', 'смертельно отруйна'),
('poison', 'Отруйна', 'Дереволаз блакитний', 'Тропіки Суринаму', '3–4.5 см', 'сильно отруйна');