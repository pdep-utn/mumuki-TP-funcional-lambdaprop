mayor f = compararPor (>) f 
menor f = compararPor (<) f 
compararPor comparador f x y = comparador (f x) (f y)

ubicadoEn barrios = flip elem barrios.barrio
cumpleRango f min max = between min max.f

cumpleBusqueda :: Depto -> Busqueda -> Bool