CREATE PROCEDURE `RelevantCancelled` ()
BEGIN
SELECT * FROM ORD_STATUS WHERE OrderStatus = 'Cancelled' AND TotalPaid > 1500000;
END