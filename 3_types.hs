{--
    Escreva definições que possuam os seguintes tipos.

    bools :: [Bool]
    nums  :: [[Int]]
    add   :: Int -> Int -> Int -> Int
    copy  :: a -> (a, a)
    apply :: (a -> b) -> a -> b
    swap  :: (a,b) -> (b,a)
--}

add :: Int -> Int -> Int -> Int
add n1 n2 n3 = n1 + n2 + n3

copy :: a -> (a, a)
copy element = (element, element)

swap :: (a,b) -> (b,a)
swap (x, y) = (y, x)


