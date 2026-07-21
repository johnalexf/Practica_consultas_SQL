/*
Añadir una nueva oficina para la ciudad de bogota, 
con el número de oficina 30, 
con un objetivo de 100000 y región Centro.
*/


INSERT INTO 
    oficinas(
        cod_oficina,
        cod_ciudad_oficina,
        cod_region_oficina,
        cod_directivojefe_oficina,
        ventasmininas_oficina,
        ventasTotales_oficina
    )

VALUES

    (
        30,
        ( SELECT cod_ciudad FROM ciudad WHERE desc_ciudad = "bogota" ),
        ( SELECT cod_region FROM region WHERE desc_region = "central" ),
        1,
        100000,
        0

    );
    
