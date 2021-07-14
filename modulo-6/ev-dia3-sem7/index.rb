#Ejercicio-1
puts "######### PERÍMETRO DEL CUADRADO ##########"
puts "Ingresa el lado del cuadrado"
lado = gets().to_i()

puts "El perimetro de tu cuadrado es: #{lado * 4}"
puts ""

#Ejercicio-2
puts "######### SUMA Y PRODUCTO ##########"
puts "Ingresa el primer número"
num1 = gets().to_i()

puts "Ingresa el segundo número"
num2 = gets().to_i()

puts "Ingresa el tercer número"
num3 = gets().to_i()

puts "Ingresa el cuarto número"
num4 = gets().to_i()

puts "La suma de los dos primeros números (#{num1} + #{num2}) es:  #{num1 + num2}"
puts "El producto de los dos últimos números (#{num3} * #{num4}) es: #{num3 * num4}"
puts ""

#Ejercicio-3
puts "######### PROMEDIO ##########"
puts "Ingresa el primer número"
num1 = gets().to_f()

puts "Ingresa el segundo número"
num2 = gets().to_f()

puts "Ingresa el tercer número"
num3 = gets().to_f()

puts "Ingresa el cuarto número"
num4 = gets().to_f()

suma = num1 + num2 + num3 + num4
promedio = (num1 + num2 + num3 + num4) / 4
puts "La suma de los números es:  #{suma.to_i}"
puts "El promedio de los números es: #{promedio}"
puts ""

#Ejercicio-4

puts "######### COMPRA DE ARTICULOS ##########"
puts "Ingresa el precio del artículo: "
precio = gets().to_i()

puts "Ingresa la cantidad de artículos"
cantidad = gets().to_i()

puts "El valor a pagar es de: $ #{precio * cantidad}"
puts ""

#Ejercicio-5
puts "######### DOS NÚMEROS ##########"
puts "Ingresa el primer número"
num1 = gets().to_i()

puts "Ingresa el segundo número"
num2 = gets().to_i()

if num1 >  num2
    puts "La suma de los números es: #{num1 + num2}"
    puts "La diferencia de los números es: #{num1 - num2}"
else
    puts "El producto de los números es: #{num1 * num2}"
    puts "La división de los números es: #{num1.to_f / num2.to_f}"
end
puts ""

#Ejercicio-6
puts "######### PROMEDIO CON CONDICIÓN ##########"
puts "Ingresa la primera nota"
num1 = gets().to_f()

puts "Ingresa la segunda nota"
num2 = gets().to_f()

puts "Ingresa la tercera nota"
num3 = gets().to_f()

promedio = (num1 + num2 + num3) / 3

if promedio > 4
    puts "El promedio del alumno es: #{promedio} APROBADO"
else 
    puts "El promedio del alumno es: #{promedio} REPROBADO"
end
puts ""

#Ejercicio-7
puts "######### DOS DÍGITOS ##########"
puts "ingrese un número"
num = gets().to_i()

if num.is_a?(Integer) && num > 0
    if num.to_s.length >= 1 && num.to_s.length <=2
        puts "El #{num} tiene #{num.to_s.length} dígitos}"
    else
        puts "El número ingresado tiene más de dos dígitos"
    end
else
    puts "El valor ingresado no puede ser un valor negativo ni otro caracter que no corresponda a un número"
end



