it "\"Villa Urquiza\" es mayor en longitud que \"Palermo\"" $ do
  mayor length "Villa Urquiza" "Palermo" `shouldBe` True
  
it "\"La Boca\" no es mayor en longitud que \"Palermo\"" $ do
  mayor length "La Boca" "Palermo" `shouldBe` False
  
it "\"Devoto\" es menor en longitud que \"Palermo\"" $ do
  menor length "Devoto" "Palermo" `shouldBe` True
  
it "\"La Boca\" no es menor en longitud que \"Palermo\"" $ do
  menor length "La Boca" "Palermo" `shouldBe` False
  
it "2 es menor en valor absoluto que -5" $ do
  menor abs 2 (-5) `shouldBe` True
  
it "-5 es mayor en valor absoluto que 2" $ do
  mayor abs (-5) 2 `shouldBe` True
  
it "0 no es mayor en valor absoluto que 5" $ do
  mayor abs 0 5 `shouldBe` False
  
it "(-2) no es menor en valor absoluto que 0" $ do
  menor abs (-2) 0 `shouldBe` False