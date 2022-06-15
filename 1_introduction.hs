-- Defina uma função que calcule o n-ésimo termo da sequência de Fibonacci.

fibonacci :: Int -> Int
fibonacci 1 = 1
fibonacci 2 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)