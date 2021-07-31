INSERT INTO categoria(id_categoria, nombre_categoria) VALUES(1, 'Lacteos');
INSERT INTO categoria(id_categoria, nombre_categoria) VALUES(2, 'Abarrotes');

INSERT INTO
	categoria (id_categoria, nombre_categoria)
VALUES
	(3, 'Bebidas'),
	(4, 'Golosinas'),
	(5, 'Snacks'),
	(6, 'Articulos de limpieza'),
	(7, 'Congelados');
	
INSERT INTO
	producto(id_producto, descripcion_producto, precio_producto, stock_producto, id_categoria)
VALUES
	(1, 'Queso Chanco 250grs', 1900, 58, 1),
	(2, 'Tallarines nro 5', 640, 250, 2),
	(3, 'Hamburguesa de porotos negros', 1590, 20, 7),
	(4, 'Clorogel', 1590, 100, 6);
	

SELECT * FROM categoria;
SELECT * FROM producto;