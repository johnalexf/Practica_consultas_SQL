/*
Crear una tabla (llamarla nuevaempleados) 
que contenga las filas de la tabla empleado.
*/

CREATE TABLE nuevaempleados LIKE empleado;

INSERT INTO nuevaempleados SELECT * FROM empleado;
