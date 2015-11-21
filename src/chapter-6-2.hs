

-- data type defined
data Cookie = Cookie Int | None deriving(Read)

instance Show Cookie where 
    show (Cookie c) = "Cookie " ++ show c
    show None       = "None"

