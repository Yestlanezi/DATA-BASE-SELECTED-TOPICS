SELECT 'Felices,' + CAST(DATEDIFF(YEAR, p.nacimiento, '2023-10-13') AS varchar) + 'años,' + p.nombre + ' ' + p.paterno + ' ' + p.materno + '!!!' AS nombre_completo
FROM Persona p
WHERE MONTH(p.nacimiento) = 10 AND DAY(p.nacimiento) = 13