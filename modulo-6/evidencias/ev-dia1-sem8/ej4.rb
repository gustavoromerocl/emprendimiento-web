#Ejercicio 4

"""
Crear un Hash donde se almacene como clave el nombre de producto y como valor
el precio del mismo.
Imprimir solo los productos que tienen un precio mayor a 20.000 y al final indicar
la cantidad de productos con dicha situación
"""

#Se crea Hash de productos
productos = {
    "Lavadora Lg" => 250000,
    "Tablet Huwei" => 70000,
    "Carcasa i-phone 4" => 15000,
    "Audifonos inalambricos Sony" => 19990
}

#Se inicializa contador
count = 0

productos.each do |clave , valor|
    if(valor > 20000)
        puts "Producto: #{clave} Valor: $#{valor}"
        count += 1
    end
end

puts "La cantidad de productos con valor mayor a $20.000 es de: #{count}"