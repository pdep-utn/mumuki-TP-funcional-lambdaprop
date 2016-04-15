type Requisito = Depto -> Bool

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