/*
Listar los empleados cuyas ventas totales superen a sus ventas 
mínimas (su propia cuota); para cada uno, mostrar su nombre, 
sus ventas y concatenar el nombre y apellido de su directivo jefe.
*/

SELECT
    CONCAT(emp.nombres_empleado, " ", emp.apellidos_empleado) AS 'nombre completo empleado',
    emp.ventasminimas_empleado AS 'cuota del empleado',
    emp.ventastotales_empleado AS 'ventas totales del empleado',
    CONCAT(dj.nombre_direcjefe, " ", dj.apellidos_directjefe) AS 'nombre completo directivo jefe'
FROM
    empleado emp
INNER JOIN
    directivojefe dj 
ON emp.cod_directivojefe_empleado = dj.cod_direcjefe
WHERE emp.ventastotales_empleado > emp.ventasminimas_empleado;