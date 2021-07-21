#Ejercicio 7

"""
7. Una empresa necesita almacenar los nombres y sueldos de sus empleados.  
Confeccionar un programa que permita almacenar los nombres de los empleados y  sus sueldos, 
se sugiere que ocupe 2 arreglos uno para nombres y otro para sueldo,  
el script debe permitir ingresar datos y solo finalizará la recepción de datos cuando  
no exista ningún empleado más que ingresar.
"""

empleados = Hash.new
loop do
    puts "Ingrese nombre del empleado:"
    emp = gets().chomp()
    puts "Ingrese sueldo del empleado:"
    sueldo = gets().to_i
    empleados[emp] = sueldo
    puts "Desea ingresar otro empleado [s/n]?"
    opcion = gets().chomp()
    if opcion == "n"
        break    
    end
end


empleados.each do |clave, valor|
    puts "Empleado: #{clave} - Sueldo: #{valor}"
end