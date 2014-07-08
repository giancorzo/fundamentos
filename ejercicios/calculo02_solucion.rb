#encoding: utf-8
# Defina el análisis y diseño de un programa que reciba tres números. 
# Estos números representan las longitudes de los lados de un triángulo. 
#
# Encuentre su área que se calcula mediante la siguiente fórmula:
#
# area= raiz(s*(s−a)*(s−b)*(s−c))
#
# Donde s es la mitad de la suma de los lados a, b y c. 
# Utilice nombres apropiados para los datos de entrada y salida así como 
# los utilizados en el proceso de cálculo.

def calculo_area(a,b,c)
    s = (a + b + c ) / 2.0
    area = Math.sqrt(s * (s - a) * (s - b) * (s - c))
    return area.round(2)
end

puts "El área calculada es " + calculo_area(3,4,5).to_s
puts "El área calculada es " + calculo_area(10,10,7).to_s
puts "El área calculada es " + calculo_area(5,5,5).to_s
