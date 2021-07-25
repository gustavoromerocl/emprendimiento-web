class Estudiante

    #Cambia la accesibilidad a public
    attr_accessor :nombre
    attr_accessor :promedio
    attr_accessor :asistencia
    
    def initialize #constructor
        puts "Ingrese su rut:"
        @rut = gets().chomp()
        puts "Ingrese su Nombre:"
        @nombre = gets().chomp()
        puts "Ingrese su Promedio:"
        @promedio = gets().to_f()
        puts "Ingrese su Asistencia:"
        @asistencia = gets().to_f()
    end

    #metodo mostrar datos
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
    
    def setRut(rut)
    @rut = rut
    end
    def getRut
    @rut
    end
    
end

puts "Ingresando datos para el estudiante 1"
estudiante1 = Estudiante.new
puts "Ingresando datos para el estudiante 2"
estudiante2 = Estudiante.new
estudiantes = []
estudiantes << estudiante1
estudiantes << estudiante2
estudiantes.each do |estudiante|
puts "----Datos del Estudiante-----"
puts estudiante.getRut
puts estudiante.nombre
puts estudiante.promedio
puts estudiante.asistencia
puts estudiante.mostrar_situacion
end