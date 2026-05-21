/*
Listar las oficinas del este indicando para cada una de ellas 
su número, ciudad, números y nombres de sus empleados. 
Hacer una versión en la que aparecen sólo las que tienen empleados, 
y hacer otra en las que aparezcan las oficinas del este que no tienen empleados
*/

-- oficinas con empleados
SELECT
    ofi.cod_oficina AS 'numero de oficina',
    ci.desc_ciudad AS 'ciudad',
    emp.identi_empleado AS 'num de identificacion del empleado',
    emp.nombres_empleado AS 'nombres del empleado'
FROM
    empleado emp 
INNER JOIN
    oficinas ofi 
ON emp.cod_oficina_empleado = ofi.cod_oficina
INNER JOIN 
    ciudad ci 
ON ofi.cod_ciudad_oficina = ci.cod_ciudad
INNER JOIN
    region re 
ON ofi.cod_region_oficina = re.cod_region
WHERE  re.desc_region = 'caribe';

-- oficinas sin empleados
SELECT
    ofi.cod_oficina AS 'numero de oficina',
    ci.desc_ciudad AS 'ciudad'
--    emp.identi_empleado AS 'num de identificacion del empleado',
--    emp.nombres_empleado AS 'nombres del empleado'
FROM
    empleado emp 
RIGHT JOIN
    oficinas ofi 
ON emp.cod_oficina_empleado = ofi.cod_oficina
INNER JOIN 
    ciudad ci 
ON ofi.cod_ciudad_oficina = ci.cod_ciudad
INNER JOIN
    region re 
ON ofi.cod_region_oficina = re.cod_region
WHERE  re.desc_region = 'caribe' AND emp.cod_empleado IS NULL;