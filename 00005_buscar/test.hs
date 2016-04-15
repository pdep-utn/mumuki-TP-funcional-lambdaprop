it "La búsqueda de deptos en Palermo ordenada por precio da dos resultados con $5000 y $7000" $ do
  buscar [(=="Palermo").barrio] (menor precio) deptosDeEjemplo `shouldBe`
    [UnDepto {ambientes = 2, superficie = 50, precio = 5000, barrio = "Palermo"},
    UnDepto {ambientes = 3, superficie = 80, precio = 7500, barrio = "Palermo"}]
    
it "La búsqueda de deptos en Recoleta de 3 ambientes no da resultados" $ do
  buscar [(=="Recoleta").barrio, (==3).ambientes] (menor precio) deptosDeEjemplo `shouldBe` []
  
it "La búsqueda de monoambientes a menos de $6000 ordenada por precio descendente da resultados con $5500 y $3500" $ do
  buscar [(< 6000).precio, (==1).ambientes] (mayor precio) deptosDeEjemplo `shouldBe`
    [UnDepto {ambientes = 1, superficie = 45, precio = 5500, barrio = "Recoleta"}, 
    UnDepto {ambientes = 1, superficie = 45, precio = 3500, barrio = "Villa Urquiza"}]