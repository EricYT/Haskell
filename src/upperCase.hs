

upperCase :: [Char] -> [Char]
upperCase (x:xs) = toUpper' x : upperCase xs
upperCase []     = []


toUpper' :: Char -> Char
toUpper' 'a' = 'A'
toUpper' 'b' = 'B'
toUpper' 'c' = 'C'
toUpper' 'd' = 'D'
toUpper' 'e' = 'E'
toUpper' 'f' = 'F'
toUpper' 'g' = 'G'
toUpper' 'h' = 'H'
toUpper' 'i' = 'I'
toUpper' 'j' = 'J'
toUpper' 'k' = 'K'
toUpper' 'l' = 'L'
toUpper' 'm' = 'M'
toUpper' 'n' = 'N'
toUpper' 'o' = 'O'
toUpper' 'p' = 'P'
toUpper' 'q' = 'Q'
toUpper' 'r' = 'R'
toUpper' 's' = 'S'
toUpper' 't' = 'T'
toUpper' 'u' = 'U'
toUpper' 'v' = 'V'
toUpper' 'w' = 'W'
toUpper' 'x' = 'X'
toUpper' 'y' = 'Y'
toUpper' 'z' = 'Z'
toUpper'  u  = u
