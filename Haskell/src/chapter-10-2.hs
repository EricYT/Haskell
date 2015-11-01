
data Section = Section { getA :: Int, getB :: Int, getC :: Int }
             deriving (Show)

type RoadSystem = [Section]

data Label = A | B | C deriving (Show)

type Path = [(Label, Int)]

heathrowToLondon :: RoadSystem
heathrowToLondon = [ Section 50 10 30
                   , Section 5 90 20
                   , Section 40 2 25
                   , Section 10 8 0
                   ]

roadStep :: (Path, Path) -> Section -> (Path, Path)
roadStep (pathA, pathB) (Section a b c) =
    let timeA = sum $ map snd pathA
        timeB = sum $ map snd pathB
        forwardTimeToA = timeA + a
        crossTimeToA   = timeB + b + c
        forwardTimeToB = timeB + b
        crossTimeToB   = timeA + a + c
        newPathToA     = if forwardTimeToA > crossTimeToA
                           then (C, c):(B, b):pathB
                           else (A, a):pathA
        newPathToB     = if forwardTimeToB > crossTimeToB
                           then (C, c):(A, a):pathA
                           else (B, b):pathB
    in (newPathToA, newPathToB)

optimalPath :: RoadSystem -> Path
optimalPath roadSystem =
    let (bestAPath, bestBPath) = foldl roadStep ([], []) roadSystem
    in if sum (map snd bestAPath) <= sum (map snd bestBPath)
         then reverse bestAPath
         else reverse bestBPath
