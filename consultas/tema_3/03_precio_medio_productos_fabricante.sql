/*
Hallar el precio medio de los productos del fabricante coltex
*/

SELECT
    AVG(precio_producto) AS 'precio medio productos de coltex'
FROM 
    productos prod 
INNER JOIN
    fabricante fab 
ON prod.cod_fabricante_producto = fab.cod_fabricante
WHERE
    fab.desc_fabricante = 'coltex';