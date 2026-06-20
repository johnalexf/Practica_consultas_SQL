/*
Listar los vendedores que NO trabajan en oficinas dirigidas por el empleado 1
*/

-- Opcion 1
SELECT
    CONCAT(emp.nombres_empleado, " ", emp.apellidos_empleado ) AS 'Nombre del vendedor que no son de la oficina dirigida por el directivo jefe 1'
FROM
    empleado emp
LEFT JOIN
    oficinas ofi 
ON emp.cod_oficina_empleado = ofi.cod_oficina
WHERE
    ofi.cod_directivojefe_oficina != 1 OR ofi.cod_directivojefe_oficina IS NULL;

-- Opcion 2
SELECT
    CONCAT(emp.nombres_empleado, " ", emp.apellidos_empleado ) AS 'Nombre del vendedor que no son de la oficina dirigida por el directivo jefe 1'
FROM empleado emp
WHERE
    emp.cod_oficina_empleado NOT IN (
        SELECT
            ofi.cod_oficina
        FROM
            oficinas ofi
        WHERE
            ofi.cod_directivojefe_oficina = 1 
    ) OR emp.cod_oficina_empleado IS NULL;