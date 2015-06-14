#!/usr/bin/env ruby

# El rango de números que se usan en la tabla.
min = 1
max = 9

# Un "array" de los números.
tabla = []

# Por cada número, lo pone en la(s) línea(s) correctas de la tabla.
min.upto(max) do |número|
  original = número
  línea = 0

  while número > 0
    # Obtiene sólo el bit menos significativo ("LSB").
    bit = número & 1

    # Agrega el número en esta línea si el bit es 1.
    tabla[línea] ||= []
    tabla[línea].push(original) if bit == 1

    # Avance la línea y sale un bit y avance la línea.
    i += 1
    número = número >> 1
  end
end

# Muestra la tabla con todos sus números.
puts tabla.inspect
