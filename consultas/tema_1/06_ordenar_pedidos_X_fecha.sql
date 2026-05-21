/* 
Obtener los pedidos ordenados por fecha de pedido.
*/

SELECT
   ped.cod_pedido AS 'codigo del pedido',
   ped.numero_pedido AS 'numero del pedido',
   ped.fecha_pedido AS 'fecha del pedido',
   CONCAT(cli.nombres_cli, cli.apellidos_cli) AS 'nombre del cliente',
   CONCAT(emp.nombres_empleado, emp.apellidos_empleado) AS 'nombre del empleado',
   pr.descrip_producto AS 'nombre del producto',
   ped.cantidad_pedido AS 'cantidad de producto',
   ped.valor_pedido AS 'total del pedido'
FROM 
    pedidos ped 
INNER JOIN 
    clientes cli 
ON ped.cod_cliente_pedido = cli.cod_cli
INNER JOIN 
    empleado emp
ON ped.cod_empleado_pedido = emp.cod_empleado
INNER JOIN 
    productos pr
ON ped.desc_producto_pedido = pr.cod_producto
ORDER BY 3;
