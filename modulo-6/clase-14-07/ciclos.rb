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