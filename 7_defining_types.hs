-- Desenvolva uma função para calcular a área de formas geométricas descritas pelo tipo Shape.

data Point = Point (Float, Float)
type Radius = Float
data Shape =
    Circle Point Radius |
    Rectangle Point Point


surface :: Shape -> Float
surface (Circle _ r) = pi * r ^ 2
surface (Rectangle (Point (x1, y1)) (Point (x2, y2))) = (abs $ x2 - x1) * (abs $ y2 - y1)



-- Desenvolva funções para calcular o número de elementos e o número de folhas de uma árvore de tipo IntTree.

-- Desenvolva uma função que a partir de uma lista de clientes, retorne uma lista contendo todos os clientes que desejam
-- receber mensagens de ofertas.