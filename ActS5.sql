drop table if exists ORD_STATUS;
CREATE TABLE ORD_STATUS as
SELECT c.customerNumber, c.customerName, c.city, c.country, o.orderDate, SUM(p.amount) AS TotalPaid, 
GROUP_CONCAT(DISTINCT pr.productName ORDER BY pr.productName ASC SEPARATOR ', ') AS OrderedProducts, 
o.status AS OrderStatus
FROM customers c
INNER JOIN payments p ON c.customerNumber = p.customerNumber
INNER JOIN orders o ON c.customerNumber = o.customerNumber
INNER JOIN orderdetails od ON o.orderNumber = od.orderNumber
INNER JOIN products pr ON od.productCode = pr.productCode
GROUP BY c.customerNumber, o.orderDate, o.status;

CALL RelevantCancelled();

