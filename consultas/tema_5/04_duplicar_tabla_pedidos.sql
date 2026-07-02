/*
Crear una tabla (llamarla nuevapedidos) 
que contenga las filas de la tabla pedidos.
*/

CREATE TABLE nuevapedidos LIKE pedidos;

INSERT INTO nuevapedidos SELECT * FROM pedidos;
