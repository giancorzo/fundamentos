#encoding: utf-8
#
# Cree un programa que permita calcular el Área Lateral, Área Total y Volumen 
# de una Pirámide Hexagonal Regular, dados como datos el lado 
# de la base (Lado) y el apotema de la pirámide (Apotema). 
#
# Use las siguientes fórmulas:
#
# altura = raiz(apotema^2 - 0.75*lado^2)
#
# area lateral = 3 * Lado * Apotema
#
# Area Total = Area Lateral + Lado^2 * (1.7321 * 6 / 4)
#
# Volumen = ( Lado^2 * 1.7321 * 6 / 4) * Altura / 3
#
# Donde el apotema es la altura de una de sus caras triangulares.
#
# Pasos:
# 1. Crear función para calcular la altura
# 2. Crear función para calcular el área
# 3. Crear función para calcular el volumen
# 4. Crear un procedimiento que usa las funciones e imprime los valores

def calculo_altura(apotema, lado)
    altura = Math.sqrt(apotema ** 2 - 0.75 * lado ** 2)
    return altura.round(2)
end

def calculo_area(apotema, lado)
    area_lateral = 3 * apotema * lado
    area_total = area_lateral + lado ** 2 * (1.7321 * 6 / 4.0)
    return area_total.round(2)
end

def calculo_volumen(lado,altura)
    volumen = (lado ** 2 * 1.7321 * 6 / 4.0) * altura / 3.0
    return volumen.round(2)
end

def programa_calculo
    puts "La altura es " + calculo_altura(10,4).to_s
    puts "El área total es " + calculo_area(10,4).to_s
    puts "El volumen es " + calculo_volumen(10,4).to_s
end

programa_calculo

