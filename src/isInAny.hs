
import Data.List (isInfixOf)

isInAny :: (Eq a) => [a] -> [[a]] -> Bool
isInAny needle haystack = any (isInfixOf needle) haystack

isInAny' :: (Eq a) => [a] -> [[a]] -> Bool
isInAny' needle = any (needle `isInfixOf`) 
