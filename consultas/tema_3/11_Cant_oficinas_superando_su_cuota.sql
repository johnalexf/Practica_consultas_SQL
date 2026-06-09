/*
Saber cuántas oficinas tienen empleados con ventas superiores a su cuota, 
no queremos saber cuales sino cuántas hay.
*/

-- OPCION 1
SELECT
    COUNT(DISTINCT ofi.cod_oficina) AS 'oficinas superando su cuota'
FROM
    oficinas ofi 
INNER JOIN
    empleado emp
ON ofi.cod_oficina = emp.cod_oficina_empleado
WHERE
    emp.ventastotales_empleado > emp.ventasminimas_empleado


--OPCION 2
SELECT
    COUNT(DISTINCT cod_oficina_empleado) AS 'oficinas superando su cuota'
FROM
    empleado
WHERE
    ventastotales_empleado > ventasminimas_empleado

