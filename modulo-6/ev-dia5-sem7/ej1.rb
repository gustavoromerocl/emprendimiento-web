#Ejercicio 1

"""
1. Confeccionar un método que reciba tres enteros y los muestre ordenados de  menor a mayor. 
"""
list = []
for numero in (1..3)
    puts "Ingrese el numero #{numero}: "
    input = gets().to_i()

    list.push(input)
end

puts list.sort!
