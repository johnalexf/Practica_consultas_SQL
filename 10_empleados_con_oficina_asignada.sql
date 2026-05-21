/*
Listar los números de los empleados que tienen una oficina asignada.
*/

-- Opcion 1
SELECT
    emp.identi_empleado AS 'numero de identificacion del empleado',
    CONCAT(emp.nombres_empleado, " ", emp.apellidos_empleado) AS 'nombre completo empleado',
    emp.cod_oficina_empleado AS 'codigo de la oficina'
FROM
    empleado emp 
INNER JOIN
    oficinas ofi
ON emp.cod_oficina_empleado = ofi.cod_oficina;


-- Opcion 2
SELECT * FROM
empleado
WHERE NOT cod_oficina_empleado <=> NULL;