SELECT 'El avión' + TipoAvion + 'tiene una capacidad de' + CAST(numAsientos AS varchar(10)) + 'asientos' AS leyenda
FROM [TipoAvion]
WHERE numAsientos > 200; 