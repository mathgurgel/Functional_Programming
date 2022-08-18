-- Defina uma função que calcule o n-ésimo termo da sequência de Fibonacci.

fibonacci :: Int -> Int
fibonacci 1 = 1
fibonacci 2 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)


-- Extra: Função que calcule os n primeiros termos da sequência de Fibonacci.
fibo :: Int -> [Int]
fibo 0 = []
fibo n = fibo (n - 1) ++ fibonacci n
