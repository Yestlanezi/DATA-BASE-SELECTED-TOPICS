SELECT Avion.matricula, Avion.UltimoMantenimiento, DATEADD(month, Avion.mesesMantenimiento, Avion.UltimoMantenimiento) AS FechaProximoMantenimiento
FROM Avion
ORDER BY FechaProximoMantenimiento ASC;