it "El resultado de la búsqueda con los deptosDeEjemplo es el esperado" $ do
  ejemploDeBusquedaOrdenada deptosDeEjemplo `shouldBe` 
    [UnDepto {ambientes = 2, superficie = 50, precio = 5000, barrio = "Palermo"},
    UnDepto {ambientes = 1, superficie = 45, precio = 5500, barrio = "Recoleta"}]
    
it "La búsqueda también funciona con otros deptos" $ do
  ejemploDeBusquedaOrdenada [UnDepto 3 50 5000 "Palermo", UnDepto 2 50 7000 "Recoleta", UnDepto 2 30 4000 "Palermo", UnDepto 1 80 5999 "Recoleta", UnDepto 2 40 3000 "Villa Luro", UnDepto 4 55 5000 "Recoleta"] `shouldBe` [ UnDepto 1 80 5999 "Recoleta", UnDepto 3 50 5000 "Palermo", UnDepto 2 30 4000 "Palermo"]