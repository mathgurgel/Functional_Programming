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

andList :: [Bool] -> Bool
andList [] = error "empty list"
andList (x : []) = x
andList (x : xs)
    | x == False = False
    | otherwise = andList xs


-- Implemente a função orList que produz a disjunção de uma lista de booleanos fornecida como entrada.

orList :: [Bool] -> Bool
orList [] = error "empty list"
orList (x : []) = x
orList (x : xs)
    | x == True = True
    | otherwise = orList xs

-- Implemente a função indexOf que, a partir de um inteiro x e uma lista de inteiros xs, retorna a posição de x na lista xs.
-- Caso x não pertença a lista, o valor -1 deve ser retornado.


-- Implemente a função removeAll que, a partir de um inteiro x e uma lista de inteiros xs, remove todas as ocorrências de x da lista xs.

