module Shapes
( Point(..)
, Shape(..)
, area
, area'
, baseCircle
) where

-- data Shape = Circle Float Float Float | Rectangle Float Float Float Float (can not show)
data Point = Point Float Float deriving (Show)
data Shape' = Circle' Point Float | Rectangle' Point Point deriving (Show)
data Shape = Circle Float Float Float | Rectangle Float Float Float Float deriving (Show)

data Person = Person String String Int deriving (Show)

firstName :: Person -> String
firstName (Person firstname _ _) = firstname

lastName :: Person -> String
lastName (Person _ lastname _) = lastname

-- area
area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)

area' :: Shape' -> Float
area' (Circle' _ r) = pi * r ^ 2
area' (Rectangle' (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

baseCircle :: Float -> Shape'
baseCircle r = Circle' (Point 0 0) r

-- data
data Person' = Person' { firstname :: String
                       , lastname :: String
                       , age :: Int
                       , height :: Int
                       } deriving (Show)















