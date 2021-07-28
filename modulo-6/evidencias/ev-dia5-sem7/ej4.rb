#Ejercicio 4

"""
4. Definir un arreglo por asignación con 5 enteros. Mostrar por pantalla solo los  elementos con valor iguales o superiores a 7. 
"""

arreglo = [5, 6 ,7, 8, 9]

arreglo.each do |elemento|
    if elemento >= 7
        puts elemento
    end
end
