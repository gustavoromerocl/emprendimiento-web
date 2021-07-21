#Ejercicio 6

"""
6. Cargar por teclado y almacenar en un arreglo las alturas de 5 personas (valores  flotantes). 
Obtener el promedio de las mismas. Contar cuántas personas son más  altas que el promedio y cuántas más bajas. 
"""

alturas = []

#Ingreso por teclado
5.times do |index|
    puts "Ingrese la altura N° #{index + 1}: "
    alturas << gets().to_f
end

#Método para calcular el promedio
def calcular_promedio (array)
    suma = 0
    array.each do |elemento| 
        suma += elemento
    end
    promedio = suma/array.length
    return promedio
end
 
#Método para contar los mayores al promedio
def mayor_que_menor_que (array)
    contador_mayor = 0
    contador_menor = 0
    promedio = calcular_promedio(array);
    array.each do |elemento| 
        if(elemento > promedio)
            contador_mayor += 1
        else
            contador_menor += 1
        end
    end
    contador = [contador_mayor, contador_menor]
    return contador
end

contador_array = mayor_que_menor_que(alturas)

puts "Las alturas ingresadas son: #{alturas}"
puts "El promedio es: #{calcular_promedio(alturas)}"
puts "Las cantidad de personas mas altas que el promedio es: #{contador_array[0]}"
puts "Las cantidad de personas mas bajas que el promedio es: #{contador_array[1]}"




