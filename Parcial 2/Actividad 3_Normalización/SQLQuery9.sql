SELECT matricula, DATEDIFF(DAY, GETDATE(), DATEADD(MONTH, mesesMantenimiento, UltimoMantenimiento)) AS DiasParaMantenimiento
FROM Avion
ORDER BY DiasParaMantenimiento ASC;