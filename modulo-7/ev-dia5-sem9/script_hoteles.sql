CREATE TABLE CATEGORIA(
	id_categoria smallint NOT NULL,
	descripcion varchar(50) NOT NULL,
	tipo_de_iva integer NOT NULL,
	CONSTRAINT pkCategoria PRIMARY KEY (id_categoria),
	CONSTRAINT uqCategoria UNIQUE (descripcion) 
);

CREATE TABLE PARTICULAR(
	rut_particular char(11) NOT NULL,
	nombre_particular varchar(50) NOT NULL,
	direccion_particular varchar(50) NOT NULL,
	telefono varchar NOT NULL,
	CONSTRAINT pkParticular PRIMARY KEY (rut_particular)
);

CREATE TABLE AGENCIA(
	rut_agencia char(11) NOT NULL,
	nombre_agencia varchar(50) NOT NULL,
	direccion_agencia varchar(50) NOT NULL,
	telefono_agencia varchar,
	nombre_reserva varchar(50) NOT NULL,
	CONSTRAINT pkAgencia PRIMARY KEY (rut_agencia)
); 

CREATE TABLE TIPO_HABITACION(
	cod_tipo_habitacion smallint NOT NULL,
	descripcion varchar(50) NOT NULL,
	CONSTRAINT pkTipo_habitacion PRIMARY KEY (cod_tipo_habitacion),
	CONSTRAINT uqTipo_habitacion UNIQUE (descripcion) 
);

CREATE TABLE HOTEL(
	id_hotel smallint NOT NULL,
	nombre_hotel varchar(50) NOT NULL,
	direccion_hotel varchar(50) NOT NULL,
	telefono_hotel varchar NOT NULL,
	ano_construccion smallint,
	id_categoria smallint NOT NULL,
	CONSTRAINT pkHotel PRIMARY KEY (id_hotel),
	CONSTRAINT fkCategoria FOREIGN KEY (id_categoria) REFERENCES CATEGORIA (id_categoria)
);

CREATE TABLE HABITACION(
	nro_habitacion smallint NOT NULL,
	cod_tipo_habitacion smallint NOT NULL,
	id_hotel smallint NOT NULL,
	CONSTRAINT pkHabitacion PRIMARY KEY (nro_habitacion),
	CONSTRAINT fk1Habitacion FOREIGN KEY (cod_tipo_habitacion) REFERENCES TIPO_HABITACION (cod_tipo_habitacion),
	CONSTRAINT fk2Habitacion FOREIGN KEY (id_hotel) REFERENCES HOTEL (id_hotel)
);

CREATE TABLE RESERVA(
	id_reserva serial NOT NULL,
	fecha_inicio date NOT NULL,
	fecha_termino date NOT NULL,
	valor_reserva integer NOT NULL,
	nro_habitacion smallint NOT NULL,
	rut_particular char(11) NOT NULL,
	rut_agencia char(11) NOT NULL,
	CONSTRAINT pkReserva PRIMARY KEY (id_reserva),
	CONSTRAINT fk1Reserva FOREIGN KEY (nro_habitacion) REFERENCES HABITACION (nro_habitacion),
	CONSTRAINT fk2Reserva FOREIGN KEY (rut_particular) REFERENCES PARTICULAR (rut_particular),
	CONSTRAINT fk3Reserva FOREIGN KEY (rut_agencia) REFERENCES AGENCIA (rut_agencia)
);