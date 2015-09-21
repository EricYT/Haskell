

isPrefixOf' :: [Char] -> [Char] -> Bool
isPrefixOf' [] [] = True
isPrefixOf' [] _  = True
isPrefixOf' _  [] = False
isPrefixOf' (x:xs) (y:ys)
  | x == y = isPrefixOf' xs ys
  | otherwise = False
