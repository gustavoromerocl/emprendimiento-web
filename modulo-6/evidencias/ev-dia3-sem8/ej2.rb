#Ejericio 2

"""
2. Implementar la clase Operaciones. Se deben cargar dos valores enteros por
teclado en el método initialize, calcular e imprimir su suma, resta, multiplicación y
división, cada una en un método.
"""

class Operaciones

    def initialize
        puts "Ingrese el primer número:"
        @numero1 = gets().to_i()
        puts "Ingrese el segundo número:"
        @numero2 = gets().to_i()
    end

    def suma()
        puts "La suma de los números es: #{@numero1 + @numero2}"
    end

    def resta()
        puts "La resta de los números es: #{@numero1 - @numero2}"
    end

    def multiplicacion()
        puts "La multiplcación de los números es: #{@numero1 * @numero2}"
    end

    def division()
        puts "La división de los números es: #{(@numero1 / @numero2).to_f}"
    end
end

puts "Ingresando operacion"
operacion = Operaciones.new

operacion.suma()
operacion.resta()
operacion.multiplicacion()
operacion.division()
