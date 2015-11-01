
main = do
    putStrLn "Hello, what's you name?"
    name <- getLine
    putStrLn ("hey " ++ name ++ ", you rock!")
