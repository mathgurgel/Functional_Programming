-- Implemente a função capitalize que converte todas as letras minúsculas em uma string para maiúsculas.
-- Utilize a função toUpper da biblioteca Data.Char.

import Data.Char

capitalize :: String -> String
capitalize [] = []
capitalize (x : xs) = (toUpper x) : capitalize' xs


capitalize' :: String -> String
capitalize' xs = map toUpper xs



-- Implemente a função withoutPrimes que remove todos os valores primos de uma lista de inteiros fornecida como argumento.

withoutPrimes :: [Int] -> [Int]
withoutPrimes [] = []
withoutPrimes (x : xs)
    | isPrime x = withoutPrimes xs
    | otherwise = x : withoutPrimes xs
    where
        isPrime :: Int -> Bool
        isPrime n
            | length (divisors n n) == 2 = True
            | otherwise = False
            where
                divisors :: Int -> Int -> [Int]
                divisors _ 1 = [1]
                divisors n d
                    | n `mod` d == 0 = d : divisors n (d - 1)
                    | otherwise = divisors n (d - 1)


withoutPrimes' :: [Int] -> [Int]
withoutPrimes' xs = filter (not . isPrime) xs
    where
        isPrime :: Int -> Bool
        isPrime n
            | length (divisors n n) == 2 = True
            | otherwise = False
            where
                divisors :: Int -> Int -> [Int]
                divisors _ 1 = [1]
                divisors n d
                    | n `mod` d == 0 = d : divisors n (d - 1)
                    | otherwise = divisors n (d - 1)


withoutPrimes'' :: [Int] -> [Int]
withoutPrimes'' = filter (not . isPrime)
    where
        isPrime x
            | (length $ divisors x) == 2 = True
            | otherwise                  = False
            where
                divisors x = [n | n <- [1 .. x], x `mod` n == 0]