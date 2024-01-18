SELECT 'bienvenido,' + p.nombre + ' ' + p.paterno + ' ' + p.materno + 'es hoy,' + CONVERT (varchar(10), GETDATE (), 103)  AS[nombre del empleado] 
FROM Empleado e
JOIN Persona p ON e.idPersona = p.IdPersona
JOIN Aerolinea a ON e.AerolineaId = a.AerolineaId