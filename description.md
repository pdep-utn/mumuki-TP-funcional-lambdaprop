Buscar departamentos para alquilar por los medios tradicionales es una tarea compleja, ya que requiere mucho tiempo de investigación buscando en los clasificados de los diarios y recorriendo inmobiliarias. Es por eso que hoy en día cada vez son más las personas que dejaron eso atrás dejando que internet se encargue de buscar las supuestas mejores alternativas para sus necesidades.

Por eso surge una nueva página para buscar departamentos que permita al usuario personalizar sus propias búsquedas y de paso eventualmente mandarle mails con las nuevas ofertas inmobiliarias que podrían ser de su interés a ver si agarra viaje.

Tenemos la información que maneja el sistema modelada de la siguiente forma:

```haskell
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
```

A su vez disponemos de las siguientes funciones para usar en el desarrollo de la siguiente práctica:

```haskell
ordenarSegun :: (a -> a -> Bool) -> [a] -> [a]
ordenarSegun _ [] = []
ordenarSegun criterio (x:xs) = (ordenarSegun criterio.filter (not.criterio x)) xs ++ [x] ++ (ordenarSegun criterio.filter (criterio x)) xs

between x y z = x <= z && y >= z
```

Para que puedas hacer pruebas en la consola fácilmente te dejamos además la siguiente lista de departamentos ya preparada:

```haskell
deptosDeEjemplo = [UnDepto 3 80 7500 "Palermo", UnDepto 1 45 3500 "Villa Urquiza", UnDepto 2 50 5000 "Palermo", UnDepto 1 45 5500 "Recoleta"]
```