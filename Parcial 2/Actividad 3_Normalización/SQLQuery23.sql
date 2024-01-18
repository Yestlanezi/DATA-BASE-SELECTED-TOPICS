SELECT *
FROM Cliente
WHERE idTipoCliente = '1' AND DATEDIFF(YEAR, fechaRegistro, GETDATE()) < 5
