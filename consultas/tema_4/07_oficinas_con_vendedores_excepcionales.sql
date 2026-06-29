/*
Listar las oficinas en donde todos los vendedores 
tienen ventas que superan al 50% del objetivo de la oficina.
*/

-- opcion 1
SELECT
    ofi.cod_oficina AS 'Oficinas que todos los vendedores tienen ventas por encima del 50% del objetivo de la oficina'
FROM
    oficinas ofi
WHERE EXISTS(
    SELECT
        MIN(emp.ventastotales_empleado)
    FROM
        empleado emp 
    WHERE
        emp.cod_oficina_empleado = ofi.cod_oficina
    HAVING 
        MIN(emp.ventastotales_empleado) > ofi.ventasminimas_oficina*0.5
     
);

-- opcion 2
SELECT
    ofi.cod_oficina AS 'Oficinas que todos los vendedores tienen ventas por encima del 50% del objetivo de la oficina'
FROM
    oficinas ofi
WHERE 
    ofi.ventasminimas_oficina*0.5 < (
    SELECT
        MIN(emp.ventastotales_empleado)
    FROM
        empleado emp 
    WHERE
        emp.cod_oficina_empleado = ofi.cod_oficina     
);