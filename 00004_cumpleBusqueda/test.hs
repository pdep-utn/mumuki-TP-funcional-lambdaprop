it "Una búsqueda sin ningún requisito es válida para cualquier departamento" $ do
  deptosDeEjemplo `shouldSatisfy` all (flip cumpleBusqueda [])
  
it "Si el departamento cumple los requisitos, cumpleBusqueda retorna True" $ do
  [(== "Palermo").barrio, (==3).ambientes]  `shouldSatisfy` flip cumpleBusqueda (head deptosDeEjemplo)
  
it "Si el departamento no cumple algún requisitos, cumpleBusqueda retorna False" $ do
  [(== "Palermo").barrio, (>3).ambientes]  `shouldSatisfy` flip cumpleBusqueda (head deptosDeEjemplo)