SELECT 'al ser cliente' + TipoCliente + 'tiene un descuento de' + CAST(descuento AS varchar(10)) + '%' AS Descuento 
FROM TipoCliente