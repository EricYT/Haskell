
{-# LANGUAGE TypeSynonymInstances, FlexibleInstances#-}

data Color = Red | Green | Blue

class Bort a where
    foo :: a -> String

instance Eq Color where
    (==) Red   Red   = True
    (==) Green Green = True
    (==) Blue  Blue  = True
    (==) _     _     = False

instance Show Color where
    show Red   = "red"
    show Green = "green"
    show Blue  = "blue"

instance Bort Color where
    foo Red = "red"
    foo Green = "green"
    foo Blue = "blue"

instance Bort Char where
    foo c = [c]

instance Bort String where
    foo = id

instance Bort a => Bort [a] where
    foo = undefined
