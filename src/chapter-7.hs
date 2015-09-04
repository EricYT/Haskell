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

data Car a b c = Car { company :: a
                     , model :: b
                     , year :: c
                     } deriving (Show)

tellCar :: (Show a) => Car String String a -> String
tellCar (Car {company = c, model = m, year = y}) =
    "This " ++ c ++ " " ++ m ++ " was made in " ++ show y

data Vector a = Vector a a a deriving (Show)

vplus :: (Num a) => Vector a -> Vector a -> Vector a
vplus (Vector i j k) (Vector l m n) = Vector (i+l) (j+m) (k+n)














