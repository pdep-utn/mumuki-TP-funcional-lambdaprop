it "ordenarDeptosPorBarrio ordena bien para los deptosDeEjemplo" $ do
  ordenarDeptosPorBarrio deptosDeEjemplo `shouldBe` 
    [UnDepto {ambientes = 2, superficie = 50, precio = 5000, barrio = "Palermo"}, UnDepto {ambientes = 3, superficie = 80, precio = 7500, barrio = "Palermo"}, UnDepto {ambientes = 1, superficie = 45, precio = 5500, barrio = "Recoleta"}, UnDepto {ambientes = 1, superficie = 45, precio = 3500, barrio = "Villa Urquiza"}]
    
it "ordenarDeptosPorBarrio ordena bien para otros deptos" $ do
  ordenarDeptosPorBarrio [UnDepto 4 75 3000 "Lugano", UnDepto 2 30 2500 "La Boca", UnDepto 2 30 5000 "Belgrano", UnDepto 3 45 3000 "La Boca"] `shouldBe`
      [UnDepto {ambientes = 4, superficie = 75, precio = 3000, barrio = "Lugano"},
      UnDepto {ambientes = 3, superficie = 45, precio = 3000, barrio = "La Boca"},
      UnDepto {ambientes = 2, superficie = 30, precio = 2500, barrio = "La Boca"},
      UnDepto {ambientes = 2, superficie = 30, precio = 5000, barrio = "Belgrano"}]