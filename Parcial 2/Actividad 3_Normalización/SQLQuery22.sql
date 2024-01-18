SELECT *
FROM Vuelo
WHERE MONTH(fechaVuelo) = 12 AND YEAR(fechaVuelo) = 2014 AND precioPorAsiento < 4000
ORDER BY precioPorAsiento ASC;