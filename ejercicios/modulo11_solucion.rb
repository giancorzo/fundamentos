# El código de control es un mecanismo de detección de errores utilizado para verificar 
# la validez de un dato, generalmente en soporte informático. 
#
# Algunos ejemplos de uso frecuente son los números de DNI, 
# códigos de barras, tarjetas de crédito, etc.
#
# Generalmente consiste en obtener un dígito que será añadido al dato original y calculado 
# a partir de éste mediante un determinado algoritmo, como por ejemplo el conocido Módulo 11.
#
# El método denominado módulo 11 se basa en aplicar un factor de chequeo ponderado a 
# cada dígito del número original. 
#
# El cálculo se realiza como sigue:
#
# 1. A cada dígito del número base se le asigna un factor de chequeo ponderado. Dicho factor 
# será 2 para el dígito menos significativo (el que está más a la derecha) y, 
# en orden, 3, 4, 5, 6, 7 para los siguientes. Si hubiera más de 6 dígitos la secuencia se 
# repetiría de modo que el octavo dígito se multiplicará por 2, el noveno por 3, etc.
#
# 2. Cada dígito del número base se multiplica por el factor de chequeo asignado.
#
# 3. Se suman los resultados de todas las multiplicaciones.
#
# 4. Al resultado de la suma se le calcula el módulo 11 (de ahí el nombre del método), 
# es decir, el resto de la división entera entre 11.
#
# 5. A 11 se le resta el módulo calculado en el punto anterior. Si el resultado de la resta es < 10, 
# dicho resultado es el dígito de control que buscábamos. Si el resultado es 11 el dígito de 
# control es 0. Si el resultado es 10 el dígito de control resultante no puede utilizarse.
#
#
# El siguiente esquema desarrolla un ejemplo de cálculo del dígito verificador a 
# partir de un dato numérico:
#
# Número ejemplo: 41261533
#

def modulo(numero)
  suma = 0
  while (numero > 0)
    for i in 2..7
      digito = numero % 10
      numero = numero / 10
      suma += digito * i 
    end
  end
  residuo = suma % 11
  modulo = 11 - residuo
  case modulo
    when 0..9
      return modulo
    when 10
      return -1
    when 11
      return 0
  end
end

def validate(expected, value)    
  expected == value ? "." : "F"
end

def test_modulo
  print validate(6,modulo(41261533))
  print validate(2,modulo(78945511))
  print validate(5,modulo(12345678))
  print validate(8,modulo(45852132))
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_modulo
  puts " "
end

test

