

evenList :: [Int] -> [Int]
evenList (x:xs) | even x    = x : evenList xs
                | otherwise = evenList xs
evenList []                 = []
