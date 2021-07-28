#Ejercicio 1

"""
1. Confeccionar un método que reciba tres enteros y los muestre ordenados de  menor a mayor. 
"""
number1 = rand(100)
number2 = rand(100)
number3 = rand(100)

def order_number(number1, number2, number3)
    list = [number1, number2, number3]
    return list.sort
end

puts order_number(number1, number2, number3)