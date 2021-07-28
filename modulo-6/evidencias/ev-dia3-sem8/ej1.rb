#Ejericio 1

"""
1. Desarrollar un programa que cargue los lados de un triángulo e implemente los
siguientes métodos: inicializar los atributos, imprimir el valor del lado mayor y otro
método que muestre si es equilátero o no. El nombre de la clase llamarla Triangulo
"""

class Triangulo 
    def initialize(l1, l2, l3)
        @lado1 = l1
        @lado2 = l2
        @lado3 = l3
        @mayor_que = 0
    end

    def setMayor(aux)
        @mayor_que = aux
    end

    def getMayor
        @mayor_que
    end

    #Método que valida cual de los lados es el mayor
    def mostrar_lado_mayor()
        array = [@lado1, @lado2, @lado3]
        array.each do |el|
            if el > @mayor_que
                setMayor(el)
            end
        end
        getMayor()
    end

    def es_equilatero()
        if @lado1 == @lado2 && @lado1 == @lado3
            puts "El triangulo es equilatero"
        else
            puts "El triangulo no es equilatero"
        end
    end
end

triangulo1 = Triangulo.new(200, 200, 200)
triangulo2 = Triangulo.new(100, 200,400)
puts "----------Triangulo 1----------"
puts "El lado mayor es: #{triangulo1.mostrar_lado_mayor()}"
triangulo1.es_equilatero()
puts ""
puts "----------Triangulo 2----------"
puts "El lado mayor es: #{triangulo2.mostrar_lado_mayor()}"
triangulo2.es_equilatero()
