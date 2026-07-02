/*
Crear una tabla (llamarla nuevaproductos) 
que contenga las filas de la tabla productos.
*/

CREATE TABLE nuevaproductos LIKE productos;

INSERT INTO nuevaproductos SELECT * FROM productos;
