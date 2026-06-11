/*
Listar los nombres de los clientes que tienen asignado el 
representante lucia (suponiendo que no pueden haber 
representantes con el mismo nombre)
*/

SELECT 
    cod_cli AS 'codigo del cliente',
    identificacion_cli AS 'identificacion del cliente',
    CONCAT(nombres_cli, " ", apellidos_cli) AS 'Nombre completo del cliente'
FROM
    clientes
WHERE
    cod_empleado_cli = (

        SELECT
            cod_empleado
        FROM
            empleado
        WHERE
            nombres_empleado LIKE "%lucia%"
    );