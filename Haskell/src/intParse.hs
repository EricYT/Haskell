
import Data.Char (digitToInt)

asInt :: [Char] -> Int
asInt = loop 0

loop :: Int -> [Char] -> Int
loop acc [] = acc
loop acc (x:xs) = let acc' = acc*10 + digitToInt x
                  in loop acc' xs


loop' :: Int -> [Char] -> Int
loop' acc [] = acc
loop' acc (x:xs) = loop acc' xs
  where acc' = acc*10 + digitToInt x
