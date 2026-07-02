/*
Crear una tabla (llamarla nuevaoficinas)
que contenga las filas de la tabla oficinas.
*/

CREATE TABLE nuevaoficinas LIKE oficinas;

INSERT INTO nuevaoficinas SELECT * FROM oficinas;
