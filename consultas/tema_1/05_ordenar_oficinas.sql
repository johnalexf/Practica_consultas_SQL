/*
Obtener las oficinas ordenadas por orden alfabético de región 
y dentro de cada región por ciudad, 
si hay más de una oficina en la misma ciudad, 
aparecerá primero la que tenga el número de oficina mayor.
*/

SELECT 
re.desc_region	AS 'nombre region',
cd.desc_ciudad  AS 'nombre cidudad',
ofi.cod_oficina  AS 'numero oficina'
FROM
    oficinas ofi 
INNER JOIN
    region re 
ON ofi.cod_region_oficina = re.cod_region
INNER JOIN
    ciudad cd 
ON ofi.cod_ciudad_oficina = cd.cod_ciudad
ORDER BY
    1, 2, 3 DESC;