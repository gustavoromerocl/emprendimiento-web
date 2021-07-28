puts "Ingrese la cantidad de números enteros a validar: "
num_enteros = gets().to_i()

iteracion = 1
par = 0
impar = 0

while iteracion <= num_enteros
    puts "Ingrese el N° #{iteracion}: "
    numero = gets().to_f()
    resto = numero % 2

    if(resto == 0)
        par += 1
    else
        impar += 1
    end

    iteracion += 1
end

puts "Números pares: #{par}"
puts "Números impares #{impar}"