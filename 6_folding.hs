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