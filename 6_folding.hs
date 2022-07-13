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
all1 _ [] = error "Empty List"
all1 p (x : []) = p x
all1 p (x : xs)
    | p x = True && (all1 p xs)
    | otherwise = False


all2 :: (a -> Bool) -> [a] -> Bool
all2 p = foldr (\x acc -> if (p x) then (True && acc) else False) True



{-
    Implemente a função concatMap de tipo:

        concatMap :: (a -> [b]) -> [a] -> [b]

    Usando recursão e foldr.
-}

concatMapR :: (a -> [b]) -> [a] -> [b]
concatMapR _ [] = []
concatMapR f (x : xs) = (f x) ++ (concatMapR f xs)