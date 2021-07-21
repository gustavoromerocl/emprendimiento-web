#Ejercicio 2
"""
2. Elaborar un método que reciba tres enteros y nos retorne el valor promedio de los  mismos. 
"""

nota1 = rand(1..7).to_f
nota2 = rand(1..7).to_f
nota3 = rand(1..7).to_f

def promedio(number1, number2, number3)
    resultado = (number1 + number2 + number3) / 3
    return resultado
end
puts nota1
puts nota2
puts nota3
puts promedio(nota1, nota2, nota3)