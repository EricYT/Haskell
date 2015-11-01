

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase xs = [ x | x<-xs, elem x ['A'..'Z'] ]

lucky :: Int -> String
lucky 7 = "Lucky number seven"
lucky x = "Sorry,you are out of lucky"

factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial (x -1)

head' :: [a] -> a
head' [] = error "Can't call head on a empty list!"
head' (x:_) = x

tell [] = 1
tell (x:[]) = 2
tell (x:y:[]) = 3
tell (x:y:_) = 4

tell' [] = 1
tell' [x] = 2
tell' [x, y] = 3
tell' (x:y:_) = 4

firstString :: String -> String
firstString "" = "Empty string, whoops"
firstString all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x] ++ " and " ++ xs

bmiTell :: Double -> Double -> String
bmiTell weight height
    | weight / height ^ 2 <= 18.5 = "You're underweight, you emo, you!"
    | weight / height ^ 2 <= 25.0 = "You're normal"
    | weight / height ^ 2 <= 30.0 = "You're fat"
    | otherwise = "You're a whole"

bmiTell' :: Double -> Double -> String
bmiTell' weight height
    | bmi <= skinny = "You're underweight, you emo, you!"
    | bmi <= normal = "You're normal"
    | bmi <= fat    = "You're fat"
    | otherwise     = "You're a whale" 
    where bmi = weight / height ^ 2
          skinny = 18.5
          normal = 25.0
          fat    = 30.0


