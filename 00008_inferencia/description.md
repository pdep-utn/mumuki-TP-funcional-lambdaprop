Inferir el tipo de la siguiente función:

```haskell
f x = head.map (\(_,z) -> menor x z).filter (even.fst)
```