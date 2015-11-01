

class BasicEq a where
    isEqual :: a -> a -> Bool
    isEqual x y = not $ isNotEqual x y

    isNotEqual :: a -> a -> Bool
    isNotEqual x y = not $ isEqual x y

instance BasicEq Bool where
    isEqual True  True  = True
    isEqual False False = True
    isEqual _     _     = False


