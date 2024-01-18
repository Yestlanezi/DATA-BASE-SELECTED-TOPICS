SELECT TipoAvion, fabricante, fechaFabricacion, DATEDIFF(SECOND, fechaFabricacion, GETDATE()) / 31536000 AS AntiguedadAnos
FROM TipoAvion t
JOIN Avion a ON t.idTipoAvion = a.idTipoAvion