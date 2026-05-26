/*
Listar los datos de cada uno de los empleados, la ciudad y región en donde trabaja.
*/

SELECT
    emp.cod_empleado AS 'codigo del empleado ',
    emp.identi_empleado AS 'identificacion ',
    emp.nombres_empleado AS 'nombres ',
    emp.apellidos_empleado AS 'apellidos ',
    emp.edad_empleado AS 'edad ',
    ci.desc_ciudad AS 'ciudad donde trabaja',
    re.desc_region AS 'region donde trabaja ',
    cg.desc_cargo AS 'cargo ',
    emp.fechaIngreso_empleado AS 'fecha de ingreso ',
    CONCAT(dj.nombre_direcjefe, " ", dj.apellidos_directjefe) AS 'directo en jefe ',
    emp.ventasminimas_empleado AS 'ventas minimas ',
    emp.ventastotales_empleado AS 'ventas totales '
FROM empleado emp 
LEFT JOIN
    oficinas ofi
ON emp.cod_oficina_empleado = ofi.cod_oficina
LEFT JOIN
    ciudad ci 
ON ofi.cod_ciudad_oficina = ci.cod_ciudad
LEFT JOIN 
    region re
ON ofi.cod_region_oficina = re.cod_region
LEFT JOIN
    directivojefe dj 
ON emp.cod_directivojefe_empleado = dj.cod_direcjefe
INNER JOIN
    cargo cg 
ON emp.cod_cargo_empleado = cg.cod_cargo