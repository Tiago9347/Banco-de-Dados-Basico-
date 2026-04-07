-- Exercícios: SELECT MIN/MAX FROM WHERE ORDER BY
-- 1. Encontre o menor valor de Quantity na tabela.
select MIN(Quantity) from orderdetalis;

-- 2. Encontre o maior valor de Quantity na tabela.
select MAX(Quantity) from orderdetalis;

-- 3. Liste o menor OrderID na tabela.
select MIN(OrderID) from orders;

-- 4. Liste o maior OrderID onde Quantity é maior que 5.
Select * from orderdetalis where quantity >=5;

-- 5. Descubra o menor valor de Quantity para um ProductID específico, como ProductID = 3
Select MIN(Quantity) from orderdetalis where ProductId = 3;

-- 6. Encontre o maior valor de OrderDetailID onde Quantity é menor que 10.
Select MAX(OrderDetailID) from orderdetalis where Quantity = 3;

-- 7. Liste o menor ProductID da tabela.
Select MIN(ProductId) from products;

-- 8. Encontre o maior valor de Quantity ordenado por ProductID em ordem crescente.
SELECT MAX(Quantity) from orderdetalis Group by ProductID order by ProductID ASC;

-- 9. Encontre o menor OrderID e ordene por Quantity em ordem decrescente.
SELECT * FROM OrderDetalis
WHERE OrderID = (SELECT MIN(OrderID) FROM OrderDetalis)
ORDER BY Quantity DESC;

-- 10. Encontre o maior valor de Quantity onde ProductID seja diferente de 2.
select MAX(Quantity) from orderdetalis where ProductID != 2;

-- 11. Descubra o menor OrderDetailID ordenado por OrderID.
select MIN(OrderDetailID) from orderdetalis order by OrderID;

-- 12. Encontre o menor valor de Quantity para pedidos com OrderID maior que 50.
select MIN(Quantity) from orderdetalis where OrderID >50;

-- 13. Encontre o maior valor de Quantity para ProductID igual a 4 e ordene por
select MAX(Quantity) from orderdetalis where ProductID order by OrderDetailID;

-- 14. Descubra o menor OrderDetailID para valores de Quantity maiores que 15.
Select MIN(OrderDetailID) from orderdetalis where Quantity >15;

-- 15. Encontre o maior Quantity para produtos cujo ProductID está entre 5 e 10.
select MAX(Quantity) from orderdetalis where ProductID between 5 and 10;

-- 16. Liste o menor valor de OrderID para Quantity que é um múltiplo de 5.
select MIN(OrderID) from orderdetalis where Quantity % 5 = 0;

-- 18. Descubra o menor valor de Quantity para pedidos com OrderID menor que 30.
select MIN(Quantity) from orderdetalis where OrderID <30;

-- 19. Liste o maior Quantity ordenado por ProductID em ordem decrescente.
select MAX(Quantity) from orderdetalis order by ProductID ASC;

-- 20. Encontre o menor valor de ProductID onde Quantity é maior que 20.
select MIN(ProductID) from orderdetalis where Quantity >20;

-- 21. Encontre o maior valor de Quantity para ProductID igual a 6 e ordene por OrderID.
select MAX(Quantity) from orderdetalis where ProductID = 6 order by ProductID;

-- 22. Liste o menor valor de OrderID e ordene por OrderDetailID em ordem crescente.
select MIN(OrderID) from orderdetalis where OrderDetailID order by OrderDetailID ASC;

-- 23. Descubra o maior valor de OrderDetailID onde ProductID é maior que 10.
select MAX(OrderDetailID) from orderdetalis where ProductID >10;

-- 24. Liste o menor valor de Quantity ordenado por OrderID.
select MIN(Quantity) from orderdetalis order by OrderID;

-- 25. Encontre o maior valor de OrderID para Quantity menor que 10.
select MAX(OrderID) from orderdetalis where Quantity <10;

-- 26. Descubra o menor valor de Quantity para produtos cujo ProductID é par.
select MIN(Quantity) from orderdetalis where ProductID %2 = 0;

-- 27. Encontre o maior valor de OrderDetailID para produtos cujo Quantity é múltiplo de 3.
select MIN(OrderDetailID) from orderdetalis where Quantity %3 = 0;

-- 28. Liste o menor valor de ProductID para Quantity entre 5 e 15.
select MIN(ProductID) from orderdetalis where Quantity between 5 and 15;

-- 29. Encontre o maior valor de Quantity para pedidos com OrderID entre 50 e 100.
select MAX(Quantity) from orderdetalis where OrderID between 50 and 100;

-- 30. Descubra o menor OrderID onde Quantity é menor que 8 e ordene por ProductID.
select MIN(OrderID) from orderdetalis where Quantity <8 order by  ProductID;

-- 31. Liste o maior Quantity e ordene por OrderDetailID.
select MAX(Quantity) from orderdetalis order by OrderDetailID;

-- 32. Descubra o menor Quantity onde OrderID é menor que 20.
select MIN(Quantity) from orderdetalis where  OrderID <20;

-- 33. Encontre o maior valor de Quantity para produtos com ProductID menor que 10.
select MAX(Quantity) from orderdetalis where ProductID <10;

-- 34. Encontre o menor valor de OrderDetailID para produtos com Quantity maior que 12.
select MIN(OrderDetailID) from orderdetalis where Quantity >12;

-- 35. Liste o maior valor de OrderID para produtos cujo ProductID começa com "2"
select MAX(OrderID) from orderdetalis where ProductID LIKE '2%';

-- 36. Descubra o menor valor de Quantity onde OrderID está entre 10 e 30.
select MIN(Quantity) from orderdetalis where OrderID between 10 and 30;

-- 37. Liste o maior valor de OrderDetailID para produtos cujo ProductID está entre 3 e 8.
select MAX(OrderDetailID) from orderdetalis where ProductID between 3 and 8;

-- 38. Descubra o menor valor de OrderID e ordene por Quantity em ordem crescente.
select MIN(OrderID) from orderdetalis order by Quantity ASC;

-- 39. Encontre o maior valor de Quantity onde ProductID não está entre 5 e 15.
select MAX(Quantity) from orderdetalis where  ProductID not between 5 and 15;

-- 40. Liste o menor valor de OrderDetailID para Quantity maior que 18.
select MIN(OrderDetailID) from orderdetalis where Quantity >18;

-- 41. Encontre o maior valor de OrderID ordenado por ProductID.
SELECT MAX(OrderID) FROM OrderDetalis;

-- 42. Descubra o menor Quantity para produtos com ProductID menor que 12.
select MIN(Quantity) FROM OrderDetalis where ProductID <12;

-- 43. Liste o maior OrderDetailID onde Quantity está entre 7 e 14.
select MAX(OrderDetailID) FROM OrderDetalis where Quantity between 7 and 14;

-- 44. Encontre o menor valor de OrderID ordenado por Quantity.
select MIN(OrderID) FROM OrderDetalis order by Quantity;

-- 45. Descubra o maior Quantity onde OrderID é maior que 30.
select MAX(Quantity) FROM OrderDetalis where OrderID >30;

-- 46. Liste o menor valor de OrderDetailID onde Quantity é múltiplo de 2.
select MIN(OrderDetailID) FROM OrderDetalis where Quantity %2 = 0;

-- 47. Encontre o maior valor de OrderID e ordene por ProductID em ordem decrescente.
select MAX(OrderID) FROM OrderDetalis order by ProductID DESC;

-- 48. Descubra o menor valor de Quantity para produtos cujo ProductID termina com "5"
select MIN(Quantity) FROM OrderDetalis where ProductID LIKE '5';

-- 49. Liste o maior valor de OrderDetailID para Quantity menor que 20.
select MAX(OrderDetailID) FROM OrderDetalis where Quantity <20;

-- 50. Encontre o menor valor de OrderID onde Quantity é maior que 25.
select MIN(OrderID) FROM OrderDetalis where Quantity >25;


-- Exercícios: SELECT COUNT FROM WHERE ORDER BY

-- 1. Conte o número total de registros na tabela.
SELECT COUNT(*) FROM orderdetalis;

-- 2. Conte o número total de pedidos (OrderID) únicos na tabela.
SELECT COUNT(OrderID) AS total_pedidos FROM Orders;

-- 3. Conte o total de produtos (ProductID) diferentes.
select count(distinct productID) from products;

-- 4. Conte o número total de registros onde Quantity é maior que 10.
select count(*) from orderdetalis where quantity >10;

-- 5conte quantos registros têm OrderID igual a 5.
SELECT COUNT(*) FROM OrderDetalis WHERE OrderID = 5;

-- 6. Conte o número total de ProductID onde Quantity é menor que 20.
SELECT COUNT(ProductID) FROM OrderDetalis WHERE Quantity < 20;

-- 7. Conte o número total de registros onde OrderDetailID é um número par.
SELECT COUNT(*) FROM OrderDetalis WHERE OrderDetailID % 2 = 0;

-- 8. Conte quantos registros têm Quantity entre 5 e 15.
SELECT COUNT(*) FROM OrderDetalis WHERE Quantity BETWEEN 5 AND 15;

-- 9. Conte o número de registros onde o OrderID é maior que 50.
SELECT COUNT(*) FROM OrderDetalis WHERE OrderID > 50;

-- 10. Conte quantos registros possuem ProductID igual a 3.
SELECT COUNT(*) FROM OrderDetalis WHERE ProductID = 3;

-- 11. Conte o total de registros onde Quantity é um múltiplo de 3.
SELECT COUNT(*) FROM OrderDetalis WHERE Quantity % 3 = 0;

-- 12. Conte o número total de pedidos (OrderID) maiores que 100
SELECT COUNT(OrderID) FROM Orders WHERE OrderID > 100;

-- 13. Conte o número total de registros onde OrderDetailID é menor que 20.
SELECT COUNT(*) FROM OrderDetalis WHERE OrderDetailID < 20;

-- 14. Conte o total de registros para produtos com ProductID menor que 8.
SELECT COUNT(*) FROM OrderDetalis WHERE ProductID < 8;

-- 15. Conte quantos registros possuem Quantity maior que 25.
SELECT COUNT(*) FROM OrderDetalis WHERE Quantity > 25;

-- 16. Conte o número de ProductID onde OrderID é menor que 15.
SELECT COUNT(ProductID) FROM OrderDetalis WHERE OrderID < 15;

-- 17. Conte o número total de registros onde Quantity é menor que 5.
SELECT COUNT(*) FROM OrderDetalis WHERE Quantity < 5;

-- 18. Conte o total de pedidos (OrderID) com Quantity maior que 30.
SELECT COUNT(OrderID) FROM OrderDetalis WHERE Quantity > 30;

-- 19. Conte o número total de registros onde ProductID é par.
SELECT COUNT(*) FROM OrderDetalis WHERE ProductID % 2 = 0;

-- 20. Conte o total de OrderDetailID onde Quantity está entre 10 e 20.
SELECT COUNT(OrderDetailID) FROM OrderDetalis WHERE Quantity BETWEEN 10 AND 20;

-- 21. Conte quantos registros têm ProductID maior que 15.
SELECT COUNT(*) FROM OrderDetalis WHERE ProductID > 15;

-- 22. Conte o total de registros onde OrderDetailID começa com &quot;1&quot;.
SELECT COUNT(*) FROM OrderDetalis WHERE OrderDetailID LIKE '1%';

-- 23. Conte o número total de registros para pedidos com OrderID igual a 10.
SELECT COUNT(*) FROM OrderDetalis WHERE OrderID = 10;

-- 24. Conte o número total de registros onde Quantity termina com 0.
SELECT COUNT(*) FROM OrderDetalis WHERE Quantity LIKE '%0';

-- 25. Conte o número de OrderID onde ProductID é menor que 4.
SELECT COUNT(OrderID) FROM OrderDetalis WHERE ProductID < 4;

-- 26. Conte o total de registros com Quantity menor que 12.
SELECT COUNT(*) FROM OrderDetalis WHERE Quantity < 12;

-- 27. Conte o número de registros onde o OrderDetailID é maior que 100.

SELECT COUNT(*) FROM OrderDetalis WHERE OrderDetailID > 100;
-- 28. Conte quantos registros possuem OrderID igual a 8.

SELECT COUNT(*) FROM OrderDetalis WHERE OrderID = 8;

-- 29. Conte o número de produtos (ProductID) onde Quantity é maior que 15.
SELECT COUNT(ProductID) FROM OrderDetalis WHERE Quantity > 15;

-- 30. Conte o total de OrderDetailID onde Quantity é um número ímpar.
SELECT COUNT(OrderDetailID) FROM OrderDetalis WHERE Quantity % 2 <> 0;

-- 31. Conte o número total de registros onde ProductID está entre 2 e 10.
SELECT COUNT(*) FROM OrderDetalis WHERE ProductID BETWEEN 2 AND 10;

-- 32. Conte o total de registros para OrderID maiores que 20
SELECT COUNT(*) FROM OrderDetalis WHERE OrderID > 20;

-- 33.Conte quantos registros possuem Quantity igual a 10
SELECT COUNT(*) FROM OrderDetalis WHERE Quantity = 10;

-- 34. Conte o total de registros onde OrderDetailID termina com 3
SELECT COUNT(*) FROM OrderDetalis WHERE OrderDetailID LIKE '%3';

-- 35. Conte o número total de produtos (ProductID) diferentes onde Quantity é maior que 
SELECT COUNT(DISTINCT ProductID) FROM OrderDetalis WHERE Quantity > 18;

-- 36. Conte o total de registros com OrderID menor que 50
SELECT COUNT(*) FROM OrderDetalis WHERE OrderID < 50;

-- 37. Conte quantos registros possuem Quantity igual a 5
SELECT COUNT(*) FROM OrderDetalis WHERE Quantity = 5;

-- 38. Conte o total de registros onde ProductID começa com &quot;4&quot
SELECT COUNT(*) FROM OrderDetalis WHERE ProductID LIKE '4%';

-- 39. Conte o número de pedidos (OrderID) com Quantity maior que 15
SELECT COUNT(OrderID) FROM OrderDetalis WHERE Quantity > 15;

-- 40. Conte o total de registros onde OrderDetailID é menor que 25
SELECT COUNT(*) FROM OrderDetalis WHERE OrderDetailID < 25;

-- 41. Conte o número total de registros onde OrderID está entre 30 e 70.
SELECT COUNT(*) FROM OrderDetalis WHERE OrderID BETWEEN 30 AND 70;

-- 42. Conte quantos registros possuem ProductID igual a 7
SELECT COUNT(*) FROM OrderDetalis WHERE ProductID = 7;

-- 43. Conte o número de registros onde Quantity é maior que 20
SELECT COUNT(*) FROM OrderDetalis WHERE Quantity > 20;

-- 44. Conte o total de registros com OrderID maior que 15.
SELECT COUNT(*) FROM OrderDetalis WHERE OrderID > 15;

-- 45. Conte o número total de registros onde ProductID termina com &quot;6&quot;.
SELECT COUNT(*) FROM OrderDetalis WHERE ProductID LIKE '%6';

-- 46. Conte quantos registros possuem Quantity entre 7 e 14.
SELECT COUNT(*) FROM OrderDetalis WHERE Quantity BETWEEN 7 AND 14;

-- 47. Conte o número total de registros onde OrderID é maior que 90.
SELECT COUNT(*) FROM OrderDetalis WHERE OrderID > 90;

-- 48. Conte quantos registros têm OrderDetailID menor que 50.
SELECT COUNT(*) FROM OrderDetalis WHERE OrderDetailID < 50;

-- 49. Conte o número total de registros onde Quantity é maior que 30.
SELECT COUNT(*) FROM OrderDetalis WHERE Quantity > 30;

-- 50. Conte quantos registros possuem OrderID entre 10 e 40.
SELECT COUNT(*) FROM OrderDetalis WHERE OrderID BETWEEN 10 AND 40;
