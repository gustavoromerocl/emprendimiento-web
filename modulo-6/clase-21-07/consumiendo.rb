require 'rubygems'
require 'rest-client'
require 'json'
require 'pp'

url = 'https://mindicador.cl/api'

response = RestClient.get(url)

resultado = JSON.parse(response.to_str)

#pp resultado

nombre = resultado['utm']['nombre']
unidad_medida = resultado['utm']['unidad_medida']
fecha = resultado['utm']['fecha']
valor = resultado['utm']['valor']

el = [{nombre: nombre, unidad_medida: unidad_medida, fecha: fecha, valor:valor}]
pp el


