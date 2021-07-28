#Ejercicio 1

"""
1. Desarrollar una aplicación que nos permita crear un diccionario ingles/español
(utilizar un Hash). La clave es la palabra en ingles y el valor es la palabra en
castellano.
Mostrar la traducción de dos palabras que existan en el diccionario.
"""

diccionario = {
    "hello" => "Hola", 
    "world" => "Mundo",
}

opcion = "s"

while opcion == "s"
    puts "Traductor Inglés - Español"
    puts "Ingrese palabra: "
    palabra = gets().chomp()
    diccionario.each do |clave, valor|
        if clave == palabra.downcase
            puts "La traducción de #{clave} es: #{valor}"
            break
        else
            puts "Palabra no encontrada en el diccionario"
            break
        end
    end
    puts "¿Desea realizar otra traduccion? [s/n]"
    respuesta = gets().chomp()

    if respuesta.downcase == "s"
        opcion = "s"
    else
        opcion = respuesta
    end
end
