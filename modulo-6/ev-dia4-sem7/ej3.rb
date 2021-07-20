#Ejercicio 3 

sueldos = []
presupuesto = 0
count1 = 0
count2 = 0

#Creando array con sueldos de forma aleatoria
for numero in (1..rand(10))
    sueldos.push(rand(100000..500000))
end

#Validando las condiciones y contando los sueldos en los rangos especidicados
for numero in (0..sueldos.length)
    if sueldos[numero].to_i() >= 100000 && sueldos[numero].to_i() <= 300000
        count1 += 1
    elsif sueldos[numero].to_i > 300000
        count2 += 1
    end
    presupuesto += sueldos[numero].to_i() #Sumando los sueldos para calcular el presupuesto
end

puts "Sueldos creados de forma aleatoria: #{sueldos}"
puts "Presupuesto de la empresa: #{presupuesto}"
puts "Empleados con sueldo entre $100.000 y $300.000: #{count1}"
puts "Empleados con sueldo mayor que $300.000: #{count2}"