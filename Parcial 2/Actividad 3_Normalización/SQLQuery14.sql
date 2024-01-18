SELECT idTipoAvion,
		matricula, 
		DATENAME(WEEKDAY, DATEADD(MONTH, mesesMantenimiento, UltimoMantenimiento)) AS DiaMantenimiento
		FROM Avion
		ORDER BY UltimoMantenimiento ASC, DiaMantenimiento ASC