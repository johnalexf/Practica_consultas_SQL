/*
Listar de cada producto, su descripción, precio y cantidad total pedida, 
incluyendo sólo los productos cuya cantidad total pedida sea 
superior al 75% del stock; y ordenado por cantidad total pedida.
*/

SELECT
    prod.descrip_producto AS 'nombre del producto',
    prod.precio_producto AS 'precio',
    SUM(ped.cantidad_pedido) AS 'cantidad total despachada',
    prod.existencia_producto AS 'existencia del producto'
FROM
    productos prod  
INNER JOIN
    pedidos ped 
ON prod.cod_producto = ped.desc_producto_pedido
GROUP BY
    1,2,4
HAVING 
    SUM(ped.cantidad_pedido) > prod.existencia_producto*0.75
ORDER BY
    3 ASC;