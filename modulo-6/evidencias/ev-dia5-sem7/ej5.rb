#Ejercicio 5 

"""
5. Almacenar en un arreglo los sueldos (valores flotantes) de 5 operarios. Imprimir el  arreglo y el promedio de sueldos. 
"""
sueldos = []
suma = 0
promedio = 0
#Creando array con sueldos de forma aleatoria
for numero in (1..5)
    sueldos.push(rand(100000..500000).to_f)
end

sueldos.each do |elemento|
    suma += elemento
end

promedio = suma/sueldos.length

puts "El arreglo es : #{sueldos}"
puts "El promedio es : #{promedio}"