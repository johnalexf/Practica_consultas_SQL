/*
De cada pedido queremos saber su número de pedido, fab, producto, cantidad, precio unitario e importe.
mapear mentalmente los nombres de estas columnas lógicas con los nombres físicos reales que existen en la tabla pedidos
*/

SELECT 
pe.numero_pedido AS 'número de pedido',
fab.desc_fabricante AS 'Fabricante del producto',
pr.descrip_producto AS 'nombre del producto',
pe.cantidad_pedido AS 'cantidad de producto',
(pe.valor_pedido/pe.cantidad_pedido) AS 'precio unitario',
pe.valor_pedido AS 'importe'
FROM pedidos pe
INNER JOIN productos pr
ON pe.desc_producto_pedido = pr.cod_producto
INNER JOIN fabricante fab
ON pr.cod_fabricante_producto = fab.cod_fabricante