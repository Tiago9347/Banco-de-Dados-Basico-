-- ### Parte 1: Explorando o INNER JOIN

-- 1. Liste o nome do produto, o nome do fornecedor e o país do fornecedor para todos os produtos da categoria 2.
SELECT products.ProductName AS 'Nome do Produto', supplies.SupplierName 'Nome Fornecedor', supplies.CountrySupplies AS 'País do Fornecedor'
FROM products INNER JOIN supplies ON
products.SupplerID = supplies.SupplerID
WHERE products.CategoryID = 2;
-- 2. Exiba o ID do pedido, a data do pedido e o nome da transportadora responsável por cada entrega.
SELECT orders.OrderID AS 'ID do Pedido', orders.OrderData AS 'Data do pedido', shippers.ShipperName AS 'Transporadora Responsavel'
FROM orders INNER JOIN shippers ON
orders.ShipperID = shippers.ShipperID;
-- 3. Mostre o nome do produto e o nome da cidade do fornecedor para produtos que custam mais de 50 unidades monetárias.
SELECT products.ProductName AS 'Nome do Produto', supplies.CitySupplies AS 'Nome da cidade do fornecedor', products.Price AS 'Produtos acima de 50 unidades'
FROM products INNER JOIN supplies ON
products.SupplerID = supplies.SupplerID
WHERE products.Price > 50 
ORDER BY products.Price DESC;
-- 4. Relacione todos os pedidos (Orders) feitos, mostrando o ID do pedido e o nome da transportadora, filtrando apenas para a transportadora 'Speedy Express'.
SELECT orders.OrderID AS 'Pedidos', shippers.ShipperName AS 'Nome transportadora'
FROM orders INNER JOIN shippers ON
orders.ShipperID = shippers.ShipperID
WHERE shippers.ShipperName = 'Expresso Norte';
-- 5. Liste os nomes dos produtos e os nomes de seus respectivos fornecedores, mas apenas para fornecedores localizados no 'Brazil' ou 'USA'.
SELECT products.ProductID AS 'ID do Produto', products.ProductName 'Nome do Produto', supplies.SupplerID AS 'Id do fornecedor', supplies.CountrySupplies AS 'País fornecedor'
FROM products INNER JOIN supplies ON
products.SupplerID = supplies.SupplerID
WHERE supplies.CountrySupplies IN ('Brasil' , 'USA');
-- 6. Gere um relatório com o ID do pedido, a data e o telefone da transportadora para todos os pedidos realizados no ano de 2023.
SELECT orders.OrderID AS 'ID do pedido', orders.OrderData AS 'Data do pedido', shippers.PhoneShipper AS 'Telefone transportadora'
FROM orders INNER JOIN shippers ON
orders.ShipperID = shippers.ShipperID
WHERE orders.OrderData LIKE '2024%';
-- 7. Mostre o nome do fornecedor e o nome do produto para todos os itens cujo preço unitário esteja entre 10 e 20.
SELECT products.ProductName AS 'Nome do Produto', supplies.SupplierName AS 'Nome do Fornecedor', products.Price AS 'Produtos entre 10 e 20'
FROM products INNER JOIN supplies ON
products.SupplerID = supplies.SupplerID
WHERE products.Price between 10 and 20;
-- 8. Liste todos os pedidos e os nomes das transportadoras, ordenando o resultado pelo nome da transportadora em ordem alfabética.
SELECT orders.OrderData AS 'Data do Pedido',orders.OrderID AS 'ID da ordem', shippers.ShipperName AS 'Nome da Transportadora'
FROM orders INNER JOIN shippers ON
orders.ShipperID = shippers.ShipperID
ORDER BY shippers.ShipperName ASC;
-- ### Parte 2: O Desafio do LEFT e RIGHT JOIN

-- 9. (LEFT) Liste todos os fornecedores e os nomes de seus produtos. Certifique-se de que fornecedores que ainda não possuem produtos cadastrados também apareçam na lista.
SELECT s.SupplierName, p.ProductName
FROM supplies AS s
LEFT JOIN products AS p ON s.SupplerID = p.SupplerID;
-- 10. (LEFT) Exiba o nome de todas as transportadoras e a quantidade de pedidos que cada uma realizou. Inclua transportadoras que nunca realizaram um pedido.
SELECT sh.ShipperName, COUNT(o.OrderID) AS 'Quantidade de Pedidos'
FROM shippers AS sh
LEFT JOIN orders AS o ON sh.ShipperID = o.ShipperID
GROUP BY sh.ShipperName;
-- 11. (RIGHT) Liste todos os produtos e seus respectivos fornecedores. Use RIGHT JOIN para garantir que todos os fornecedores apareçam, mesmo aqueles sem produtos vinculados.
SELECT p.ProductName, s.SupplierName
FROM products AS p
RIGHT JOIN supplies AS s ON p.SupplerID = s.SupplerID;
-- 12. (LEFT) Mostre o nome de todos os fornecedores e, caso existam, os nomes dos produtos que eles fornecem, filtrando para mostrar apenas fornecedores da 'Germany'.
SELECT s.SupplierName, p.ProductName
FROM supplies AS s
LEFT JOIN products AS p ON s.SupplerID = p.SupplerID
WHERE s.CountrySupplies = 'Germany';
-- 13. (RIGHT) Relacione todas as transportadoras com os pedidos realizados, garantindo que as transportadoras sem pedidos no sistema ainda sejam listadas.
SELECT sh.ShipperName, o.OrderID
FROM orders AS o
RIGHT JOIN shippers AS sh ON o.ShipperID = sh.ShipperID;
-- ### Parte 3: Consultas Complexas (Múltiplos Joins e Filtros)

-- 14. Liste o nome do produto, o nome do fornecedor e o nome da transportadora para um pedido específico (ex: OrderID 10248). Dica: Você precisará conectar 4 tabelas.
SELECT p.ProductName, s.SupplierName, sh.ShipperName
FROM orderdetails AS od
INNER JOIN products AS p ON od.ProductID = p.ProductID
INNER JOIN supplies AS s ON p.SupplerID = s.SupplerID
INNER JOIN orders AS o ON od.OrderID = o.OrderID
INNER JOIN shippers AS sh ON o.ShipperID = sh.ShipperID
WHERE o.OrderID = 10248;
-- 15. Exiba o nome do fornecedor, a cidade do fornecedor e a data do pedido para todos os produtos que foram vendidos e entregues pela transportadora 'United Package'.
SELECT s.SupplierName, s.CitySupplies, o.OrderData
FROM supplies AS s
INNER JOIN products AS p ON s.SupplerID = p.SupplerID
INNER JOIN orderdetails AS od ON p.ProductID = od.ProductID
INNER JOIN orders AS o ON od.OrderID = o.OrderID
INNER JOIN shippers AS sh ON o.ShipperID = sh.ShipperID
WHERE sh.ShipperName = 'United Package';
-- 16. Crie uma consulta que mostre quais fornecedores (SupplierName) têm produtos que nunca foram associados a um pedido (OrderID is NULL).
SELECT DISTINCT s.SupplierName
FROM supplies AS s
INNER JOIN products AS p ON s.SupplerID = p.SupplerID
LEFT JOIN orderdetails AS od ON p.ProductID = od.ProductID
WHERE od.OrderID IS NULL;
-- 17. Liste o nome do contato do fornecedor e o nome do produto, mas apenas para produtos que pertencem às categorias 1, 3 ou 5 e que são de fornecedores do 'UK'.
SELECT supplies.PhoneSupplies AS 'Contado do Fornecedor', products.ProductName AS 'Nome do Produto', categories.CategoryID AS 'Qual categoria pertence', supplies.CountrySupplies AS 'Páis do Fornecedor'
FROM supplies
INNER JOIN products
	ON supplies.SupplerID = products.SupplerID
INNER JOIN categories
	ON products.CategoryID = categories.CategoryID
WHERE categories.CategoryID IN (1 , 3 , 5) AND supplies.CountrySupplies = 'UK';
-- 18. Encontre o valor total gasto em fretes (ou apenas a contagem de pedidos) por fornecedor, agrupando pelo nome do fornecedor e usando joins para conectar as tabelas necessárias.
SELECT count(DISTINCT orders.OrderID) AS 'Contagem Total ', supplies.SupplierName AS 'Nome do Fornecedor'
FROM orders
INNER JOIN orderdetails
	ON orders.OrderID = orderdetails.OrderID
INNER JOIN products
	ON orderdetails.ProductID = products.ProductID
INNER JOIN supplies
	ON products.SupplerID = supplies.SupplerID
GROUP BY supplies.SupplierName;
-- 19. Mostre o nome do produto, o nome da categoria (assuma a lógica de ID) e o nome do fornecedor, onde o preço do produto é superior à média de preços de todos os produtos.
SELECT products.ProductName AS 'Nome do Produto', categories.CategoryName AS 'Nome da Categoria', supplies.SupplierName AS 'Nome do Fornecedor', products.Price AS 'Preço Atual'
FROM categories
INNER JOIN products
	ON categories.CategoryID = products.CategoryID
INNER JOIN supplies
	ON products.SupplerID = supplies.SupplerID
WHERE products.Price > (SELECT AVG(Price) FROM products);
-- 20. Desafio Final: Liste todos os pedidos, o nome do fornecedor de cada produto contido no pedido e o nome da transportadora.
SELECT orders.OrderID AS 'Pedidos', supplies.SupplierName AS 'Nome do Fornecedor', shippers.ShipperName AS 'Nome da Transportadora'
FROM supplies
INNER JOIN products
	ON supplies.SupplerID = products.SupplerID
INNER JOIN orderdetails
	ON products.ProductID = orderdetails.ProductID
INNER JOIN orders
	ON orderdetails.OrderID = orders.OrderID
INNER JOIN shippers
	ON orders.ShipperID = shippers.ShipperID
GROUP BY orders.OrderID