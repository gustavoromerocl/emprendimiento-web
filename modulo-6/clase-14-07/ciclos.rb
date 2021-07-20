#ciclo do
ciclo = 1
10.times do ciclo
    puts "Numero #{ciclo+1}"
    #Incrementación o con+tador
    ciclo += 1
end

ciclo = 1
10.times do |ciclo|
    puts "Numero #{ciclo+1}"
end

#loop
loop do
    puts "Debe escribir la palabra mágic para salir"
    puts "Ingrese la palabra mágica:"
    magica = gets().chomp()
    if magica == "ruby"
        puts "Ha ingresado la palabra mágica"
    break
    else
        puts "Esa no es la palabra mágica"
    end
end

#Ciclo While
iteracion = 1
while iteracion <= 10
puts "Número: #{iteracion}"
iteracion += 1
end

#Ciclo While
vidas = 3
while vidas > 0
    puts "Sigo vivo, tengo #{vidas} vidas"
    vidas -= 1
end
puts "he muerto!!!"

#Ciclo Step
1.step(10,2) do | numero |
    puts numero
end

#Ciclo Each
contador_a = 0
"RAUABYA".each_char do | letra |
if letra == "A"
contador_a += 1
end
end
puts "La palabra analizada tiene #{contador_a} veces la A"

#Ciclo For
for numero in (1..10)
    puts numero
end

#Ciclo For mejorado
arreglo = ["Victor", "Maria", "Sergio","Carola", "Johan", "Veronica"]
for nombre in arreglo
puts nombre
end
puts "Cantidad de nombres dentro del arreglo: #{arreglo.length}"

nfante = 1
suma_edades = 0
puts "Ingrese cantidad de infantes a evaluar:"
cantidad_infantes = gets().to_i()
while infante <= cantidad_infantes
puts "Evaluando al infante N°#{infante}"
puts "Ingrese la edad del infante:"
edad = gets().to_f()
#Uso un acumulador o sumador
suma_edades = suma_edades + edad
infante += 1
end
promedio_edades = suma_edades / cantidad_infantes
puts "El promedio de las edades ingresadas es: #{promedio_edades}"