

solveRPN :: String -> Double
solveRPN = head . foldl calFun [] . words
    where calFun (x:y:ys) "+" = (y+x):ys
          calFun (x:y:ys) "-" = (y-x):ys
          calFun (x:y:ys) "*" = (y*x):ys
          calFun (x:y:ys) "/" = (y/x):ys
          calFun xs number    = read number:xs
