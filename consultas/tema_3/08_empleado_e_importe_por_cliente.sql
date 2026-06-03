/*
Para cada empleado, obtener su número, nombre, e 
importe vendido por ese empleado a cada cliente indicando el número de cliente.
*/

SELECT
    emp.identi_empleado AS 'numero de identificacion del empleado',
    CONCAT(emp.nombres_empleado, " ", emp.apellidos_empleado) AS 'nombres completos empleado',
    SUM(ped.valor_pedido) AS 'importe total de pedidos por cliente',
    cli.identificacion_cli AS 'numero de identificacion del cliente',
    CONCAT(cli.nombres_cli, " ", cli.apellidos_cli) AS 'nombres completos cliente'
FROM
    empleado emp 
INNER JOIN
    pedidos ped 
ON emp.cod_empleado = ped.cod_empleado_pedido
INNER JOIN
    clientes cli 
ON ped.cod_cliente_pedido = cli.cod_cli
GROUP BY
    1,2,4,5
ORDER BY 
    1;