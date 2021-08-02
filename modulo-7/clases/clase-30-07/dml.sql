--Clase 29-07-2020
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
	

SELECT id_producto, descripcion_producto FROM producto

SELECT * FROM categoria;
SELECT * FROM producto;

SELECT id_producto, descripcion_producto FROM producto
WHERE precio_producto < 2000;

--Clase 30-07-2020

INSERT INTO 
	ciudad(id_ciudad,nombre_ciudad)
VALUES
	(1,'Arica'),
	(2,'Antofagasta'),
	(3,'La Serena'),
	(4,'Coquimbo'),
	(5,'Valparaiso'),
	(6,'Santiago'),
	(7,'Rancagua'),
	(8,'Curico'),
	(9,'Concepción'),
	(10,'Temuco'),
	(11,'Valdivia'),
	(12,'Puerto Montt'),
	(13,'Punta Arenas');
	
SELECT * FROM ciudad;

INSERT INTO
	cliente(rut_cliente,nombre_cliente, primer_apellido, segundo_apellido, telefono_cliente, calle_cliente, nrocasa_cliente, piso_cliente, id_ciudad)
VALUES
	('16194737-7','Víctor Renier','Marín','Almonacid','+56950117295','Painemilla',5056,null,12),
	('18382008-7','Johan Alexander','Ibarra','Carvajal','+56912345678','Calle sin Nombre',666,null,5),
	('17888888-8','Marcela Fernanda','Valdés','Rojas','+56987654321','Otra Calle',123,null,8),
	('17987654-2','Nicolas Rolando','Ayala','Aldana','+34623115594','Av. Vallcarca',5689,'Septimo',13),
	('15999444-2','Carola Belen','Vega','Cofré','+56982616327','Araucania',103,'Piso 1',3);
	
SELECT * FROM cliente;

SET DATESTYLE TO 'European';


INSERT INTO
	medio_pago(id_medio,nombre_medio)
VALUES
	(1,'Credito'),
	(2,'Efectivo'),
	(3,'Debito');
	
INSERT INTO
	documento(id_documento,fecha_documento,neto_documento,iva_documento,total_documento,id_medio,rut_cliente)
VALUES
	(DEFAULT,'30/07/2021',25680,4500,30180,1,'17987654-2');

INSERT INTO
	documento(id_documento,fecha_documento,neto_documento,iva_documento,total_documento,id_medio,rut_cliente)
VALUES
	(DEFAULT,'29/07/2021',156000,23000,179630,2,'15999444-2');

SELECT * FROM documento;
	
SELECT id_documento,fecha_documento,total_documento
FROM documento
WHERE rut_cliente = '15999444-2';