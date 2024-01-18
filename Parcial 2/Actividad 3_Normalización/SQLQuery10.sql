SELECT idTipoAvion, DATEDIFF(day, fechaFabricacion, UltimoMantenimiento) AS dias_transcurridos
FROM Avion
ORDER BY dias_transcurridos ASC