

drop' :: Int -> [a] -> [a]
drop' n xs = if n <= 0 || null xs
               then xs
               else drop' (n-1) (tail xs)

take' :: Int -> [a] -> [a]
take' _ [] = []
take' n (x:xs)
  | n <= 0 = []
  | otherwise = x:take' (n-1) xs
