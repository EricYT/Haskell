

data Color = Red | Green | Blue

instance Eq Color where
    (==) Red   Red   = True
    (==) Green Green = True
    (==) Blue  Blue  = True
    (==) _     _     = False

instance Show Color where
    show Red   = "red"
    show Green = "green"
    show Blue  = "blue"
