/*
Listar los productos (idfab, idproducto y descripción) 
para los cuales NO se ha recibido ningún pedido de 250000 o más.
*/

SELECT
    fab.cod_fabricante AS 'codigo del fabricante (idfab)',
    fab.desc_fabricante AS 'Nombre del fabricante',
    prod.cod_producto AS 'codigo del producto (idproducto)',
    prod.descrip_producto AS 'descripcion del producto'
FROM
    productos prod
INNER JOIN
    fabricante fab 
ON prod.cod_fabricante_producto = fab.cod_fabricante
WHERE NOT EXISTS (
        SELECT
            1
        FROM
            pedidos ped
        WHERE
            prod.cod_producto = ped.desc_producto_pedido AND
            ped.valor_pedido >= 250000
    );