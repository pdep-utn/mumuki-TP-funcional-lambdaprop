it "Un departamento de Palermo cumple con estar ubicado en [\"Villa Urquiza\", \"Palermo\", \"Colegiales\"]" $ do
  (head deptosDeEjemplo) `shouldSatisfy` ubicadoEn ["Villa Urquiza", "Palermo", "Colegiales"]
  
it "Un departamento de Recoleta no cumple con estar ubicado en [\"Villa Urquiza\", \"Palermo\", \"Colegiales\"]" $ do
  (last deptosDeEjemplo) `shouldNotSatisfy` ubicadoEn ["Villa Urquiza", "Palermo", "Colegiales"]
  
it "Un departamento de 3 ambientes cumple con el rango de tener entre 2 y 3 ambientes" $ do
  (head deptosDeEjemplo) `shouldSatisfy` cumpleRango ambientes 2 3
  
it "Un departamento con precio de $7500 no cumple con el rango de costar entre $5000 y $6000" $ do
  (head deptosDeEjemplo) `shouldNotSatisfy` cumpleRango precio 5000 6000
  
it "Un departamento con superficie de 50 no cumple con el rango de tener entre 70 y 100 m2" $ do
  (last deptosDeEjemplo) `shouldNotSatisfy` cumpleRango precio 5000 6000