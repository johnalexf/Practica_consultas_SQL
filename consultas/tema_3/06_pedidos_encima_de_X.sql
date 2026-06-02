/*
Hallar cuántos pedidos hay de más de 250.000 pesos
*/

SELECT 
    COUNT(*)
FROM
    pedidos
WHERE
    valor_pedido > 250000;