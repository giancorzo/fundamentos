#encoding: utf-8
#
# Variables
# =========
#
# Las variables son espacios de memoria que almacenan un dato y tienen un identificador 
# que apunta a ese espacio de memoria. Las variables pueden almacenar todo tipo de dato
# (numérico, cadena de texto, decimales, booleanos, objetos, etc)
#
# Veamos un ejemplo de variable

entero = 2
puts entero

# Como mencioné antes, la variable tiene un IDENTIFICADOR, en este caso seria el texto
# entero y un dato (el valor 2)
#
# asi mismo uno puede utilizar la variable en diferente operaciones asumiendo que es el
# dato el que se va a procesar. Por ejemplo
#

a = 5
b = 10
suma = a + b
puts suma

# como puede verse, a recibe el valor 5 y b el valor 10, el resultado de la suma de esos
# valores se asigna a otra variable llamada suma y finalmente se imprime su valor
#
# Las variables no sólo son numéricas sino que pueden guardar valores por ejemplo

nombre_libro = "El hobbit"
puts nombre_libro

# Las variables también pueden ser decimales, veamos un ejemplo

flotante = 3.5
puts flotante

# Las variables como su nombre indica varian de contenido tanto al ser declaradas como
# cuando se les asigna un valor mediante un proceso.
#
# Sin embargo existen valores que nosotros no deseamos que cambien en el tiempo y ese tipo
# de variable le llamamos constante y las definimos de tal manera que podamos distinguirlas

IGV = 0.18
precio = 300
impuesto = precio * IGV

puts impuesto

# IGV puede ser usado como cualquier otra variable, su única condicion es que su valor no cambie
# en el tiempo

# las variables pueden cambiar su tipo de dato en el tiempo, que algo que tenia una cadena ahora
# tenga un numero. Intercambiemos valores entre la variable entero y nombre_libro

nombre_libro = 10
entero = "El hobbit"

puts nombre_libro
puts entero

# Así mismo podemos asignar varias variables en un sóla linea (recuerdan que los programadores somos
# flojos)

a, b, c = "Hola", 15, 20.3
puts a
puts b
puts c

