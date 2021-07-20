#Ejemplo1
colores = ["rojo", "verde", "azul", "amarillo", "blanco", "negro","azul"]
print colores
puts ""
colores.each do |elemento|
        if elemento == "azul"
                colores.delete(elemento)
        end
end 
print colores

#Ejemplo2
valores = [14,25,13,45,16]
print valores
puts ""
valores.delete_if {|elemento| elemento > 20}
print valores

#Orden alfabetico
colores = ["rojo", "verde", "azul", "amarillo", "blanco", "negro","azul"]
print colores
puts ""
colores_ordenados = colores.sort {|a, z| a <=> z} #ordena alfabeticamente
print colores_ordenados

#Hashes en arrays
capitales = {
    "santiago" => 5614000, 
    "buenosaires" => 16600000,
    1 => 8600000
}
puts "Cantidad de habitante Capital de Perú es: #{capitales[1]}"

capitales = {
    "santiago" => 5614000, 
    "buenosaires" => 16600000,
    "lima" => 8600000
}
puts "Cantidad de habitante Capital de  es: #{capitales["lima"]}"



productos = Hash.new
loop do
        puts "Ingrese nombre del producto:"
        prod = gets().chomp()
        puts "Ingrese precio del producto:"
        precio = gets().to_i
        productos[prod] = precio
        puts "Desea ingresar otro producto [s/n]?"
        opcion = gets().chomp()
        if opcion == "n"
            break    
        end
end
puts productos
productos.each do |clave, valor|
        puts "Producto: #{clave} y su precio es #{valor}"
end