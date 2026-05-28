/*
Hallar los empleados que realizaron su primer pedido el mismo día en que fueron contratados
*/

SELECT
    CONCAT(emp.nombres_empleado, " ", emp.apellidos_empleado) AS 'empleado',
    ped.numero_pedido AS 'numero del pedido',
    ped.fecha_pedido AS 'fecha del pedido'
FROM
    pedidos ped 
INNER JOIN
    empleado emp
ON ped.cod_empleado_pedido = emp.cod_empleado 
WHERE
    ped.fecha_pedido = emp.fechaIngreso_empleado


-- primera de año
SELECT
    CONCAT(emp.nombres_empleado, " ", emp.apellidos_empleado) AS 'empleado',
    ped.numero_pedido AS 'numero del pedido',
    ped.fecha_pedido AS 'fecha del pedido'
FROM
    pedidos ped 
INNER JOIN
    empleado emp
ON ped.cod_empleado_pedido = emp.cod_empleado 
WHERE
    -- Condición 1: Que el pedido sea en el mismo año de ingreso
    YEAR(ped.fecha_pedido) = YEAR(emp.fechaIngreso_empleado)
    -- Condición 2: Que la fecha del pedido sea exactamente la fecha más antigua de ese empleado en ese año
    AND ped.fecha_pedido = (
        SELECT MIN(ped2.fecha_pedido)
        FROM pedidos ped2
        WHERE ped2.cod_empleado_pedido = emp.cod_empleado
        AND YEAR(ped2.fecha_pedido) = YEAR(emp.fechaIngreso_empleado)
    );