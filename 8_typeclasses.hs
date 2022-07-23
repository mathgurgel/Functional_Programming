{-# LANGUAGE InstanceSigs #-}


-- Implemente uma instância de Eq para o tipo Vec3.

data Vec3 = Vec3 Int Int Int

instance Eq Vec3 where
    (==) :: Vec3 -> Vec3 -> Bool
    (Vec3 x1 y1 z1) == (Vec3 x2 y2 z2) = (x1 == x2 && y1 == y2 && z1 == z2)

    (/=) :: Vec3 -> Vec3 -> Bool
    v1 /= v2 = not (v1 == v2)