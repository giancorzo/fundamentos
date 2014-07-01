#encoding: utf-8
#
# Operadores booleanos
# ====================
#
# Recuerdan que también dije que la programación estaba basada en lógica, pues también era cierto.
#
# RUBY tiene al igual que los operadores matemáticos operadores booleanos que nos permiten escribir
# expresiones que evalua a verdad (true) o falsedad (false) y que son punto clave para que un
# programa pueda tomar una decisión respecto al flujo del mismo
#
# Veamos algunos ejemplos

puts true == false # imprime false, porque verdad es diferente de falso

puts true != false # imprime true, porque verdad es diferente de true

puts 8 > 7 # imprime true

puts 8 < 7 # imprime false

puts 10 >= 11 # imprime false

puts 10 <= 11 # imprime true

puts true && false # imprime false

# El operador && (a y b) se rige mediante la siguiente tabla de verdad
#
# R | A  Y  B
# ------------
# V | V     V
# F | F     V
# F | V     F
# F | F     F

puts true || false # imprime true

# el operador || (a o b) se rige mediante la siguiente tabla de verdad
#
# R | A  O  B
# ------------
# V | V     V
# V | F     V
# V | V     F
# F | F     F

puts !true # imprime false
puts !false # imprime true

# el operador de negación se expresa mediante !operador
#
# Los operadores boleanos no tienen mucha magia, sólo hay que seguir las tablas de verdades
# para poder resolver los problemas.
#
# Veremos más adelante cuando hagamos funciones de decisión que la operación booleana es clave
# para que los programas decidan que bloque de código ejecutar



