it "Debería tipar con algún String" $ do
  f length not [(1, "hola"), (2,"chau")] "chan" `shouldBe` True

it "Debería tipar con algún número" $ do
  f id not [(1, 3), (2, 7)] 7 `shouldBe` True