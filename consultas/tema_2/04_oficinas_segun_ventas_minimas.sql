/*
Listar las oficinas con objetivo superior a 600.000 pts 
indicando para cada una de ellas el nombre de su director
*/

SELECT
    ofi.cod_oficina AS 'codigo de la oficina',
    cd.desc_ciudad AS 'ciudad',
    rg.desc_region AS 'region',
    CONCAT(dj.nombre_direcjefe, " ", dj.apellidos_directjefe) AS 'director jefe',
    ofi.ventasmininas_oficina AS 'Objetivo Oficina',
    ofi.ventasTotales_oficina AS 'ventas totales'
FROM
    oficinas ofi 
LEFT JOIN
    directivojefe dj
ON ofi.cod_directivojefe_oficina = dj.cod_direcjefe
INNER JOIN
    ciudad cd 
ON ofi.cod_ciudad_oficina = cd.cod_ciudad
INNER JOIN
    region rg 
ON ofi.cod_region_oficina = rg.cod_region
WHERE
    ofi.ventasmininas_oficina > 1100000;
