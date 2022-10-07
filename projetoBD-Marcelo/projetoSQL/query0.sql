USE VW_Cars;

-- Qual é o nome ?
SELECT Name FROM CarAgency;

-- Todos os nomes em ordem alfabetica
SELECT * FROM CarAgency name ORDER BY name;

-- Todos os carros com nome com 4 letras
# através do LIKE
SELECT NAME FROM Cars WHERE Name LIKE "_____";

# Através do LENGTH
SELECT Name FROM Cars WHERE LENGTH(Name)=4;

-- Nome das marcas pos ordem alfabética.
SELECT * FROM Make ORDER BY Name; 

SELECT Name FROM Cars
WHERE name LIKE "_____"
ORDER BY name DESC;
