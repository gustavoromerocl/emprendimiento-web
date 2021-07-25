nombre = "Gustavo Romero"
modulo = "Módulo 6: Introducción a la programación con Ruby / C51811-O34960-M6"
date = Time.now
palabras = []

puts "Nombre del estudiante: #{nombre}"
puts "Módulo: #{modulo}"
puts "Año: #{date.year}"

for numero in (0..127)
    conv = (numero.to_f() * 9/5) + 32
    mensaje = "Grados Cº = #{numero} , y su conversión a Fº es = #{conv}"
    palabras.push(mensaje)
    puts "Grados Cº = #{numero} , y su conversión a Fº es = #{conv}"
end

