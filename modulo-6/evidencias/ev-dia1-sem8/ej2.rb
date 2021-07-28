#https://www.rubyguides.com/2015/12/ruby-time/

#Ejercicio 2

"""
2. Realizar una agenda personal también la podemos representar como un Hash. La
fecha sería la clave y las actividades de dicha fecha sería el valor.
"""

#Se asignan fechas en formatoa las variables
fecha1 = Time.new(2021, 7, 21)
fecha2 = Time.new(2021, 8, 5)
fecha3 = Time.new(2021, 9, 3)

#Se crea un hash con las fechas y respectivos recodatorios
agenda = {
    fecha1 => "Hora con el dentista", 
    fecha2 => "Cenar con mi madre",
    fecha3 => "Asistir al recital"
}

opcion = nil
#Se ejecuta un programa para que permite agregar nuevos recordatorios y consultar los existentes
while opcion != 0
    puts "********************************"
    puts "            AGENDA             "
    puts ""
    puts "[1] - Agregar recordatorio"
    puts "[2] - Ver toda la agenda"
    puts ""
    puts "[0] - Salir"
    puts ""
    puts "Elija una opción:"
    opcion = gets().to_i()

    case opcion
    when 1
        puts "Ingrese día"
        dia = gets().to_i()
        puts "Ingrese el mes"
        mes = gets().to_i()
        puts "Ingrese el año"
        year = gets().to_i()

        puts "Escriba su recordatorio"
        recordatorio = gets().chomp()

        nueva_fecha = Time.new(year, mes, dia)

        agenda[nueva_fecha] = recordatorio

        puts "Recordatorio guardado"
    when 2
        agenda.each do |clave, valor|
            puts "Fecha: #{clave.strftime("%d/%m/%Y")} Recordatorio: #{valor}"
        end
    end
end



