SELECT 'la aerolinea,' + Nombre  +  'es extranjera.' AS mensaje
FROM Aerolinea
WHERE	nacional <> '1 '; 