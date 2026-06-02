/*
Hallar en qué fecha se realizó el primer pedido (suponiendo que en la tabla 
de pedidos tenemos todos los pedidos realizados hasta la fecha).
*/

-- opcion 1
SELECT
    ped.numero_pedido AS 'numero del primer pedido',
    ped.fecha_pedido AS 'fecha del pedido',
    CONCAT(emp.nombres_empleado, " ", emp.apellidos_empleado) AS 'empleado quien realizo la venta',
    CONCAT(cli.nombres_cli, " ", cli.apellidos_cli) AS 'cliente',
    ped.valor_pedido AS 'valor del pedido'
FROM
    pedidos ped 
INNER JOIN
    empleado emp
ON ped.cod_empleado_pedido = emp.cod_empleado
INNER JOIN
    clientes cli 
ON ped.cod_cliente_pedido = cli.cod_cli
ORDER BY 2 ASC LIMIT 1;

-- opcion 2
SELECT MIN(fechapedido) AS primer_pedido FROM pedidos
