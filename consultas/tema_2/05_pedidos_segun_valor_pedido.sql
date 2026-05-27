/*
listar los pedidos superiores a 25.000 , 
incluyendo el nombre del empleado que tomó el pedido 
y el nombre del cliente que lo solicitó.
*/

SELECT
    pe.numero_pediDo AS 'numero del pedido',
    pe.fecha_pedido AS 'fecha del pedido',
    CONCAT(cli.nombres_cli, " ", cli.apellidos_cli) AS 'cliente',
    CONCAT(emp.nombres_empleado, " ", emp.apellidos_empleado) AS 'empleado responsable',
    pd.descrip_producto AS 'producto',
    pe.cantidad_pedido AS 'cantidad del producto',
    pe.valor_pedido AS 'Valor del pedido'
FROM pedidos pe
INNER JOIN
    productos pd
ON pe.desc_producto_pedido = pd.cod_producto
INNER JOIN
    empleado emp 
ON pe.cod_empleado_pedido = emp.cod_empleado
INNER JOIN
    clientes cli 
ON pe.cod_cliente_pedido = cli.cod_cli
WHERE
    pe.valor_pedido >250000;