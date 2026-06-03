/*
Listar cuántos empleados están asignados a cada oficina,
indicar el número de oficina y cuántos hay asignados.
*/

SELECT
    ofi.cod_oficina AS 'numero de oficina',
    COUNT(emp.cod_empleado) AS 'cantidad de empleados'
FROM
    oficinas ofi
LEFT JOIN
    empleado emp
ON ofi.cod_oficina = emp.cod_oficina_empleado
GROUP BY 
    ofi.cod_oficina;