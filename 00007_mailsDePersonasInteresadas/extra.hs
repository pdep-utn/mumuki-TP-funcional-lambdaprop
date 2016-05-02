mayor f = compararPor (>) f 
menor f = compararPor (<) f 
compararPor comparador f x y = comparador (f x) (f y)

ubicadoEn barrios = flip elem barrios.barrio
cumpleRango f min max = between min max.f

cumpleBusqueda :: Depto -> Busqueda -> Bool
cumpleBusqueda depto = all (\filtro -> filtro depto)
buscar busqueda ordenamiento = ordenarSegun ordenamiento.filter (flip cumpleBusqueda busqueda)

personasDeEjemplo = [UnaPersona "juanchi@lambdaprop.com" [[ubicadoEn ["Recoleta", "Belgrano"], (<6000).precio], [(=="Villa Urquiza").barrio, (==2).ambientes]], UnaPersona "lolo@yahoo.com" [[(=="Palermo").barrio]], UnaPersona "ali_capa@hotmail.com" [[cumpleRango ambientes 2 3]]]