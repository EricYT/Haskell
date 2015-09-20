
data List a = Cons a (List a)
            | Nil
            deriving (Show)

fromList :: [a] -> List a
fromList (x:xs) = Cons x (fromList xs)
fromList []     = Nil

fromList' :: List a -> [a]
fromList' (Cons x xs) = x:fromList' xs
fromList' Nil         = []
