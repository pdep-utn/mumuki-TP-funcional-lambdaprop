{-type Requisito = Depto -> Bool

type Busqueda = [Requisito]

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
-}
mayor f = compararPor (>) f 
menor f = compararPor (<) f 
compararPor comparador f x y = comparador (f x) (f y)