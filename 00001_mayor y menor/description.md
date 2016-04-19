Definí las funciones ```mayor``` y ```menor```, ambas de tipo:

```Ord a => (b-> a) -> b -> b -> Bool```

de modo que retornen True si el resultado de evaluar la función que reciben sobre el primer valor es mayor o menor que el resultado de evaluarlo sobre el segundo valor respectivamente.