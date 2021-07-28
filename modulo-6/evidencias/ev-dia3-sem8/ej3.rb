#Ejercicio3 

"""
3. Confeccionar una clase que permita almacenar el nombre y la edad de una
persona. Mostrar los datos cargados. Imprimir un mensaje si es mayor de edad
(edad>=18). Posteriomente almacenar los 4 objetos de personas en un arreglo,
recorrer ese arreglo y mostrar los datos de cada persona.
"""

class Persona

    attr_accessor :nombre
    attr_accessor :edad

    def initialize
        puts "Ingrese el nombre: "
        @nombre = gets().chomp()
        puts "Ingrese la edad: "
        @edad = gets().chomp()
    end

    def mayor_de_edad(edad, nombre)
        if edad.to_i() >= 18
            puts "#{nombre} es mayor de edad"
        else
            puts "#{nombre} NO es mayor de edad"
        end
    end

end

puts "Creando la primera persona"
persona1 = Persona.new

puts "Creando la segunda persona"
persona2 = Persona.new

puts "Creando la tercera persona"
persona3 = Persona.new

puts "Ingrese la cuarta persona"
persona4 = Persona.new

personas = []

personas << persona1
personas << persona2
personas << persona3
personas << persona4

personas.each do |persona|
    puts persona.nombre
    puts persona.edad
    puts persona.mayor_de_edad(persona.edad, persona.nombre)
end