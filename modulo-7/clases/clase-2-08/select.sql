SELECT * FROM categoria;
SELECT * FROM ciudad;
SELECT * FROM cliente;
SELECT * FROM documento;
SELECT * FROM medio_pago;
SELECT * FROM producto;
SELECT * FROM detalle;

INSERT INTO
detalle(id_documento,id_producto,cantidad_detalle)
VALUES
(1,3,12),
(2,1,23);

SELECT nombre_categoria,descripcion_producto
FROM producto
JOIN categoria
ON producto.id_categoria = categoria.id_categoria
WHERE categoria.id_categoria = 3;

SELECT descripcion_producto, precio_producto,stock_producto
FROM producto
ORDER BY precio_producto asc;

SELECT descripcion_producto, precio_producto,stock_producto
FROM producto
ORDER BY precio_producto desc;

INSERT INTO
producto (id_producto,descripcion_producto,precio_producto,stock_producto,id_categoria)
VALUES
(5,'Cera Piso',1470,36,7),
(6,'Arroz g1',960,280,2);

SELECT nombre_categoria as Categoria, COUNT(*) as cantidad
FROM categoria
JOIN producto
ON producto.id_categoria = categoria.id_categoria
GROUP BY nombre_categoria;

SELECT rut_cliente,nombre_cliente,primer_apellido,calle_cliente,nombre_ciudad
FROM cliente
JOIN ciudad
ON ciudad.id_ciudad = cliente.id_ciudad;

SELECT * FROM cliente limit 3;

SELECT * FROM cliente limit 3 offset 3;

ALTER TABLE producto
RENAME COLUMN descripcion_producto
TO nombre_producto;

ALTER TABLE medio_pago
RENAME TO mediodepago;

ALTER TABLE cliente ALTER COLUMN nrocasa_cliente SET DATA TYPE varchar(10);