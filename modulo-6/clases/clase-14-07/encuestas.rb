#Ciclo while
puts "------SISTEMA ENCUESTA DE TRABAJADORES-------"
contador_trabajadores = 0
suma_sueldo = 0
#permitir = true
respuesta = ""
while respuesta != "si" || respuesta != "SI" || respuesta != "Si" || respuesta != "sI" || respuesta != "no" || respuesta != "NO" || respuesta != "No" || respuesta != "nO"
puts "¿Existe algun trabajador que evaluar? si/no"
respuesta = gets().chomp()
if respuesta == "si" || respuesta == "SI" || respuesta == "Si" || respuesta == "sI" || respuesta == "no" || respuesta == "NO" || respuesta == "No" || respuesta == "nO"
break
else
puts "La opción ingresada no corresponde, intente nuevamente"
end
end
while respuesta == "si" || respuesta == "SI" || respuesta == "Si" || respuesta == "sI"
contador_trabajadores += 1
puts "Encuestando al trabajador #{contador_trabajadores}"
puts "Ingrese el sueldo del trabajador:"
sueldo = gets().to_f()
puts "Ingrese el nombre del trabajador:"
nombre = gets().chomp()
puts "El trabajor se llama #{nombre} y tiene un sueldo de #{sueldo}"
#suma_sueldo = suma_sueldo + sueldo
suma_sueldo += sueldo
puts "¿Existe algun trabajador más que evaluar? si/no"
respuesta = gets().chomp()
end
if contador_trabajadores > 0
promedio_sueldos = suma_sueldo / contador_trabajadores
puts "El promedio de sueldos de mis trabajadores es: #{promedio_sueldos}"
else
puts "No hubo trabajadores encuestados"
end

#Ciclo while
puts "------SISTEMA ENCUESTA DE TRABAJADORES-------"
contador_trabajadores = 0
suma_sueldo = 0
#permitir = true
respuesta = 0
while respuesta != 1 || respuesta != 2
puts "¿Existe algun trabajador que evaluar? SI=1, 2=NO"
respuesta = gets().to_i
if respuesta == 1 || respuesta == 2
break
else
puts "La opción ingresada no corresponde, intente nuevamente"
end
end
while respuesta == 1
contador_trabajadores += 1
puts "Encuestando al trabajador #{contador_trabajadores}"
puts "Ingrese el sueldo del trabajador:"
sueldo = gets().to_f()
puts "Ingrese el nombre del trabajador:"
nombre = gets().chomp()
puts "El trabajor se llama #{nombre} y tiene un sueldo de #{sueldo}"
#suma_sueldo = suma_sueldo + sueldo
suma_sueldo += sueldo
puts "¿Existe algun trabajador más que evaluar? si/no"
respuesta = gets().chomp()
end
if contador_trabajadores > 0
promedio_sueldos = suma_sueldo / contador_trabajadores
puts "El promedio de sueldos de mis trabajadores es: #{promedio_sueldos}"
else
puts "No hubo trabajadores encuestados"
end

