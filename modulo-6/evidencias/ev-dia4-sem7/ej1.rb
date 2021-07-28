#Ejercicio 1

count1 = 0
count2 = 0

10.times do |ciclo|
    puts "Ingrese la nota N° #{ciclo+1}"
    nota = gets().to_f()
    if nota >= 5
        count1 += 1
    else
        count2 += 1
    end
end

puts "Notas mayor o igual que 5: #{count1}"
puts "Notas menores que 5: #{count2}"