-- Defina a função minList que retorna o menor inteiro de uma lista de números fornecida como entrada.

minList :: [Int] -> Int
minList [] = error "empty list"
minList (x : []) = x
minList (x : y : [])
    | x < y = x
    | otherwise = y
minList (x : y : xs)
    | x < y = minList (x : xs)
    | otherwise = minList (y : xs)


-- Implemente a função andList que produz a conjunção de uma lista de booleanos fornecida como entrada.


-- Implemente a função orList que produz a disjunção de uma lista de booleanos fornecida como entrada.


-- Implemente a função indexOf que, a partir de um inteiro x e uma lista de inteiros xs, retorna a posição de x na lista xs.
-- Caso x não pertença a lista, o valor -1 deve ser retornado.


-- Implemente a função removeAll que, a partir de um inteiro x e uma lista de inteiros xs, remove todas as ocorrências de x da lista xs.

