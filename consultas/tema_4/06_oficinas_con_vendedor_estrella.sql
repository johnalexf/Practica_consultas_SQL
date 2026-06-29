/*
Listar las oficinas en donde haya un vendedor cuyas 
ventas representen más del 55% del objetivo de su oficina.
*/

SELECT
    ofi.cod_oficina AS 'Codigo de oficina que tiene un o unos vendedores con ventas de mas del 55% del objetivo de la oficina',
    ciu.desc_ciudad AS 'ciudad de oficina',
    reg.desc_region AS 'region de oficina'
FROM
    oficinas ofi 
LEFT JOIN
    ciudad ciu 
ON ofi.cod_ciudad_oficina = ciu.cod_ciudad 
LEFT JOIN
    region reg 
ON ofi.cod_region_oficina = reg.cod_region
WHERE EXISTS (
    SELECT
        1
    FROM
        empleado emp
    WHERE
        emp.cod_oficina_empleado = ofi.cod_oficina 
        AND
        emp.ventastotales_empleado > ofi.ventasmininas_oficina*0.55
);
