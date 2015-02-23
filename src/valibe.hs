

niceGreeting :: String
niceGreeting = "Hello! So very nice to see you,"

greet :: String -> String
greet "Juan" = niceGreeting ++ " Juan!"
greet "Fernando" = niceGreeting ++ " Fernando!"
greet name = badGreeting ++ " " ++ name

badGreeting :: String
badGreeting = "Oh! Pfft. It's you."


initials :: String -> String -> String
initials firstName lastName = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstName
          (l:_) = lastName

calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [ bmi w h | (w, h) <- xs] 
    where bmi w h = w / h ^ 2
