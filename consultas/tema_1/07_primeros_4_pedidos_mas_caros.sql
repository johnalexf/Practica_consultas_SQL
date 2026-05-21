/*
Listar las cuatro líneas de pedido más caras (las de mayor importe)
*/

SELECT
    pe.cod_pedido AS 'codigo del pedido',
    pe.numero_pedido AS 'numero del pedido',
    pe.fecha_pedido AS 'fecha del pedido',
    CONCAT(cl.nombres_cli, " " , cl.apellidos_cli) AS 'cliente',
    CONCAT(emp.nombres_empleado, " ", emp.apellidos_empleado) AS 'pedido registrador por',
    pr.descrip_producto AS 'producto',
    pe.cantidad_pedido AS 'cantidad del producto',
    pe.valor_pedido AS 'valor total del pedido'
FROM pedidos pe
INNER JOIN 
    clientes cl
ON pe.cod_cliente_pedido = cl.cod_cli
INNER JOIN
    empleado emp
ON pe.cod_empleado_pedido = emp.cod_empleado
INNER JOIN 
    productos pr
ON pe.desc_producto_pedido = pr.cod_producto
ORDER BY pe.valor_pedido  DESC LIMIT 4;