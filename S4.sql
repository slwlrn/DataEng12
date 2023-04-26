SELECT clientes.customerName as clientes,sum(amount) as ventas FROM basesqldep12_mcotrina.payments as pagos
inner join basesqldep12_mcotrina.customers as clientes 
on clientes.customerNumber = pagos.customerNumber
Group by clientes.customerNumber;