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

indexOf :: Int -> [Int] -> Int
indexOf _ [] = -1
indexOf n (x : [])
    | n == x = 1
    | otherwise = -1
indexOf n xs
    | tailLength > -1 = (length xs) - tailLength
    | otherwise = -1
    where
        tailLength = tailListSize n xs

        tailListSize :: Int -> [Int] -> Int
        tailListSize n (x : [])
            | x == n = 0
            | otherwise = -1
        tailListSize n (x : xs)
            | x == n = length xs
            | otherwise = tailListSize n xs


-- Implemente a função removeAll que, a partir de um inteiro x e uma lista de inteiros xs, remove todas as ocorrências de x da lista xs.

removeAll :: Int -> [Int] -> [Int]
removeAll _ [] = []
removeAll n (x : xs)
    | n == x = removeAll n xs
    | otherwise = x : (removeAll n xs)


{-
    Escreva a função:

        halveEvens :: [Int] -> [Int]

    que retorna a metade de cada número par da lista.
-}

halveEvens :: [Int] -> [Int]
halveEvens xs = [x `div` 2 | x <- xs, x `mod` 2 == 0]


halveEvensRec :: [Int] -> [Int]
halveEvensRec [] = []
halveEvensRec (x : xs)
    | x `mod` 2 == 0 = (x `div` 2) : halveEvensRec xs
    | otherwise      = halveEvensRec xs