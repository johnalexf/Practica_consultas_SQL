/*
 Listar los vendedores (numemp, nombre, y nº de oficina) que trabajan en
 oficinas "buenas" (las que tienen ventas superiores a su objetivo).
*/

SELECT
    identi_empleado  AS 'identificacion del empleado',
    CONCAT(nombres_empleado, " ", apellidos_empleado) AS 'nombre del empleado',
    cod_oficina_empleado AS 'codigo oficina empleado'
FROM
    empleado
WHERE
    cod_oficina_empleado IN (

        SELECT
            cod_oficina
        FROM
            oficinas
        WHERE
            ventasTotales_oficina > ventasmininas_oficina
    );
