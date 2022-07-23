{-# LANGUAGE InstanceSigs #-}

import Data.Char


-- Implemente uma instância de Eq para o tipo Vec3.

data Vec3 = Vec3 Int Int Int

instance Eq Vec3 where
    (==) :: Vec3 -> Vec3 -> Bool
    (Vec3 x1 y1 z1) == (Vec3 x2 y2 z2) = (x1 == x2 && y1 == y2 && z1 == z2)

    (/=) :: Vec3 -> Vec3 -> Bool
    v1 /= v2 = not (v1 == v2)



-- Implemente uma instância de Eq para o tipo Person que considere duas pessoas iguais se essas possuírem o mesmo nome.

data Person
  = Person {
      name :: String
    , age  :: Int
    }

lowercase = map toLower

instance Eq Person where
    (==) :: Person -> Person -> Bool
    (Person name1 _) == (Person name2 _) = (lowercase name1 == lowercase name2)

    (/=) :: Person -> Person -> Bool
    p1 /= p2 = not (p1 == p2)


-- Implemente uma instância de Show para Person de forma que o resultado da conversão para string de um valor de tipo Person
-- exiba apenas o campo name deste registro.

