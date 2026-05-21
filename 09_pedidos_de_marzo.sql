/*
Listar toda la información de los pedidos de marzo.
*/

SELECT 
    pe.cod_pedido AS 'codigo del pedido',
    pe.numero_pedido AS 'num del pedido',
    pe.fecha_pedido AS 'fecha del pedido',
    CONCAT( cli.nombres_cli, " ", cli.apellidos_cli ) AS 'cliente',
    CONCAT( emp.nombres_empleado, " ", emp.apellidos_empleado ) AS 'vendedor',
    pr.descrip_producto AS 'producto',
    pe.cantidad_pedido AS 'cantidad del producto',
    pe.valor_pedido AS 'valor del pedido'
FROM 
    pedidos pe
INNER JOIN 
    clientes cli 
ON pe.cod_cliente_pedido = cli.cod_cli
INNER JOIN
    empleado emp 
ON pe.cod_empleado_pedido = emp.cod_empleado 
INNER JOIN
    productos pr 
ON pe.desc_producto_pedido = pr.cod_producto
WHERE 
    MONTH(pe.fecha_pedido) = 3;
