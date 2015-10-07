
tails' :: [a] -> [[a]]
tails' xs@(_:xs') = xs : tails' xs'
tails' []         = []

noAsPattern :: [a] -> [[a]]
noAsPattern (x:xs) = (x:xs) : noAsPattern xs
noAsPattern []     = []
