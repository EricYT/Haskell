
doubleMe x = x + x

doubleUs x y = x * 2 + y * 2

doubleUs' x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                        then x
                        else x * 2

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

length' xs = sum [ 1 | _ <- xs ]

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase xs = [ x | x <- xs, elem x ['A'..'Z'] ]

lucky :: Int -> String
lucky 7 = "Lucky number seven"
lucky x = "Sorry, you're out of luck, pal"

factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial (x-1)

head' :: [a] -> a
head' [] = error "Can't call head on an empty list,dummy!"
head' (x:_) = x

tell :: Show a => [a] -> [Char]
tell []       = "empty"
tell (x:[])   = "one " ++ show x
tell (x:y:[]) = "two " ++ show x ++ " " ++ show y
tell (x:y:_)  = "too long"

firstLetter :: String -> String
firstLetter "" = "Empty string, whoops"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

gardTest :: Int -> String
gardTest int 
  | int == 1 = show int :: [Char]
  | int == 2 = show int :: String
  | otherwise = "Nothing"

max' :: (Ord a) => a -> a -> a
max' a b 
  | a > b = a
  | otherwise = b

bmiTell :: Double -> Double -> Int
bmiTell weight height
  | bmi <= 18.5 = 1
  | bmi <= 50.0 = 2
  | otherwise   = 3
  where bmi = weight / height ^ 2












