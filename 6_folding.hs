{-
    A função takeWhile é definida como:

        takeWhile :: (a -> Bool) -> [a] -> [a]
        takeWhile _ []  = []
        takeWhile p (x : xs)
            | p x       = x : takeWhile p xs
            | otherwise = []

    Implemente takeWhile usando foldr.
        foldr :: (a -> b -> b) -> b -> [a] -> b
-}

takeWhile' :: (a -> Bool) -> [a] -> [a]
takeWhile' p = foldr (\x acc -> if (p x) then (x : acc) else []) []


{-
    A função all determina se todos os elementos de uma lista satisfazem um predicado. Seu tipo é:

        all :: (a -> Bool) -> [a] -> Bool

    Implemente a função all:
        1) usando recursão
        2) usando foldr.
-}

all1 :: (a -> Bool) -> [a] -> Bool
all1 p [] = False
all1 p (x : xs)
    | p x = True && (all1 p xs)
    | otherwise = False
