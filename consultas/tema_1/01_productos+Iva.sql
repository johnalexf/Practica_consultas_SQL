/*
Ejercicio 1: "Obtener una lista de todos los productos indicando para cada uno su 
idfab, idproducto, descripción, precio y precio con I.V.A. incluido (es el precio anterior aumentado en un 19%).
*/

SELECT 
cod_fabricante_producto AS idfab,
cod_producto AS idproducto,
descrip_producto AS descripción,
precio_producto AS precio,
(precio_producto*1.19) AS 'precio con IVA incluido' 
FROM productos 



