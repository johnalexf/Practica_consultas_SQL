/*
Para cada empleado cuyos pedidos suman más de 300000, 
hallar su importe medio de pedidos. 
En el resultado indicar el número de empleado y su importe medio de pedidos
*/

SELECT
    emp.identi_empleado AS 'numero de empleado',
    CONCAT(emp.nombres_empleado, " ", emp.apellidos_empleado) AS 'nombre del empleado',
    SUM(ped.valor_pedido) AS 'valor total de sus pedidos',
    AVG(ped.valor_pedido) AS 'promedio de importe de sus pedidos'
FROM
    empleado emp 
INNER JOIN
    pedidos ped
ON emp.cod_empleado = ped.cod_empleado_pedido
GROUP BY
    1,2
HAVING 
    SUM(ped.valor_pedido) > 300000;


