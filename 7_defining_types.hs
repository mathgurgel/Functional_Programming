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

data IntTree = ILeaf | INode Int IntTree IntTree


bst_n_elements :: IntTree -> Int
bst_n_elements ILeaf = 0
bst_n_elements (INode x lst rst) = 1 + (bst_n_elements lst) + (bst_n_elements rst)

-- For tests: (INode 8 (INode 3 (INode 1 ILeaf ILeaf) (INode 6 (INode 4 ILeaf ILeaf) (INode 7 ILeaf ILeaf))) (INode 10 ILeaf (INode 14 (INode 13 ILeaf ILeaf) ILeaf)))



-- Desenvolva uma função que a partir de uma lista de clientes, retorne uma lista contendo todos os clientes que desejam
-- receber mensagens de ofertas.