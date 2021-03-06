
foldl' :: (a -> b -> a) -> a -> [b] -> a
foldl' _ zero [] = zero
foldl' step zero (x:xs) =
    let new = step zero x
    in new `seq` foldl' step new xs
