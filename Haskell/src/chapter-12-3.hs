import Data.Monoid


newtype Product' a = Product' { getProduct' :: a }
                     deriving (Eq, Ord, Read, Show, Bounded)

instance Num a => Monoid (Product' a) where
    mempty = Product' 1
    mappend (Product' x) (Product' y) = Product' (x * y)


newtype FirstM a = FirstM { getFirst :: Maybe a }
                  deriving (Eq, Ord, Read, Show)

instance Monoid (FirstM a) where
    mempty = FirstM Nothing
    FirstM (Just x) `mappend` _ = FirstM (Just x)
    FirstM Nothing `mappend` x  = x
