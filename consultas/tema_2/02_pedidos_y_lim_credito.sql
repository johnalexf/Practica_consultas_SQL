/*
Listar los pedidos mostrando su número, importe, nombre del cliente, 
y el límite de crédito del cliente correspondiente 
(todos los pedidos tienen cliente y representante).
*/

SELECT
    ped.numero_pedido AS 'NUMERO DEL PEDIDO',
    ped.valor_pedido AS 'IMPORTE DEL PEDIDO',
    CONCAT(cli.nombres_cli, " ", cli.apellidos_cli) AS 'CLIENTE',
    CONCAT(emp.nombres_empleado, " ", emp.apellidos_empleado) AS 'REPRESENTANTE DEL CLIENTE',
    cli.montocredito_cli AS 'LIMITE DE CREDITO DEL CLIENTE'

FROM pedidos ped 
INNER JOIN
    clientes cli 
ON ped.cod_cliente_pedido = cli.cod_cli 
INNER JOIN 
    empleado emp 
ON cli.cod_empleado_cli = emp.cod_empleado;
