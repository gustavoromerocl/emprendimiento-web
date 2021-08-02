select nombre_hotel, direccion_hotel, descripcion as categoria
from hotel
join categoria
on hotel.id_categoria = categoria.id_categoria;

select nro_habitacion, nombre_hotel, descripcion 
from habitacion
join hotel
on habitacion.id_hotel = hotel.id_hotel
join tipo_habitacion
on habitacion.cod_tipo_habitacion = tipo_habitacion.cod_tipo_habitacion;

select id_reserva, nombre_particular, valor_reserva
from reserva
right join particular
on reserva.rut_particular = particular.rut_particular;


select id_reserva, nombre_agencia, valor_reserva
from reserva
right join agencia
on reserva.rut_agencia = agencia.rut_agencia;