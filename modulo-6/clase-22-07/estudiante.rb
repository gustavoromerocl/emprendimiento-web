#Estudiante 1
class Estudiante
    def initialize
            puts "Ingrese su rut:"
            @rut = gets().chomp()
            puts "Ingrese su Nombre:"
            @nombre = gets().chomp()
            puts "Ingrese su Promedio:"
            @promedio = gets().to_f()
            puts "Ingrese su Asistencia:"
            @asistencia = gets().to_f()
    end
    
       

    def mostrar_datos()
        puts "Rut: #{@rut}"
        puts "Nombre: #{@nombre}"
        puts "Promedio: #{@promedio}"
        puts "Asistencia: #{@asistencia}"
    end
    def mostrar_situacion()
            if @promedio >= 4 && @asistencia >=85
                    puts "Promedio: #{@promedio}"
                    puts "Asistencia: #{@asistencia}%"
                    puts "Estado: Aprobado"
            else
                    puts "Promedio: #{@promedio}"
                    puts "Asistencia: #{@asistencia}%"
                    puts "Estado: Reprobado"
            end
    end
end
estudiante1 = Estudiante.new
estudiante3 = Estudiante.new
estudiante1.mostrar_datos
puts "Situación Final"
estudiante1.mostrar_situacion
puts "------------------------------------------------------"
estudiante3.mostrar_datos
puts "Situación Final"
estudiante3.mostrar_situacion

#Estudiante 2
class Estudiante
    def initialize
            puts "Ingrese su rut:"
            @rut = gets().chomp()
            puts "Ingrese su Nombre:"
            @nombre = gets().chomp()
            puts "Ingrese su Promedio:"
            @promedio = gets().to_f()
            puts "Ingrese su Asistencia:"
            @asistencia = gets().to_f()
    end
    def mostrar_datos()
        puts "Rut: #{@rut}"
        puts "Nombre: #{@nombre}"
        puts "Promedio: #{@promedio}"
        puts "Asistencia: #{@asistencia}"
    end
    def mostrar_situacion()
            if @promedio >= 4 && @asistencia >=85
                    puts "Promedio: #{@promedio}"
                    puts "Asistencia: #{@asistencia}%"
                    puts "Estado: Aprobado"
            else
                    puts "Promedio: #{@promedio}"
                    puts "Asistencia: #{@asistencia}%"
                    puts "Estado: Reprobado"
            end
    end
    protected :mostrar_situacion
    def setNombre(nuevo_nombre)
       @nombre = nuevo_nombre
    end
    def getNombre
        @nombre
    end
    def setRut(rut)
    @rut = rut
    end
    
end
estudiante1 = Estudiante.new
estudiante1.setRut()
