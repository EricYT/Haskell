
square :: [Double] -> [Double]
square (x:xs) = x^2 : square xs
square []     = []


