#encoding: utf-8
#
# Estructuras selectivas
# ======================
#
# Las computadoras no pueden tomar decisiones por si solas (excepto que estemos en la matrix), asi que los programadores crearon
# una serie de instrucciones que le permite a una computadora definir que parte del código van ejecutar
#
# La sentencia se llama if (si en español), y utiliza una condición booleana para definir si uno y otro. Veamos un ejemplo:

edad = 20
if (edad > 17)
   puts "Es mayor de edad"
end

# como pueden ver la instrucción puts "El mayor de edad" sólo se ejecutará cuando la edad sea mayor que 17.
#
# Sobre las condiciones lógicas estas pueden ser lo compleja que deseamos. Veamos un ejemplo:

edad = 17
sexo = "masculino"
tiene_carro = false

if (edad > 17 && sexo == "masculino" && !tiene_carro)
   puts "Es un menor de edad, hombre y no tiene carro"
end

# el && es el operador de Y y esta condición sólo se cumple cuando las tres evaluación dan verdadero. La tabla de
# verdad para && seria:
#
#    |  edad > 17 | sexo = "masculino" | !tiene_carro
# ====================================================
#  V |     V      |        V           |      V
#  F |     V      |        V           |      F
#  F |     V      |        F           |      V
#  F |     V      |        F           |      F
#  F |     F      |        V           |      V
#  F |     F      |        V           |      F
#  F |     F      |        F           |      V
#  F |     F      |        F           |      F
#
#  Donde la única posibilidad es que todos sean verdadero para que cumpla.
#

edad = 17
sexo = "masculino"
tiene_carro = false

if (edad > 17 || sexo == "masculino" || !tiene_carro)
   puts "Es un menor de edad, hombre y no tiene carro"
end

# En ese ejemplo entraremos a la condición cuando edad sea mayor 17 o sea hombre o no tenga carro. 
# La tabla de verdad para || seria:
#
#       |  edad > 17 | sexo = "masculino" | !tiene_carro
#    # ====================================================
#    #  V |     V      |        V           |      V
#    #  V |     V      |        V           |      F
#    #  V |     V      |        F           |      V
#    #  V |     V      |        F           |      F
#    #  V |     F      |        V           |      V
#    #  V |     F      |        V           |      F
#    #  V |     F      |        F           |      V
#    #  F |     F      |        F           |      F
# 
# Entraria casi todos las veces excepto cuando todas son falsas
# 
# Ahora que sucede si deseamos evaluar que sea posible ejecutar más de un posible camino.
# Vemos el caso de else y elsif

def mostrar_edad(edad)
   if (edad > 17)
     puts "Es mayor de edad"
   elsif (edad > 10)
     puts "Es adolescente"
   else
     puts "Es niño"
   end
end

mostrar_edad(20)
mostrar_edad(16)
mostrar_edad(5)

# Pero que pasa si conocemos los posibles valores que puede tomar una variable y queremos hacer
# algo para cada caso?
#
# Por ejemplo, un semáforo puede tener solo 3 posibles valores "rojo", "amarillo", "verde" por lo
# tanto es fácil determinar que hacer en cada caso.
#
# Para eso utilizamos una sentencia llamada case / when. Veamos un ejemplo

def semaforo(color)
  case color
    when "rojo"
	puts "No pase"
    when "amarillo"
	puts "Pase pero con cuidado"
    when "verde"
	puts "Pase con confianza"
    else
	puts "malogrado"
end

semaforo("rojo")
semaforo("verde")
semaforo("amarillo")

# Como interpretamos esta instrucción, podemos decir que dependiendo del color (rojo, amarillo, rojo) 
# imprime un texto diferente y en caso no venga ninguna de las opciones entonces poner "malogrado"
#
# El case es una forma especializada del if dado que cualquier case lo podemos expresar como if pero
# de una manera menos lejible.
#
# Veamos como escribir lo mismo mediante if:

def semaforo_if(color)
  if (color == "rojo")
     puts "No pase"
  elsif (color == "amarillo")
     puts "Pase pero con cuidado"
  elsif (color == "verde")
     puts "Pase con confianza"
  else
     puts "malogrado"
  end
end

semaforo_if("rojo")
semaforo_if("verde")
semaforo_if("amarillo")

# Estas son todas las instrucciones que necesitamos para realizar estructuras selectivas

