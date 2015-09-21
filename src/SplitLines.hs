
splitLines :: [Char] -> [[Char]]
splitLines [] = []
splitLines xs =
    let (pre, suf) = break (\c -> c == '\r' || c == '\n') xs
    in pre : case suf of
               ('\r':'\n':rest) -> splitLines rest
               ('\r':rest)      -> splitLines rest
               ('\n':rest)      -> splitLines rest
               _                -> []
