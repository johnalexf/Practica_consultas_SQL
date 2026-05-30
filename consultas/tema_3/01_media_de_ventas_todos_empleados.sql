/*
¿Cuál es la cuota media y las ventas medias de todos los empleados?
*/

SELECT
    AVG(ventasminimas_empleado) AS 'cuota media de todos los empleados',
    AVG(ventastotales_empleado) AS 'media de todas las ventas'
FROM
    empleado
