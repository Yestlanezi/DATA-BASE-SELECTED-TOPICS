SELECT *
FROM vuelo
WHERE fechaVuelo > NOW() -- Esto asegura que solo se incluyan vuelos que aún no han ocurrido
ORDER BY fechaVuelo ASC, lugares_vacios DESC;