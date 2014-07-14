# Una persona que se encuentra enferma pesa 70 kilos, desea saber cuántas calorías
# consume su cuerpo en una cantidad de horas, sabiendo que las actividades permitidas son:
# dormir y estar en reposo.
#
# Considere que estando en la actividad Dormir la persona consume 1.08 calorías por minuto y
# en la actividad Reposo, consume 1.66 por minuto.
#
# Desarrolle el análisis y diseño del programa que permita ubicar la solución al problema
# planteado.

def calorias(actividad,horas)
end

def validate(expected, value)
  expected == value ? "." : "F"
end

def test_calorias
  print validate(1195.2,calorias("dormir",12))
  print validate(2592.0,calorias("reposo",40))
  print validate(5976.0,calorias("dormir",60))
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calorias
  puts " "
end

test

