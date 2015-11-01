
main =
    putStrLn "Greetings! What is your name?" >>
    getLine >>=
    (\input -> putStrLn $ "Welcome to Haskell, " ++ input ++ "!")
