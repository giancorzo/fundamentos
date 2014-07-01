#encoding: utf-8
# 
# Operadores Aritméticos
# ======================
#
# Recuerdan que les dije que la programación esta basada en la matemática, pues es porque era cierto!!!.
# 
# El lenguaje RUBY tiene una serie de opereadores matemáticos básicos similares a los que encontrarian en
# una calculdora común y silvestre. Es más sabian que una calculadora es una PC extremadamente básica?
#
# Veamos nuestro primer ejemplo

puts 2 + 3 #Imprime 5

# Razonemos sobre este ejemplo, la operación tal como la conoce tiene 2 partes (los números que intervienen
# y el operador). El resultado se imprime en pantalla utilizando la función puts, que es una palabra
# reserva del sistema para imprimir (numeros, textos, etc) a la pantalla.
#
# Veamos entonces más ejemplo de operadores

puts 3 - 2 #Imprime 1

puts 3 * 3 #Imprime 9

puts 5 / 2  #Que imprime esto?

# Pues esto imprime 2, esto se debe a que se están dividiendo dos números enteros y ruby sólo toma la parte
# entera. Entonces como hacemos si queremos que la división tenga un valor decimal?
#
# Pues en ese caso 1 de los dos operadores debe ser fracional

puts 5.0 / 2 #Imprime 2.5

# Acabo de introducir un concepto nuevo... NUMEROS FRACCIONALES...
#
# Pues en ruby los números tiene varias formas de trabajarse pero la que nos interesa para el curso
# son los número ENTEROS y los FRACCIONALES
#
# Los ENTEROS son lo que ya conocemos como 1,2,3,4,5 (son simples y no ocupan mucha memoria porque van de 1 en 1)
# Los FRACCIONALES o DECIMALES son números que pueden tener mucho valores entre el 1 y 2.
# Por ejemplo 1.1, 1.2,1.21,1.21111,1.200000000000001, este tipo de números ocupa mucho más memoria porque
# se debe poder grabar su parte decimal.
#
# Veamos otros operadores

puts 5 % 2 # Imprime 1

# Este operador no lo encontramos normalmente en una calculadora y se llama resto, te devuelve la parte entera
# que sobra de dividir 5 entre 2, (5 / 2 = 2 y 5 % 2 = 1 ==> donde 2 x 2 + 1 = 5)

puts 5 ** 2 #Imprime 25

# Terminamos con el operador potencia que es similar a la multiplicación pero usando dos *.
#
# Con esto podemos resolver la mayoria de problemas que nos presenten en el curso.



