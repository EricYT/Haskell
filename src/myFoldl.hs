

myFoldl :: (a -> b -> a) -> a -> [b] -> a
myFoldl f z xs = foldr step id xs z
  where step x g a = g (f a x)

foldl' :: (a -> b -> a) -> a -> [b] -> a
foldl' step zero (x:xs) = foldl' step (step zero x) xs
foldl' _ acc []         = acc
