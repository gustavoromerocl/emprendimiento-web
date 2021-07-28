#Metodos
$a_actual = 2021
def calcula_edad(a_nacimiento)
        edad = $a_actual - a_nacimiento
        return edad
end

puts "Ingrese su nombre:"
nombre = gets().chomp()
puts "Ingrese su año de nacimiento: "
a_nac = gets().to_i()

puts "Su nombre es #{nombre} y tiene #{calcula_edad(a_nac)} años"



#Arrays
enteros = [2,4,6,8,10]
flotantes = [2.12,4.67,63.45,4.3]
caracteres = ["Víctor", "María", "Lucas", "Rocío"]
logicos = [true,false,true,true]
varios = [2,4,2.12,4.67,"Lucas","Rocío",true, false,logicos]

#puts enteros
#puts flotantes
#puts caracteres
#puts logicos
puts "El arreglo de entero tiene #{varios.length} elementos"
puts varios[7]


###############################################################

arreglo = []
suma = 0
indice = 0

puts "Ingrese la cantidad de elementos que tendra el arreglo:"
cantidad = gets().to_i()

while indice < cantidad
    print "Ingrese elemento para el arreglo: "
    arreglo << gets().to_i()    
    indice += 1
end

#Recorrer el arreglo que se encuentra con elementos mediante el for mejorado

for elemento in arreglo
      #suma = suma + elemento 
      suma += elemento
end

puts "El arreglo es:"
print arreglo
puts "La suma de los elementos del arreglo es: #{suma}"

##########################################

arreglo = []
indice = 0

puts "Ingrese la cantidad de elementos que tendra el arreglo:"
cantidad = gets().to_i()

while indice < cantidad
    print "Ingrese elemento para el arreglo: "
    arreglo << gets().to_i()    
    indice += 1
end
#Solamente seran sumados los elementos mayores a 50
#Recorrer el arreglo que se encuentra con elementos mediante el each
def suma_elementos(perrito)
        suma = 0
        perrito.each do |elemento|
                if elemento > 50
                        suma += elemento 
                end
        end
        puts "La suma de los elementos del arreglo es: #{suma}"
end

suma_elementos(arreglo)