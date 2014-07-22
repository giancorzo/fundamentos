# enconding: utf-8
# Estructuras repetitivas
# =======================
#
# Las estructuras repetitivas nos permiten repetir un grupo de instrucciones un número determinado
# de veces.
#
# Asi mismo es posible repetir un ciclo en una secuencia infinita de veces, deteniendola con una condicional.
#
# Veamos la primera instrucción para repetir un codigo. Utilizaremos la instrucción for

for indice in 1..5
  puts "ciclo #{indice}"
end

# la instrucción for tiene 2 partes (la variable que va a contener el indice de la secuencia y los limites
# en que se va a repetir
#
# Similar al for podemos utilizar la función times de los números

5.times do
  puts "Hola"
end

# Este tipo de instrucciones nos sirve si queremos repetir un número específico de veces pero que pasa si
# no sabemos cuantas veces vamos a repetir un codigo. Para eso vamos a usar la instrucción "while"

limite = 0
while (limite < 5) do
  puts limite
  limite = limite + 1
end

# inicialmente limite es 0 y en cada ciclo limite se incrementa en 1. Sin embargo que pasaria si no pusieramos
# la instrucción limite = limite +1 ? Tendriamos un bucle infinito haciendo que nuestro programa se cuelgue.
# Han visto cuando un programa le pasa eso? se queda congelado... muchas veces es porque se queda en un bucle infinito
# 
# Utilizar variables acumuladoras

suma = 0
for indice in 1..5
  suma += indice
end

# La variable suma en cada ciclo irá aumentando de la siguiente manera:
# ciclo0 => (aun no empieza) suma = 0
# ciclo1 => suma = suma + indice (suma = 0 + 1)
# ciclo2 => suma = suma + indice (suma = 1 + 2)
# ciclo3 => suma = suma + indice (suma = 3 + 3)
# ciclo4 => suma = suma + indice (suma = 6 + 4)
# ciclo5 => suma = suma + indice (suma = 10 + 5)
#
# Lo que es equivalente a decir suma = 1 + 2 + 3 + 4 + 5, por lo tanto la variable suma se comporta como acumulador porque
# acumula un valor ciclo tras ciclo
#
# Variables contadores
#
# Son variables que nos permite contar cuantas veces un ciclo paso. Por ejemplo

contador = 0
for indice in 1..5
  contador += 1
end

# contador tendrá el valor de 5 al final de bucle porque en cada ciclo se fue incrementando de 1 en 1 hasta llegar al 
# limite del ciclo.


