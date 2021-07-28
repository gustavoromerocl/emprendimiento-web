#Expresiones regulares

puts "Ingrese un número:"
numero1 = gets().chomp()
if numero1 =~ /[[:alpha:]]/
puts "es una letra"
else
puts "es un numero"
numero1_convertido = numero1.to_i
end

puts "Ingrese un número:"
numero1 = gets().chomp()
if numero1 =~ /[[:digit:]]/
puts "es un numero"
numero_convertido = numero1.to_i()
else
puts "es una letra"
end
puts numero_convertido + 10