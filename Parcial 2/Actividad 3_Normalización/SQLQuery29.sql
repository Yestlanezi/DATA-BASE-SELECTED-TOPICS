SELECT *
FROM Venta
WHERE fechaCompra <= DATEADD(year, -1, GETDATE())