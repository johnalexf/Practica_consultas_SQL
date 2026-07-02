/*
  Subir un 5% el precio de todos los 
  productos del fabricante coltex.
*/

UPDATE
    productos
SET
    precio_producto = precio_producto*1.05
WHERE
    productos.cod_fabricante_producto = (
        SELECT
            fab.cod_fabricante 
        FROM
            fabricante fab 
        WHERE
            fab.desc_fabricante LIKE "%coltex%"
    )
