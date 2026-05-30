/*
Hallar el importe medio de pedidos, 
el importe total de pedidos y 
el precio medio de venta 
(el precio de venta es el precio unitario en cada pedido)
*/

SELECT
    AVG(valor_pedido) AS 'media importe de todos los pedidos',
    SUM(valor_pedido) AS 'importe total de todos los pedidos',
    AVG(valor_pedido/cantidad_pedido) AS 'media precio unitario de todos los pedidos'

FROM
    pedidos