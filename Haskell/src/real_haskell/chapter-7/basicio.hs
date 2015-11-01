
-- file: ch07/bashicio.hs

main = do
    putStrLn "Greetings! What is your name?"
    inputStr <- getLine
    putStrLn $ "Welcome to haskell, " ++ inputStr ++ "!"
