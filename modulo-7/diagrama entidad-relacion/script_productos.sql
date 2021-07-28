CREATE TABLE categoria(
	id_categoria smallint NOT null,
	nombre_categoria varchar(40) NOT null,
	CONSTRAINT pkCategoria PRIMARY KEY (id_categoria), --restrccion de primary key
	CONSTRAINT uqCategoria UNIQUE (nombre_categoria) --restrccion de valor unico
);
 
CREATE TABLE producto(
	id_producto smallint NOT null,
	descripcion_producto varchar(40) NOT null,
	precio_producto int NOT null,
	stock_producto int NOT null,
	id_categoria smallint NOT null,
	CONSTRAINT pkProducto PRIMARY KEY(id_producto),
	CONSTRAINT fkProducto FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria),
	CONSTRAINT chkProducto check (precio_producto > 0)
);

CREATE TABLE ciudad(
	id_ciudad smallint NOT null,
	nombre_ciudad varchar(40) NOT null,
	CONSTRAINT pkCiudad PRIMARY KEY (id_ciudad),
	CONSTRAINT uqCiudad UNIQUE (nombre_ciudad)
);

CREATE TABLE cliente(
	rut_cliente char(11) NOT null,
	nombre_cliente varchar(50) NOT null,
	primer_apellido varchar(50) NOT null,
	segundo_apellido varchar(50) NOT null,
	telefono_cliente varchar NOT null,
	calle_cliente varchar(40) NOT null,
	nrocasa_ciente smallint not null,
	piso_cliente varchar(10),
	id_ciudad smallint NOT null,
	CONSTRAINT pkCliente PRIMARY KEY (rut_cliente),
	CONSTRAINT fkCliente FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad)
);

CREATE TABLE medio_pago(
	id_medio smallint NOT null,
	nombre_medio varchar(20) NOT null,
	CONSTRAINT pkMedio_pago PRIMARY KEY(id_medio)
);

CREATE TABLE documento(
	id_documento SERIAL NOT null,
	fecha_documento date NOT null,
	neto_documento integer NOT null,
	iva_documento integer NOT null,
	total_documento integer NOT null,
	id_medio smallint NOT null,
	rut_cliente char(11) NOT null,
	CONSTRAINT pkDocumento PRIMARY KEY (id_documento),
	CONSTRAINT fk1Documento FOREIGN KEY (id_medio) REFERENCES medio_pago (id_medio),
	CONSTRAINT fk2Documento FOREIGN KEY (rut_cliente) REFERENCES cliente (rut_cliente)
);

CREATE TABLE detalle(
	id_documento integer NOT null,
	id_producto smallint NOT null,
	cantidad_detalle smallint NOT null,
	CONSTRAINT pkDetalle PRIMARY KEY (id_documento, id_producto),
	CONSTRAINT fk1Detalle FOREIGN KEY (id_documento) REFERENCES documento (id_documento),
	CONSTRAINT fk2Detalle FOREIGN KEY (id_producto) REFERENCES producto (id_producto)
);