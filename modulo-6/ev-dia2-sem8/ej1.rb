require 'rubygems'
require 'rest-client'
require 'json'
require 'pp'

url = "https://pokeapi.co/api/v2/pokemon/1"

response = RestClient.get(url)
resultado = JSON.parse(response.to_str)

nombre = resultado["name"]

habilidad1 = resultado["abilities"][0]["ability"]["name"]
habilidad2 = resultado["abilities"][1]["ability"]["name"]

tipo1 = resultado["types"][0]["type"]["name"]
tipo2 = resultado["types"][1]["type"]["name"]

peso = resultado["weight"]
altura = resultado["height"]

puts "Nombre del pokemon: #{nombre}"
puts "Habilidades: #{habilidad1} - #{habilidad2}"
puts "Tipo: #{tipo1} - #{tipo2}"
puts "Peso: #{peso}"
puts "Altura: #{altura}"
