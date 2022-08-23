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


concatMapF :: (a -> [b]) -> [a] -> [b]
concatMapF f = foldr (\x acc -> f x ++ acc) []



{-
    Defina a funcao segments :: (a -> Bool) -> [a] -> [[a]] que, dado um predicado p e uma lista l,
    divide essa lista em segmentos que satisfazem o predicado p. Por exemplo:
        segments (>=0) [1,2,3,-1,4,-2,-3,5] B [[1,2,3],[4],[5]]
-}

-- segments :: (a -> Bool) -> [a] -> [[a]]
-- segments _ [] = []
-- segments p xs = 



{-
    Defina cada uma das funcoes a seguir, usando foldr e foldl:
        elem :: a -> [a] -> Bool, que determina se um valor  ́e uma elemento de uma lista.
        remdups :: Eq a => [a] -> [a] que remove da lista elementos duplicados adjacentes.
-}

elem' :: Eq a => a -> [a] -> Bool
elem' x = foldr (\e acc -> if(e == x) then True else acc) False

elem'' :: Eq a => a -> [a] -> Bool
elem'' x = foldl (\acc e -> if(e == x) then True else acc) False
