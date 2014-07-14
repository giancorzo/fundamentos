# Una persona que se encuentra enferma pesa 70 kilos, desea saber cuántas calorías
# consume su cuerpo en una cantidad de horas, sabiendo que las actividades permitidas son:
# dormir y estar en reposo.
#
# Considere que estando en la actividad Dormir la persona consume 1.08 calorías por minuto y
# en la actividad Reposo, consume 1.66 por minuto.
#
# Desarrolle el análisis y diseño del programa que permita ubicar la solución al problema
# planteado.

CALORIAS_POR_DORMIR = 1.08
CALORIAS_POR_REPOSO = 1.66
CONVERSION_A_MINUTOS  = 60

def calorias(actividad,horas)
    calorias = 0
    if (actividad == "dormir")
        calorias = CALORIAS_POR_DORMIR * horas * CONVERSION_A_MINUTOS
    elsif (actividad == "reposo")
        calorias = CALORIAS_POR_REPOSO * horas * CONVERSION_A_MINUTOS
    end
    return calorias.round(2)
end

def validate(expected, value)
  expected == value ? "." : "F"
end

def test_calorias    
  print validate(777.6,calorias("dormir",12))
  print validate(3984.0,calorias("reposo",40))
  print validate(3888.0,calorias("dormir",60))
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calorias
  puts " "
end

test

