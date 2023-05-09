SELECT clientes.customerName as clientes,sum(amount) as Ventas FROM basesql12_mcotrina.payments as pagos
inner join basesql12_mcotrina.customers as clientes 
on clientes.customerNumber = pagos.customerNumber
where cliente.customerNumner = 103
Group by clientes.customerNumber;CREATE DATABASE `basesql12_mcotrina` ;
