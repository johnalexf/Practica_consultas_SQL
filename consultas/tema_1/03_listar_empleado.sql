/*
Listar de cada empleado su nombre, 
nº de días que lleva trabajando en la empresa 
y su año de nacimiento (suponiendo que este año ya ha cumplido años)
*/

SELECT
 (CONCAT (nombres_empleado," ",apellidos_empleado)) AS 'nombre del empleado',
 (DATEDIFF(CURRENT_DATE(),fechaIngreso_empleado))  AS 'dias en la empresa',
 (YEAR(CURRENT_DATE()) - edad_empleado) AS 'año de nacimiento'
FROM
    empleado;