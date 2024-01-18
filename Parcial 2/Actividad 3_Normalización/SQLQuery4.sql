SELECT p.nombre + ' ' + p.paterno + ' ' + p.materno AS [nombre del empleado]
FROM Empleado e
JOIN Persona p ON e.idPersona = p.IdPersona
JOIN Aerolinea a ON e.AerolineaId = a.AerolineaId;