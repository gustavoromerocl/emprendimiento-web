select * from agencia;

update agencia set direccion_agencia = 'Nueva Bandera 55, Santiago'
where rut_agencia = '75467389-9';

update agencia set nombre_reserva = 'Gustavo Romero'
where rut_agencia = '96362398-2';

delete from agencia
where rut_agencia='75467389-9';