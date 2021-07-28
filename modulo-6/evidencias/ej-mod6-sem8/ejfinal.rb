convertir = Hash.new
nombre = "Victor Egardo Silva Silva"
modulo = "MODULO 6: INTRODUCCION A LA PROGRAMACION CON RUBY"
ano = 2021
x = 0 # Grados C°
y = 0 # Grados F°
require 'docx'

128.times do |conv|
y = x * 1.8 + 32
convertir[x] = y
y += 1
x += 1

end

File.open("temperatura.docx" , "w") do |escribir|
escribir.puts "--------------------------------------------------"
escribir.puts nombre
escribir.puts modulo
escribir.puts ano
escribir.puts "--------------------------------------------------"
escribir.puts "Grados Cº = X , y su conversión a Fº es = Y"
escribir.puts "X = Y "
convertir.each do |clave, valor|
escribir.puts "#{clave} = #{valor}"
end
end