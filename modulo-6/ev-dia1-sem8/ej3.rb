#Ejercicio 3

"""
3. Crear un Hash que permita almacenar nombres de empleados de una empresa y su
sueldo, utilizar como clave el nombre del empleado y como valor el sueldo del
mismo.
Cargar por teclado los empleados y sus sueldos.
Ingresar por teclado un nombre de empleado y mostrar su sueldo o un mensaje
que indique que no existe dicho empleado.
"""

#Se crea el hash para almacenar los empleados
empleados = Hash.new

opcion = nil

#Se crea el programa con las opciones de agregar y consultar el sueldo por nombre
while opcion != 0
    puts "********************************"
    puts "   ADMINISTRADOR DE EMPLEADOS   "
    puts ""
    puts "[1] - Agregar empleado"
    puts "[2] - Consulta de sueldo"
    puts ""
    puts "[0] - Salir"
    puts ""
    puts "Elija una opción:"
    opcion = gets().to_i()

    case opcion
    when 1
        puts ""
        puts "AGREGANDO EMPLEADO"
        puts ""
        puts "Ingrese nombre del empleado:"
        emp = gets().chomp()
        puts "Ingrese sueldo del empleado:"
        sueldo = gets().to_i
        empleados[emp] = sueldo
    when 2
        puts ""
        puts "CONSULTADNO SUELDO"
        puts ""
        puts "Ingrese el nombre del empleado a buscar: "
        nombre = gets().chomp()
        
        empleados.each do |clave, valor|
            #Se tranforman los valores en minuscula para optimizar la consulta
            aux_clave = clave.downcase
            aux_nombre = nombre.downcase

            if aux_nombre == aux_clave
                puts "El sueldo del empleado #{nombre} es de: #{valor}"
                break
            else
                puts "No existe un empleado con el nombre #{nombre}"
                break
            end
        end
    end
end


