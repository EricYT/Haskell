import Data.List
import Data.Char
import qualified Data.Map as Map

wordNums :: String -> [(String, Int)]
wordNums = map (\ws -> (head ws, length ws)) . group . sort . words

isIn :: (Eq a) => [a] -> [a] -> Bool
isIn needle haystack = any ( isPrefixOf needle ) $ tails haystack

isIn' :: (Eq a) => [a] -> [a] -> Bool
isIn' needle haystack = any (\ws -> isPrefixOf needle ws) $ tails haystack

isIn1 :: (Eq a) => [a] -> [a] -> Bool
isIn1 needle = any (\ws -> isPrefixOf needle ws) . tails

caesarEncoding :: Int -> String -> String
caesarEncoding offect = map (\char -> chr $ ord char + offect)

caesarEncoding' :: Int -> String -> String
caesarEncoding' offect = map ( chr . (+ offect) . ord )

caesarDecoding :: Int -> String -> String
caesarDecoding offect = map ( \c -> chr $ (ord c - offect) )

caesarDecoding' :: Int -> String -> String
caesarDecoding' offect = caesarEncoding' (negate offect)

digitSum :: Int -> Int
digitSum = sum . map digitToInt . show

firstTo40 :: Maybe Int
firstTo40 = find (\x -> digitSum x == 40) [1..]

firstTo :: Int -> Maybe Int
firstTo n = find (\x -> digitSum x == n) [1..]

-- Mapping keys to values

-- Find key in a maps. If there is no match anyone will cause a crash
findKey :: (Eq k) => k -> [(k, v)] -> v
findKey key xs = snd . head . filter (\(k, v) -> k == key) $ xs

findKey' :: (Eq k) => k -> [(k, v)] -> Maybe v
findKey' key [] = Nothing
findKey' key ((k, v):xs)
  | key == k = Just v
  | otherwise= findKey' key xs

findKey1 :: (Eq k) => k -> [(k, v)] -> Maybe v
findKey1 key xs = foldr (\(k, v) acc -> if k == key then Just v else acc) Nothing xs

-- 
string2digits :: String -> [Int]
string2digits = map digitToInt . filter isDigit

-- phone book
phoneBookToMap :: (Ord k) => [(k, String)] -> Map.Map k String
phoneBookToMap xs = Map.fromListWith add xs
  where add number1 number2 = number1 ++ ", " ++ number2

