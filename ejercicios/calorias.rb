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
  case (actividad)
   when "reposo"
	return 1.08 * (horas * 60)
   when "dormir"
	return 1.66 * (horas * 60)
  end
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

