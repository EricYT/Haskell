
data Either' a b = Left' a | Right' b
                 deriving (Show)

instance Functor (Either' a) where
    fmap f (Right' x) = Right' $ f x
    fmap f (Left' x) = Left' x
