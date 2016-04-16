f x y = y.head.map (\(_,z) -> menor x z ).filter (even.fst)
menor f x y = f x < f y