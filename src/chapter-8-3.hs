
main = do
    return ()
    return "HHAAH"
    line <- getLine
    return "BLAH BLAH"
    return 4
    putStrLn line

    a <- return "hell"
    b <- return "yeah!"
    putStrLn $ a ++ " " ++ b
