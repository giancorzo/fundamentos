#encoding: utf-8
# 
# Manejo de Funciones
# ===================
#
# Existe un dicho muy antiguo que dice Divide y vencerás, para resolver algunos algoritmos complejos es mejor
# dividir las tareas en pequeñas funciones especilizadas sobre todo si es que vamos a llamar a esta función varias
# veces desde diferentes lugares de nuestro código
#
# Un función se define de la siguiente manera

def saludar
   puts "Hola mundo"
end

# Como pueden ver, la función se define mediante un def {nombre función} y termina con un end. 
# Todos los comandos que están dentro del def y el end son considerados parte de la función.
#
# Las funciones puede o no retornar valores. Cuando estás no retornar ningún valor entonces se le sueles llamar
# "procedimientos". Los procedimiento normalmente se usan para dividir la lógica de un programa y las funciones
# para realizar calculos
#
# Veamos un ejemplo de una función que retorna un valor

def calcular_promedio(a,b,c)
   return (a + b + c) / 3.0
end

# Hemos definido la función calcular promedio, esta recibe 3 parámetros: a, b, c. Los parametros son valores que vamos a
# ingresar a la función al momento de usarla en otra sección del código. Estos parametros en el momento de ejecutarse pueden
# tomar diferentes valores por ejemplo, si realizamos la invocación de la siguiente manera

puts calcular_promedio(10,11,15)

# Obtendremos como resultado el valor 12, observen que estoy anteponiendo puts y esto lo hago porque puts me permite imprimir
# en pantalla el valor resultante de la función. Sin embargo para el ojo poco entrenado quizá esto sea muy complicado así
# que yo puedo hacerlo un poco más fácil de entender pero agregando más líneas de código, veamos un ejemplo

promedio = calcular_promedio(10,11,15)
puts promedio

# Como pueden notar el valor resultante de la llamada a la función "calcular_promedio" lo estoy asignando a una variable llamada
# promedio, la cual imprimo en pantalla mediante el comando puts. Esta una forma más "verbosa" de escribir el mismo código.
#
# Asi mismo quiero que noten que los identificador a, b, c son los nombres que se le da al valor que ingresamos como parametro.
# En nuestro ejemplo: a = 10, b = 11, c = 15.
#
# Ok. Ahora que hemos visto como funcionan las "funciones" veremos como hacer un procedimiento
#
def promedio
   dato1 = 5
   dato2 = 7
   dato3 = 10
   promedio = calcular_promedio(dato1,dato2,dato3)
   puts "Calculando el promedio para #{dato1}, #{dato2}, #{dato3}"
   puts "El promedio es #{promedio}"
end

promedio

# Aqui hemos definido un procedimiento llamado "promedio", pero a diferencia de nuestro calcular_promedio, este programa 
# define variables, hace una llamada a calcular promedio (porque no nos gusta reinventar la rueda) y luego imprime en
# pantalla el resultado. Entonces entendamos que los procedimientos son normalmente utilizados para encapsular lógica de negocio.
# 
# Y alguien noto que después de definir el método promedio .... existe un texto suelto llamado promedio??? y porque eso
# esta ahí se preguntarán?
#
# la respuesta es simple y es que el hecho que nosotros definamos nuestros procedimiento no significa que estos mágicamente se vayan
# a ejecutar sino que nosotros debemos indicar a RUBY cuando ejecutarlo.
#
# Dado que RUBY ejecutar linea por linea el programa nosotros podemos asumir entonces que la secuencia lógica que este programa
# tomará será la siguiente:
#
# 1. Define el procedimiento saludar (Separa espacio en memoria para este código, pero no lo ejecuta)
# 2. Define la función calcular_promedio (Separa memoria....)
# 3. Ejecuta puts calcular_promedio (Ahora si realiza una llamada a la función previamente definida e imprime el resultado)
# 4. Realiza otra llamada a calcular_promedio y lo asigna a la variable promedio
# 5. Pinta en pantalla el valor de promedio
# 6. Define el procedimiento promedio(Separa memoria...)
# 7. Ejecuta el procedimiento promedio
#
# Con esto terminamos los conceptos sobre funciones y procedimientos, espero los sepan aplicar a su ejercicios.
