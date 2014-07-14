# La empresa Adidas, en vista del desarrollo del mundial de fútbol, ha desarrollado una
# campaña llamada “adelgaza con el mundial”, para lo cual se ha desarrollado un sistema que
# mide las calorías de acuerdo a las actividades que realiza la persona. En el sistema, una
# persona ingresa las actividades realizadas en el día: Caminata, Bicicleta y Baile, además el
# tiempo que utilizó en cada una. Esto le da un total de calorías consumidas. Las actividades y
# tiempos son:
#
# Caminata (150 Calorías por cada 10 minutos)
# Bicicleta (200 Calorías por cada 20 minutos)
# Baile (250 Calorías por cada 30 minutos)
#
# Se solicita la elaboración del análisis y diseño de un programa del sistema explicado que
# muestra como resultado el total de calorías consumidas por la persona

def adiddas(actividad, tiempo)
    calorias = 0
    case (actividad)
        when "caminata"
            calorias = (150.0 / 10) * tiempo
        when "bicicleta"
            calorias = (200.0 / 20) * tiempo
        when "baile"
            calorias = (250.0 / 30) * tiempo
    end
    return calorias.round(2)
end

def validate(expected, value)    
  expected == value ? "." : "F"
end

def test_adiddas
  print validate(1800.0,adiddas("caminata",120))
  print validate(120.0,adiddas("bicicleta",12))
  print validate(500.0,adiddas("baile",60))
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_adiddas
  puts " "
end

test
