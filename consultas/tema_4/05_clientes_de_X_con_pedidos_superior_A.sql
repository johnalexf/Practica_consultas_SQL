/*
Listar los clientes asignados a marco tulio
 que no han remitido un pedido superior a 300000.
*/

SELECT
    cli.identificacion_cli AS "identificacion cliente que no ha remitido un pedido superior a 300000",
    CONCAT(cli.nombres_cli, " ", cli.apellidos_cli) AS "clientes asignados a marco tulio"
FROM
    clientes cli 
WHERE
    cli.cod_empleado_cli IN (
        SELECT
            cod_empleado
        FROM
            empleado
        WHERE
            nombres_empleado LIKE "%marco tulio%"
    )
    AND
    cli.cod_cli NOT IN (
        SELECT
            cod_cliente_pedido
        FROM 
            pedidos
        WHERE
            valor_pedido > 300000
    )