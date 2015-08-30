
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = 
    let smallOrEqual = [ a | a <- xs, a <= x ]
        lager        = [ a | a <- xs, a > x]
    in  quicksort smallOrEqual ++ [x] ++ quicksort lager

