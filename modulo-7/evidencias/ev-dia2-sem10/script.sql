INSERT INTO 
	categoria (id_categoria, descripcion, tipo_de_iva)
VALUES
	(1, 'Una estrella', 'General'),
	(2, 'Dos estrellas', 'General'),
	(3, 'Tres estrellas', 'Reducido');
	
INSERT INTO 
	tipo_habitacion
VALUES 
	(1, 'suite'),
	(2, 'doble'),
	(3, 'matrimonial');
	
INSERT INTO
	hotel
VALUES 
	(1, 'Hotel Realeza', 'Teatinos 180, Santiago', '02-25374990', 2001, 1),
	(2, 'cadel Resort', 'Matucana N° 151, Santiago', '02-25648994', 1992, 3);
	
INSERT INTO 
	habitacion
VALUES 
	(1, 3, 1),
	(2, 1, 2),
	(3, 2, 2);

INSERT INTO 
	particular
VALUES
	('10456764-k', 'Heraldo Romero', 'Buenos aires 22, Cauquenes', '+5699908456'),
	('19445764-4', 'Juan Pérez', 'Av Catolica 453, Maipú', '+5699908456');
	
INSERT INTO 
	agencia
VALUES
	('75467389-9', 'Agencia 1', 'Bandera 55, Santiago', '02-21234567', 'Juan Pérez'),
	('96362398-2', 'Agencia 2', 'Los leones 23, Providencia', '02-21234567', 'Diego Muñoz');

INSERT INTO 
	reserva
VALUES
	(DEFAULT, '1/08/2021', '5/08/2021', 59990, 1, '10456764-k', NULL),
	(DEFAULT, '1/08/2021', '5/08/2021', 59990, 2, NULL, '96362398-2');
	
SELECT * FROM categoria;
SELECT * FROM tipo_habitacion;
SELECT * FROM hotel;
SELECT * FROM particular;
SELECT * FROM agencia;
SELECT * FROM reserva;
SELECT * FROM habitacion;