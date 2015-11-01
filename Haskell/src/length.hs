
length' :: [a] -> Integer
length' a = length'' a 0

length'' :: [a] -> Integer -> Integer
length'' [] n     = n
length'' (_:xs) n = length'' xs (n+1)

palindrome :: [a] -> [a]
palindrome a = a ++ (reverse a)

palindrome' :: [a] -> [a] -> [a] -> [a]
palindrome' [] xs ys = xs ++ ys
palindrome' (x:xs) o d = palindrome' xs (o++[x]) (x:d)
