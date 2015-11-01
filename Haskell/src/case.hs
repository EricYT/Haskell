
head' :: [a] -> a
head' []    = error "No head for empty list"
head' (x:_) = x 

head1 :: [a] -> a
head1 xs = case xs of
             []    -> error "No head for empty list"
             (x:_) -> x

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci x = fibonacci (x - 1) + fibonacci (x - 2)

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Maximum of empty list"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

replicate'' :: (Num a, Eq a) => a -> a1 -> [a1]
replicate'' n x = replicate' n x []

replicate' :: (Num a, Eq a) => a -> a1 -> [a1] -> [a1]
replicate' 0 rp acc = acc
replicate' n rp acc = replicate' (n-1) rp (rp:acc)

replicate1 :: Int -> a -> [a]
replicate1 n x
    | n <= 0 = []
    | otherwise = x : replicate1 (n-1) x
