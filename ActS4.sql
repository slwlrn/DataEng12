SELECT c.customerNumber, o.orderDate, SUM(p.amount) AS TotalPaid
FROM customers c
INNER JOIN payments p ON c.customerNumber = p.customerNumber
INNER JOIN orders o ON c.customerNumber = o.customerNumber
GROUP BY c.customerNumber, o.orderDate;



SELECT e.employeeNumber, m.lastName AS reportsToLastName
FROM employees e
LEFT JOIN employees m ON e.reportsTo = m.employeeNumber
