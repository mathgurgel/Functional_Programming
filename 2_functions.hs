-- Defina uma função para calcular a função ou-exclusivo (xor).

xor' :: Bool -> Bool -> Bool
xor' False value = value
xor' True value = not value