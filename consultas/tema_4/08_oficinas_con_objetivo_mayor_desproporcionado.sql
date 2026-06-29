/*
Listar las oficinas que tengan un objetivo 
mayor que la suma de las cuotas de sus vendedores
*/

SELECT
    ofi.cod_oficina AS 'Oficinas con objetivo desproporcionado'
FROM
    oficinas ofi 
WHERE
    ofi.ventasmininas_oficina > (
        SELECT
            SUM(emp.ventasminimas_empleado)
        FROM
            empleado emp 
        WHERE
            emp.cod_oficina_empleado = ofi.cod_oficina
    );

