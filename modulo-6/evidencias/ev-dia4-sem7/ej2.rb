#Ejericio 2

puts "Ingrese la cantidad de alturas a promediar: "
n_alturas = gets().to_i()

iteracion = 1
suma = 0
while iteracion <= n_alturas
    puts "Ingrese la altura N° #{iteracion}: "
    altura = gets().to_f()

    suma += altura 
    iteracion += 1
end

puts "El promedio de las alturas ingresadas es #{suma/n_alturas}"
