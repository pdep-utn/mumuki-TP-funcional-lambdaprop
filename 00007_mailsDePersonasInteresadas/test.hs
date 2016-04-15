it "mailsDePersonasInteresadas retorna los mails de los interesados en un departamento" $ do
  mailsDePersonasInteresadas (UnDepto 3 80 7500 "Palermo") personasDeEjemplo `shouldBe` ["lolo@yahoo.com", "ali_capa@hotmail.com"]
it "Si no hay ningún interesado, mailsDePersonasInteresadas retorna []" $ do
    mailsDePersonasInteresadas (UnDepto 1 30 10000 "Belgrano") personasDeEjemplo `shouldBe` []