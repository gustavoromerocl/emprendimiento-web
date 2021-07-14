puts "Ingrese número 1:"
numero1 = gets().to_i
puts "Ingrese número 2:"
numero2 = gets().to_i
#Estructura condicional IF
if numero1 > numero2
puts "#{numero1} es mayor a #{numero2}"
elsif numero1 == numero2
puts "#{numero1} es igual a #{numero2}"
else
puts "#{numero1} es menor a #{numero2}"
end


puts "Ingrese número 1:"
numero1 = gets().to_i()
puts "Ingrese número 2:"
numero2 = gets().to_i()
puts "Ingrese número 3:"
numero3 = gets().to_i()
#OPERADORES BOOLEANOS AND, OR Y EL NOT
#AND --> && proposición 1 vs proposición 2
#OR --> ||
#NOT --> !
if numero1 > numero2 && numero1 > numero3
puts "#{numero1} es mayor a #{numero2} y #{numero3}"
elsif numero1 == numero2 && numero1 == numero3
puts "#{numero1} es igual a #{numero2} y a #{numero3}"
elsif numero2 > numero1 && numero2 > numero3
puts "#{numero2} es mayor a #{numero1} y a #{numero3}"
else
puts "#{numero3} es mayor a #{numero1} y #{numero2}"
end