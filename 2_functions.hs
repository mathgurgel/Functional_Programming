--  Defina uma função para calcular a função ou-exclusivo (xor).

xor' :: Bool -> Bool -> Bool
xor' False value = value
xor' True value = not value


{--
    Defina a função existsPositive que retorna verdadeiro se a lista de números inteiros fornecida como argumento possui
    pelo menos um elemento maior que 0.
--}

existsPositive' :: [Int] -> Bool
existsPositive' [] = False
existsPositive' (x : xs)
    | x > 0 = True
    | otherwise = existsPositive' xs