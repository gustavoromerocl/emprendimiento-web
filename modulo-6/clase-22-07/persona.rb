class Persona
    def inicilizar(rut, nombre)
       @rut = rut
       @nombre = nombre
    end
    def mostrar_datos()
        puts "Rut:#{@rut}"
        puts "El nombre es: #{@nombre}"
    end

end
#Crear nuestro primer objeto de la clase Persona
persona1 = Persona.new
persona1.inicilizar("16194737-7","Víctor")
persona1.mostrar_datos