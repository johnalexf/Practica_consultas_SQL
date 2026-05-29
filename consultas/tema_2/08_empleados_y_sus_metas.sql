/*
Listar los códigos de los empleados que tienen una venta de pedido superior a 270.000
o que tengan una cuota inferior a 270.000.
*/

-- opcion 1
(
    SELECT
        cod_empleado AS 'codigo empleado',
        CONCAT(nombres_empleado, " ", apellidos_empleado) AS 'empleado',
        ventasminimas_empleado AS 'meta',
        'SI' AS 'empleado con cuota inferior a 270000',
        NULL AS 'venta mas grande',
        NULL AS 'empleado con venta mayor a 270000'     
    FROM 
        empleado
    WHERE
        ventasminimas_empleado < 270000
)
UNION
(
    SELECT 
        emp.cod_empleado AS 'codigo empleado',
        CONCAT(emp.nombres_empleado, " ", emp.apellidos_empleado) AS 'empleado',
        NULL AS 'meta',
        NULL AS 'empleado con cuota inferior a 270000',
        MAX(ped.valor_pedido) AS 'venta mas grande',
        'SI' AS 'empleado con venta mayor a 270000'
    FROM 
        empleado emp
    INNER JOIN
        pedidos ped
    ON emp.cod_empleado = ped.cod_empleado_pedido
    WHERE
        ped.valor_pedido > 270000
    GROUP BY 
        emp.cod_empleado    
)

-- opcion 2
SELECT 
    CONCAT(emp.nombres_empleado, " ", emp.apellidos_empleado) AS 'Empleado',
    ped.valor_pedido AS 'Valor del Pedido',
    emp.ventasminimas_empleado AS 'Meta (Cuota)',
    -- Tu columna condicional para la venta
    CASE 
        WHEN ped.valor_pedido > 270000 THEN 'SÍ (Venta Estrella)'
        ELSE 'NO'
    END AS '¿Hizo pedido mayor a 270k?',
    -- Tu columna condicional para la meta
    CASE 
        WHEN emp.ventasminimas_empleado <= 270000 THEN 'SÍ (Meta Baja)'
        ELSE 'NO'
    END AS '¿Tiene meta baja?'
FROM 
    empleado emp
LEFT JOIN 
    pedidos ped ON emp.cod_empleado = ped.cod_empleado_pedido
WHERE 
    ped.valor_pedido > 270000 OR emp.ventasminimas_empleado <= 270000;