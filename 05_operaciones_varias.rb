#encoding: utf-8
# 
# Operaciones varias
# ==================
#
# Hasta el momento sólo hemos impreso los números directamente y no hemos impreso ningún texto coherente
# Por lo que vamos a aprender a hacerlo, para eso vamos a usar puts y ver las diferentes interacciones que existen

# Para imprimir una cadena, simplemente poner la cadena o la variable directamente
puts "Hola mundo"

# Tambien podemos usar una variable
cadena = "El hobbit camina por el mundo"
puts cadena

# También podemos usar una plantilla
hobbit = "Yo soy bilbo Bolson"
puts "#{hobbit} y pertenezco a la comunidad del anillo"

# Como ven el valor de la variable es insertado directamente en la cadena e impreso en una sóla función
#
# Conversiones
# =============
#
# La conversiones me sirven para transformar el valor de una variable de un tipo a otro, por ejemplo
# entero => cadena
# cadena => entero
# entero => decimal
# decima => entero (se pierde la fracción)
# etc
#
# Para lo cual utilizamos to_x , donde x puede ser to_i (entero), to_s (cadena), to_f (float o decimal). Veamos un
# ejemplo

numero = 5
puts "El numero es " + numero.to_s

# Aquí estamos utilizando la función + (que concatena dos cadenas, pero no cadena y número por lo tanto necesitamos
# convertirla previamente)

decimal = 5.54
puts "El numero es " + decimal.to_i.to_s # solo imprimira el valor de 5

# Noten que logré hacer una doble conversión, en este caso sólo queria el valor entero de la variable

# Ingreso de datos por teclado
# ===========================
#
# Hasta el momento nunca le hemos pedido al usuario que interactue con nuestro programa, pero muchas veces es necesario.
# Para obtener valores por teclado utilizamos la funcion gets

puts "Ingresa tu edad"
edad = gets
puts "Tu edad es #{edad}"


# gets hace que el programa se quede a la espera que ingreses un valor y 
# cuando lo hagas se reanuda la ejecución del mismo
# 
# Muchas pasa que se cuela el caracter enter cuando ingresamos nuestro dato
# por lo tanto necesitamos utilizar una función que se llama chomp para limpiarla

puts "Ingresa tu edad"
edad = gets.chomp
nueva_edad = edad.to_i + 1
puts "Tu nueva edad es #{nueva_edad}"


