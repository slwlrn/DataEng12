SELECT c.customerNumber, o.orderDate, SUM(p.amount) AS TotalPaid
FROM customers c
INNER JOIN payments p ON c.customerNumber = p.customerNumber
INNER JOIN orders o ON c.customerNumber = o.customerNumber
GROUP BY c.customerNumber, o.orderDate;



SELECT e.employeeNumber, m.lastName AS reportsToLastName
FROM employees e
LEFT JOIN employees m ON e.reportsTo = m.employeeNumber;


SELECT clientes.customerName as clientes,amount as Ventas FROM basesql2_DGarcia.payments as pagos
inner join basesql2_DGarcia.customers as clientes 
on clientes.customerNumber = pagos.customerNumber;
