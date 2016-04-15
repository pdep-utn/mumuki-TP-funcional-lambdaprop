type Busqueda = [Depto -> Bool]
data Depto = UnDepto {
  ambientes::Int, 
  superficie::Int, 
  precio::Int, 
  barrio::String
  } deriving (Show, Eq)
  
data Persona = UnaPersona {
  mail::String, 
  busquedas::[Busqueda]
  }

ordenarSegun :: (a -> a -> Bool) -> [a] -> [a]
ordenarSegun _ [] = []
ordenarSegun criterio (x:xs) = (ordenarSegun criterio.filter (not.criterio x)) xs ++ [x] ++ (ordenarSegun criterio.filter (criterio x)) xs

between x y z = x <= z && y >= z

deptosDeEjemplo = [UnDepto 3 80 7500 "Palermo", UnDepto 1 45 3500 "Villa Urquiza", UnDepto 2 50 5000 "Palermo", UnDepto 1 45 5500 "Recoleta"]

mayor f = compararPor (>) f 
menor f = compararPor (<) f 
compararPor comparador f x y = comparador (f x) (f y)

ubicadoEn barrios = flip elem barrios.barrio
cumpleRango f min max = between min max.f

cumpleBusqueda :: Depto -> Busqueda -> Bool
cumpleBusqueda depto = all (\filtro -> filtro depto)
buscar busqueda ordenamiento = ordenarSegun ordenamiento.filter (flip cumpleBusqueda busqueda)

personasDeEjemplo = [UnaPersona "juanchi@lambdaprop.com" [ubicadoEn ["Recoleta", "Belgrano"], <6000).precio], UnaPersona "lolo@yahoo.com" [(=="Palermo").barrio], UnaPersona "ali_capa@hotmail.com" [cumpleRango ambientes 2 3]]