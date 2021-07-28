class Persona
    def initialize (rut, nombre, direccion)
            @rut = rut
            @nombre = nombre
            @direccion = direccion
    end
end

class Vendedor  < Persona
    def mostrar_informacion()
            puts "Nombre: #{@nombre}"
            puts "Dirección: #{@direccion}"
    end
end

vendedor_partime = Vendedor.new("1111-1","Maria Paz", "mi direccion # 222")
vendedor_partime.mostrar_informacion