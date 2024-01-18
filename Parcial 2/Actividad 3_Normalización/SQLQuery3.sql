SELECT p.nombre, p.paterno, p.materno
FROM Empleado e
JOIN Persona p ON e.idPersona = p.IdPersona
JOIN Aerolinea a ON e.AerolineaId = a.AerolineaId;