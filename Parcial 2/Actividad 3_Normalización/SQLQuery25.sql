SELECT 'El tipo de empleado' + TipoEmpleado + 'requiere estar en vuelo' AS descripcion
FROM TipoEmpleado
WHERE esDeVuelo = 1