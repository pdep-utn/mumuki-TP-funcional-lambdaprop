it "Debería tipar con algún String" $ do
  f id [(1, "hola"), (2,"chau")] "chan" `shouldBe` False

it "Debería tipar con algún número" $ do
  f id [(1, 3), (2, 7)] 7 `shouldBe` False