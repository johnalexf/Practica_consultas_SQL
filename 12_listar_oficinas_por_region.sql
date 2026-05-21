/*
Listar los datos de las oficinas de las regiones del norte y del este (tienen que aparecer primero las del norte y después las del este
*/

-- OPCION 1
SELECT
    ofi.cod_oficina AS 'CODIGO OFICINA',
    ciu.desc_ciudad AS 'CIUDAD',
    re.desc_region AS 'REGION',
    CONCAT(dj.nombre_direcjefe, " ", dj.apellidos_directjefe) AS 'DIRECTIVO JEFE',
    ofi.ventasmininas_oficina AS 'VENTAS MINIMAS',
    ofi.ventasTotales_oficina AS 'VENTAS TOTALES'
FROM
    oficinas ofi
INNER JOIN 
    ciudad ciu
ON
    ofi.cod_ciudad_oficina = ciu.cod_ciudad 
INNER JOIN
    region re 
ON ofi.cod_region_oficina = re.cod_region 
INNER JOIN
    directivojefe dj 
ON ofi.cod_directivojefe_oficina = dj.cod_direcjefe
WHERE re.desc_region IN ('caribe', 'central')
ORDER BY re.desc_region ASC;

