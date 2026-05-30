/*
Importe total de los pedidos realizados por cada empleado
*/

SELECT
    emp.cod_empleado AS 'codigo del empleado',
    CONCAT(emp.nombres_empleado," ", emp.apellidos_empleado) AS 'nombre completo del empleado',
    SUM(ped.valor_pedido) AS 'importe total de sus pedidos'
FROM
    pedidos ped 
INNER JOIN
    empleado emp 
ON ped.cod_empleado_pedido = emp.cod_empleado
GROUP BY
    1,2;